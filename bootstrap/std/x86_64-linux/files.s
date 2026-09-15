    .text

    .p2align 4
    .globl lb_files_0init
    .type lb_files_0init, @function
lb_files_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
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
    leaq lb_files_15directory_cycle(%rip), %r12
    movl $208273441, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_files_11depth_limit(%rip), %r12
    movl $208273442, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq -72(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq .Ltext_0(%rip), %r13
    leaq -88(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $17, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq lb_files_Entries_close@GOTPCREL(%rip), %r13
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $33, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq lb_files_12entries_type(%rip), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
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
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_12mac_metadata
    .type lb_files_12mac_metadata, @function
lb_files_12mac_metadata:
    pushq %rbp
    movq %rsp, %rbp
    subq $624, %rsp
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
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzwl (%r10), %r13d
    movl %r13d, %r13d
    movl %r13d, %edi
    call lb_files_9file_kind@PLT
    movl %eax, %r13d
    movq %r14, %r10
    movb %r13b, (%r10)
    movq %r12, %r10
    movzwl (%r10), %r12d
    movl %r12d, %r12d
    movl $4095, %ecx
    andl %ecx, %r12d
    movq $4, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq $96, %rcx
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
    movslq (%r10), %r12
    movslq %r12d, %r12
    movl %r12d, %r12d
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
    movq $6, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movl %r12d, %r12d
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq $40, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq $20, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq $44, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq $104, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $48, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    leaq -568(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -584(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -568(%rbp), %rax
    movq %rax, -592(%rbp)
    movq -592(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -600(%rbp)
    movq -600(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -592(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -608(%rbp)
    movq -608(%rbp), %r10
    movq (%r10), %r15
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -616(%rbp)
    movq -616(%rbp), %r10
    movl %r15d, (%r10)
    leaq -552(%rbp), %rax
    movq %rax, -624(%rbp)
    movq %r12, %r10
    movq -624(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -624(%rbp), %r10
    leaq -464(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_3
.L2_2:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
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
    movq $48, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    leaq -568(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -592(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq -608(%rbp), %r10
    movq (%r10), %r13
    movq -616(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movq -624(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -624(%rbp), %r10
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_5
.L2_4:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
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
    movq $64, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    leaq -568(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -592(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq -608(%rbp), %r10
    movq (%r10), %r13
    movq -616(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movq -624(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -624(%rbp), %r10
    leaq -496(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_7
.L2_6:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_7:
    leaq -496(%rbp), %r13
    movq $88, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $80, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    leaq -568(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -592(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq -608(%rbp), %r10
    movq (%r10), %r13
    movq -616(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movq -624(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -624(%rbp), %r10
    leaq -512(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_9
.L2_8:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_9:
    leaq -512(%rbp), %rbx
    leaq -536(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $104, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r12, %r10
    movq %rbx, %r11
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
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_20linux_arm64_metadata
    .type lb_files_20linux_arm64_metadata, @function
lb_files_20linux_arm64_metadata:
    pushq %rbp
    movq %rsp, %rbp
    subq $592, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq 16(%rbp), %r10
    leaq -304(%rbp), %r11
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
    leaq -432(%rbp), %r14
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
    leaq -304(%rbp), %rbx
    movq $16, %rcx
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
    movq $20, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq $40, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq $28, %rcx
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
    leaq -536(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -552(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -536(%rbp), %rax
    movq %rax, -560(%rbp)
    movq -560(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -568(%rbp)
    movq -568(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -560(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -576(%rbp)
    movq -576(%rbp), %r10
    movq (%r10), %r15
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -584(%rbp)
    movq -584(%rbp), %r10
    movl %r15d, (%r10)
    leaq -520(%rbp), %rax
    movq %rax, -592(%rbp)
    movq %r12, %r10
    movq -592(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -592(%rbp), %r10
    leaq -448(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_3
.L3_2:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_3:
    leaq -448(%rbp), %r15
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
    leaq -536(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -560(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq -576(%rbp), %r10
    movq (%r10), %r13
    movq -584(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movq -592(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -592(%rbp), %r10
    leaq -464(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_5
.L3_4:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_5:
    leaq -464(%rbp), %r13
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
    leaq -536(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -560(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq -576(%rbp), %r10
    movq (%r10), %r13
    movq -584(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movq -592(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -592(%rbp), %r10
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_7
.L3_6:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_7:
    leaq -480(%rbp), %rbx
    movq $88, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -504(%rbp), %rbx
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
.L3_1:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
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
    jmp .L4_3
.L4_2:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_3:
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
    jmp .L4_5
.L4_4:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_5:
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
    jmp .L4_7
.L4_6:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_7:
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
.L4_1:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
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
.L5_1:
.L5_2:
    movq -536(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L5_4
    jmp .L5_5
.L5_4:
    movq %r13, %r10
    movq (%r10), %r15
    movq %r15, %rdi
    movq %rbx, %rsi
    call stat@PLT
    movl %eax, %r15d
    jmp .L5_6
.L5_5:
    movq %r14, %r10
    movq (%r10), %r15
    movq %r15, %rdi
    movq %rbx, %rsi
    call lstat@PLT
    movl %eax, %r15d
.L5_6:
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L5_8
.L5_7:
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
.L5_8:
.L5_9:
    call lb_c_errno@PLT
    movl %eax, %r12d
    movq -544(%rbp), %r10
    movslq (%r10), %r15
    cmpl %r15d, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
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
    leaq .Ltext_18(%rip), %r13
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
.L5_12:
.L5_13:
    jmp .L5_1

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
.L6_1:
.L6_2:
    movq %r12, %r10
    movslq (%r10), %r14
    movl %r14d, %edi
    movq %rbx, %rsi
    call fstat@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L6_5
.L6_4:
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
.L6_5:
.L6_6:
    call lb_c_errno@PLT
    movl %eax, %r14d
    movq %r13, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L6_9
.L6_8:
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
    leaq .Ltext_20(%rip), %r13
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
.L6_9:
.L6_10:
    jmp .L6_1

    .p2align 4
    .globl lb_files_File_open
    .type lb_files_File_open, @function
lb_files_File_open:
    pushq %rbp
    movq %rsp, %rbp
    subq $448, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    movl %edx, -120(%rbp)
    movl %ecx, -136(%rbp)
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    leaq -136(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl %ebx, %esi
    movl %r12d, %edx
    leaq -176(%rbp), %rdi
    call lb_files_15file_open_flags@PLT
    leaq -176(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_2
    jmp .L7_1
.L7_2:
    movq $8, %rcx
    movq %r13, %rbx
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
.L7_3:
.L7_1:
    movq %r13, %r10
    movslq (%r10), %rax
    movq %rax, -384(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -392(%rbp)
    movq -392(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -400(%rbp)
    movq -400(%rbp), %rax
    leaq -344(%rbp), %r10
    movq %rax, (%r10)
    movl -384(%rbp), %eax
    leaq -360(%rbp), %r10
    movl %eax, (%r10)
    leaq -376(%rbp), %r10
    movl %r12d, (%r10)
    movq -400(%rbp), %rdi
    movl -384(%rbp), %esi
    movl %r12d, %edx
    movl $0, %eax
    call open@PLT
    movl %eax, %r15d
    leaq -328(%rbp), %rax
    movq %rax, -424(%rbp)
    movq -424(%rbp), %r10
    movl %r15d, (%r10)
    movq -424(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -432(%rbp)
    movl $0, %eax
    movq -432(%rbp), %r10
    movb %al, (%r10)
    movq -424(%rbp), %r10
    leaq -216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L7_21
.L7_20:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_21:
    leaq -216(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L7_5
    jmp .L7_4
.L7_5:
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
.L7_6:
.L7_4:
    leaq lb_c_interrupted(%rip), %r13
    leaq -256(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -416(%rbp)
    movl %r15d, %eax
    movl %eax, -440(%rbp)
.L7_7:
    movl -440(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    setl %al
    movzbl %al, %eax
    movl %eax, -408(%rbp)
    movl -408(%rbp), %eax
    testl %eax, %eax
    jne .L7_10
    jmp .L7_24
.L7_24:
    movl -408(%rbp), %eax
    movl %eax, %r14d
    jmp .L7_11
.L7_10:
    call lb_c_errno@PLT
    movl %eax, %r14d
    movq %r13, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r14d
    sete %al
    movzbl %al, %r14d
.L7_11:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L7_8
    jmp .L7_9
.L7_8:
    movq -400(%rbp), %rax
    leaq -344(%rbp), %r10
    movq %rax, (%r10)
    movl -384(%rbp), %eax
    leaq -360(%rbp), %r10
    movl %eax, (%r10)
    leaq -376(%rbp), %r10
    movl %r12d, (%r10)
    movq -400(%rbp), %rdi
    movl -384(%rbp), %esi
    movl %r12d, %edx
    movl $0, %eax
    call open@PLT
    movl %eax, %r14d
    movq -424(%rbp), %r10
    movl %r14d, (%r10)
    movl $0, %eax
    movq -432(%rbp), %r10
    movb %al, (%r10)
    movq -424(%rbp), %r10
    leaq -256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L7_23
.L7_22:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_23:
    movq -416(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L7_13
    jmp .L7_12
.L7_13:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq -88(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
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
.L7_14:
.L7_12:
    movl %r14d, %eax
    movl %eax, -440(%rbp)
    jmp .L7_7
.L7_9:
    movl -408(%rbp), %eax
    testl %eax, %eax
    jne .L7_15
    jmp .L7_16
.L7_15:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_c_errno@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_24(%rip), %r13
    leaq -272(%rbp), %r14
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
.L7_18:
    jmp .L7_17
.L7_16:
.L7_17:
    leaq -280(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -288(%rbp), %r12
    movl -440(%rbp), %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -88(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
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
.L7_19:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_File_descriptor
    .type lb_files_File_descriptor, @function
lb_files_File_descriptor:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %r12
    leaq -24(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_1:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_File_truncate
    .type lb_files_File_truncate, @function
lb_files_File_truncate:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    movq %rdx, -104(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_1
    jmp .L9_2
.L9_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L9_3
.L9_2:
    leaq -80(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_27(%rip), %r12
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
.L9_3:
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jge .L9_6
.L9_5:
    leaq -80(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_29(%rip), %r12
    leaq -136(%rbp), %r13
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_8:
    jmp .L9_7
.L9_6:
.L9_7:
    leaq -168(%rbp), %r10
    movl %ebx, (%r10)
    leaq -184(%rbp), %r10
    movq %r12, (%r10)
    movl %ebx, %edi
    movq %r12, %rsi
    call ftruncate@PLT
    movl %eax, %r13d
    leaq -192(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L9_19
.L9_18:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_19:
    leaq lb_c_interrupted(%rip), %r14
    movl %r13d, %r15d
.L9_9:
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %eax
    movl %eax, -208(%rbp)
    movl -208(%rbp), %eax
    testl %eax, %eax
    jne .L9_12
    jmp .L9_22
.L9_22:
    movl -208(%rbp), %eax
    movl %eax, %r15d
    jmp .L9_13
.L9_12:
    call lb_c_errno@PLT
    movl %eax, %r15d
    movq %r14, %r10
    movslq (%r10), %r13
    cmpl %r13d, %r15d
    sete %al
    movzbl %al, %r15d
.L9_13:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L9_10
    jmp .L9_11
.L9_10:
    leaq -168(%rbp), %r10
    movl %ebx, (%r10)
    leaq -184(%rbp), %r10
    movq %r12, (%r10)
    movl %ebx, %edi
    movq %r12, %rsi
    call ftruncate@PLT
    movl %eax, %r15d
    leaq -200(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L9_21
.L9_20:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_21:
    jmp .L9_9
.L9_11:
    movl -208(%rbp), %eax
    testl %eax, %eax
    jne .L9_14
    jmp .L9_15
.L9_14:
    leaq -80(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_30(%rip), %r12
    leaq -152(%rbp), %r13
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
.L9_17:
    jmp .L9_16
.L9_15:
.L9_16:
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

    .p2align 4
    .globl lb_files_File_15set_permissions
    .type lb_files_File_15set_permissions, @function
lb_files_File_15set_permissions:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    movl %edx, -104(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_1
    jmp .L10_2
.L10_1:
    movq %r12, %r10
    movslq (%r10), %rax
    movq %rax, -160(%rbp)
    jmp .L10_3
.L10_2:
    leaq -80(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_27(%rip), %r12
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
.L10_3:
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl $4095, %ecx
    cmpl %ecx, %r12d
    jbe .L10_6
.L10_5:
    leaq -80(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_31(%rip), %r12
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $44, %rax
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
.L10_6:
.L10_7:
    leaq lb_platform_macos(%rip), %r13
    movl %r12d, %r14d
    movzwl %r14w, %r14d
    leaq lb_c_interrupted(%rip), %rax
    movq %rax, -168(%rbp)
.L10_9:
.L10_10:
    movq %r13, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L10_12
    jmp .L10_13
.L10_12:
    movl -160(%rbp), %edi
    movl %r14d, %esi
    call fchmod@PLT
    movl %eax, %r15d
    jmp .L10_14
.L10_13:
    movl -160(%rbp), %edi
    movl %r12d, %esi
    call fchmod@PLT
    movl %eax, %r15d
.L10_14:
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L10_16
.L10_15:
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
.L10_16:
.L10_17:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movq -168(%rbp), %r10
    movslq (%r10), %r15
    cmpl %r15d, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L10_20
.L10_19:
    leaq -80(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_32(%rip), %r12
    leaq -152(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $37, %rax
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
.L10_20:
.L10_21:
    jmp .L10_9

    .p2align 4
    .globl lb_files_File_9set_times
    .type lb_files_File_9set_times, @function
lb_files_File_9set_times:
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
    leaq -104(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -120(%rbp), %r10
    movq %r8, 0(%r10)
    movq %r9, 8(%r10)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_1
    jmp .L11_2
.L11_1:
    movq %r12, %r10
    movslq (%r10), %rax
    movq %rax, -272(%rbp)
    jmp .L11_3
.L11_2:
    leaq -80(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_27(%rip), %r12
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
.L11_4:
.L11_3:
    leaq -104(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $1000000000, %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L11_20
    jmp .L11_8
.L11_20:
    movl %r14d, %r15d
    jmp .L11_9
.L11_8:
    leaq -120(%rbp), %r14
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl $1000000000, %ecx
    cmpl %ecx, %r14d
    setae %al
    movzbl %al, %r15d
.L11_9:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L11_5
    jmp .L11_6
.L11_5:
    leaq -80(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_33(%rip), %r12
    leaq -152(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $57, %rax
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
.L11_10:
    jmp .L11_7
.L11_6:
.L11_7:
    leaq -184(%rbp), %rax
    movq %rax, -280(%rbp)
    leaq -216(%rbp), %rax
    movq %rax, -288(%rbp)
    leaq -232(%rbp), %rax
    movq %rax, -296(%rbp)
    movq -296(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %r14
    movq -296(%rbp), %r10
    movq %r14, (%r10)
    movl %r13d, %r14d
    movq -296(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq -296(%rbp), %r10
    movq -288(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -248(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -120(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -288(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -288(%rbp), %r10
    movq -280(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movl -272(%rbp), %edi
    movq -280(%rbp), %rsi
    call futimens@PLT
    movl %eax, %ebx
    leaq lb_c_interrupted(%rip), %r14
.L11_11:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L11_14
    jmp .L11_21
.L11_21:
    movl %r12d, %ebx
    jmp .L11_15
.L11_14:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movq %r14, %r10
    movslq (%r10), %r13
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %ebx
.L11_15:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L11_12
    jmp .L11_13
.L11_12:
    movl -272(%rbp), %edi
    movq -280(%rbp), %rsi
    call futimens@PLT
    movl %eax, %ebx
    jmp .L11_11
.L11_13:
    testl %r12d, %r12d
    jne .L11_16
    jmp .L11_17
.L11_16:
    leaq -80(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_36(%rip), %r12
    leaq -264(%rbp), %r13
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
.L11_19:
    jmp .L11_18
.L11_17:
.L11_18:
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

    .p2align 4
    .globl lb_files_File_read
    .type lb_files_File_read, @function
lb_files_File_read:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
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
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_1
    jmp .L12_2
.L12_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L12_3
.L12_2:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_27(%rip), %r13
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $18, %rax
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
.L12_4:
.L12_3:
    leaq -112(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L12_6
.L12_5:
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
.L12_8:
    jmp .L12_7
.L12_6:
.L12_7:
    leaq lb_files_14transfer_limit(%rip), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L12_10
.L12_9:
    movq %r13, %rax
    movq %rax, -208(%rbp)
    jmp .L12_11
.L12_10:
    movq %r14, %rax
    movq %rax, -208(%rbp)
.L12_11:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -160(%rbp), %r10
    movl %ebx, (%r10)
    leaq -176(%rbp), %r10
    movq %r13, (%r10)
    movq -208(%rbp), %rax
    leaq -192(%rbp), %r10
    movq %rax, (%r10)
    movl %ebx, %edi
    movq %r13, %rsi
    movq -208(%rbp), %rdx
    call read@PLT
    movq %rax, %r15
    jmp .L12_23
.L12_22:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_23:
    leaq lb_c_interrupted(%rip), %r12
    movq %r15, %rax
    movq %rax, -216(%rbp)
.L12_12:
    movq -216(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setl %al
    movzbl %al, %eax
    movl %eax, -200(%rbp)
    movl -200(%rbp), %eax
    testl %eax, %eax
    jne .L12_15
    jmp .L12_26
.L12_26:
    movl -200(%rbp), %eax
    movl %eax, %r14d
    jmp .L12_16
.L12_15:
    call lb_c_errno@PLT
    movl %eax, %r14d
    movq %r12, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r14d
    sete %al
    movzbl %al, %r14d
.L12_16:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L12_13
    jmp .L12_14
.L12_13:
    leaq -160(%rbp), %r10
    movl %ebx, (%r10)
    leaq -176(%rbp), %r10
    movq %r13, (%r10)
    movq -208(%rbp), %rax
    leaq -192(%rbp), %r10
    movq %rax, (%r10)
    movl %ebx, %edi
    movq %r13, %rsi
    movq -208(%rbp), %rdx
    call read@PLT
    movq %rax, %r14
    jmp .L12_25
.L12_24:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_25:
    movq %r14, %rax
    movq %rax, -216(%rbp)
    jmp .L12_12
.L12_14:
    movl -200(%rbp), %eax
    testl %eax, %eax
    jne .L12_17
    jmp .L12_18
.L12_17:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_c_errno@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_37(%rip), %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $26, %rax
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
.L12_20:
    jmp .L12_19
.L12_18:
.L12_19:
    leaq -88(%rbp), %rbx
    movq -216(%rbp), %rax
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
.L12_21:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_File_write
    .type lb_files_File_write, @function
lb_files_File_write:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
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
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_1
    jmp .L13_2
.L13_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L13_3
.L13_2:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_27(%rip), %r13
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $18, %rax
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
.L13_4:
.L13_3:
    leaq -112(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L13_6
.L13_5:
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
.L13_8:
    jmp .L13_7
.L13_6:
.L13_7:
    leaq lb_files_14transfer_limit(%rip), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L13_10
.L13_9:
    movq %r13, %rax
    movq %rax, -208(%rbp)
    jmp .L13_11
.L13_10:
    movq %r14, %rax
    movq %rax, -208(%rbp)
.L13_11:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -160(%rbp), %r10
    movl %ebx, (%r10)
    leaq -176(%rbp), %r10
    movq %r13, (%r10)
    movq -208(%rbp), %rax
    leaq -192(%rbp), %r10
    movq %rax, (%r10)
    movl %ebx, %edi
    movq %r13, %rsi
    movq -208(%rbp), %rdx
    call write@PLT
    movq %rax, %r15
    jmp .L13_23
.L13_22:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_23:
    leaq lb_c_interrupted(%rip), %r12
    movq %r15, %rax
    movq %rax, -216(%rbp)
.L13_12:
    movq -216(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setl %al
    movzbl %al, %eax
    movl %eax, -200(%rbp)
    movl -200(%rbp), %eax
    testl %eax, %eax
    jne .L13_15
    jmp .L13_26
.L13_26:
    movl -200(%rbp), %eax
    movl %eax, %r14d
    jmp .L13_16
.L13_15:
    call lb_c_errno@PLT
    movl %eax, %r14d
    movq %r12, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r14d
    sete %al
    movzbl %al, %r14d
.L13_16:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L13_13
    jmp .L13_14
.L13_13:
    leaq -160(%rbp), %r10
    movl %ebx, (%r10)
    leaq -176(%rbp), %r10
    movq %r13, (%r10)
    movq -208(%rbp), %rax
    leaq -192(%rbp), %r10
    movq %rax, (%r10)
    movl %ebx, %edi
    movq %r13, %rsi
    movq -208(%rbp), %rdx
    call write@PLT
    movq %rax, %r14
    jmp .L13_25
.L13_24:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_25:
    movq %r14, %rax
    movq %rax, -216(%rbp)
    jmp .L13_12
.L13_14:
    movl -200(%rbp), %eax
    testl %eax, %eax
    jne .L13_17
    jmp .L13_18
.L13_17:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_c_errno@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_39(%rip), %r13
    leaq -144(%rbp), %r14
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
.L13_20:
    jmp .L13_19
.L13_18:
.L13_19:
    leaq -88(%rbp), %rbx
    movq -216(%rbp), %rax
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
.L13_21:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_File_sync
    .type lb_files_File_sync, @function
lb_files_File_sync:
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
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L14_1
    jmp .L14_2
.L14_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L14_3
.L14_2:
    leaq -80(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_27(%rip), %r12
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
.L14_4:
.L14_3:
    leaq -136(%rbp), %r10
    movl %ebx, (%r10)
    movl %ebx, %edi
    call fsync@PLT
    movl %eax, %r12d
    leaq -144(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L14_15
.L14_14:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L14_15:
    leaq lb_c_interrupted(%rip), %r13
    movl %r12d, %r14d
.L14_5:
    movl $0, %ecx
    cmpl %ecx, %r14d
    setl %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L14_8
    jmp .L14_18
.L14_18:
    movl %r12d, %r14d
    jmp .L14_9
.L14_8:
    call lb_c_errno@PLT
    movl %eax, %r14d
    movq %r13, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r14d
    sete %al
    movzbl %al, %r14d
.L14_9:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L14_6
    jmp .L14_7
.L14_6:
    leaq -136(%rbp), %r10
    movl %ebx, (%r10)
    movl %ebx, %edi
    call fsync@PLT
    movl %eax, %r14d
    leaq -152(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L14_17
.L14_16:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L14_17:
    jmp .L14_5
.L14_7:
    testl %r12d, %r12d
    jne .L14_10
    jmp .L14_11
.L14_10:
    leaq -80(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_43(%rip), %r12
    leaq -120(%rbp), %r13
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_13:
    jmp .L14_12
.L14_11:
.L14_12:
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

    .p2align 4
    .globl lb_files_File_close
    .type lb_files_File_close, @function
lb_files_File_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -72(%rbp)
    leaq -72(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L15_1
    jmp .L15_2
.L15_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L15_3
.L15_2:
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
.L15_4:
.L15_3:
    leaq -80(%rbp), %r13
    movq %r13, %r11
    movq $0, 0(%r11)
    movq %r13, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movl %ebx, %edi
    call close@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L15_6
.L15_5:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_44(%rip), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $28, %rax
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
.L15_8:
    jmp .L15_7
.L15_6:
.L15_7:
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
    .globl lb_files_14classify_error
    .type lb_files_14classify_error, @function
lb_files_14classify_error:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movl %edi, -48(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L16_2
.L16_1:
    leaq lb_files_missing(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_4:
    jmp .L16_3
.L16_2:
.L16_3:
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L16_69
    jmp .L16_8
.L16_69:
    movl %r12d, %r13d
    jmp .L16_9
.L16_8:
    movl $13, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L16_9:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L16_5
    jmp .L16_6
.L16_5:
    leaq lb_files_17permission_denied(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_10:
    jmp .L16_7
.L16_6:
.L16_7:
    movl $17, %ecx
    cmpl %ecx, %ebx
    jne .L16_12
.L16_11:
    leaq lb_files_14already_exists(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_14:
    jmp .L16_13
.L16_12:
.L16_13:
    movl $28, %ecx
    cmpl %ecx, %ebx
    jne .L16_16
.L16_15:
    leaq lb_files_8no_space(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_18:
    jmp .L16_17
.L16_16:
.L16_17:
    movl $20, %ecx
    cmpl %ecx, %ebx
    jne .L16_20
.L16_19:
    leaq lb_files_13not_directory(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_22:
    jmp .L16_21
.L16_20:
.L16_21:
    movl $21, %ecx
    cmpl %ecx, %ebx
    jne .L16_24
.L16_23:
    leaq lb_files_12is_directory(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_26:
    jmp .L16_25
.L16_24:
.L16_25:
    movl $30, %ecx
    cmpl %ecx, %ebx
    jne .L16_28
.L16_27:
    leaq lb_files_20read_only_filesystem(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_30:
    jmp .L16_29
.L16_28:
.L16_29:
    leaq lb_platform_macos(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_34
    jmp .L16_35
.L16_34:
    movl $66, %eax
    movl %eax, %r13d
    jmp .L16_36
.L16_35:
    leaq lb_platform_windows(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L16_37
    jmp .L16_38
.L16_37:
    movl $41, %eax
    movl %eax, %r13d
    jmp .L16_39
.L16_38:
    movl $39, %eax
    movl %eax, %r13d
.L16_39:
.L16_36:
    cmpl %r13d, %ebx
    jne .L16_32
.L16_31:
    leaq lb_files_9not_empty(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_40:
    jmp .L16_33
.L16_32:
.L16_33:
    movl $18, %ecx
    cmpl %ecx, %ebx
    jne .L16_42
.L16_41:
    leaq lb_files_12cross_device(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_44:
    jmp .L16_43
.L16_42:
.L16_43:
    testl %r12d, %r12d
    jne .L16_48
    jmp .L16_49
.L16_48:
    movl $62, %eax
    movl %eax, %r13d
    jmp .L16_50
.L16_49:
    movl $40, %eax
    movl %eax, %r13d
.L16_50:
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L16_51
    jmp .L16_70
.L16_70:
    movl %r14d, %r13d
    jmp .L16_52
.L16_51:
    leaq lb_platform_windows(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L16_52:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L16_45
    jmp .L16_46
.L16_45:
    leaq lb_files_12symlink_loop(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_53:
    jmp .L16_47
.L16_46:
.L16_47:
    testl %r12d, %r12d
    jne .L16_57
    jmp .L16_58
.L16_57:
    movl $63, %eax
    movl %eax, %r12d
    jmp .L16_59
.L16_58:
    leaq lb_platform_windows(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_60
    jmp .L16_61
.L16_60:
    movl $38, %eax
    movl %eax, %r12d
    jmp .L16_62
.L16_61:
    movl $36, %eax
    movl %eax, %r12d
.L16_62:
.L16_59:
    cmpl %r12d, %ebx
    jne .L16_55
.L16_54:
    leaq lb_files_13name_too_long(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_63:
    jmp .L16_56
.L16_55:
.L16_56:
    leaq lb_files_17would_block_errno(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    cmpl %r12d, %ebx
    jne .L16_65
.L16_64:
    leaq lb_files_11would_block(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_67:
    jmp .L16_66
.L16_65:
.L16_66:
    leaq lb_files_failed(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_68:
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_15file_open_flags
    .type lb_files_15file_open_flags, @function
lb_files_15file_open_flags:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movl %esi, -96(%rbp)
    movl %edx, -112(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $4095, %ecx
    cmpl %ecx, %ebx
    jbe .L17_2
.L17_1:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_31(%rip), %r13
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $44, %rax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L17_4:
    jmp .L17_3
.L17_2:
.L17_3:
    leaq lb_files_13close_on_exec(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $1, %ecx
    cmpl %ecx, %r12d
    jne .L17_6
.L17_5:
    movl $2, %ecx
    movl %ebx, %r12d
    orl %ecx, %r12d
    jmp .L17_7
.L17_6:
    movl $2, %ecx
    cmpl %ecx, %r12d
    jne .L17_9
.L17_8:
    leaq lb_files_10write_only(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq lb_files_create(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    orl %r13d, %r12d
    leaq lb_files_truncate(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    orl %r13d, %r12d
    movl %r12d, %ecx
    movl %ebx, %r12d
    orl %ecx, %r12d
    jmp .L17_10
.L17_9:
    movl $3, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L17_27
    jmp .L17_14
.L17_27:
    movl %r13d, %r14d
    jmp .L17_15
.L17_14:
    movl $5, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L17_15:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L17_11
    jmp .L17_12
.L17_11:
    leaq lb_files_create(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq lb_files_14exclusive_flag(%rip), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movl %r14d, %ecx
    movl %r13d, %r14d
    orl %ecx, %r14d
    movl $5, %ecx
    cmpl %ecx, %r12d
    jne .L17_17
.L17_16:
    movl $2, %eax
    movl %eax, %r12d
    jmp .L17_18
.L17_17:
    leaq lb_files_10write_only(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
.L17_18:
    movl %r14d, %r13d
    orl %r12d, %r13d
    movl %r13d, %ecx
    movl %ebx, %r13d
    orl %ecx, %r13d
    jmp .L17_13
.L17_12:
    movl $4, %ecx
    cmpl %ecx, %r12d
    jne .L17_20
.L17_19:
    leaq lb_files_10write_only(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq lb_files_create(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    orl %r13d, %r12d
    leaq lb_files_11append_flag(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    orl %r13d, %r12d
    movl %r12d, %ecx
    movl %ebx, %r12d
    orl %ecx, %r12d
    jmp .L17_21
.L17_20:
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L17_23
.L17_22:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_47(%rip), %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $25, %rax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L17_25:
    jmp .L17_24
.L17_23:
.L17_24:
    movl %ebx, %r12d
.L17_21:
    movl %r12d, %r13d
.L17_13:
    movl %r13d, %r12d
.L17_10:
.L17_7:
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movl %r12d, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L17_26:
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_exists
    .type lb_files_exists, @function
lb_files_exists:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -176(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    movl $0, %esi
    call access@PLT
    movl %eax, %r12d
    leaq lb_c_interrupted(%rip), %r13
.L18_7:
    movl $0, %ecx
    cmpl %ecx, %r12d
    setl %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L18_10
    jmp .L18_24
.L18_24:
    movl %r14d, %r15d
    jmp .L18_11
.L18_10:
    call lb_c_errno@PLT
    movl %eax, %r14d
    movq %r13, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r14d
    sete %al
    movzbl %al, %r15d
.L18_11:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L18_8
    jmp .L18_9
.L18_8:
    movq %rbx, %rdi
    movl $0, %esi
    call access@PLT
    movl %eax, %r12d
    jmp .L18_7
.L18_9:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L18_13
.L18_12:
    leaq -160(%rbp), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L18_23
.L18_15:
    jmp .L18_14
.L18_13:
.L18_14:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L18_25
    jmp .L18_19
.L18_25:
    movl %r12d, %r13d
    jmp .L18_20
.L18_19:
    movl $20, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L18_20:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L18_16
    jmp .L18_17
.L18_16:
    leaq -160(%rbp), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L18_23
.L18_21:
    jmp .L18_18
.L18_17:
.L18_18:
    leaq -160(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl %ebx, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_50(%rip), %r14
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
    movq %r12, %r10
    leaq -120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L18_23
.L18_22:
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L18_23:
    leaq -120(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L18_4
    jmp .L18_3
.L18_4:
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
    jmp .L18_1
.L18_3:
    movq %r12, %r10
    movzbl (%r10), %ebx
    jmp .L18_2
.L18_1:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L18_2
.L18_5:
.L18_2:
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
.L18_6:
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
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
    jbe .L19_2
.L19_1:
    leaq -64(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_52(%rip), %r12
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
.L19_4:
    jmp .L19_3
.L19_2:
.L19_3:
    leaq lb_platform_macos(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L19_5
    jmp .L19_6
.L19_5:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movl %ebx, %r13d
    movzwl %r13w, %r13d
    movq %r12, %rdi
    movl %r13d, %esi
    call mkdir@PLT
    movl %eax, %r12d
    jmp .L19_7
.L19_6:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    movl %ebx, %esi
    call mkdir@PLT
    movl %eax, %r12d
.L19_7:
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L19_9
.L19_8:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_53(%rip), %r12
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
.L19_11:
    jmp .L19_10
.L19_9:
.L19_10:
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
    jne .L20_2
.L20_1:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_54(%rip), %r12
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
.L20_4:
    jmp .L20_3
.L20_2:
.L20_3:
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
    jne .L21_2
.L21_1:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_55(%rip), %r12
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
.L21_4:
    jmp .L21_3
.L21_2:
.L21_3:
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
    jne .L22_1
    jmp .L22_2
.L22_1:
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
    jmp .L22_3
.L22_2:
    leaq lb_files_20current_directory_fd(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl %ebx, %edi
    movq %r12, %rsi
    movl %ebx, %edx
    movq %r13, %rcx
    movl $1, %r8d
    call renameat2@PLT
    movl %eax, %ebx
.L22_3:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L22_5
.L22_4:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_56(%rip), %r12
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
.L22_7:
    jmp .L22_6
.L22_5:
.L22_6:
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
    jne .L23_2
.L23_1:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_57(%rip), %r12
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
.L23_4:
    jmp .L23_3
.L23_2:
.L23_3:
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
    leaq lb_files_20current_directory_fd(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl %ebx, %edi
    movq %r12, %rsi
    movl %ebx, %edx
    movq %r13, %rcx
    movl $0, %r8d
    call linkat@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L24_2
.L24_1:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_58(%rip), %r12
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
.L24_4:
    jmp .L24_3
.L24_2:
.L24_3:
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
    subq $592, %rsp
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
    jne .L25_1
    jmp .L25_2
.L25_1:
    jmp .L25_3
.L25_2:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_59(%rip), %r13
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
.L25_4:
.L25_3:
    leaq -184(%rbp), %rax
    movq %rax, -544(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -552(%rbp)
    leaq -232(%rbp), %rax
    movq %rax, -560(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r12
    jbe .L25_6
.L25_5:
    movq -560(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_60(%rip), %r13
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
    movq -560(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L25_7
.L25_6:
    movq -552(%rbp), %r10
    movq (%r10), %r13
    movq -552(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L25_8
    jmp .L25_9
.L25_9:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    call lb_core_7trap_at@PLT
.L25_8:
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
    jne .L25_10
    jmp .L25_11
.L25_10:
    movq -560(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_63(%rip), %r12
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
    movq -560(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L25_7
.L25_11:
    movq %rbx, %r10
    movq (%r10), %r13
    movq -560(%rbp), %r10
    movq %r13, (%r10)
    movq -560(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq -560(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
.L25_7:
    movq -560(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L25_13
    jmp .L25_12
.L25_13:
    movq -560(%rbp), %rax
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
.L25_14:
.L25_12:
    movq -560(%rbp), %r10
    movq -544(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -544(%rbp), %r10
    movq (%r10), %r12
    movq -544(%rbp), %rax
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
    leaq lb_c_interrupted(%rip), %r14
    movq %r12, %rax
    movq %rax, -568(%rbp)
.L25_15:
    movq -568(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setl %al
    movzbl %al, %eax
    movl %eax, -528(%rbp)
    movl -528(%rbp), %eax
    testl %eax, %eax
    jne .L25_18
    jmp .L25_51
.L25_51:
    movl -528(%rbp), %eax
    movl %eax, %r12d
    jmp .L25_19
.L25_18:
    call lb_c_errno@PLT
    movl %eax, %r12d
    movq %r14, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r12d
    sete %al
    movzbl %al, %r12d
.L25_19:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L25_16
    jmp .L25_17
.L25_16:
    movq -544(%rbp), %r10
    movq (%r10), %r12
    movq -520(%rbp), %r10
    movq (%r10), %r15
    movq %rbx, %rdi
    movq %r12, %rsi
    movq %r15, %rdx
    call readlink@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, -568(%rbp)
    jmp .L25_15
.L25_17:
    movl -528(%rbp), %eax
    testl %eax, %eax
    jne .L25_20
    jmp .L25_21
.L25_20:
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
    leaq .Ltext_64(%rip), %r14
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
    movq -544(%rbp), %r10
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
    movq -552(%rbp), %r10
    movq (%r10), %r14
    movq -552(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L25_24
    jmp .L25_23
.L25_24:
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
.L25_23:
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
.L25_25:
    jmp .L25_22
.L25_21:
.L25_22:
    movq -568(%rbp), %rax
    movq -496(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L25_27
.L25_26:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_9too_large(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_66(%rip), %r14
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
    movq -544(%rbp), %r10
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
    movq -552(%rbp), %r10
    movq (%r10), %r14
    movq -552(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L25_30
    jmp .L25_29
.L25_30:
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
.L25_29:
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
.L25_31:
    jmp .L25_28
.L25_27:
.L25_28:
    leaq -336(%rbp), %rax
    movq %rax, -576(%rbp)
    movq -568(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_68(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    leaq -384(%rbp), %rax
    movq %rax, -584(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r14
    jbe .L25_33
.L25_32:
    movq -584(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_60(%rip), %r14
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
    movq -584(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L25_34
.L25_33:
    movq -552(%rbp), %r10
    movq (%r10), %rbx
    movq -552(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L25_35
    jmp .L25_36
.L25_36:
    leaq .Ltext_68(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    call lb_core_7trap_at@PLT
.L25_35:
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
    movl %eax, -536(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -536(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L25_37
    jmp .L25_38
.L25_37:
    movq -584(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_63(%rip), %r12
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
    movq -584(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L25_34
.L25_38:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -584(%rbp), %r10
    movq %rbx, (%r10)
    movq -584(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq -584(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L25_34:
    movq -584(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L25_40
    jmp .L25_39
.L25_40:
    movq -584(%rbp), %rax
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
    movq -544(%rbp), %r10
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
    movq -552(%rbp), %r10
    movq (%r10), %r13
    movq -552(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L25_42
    jmp .L25_41
.L25_42:
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
.L25_41:
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
.L25_43:
.L25_39:
    movq -584(%rbp), %r10
    movq -576(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -576(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -544(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -568(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -576(%rbp), %r10
    movq (%r10), %rbx
    movq -576(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq -568(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -568(%rbp), %rcx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -576(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -568(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -568(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L25_44
.L25_45:
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
.L25_44:
    leaq -440(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq -568(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -456(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -568(%rbp), %rax
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
    movq -544(%rbp), %r10
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
    movq -552(%rbp), %r10
    movq (%r10), %r14
    movq -552(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L25_47
    jmp .L25_46
.L25_47:
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
.L25_46:
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
.L25_48:
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
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
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
    jne .L25_50
    jmp .L25_49
.L25_50:
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
.L25_49:
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_TemporaryFile_path
    .type lb_files_TemporaryFile_path, @function
lb_files_TemporaryFile_path:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
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
.L26_1:
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_TemporaryFile_read
    .type lb_files_TemporaryFile_read, @function
lb_files_TemporaryFile_read:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    leaq -104(%rbp), %rbx
    movq %r12, %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -144(%rbp), %rdi
    call lb_files_File_read@PLT
    leaq -144(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L27_2
    jmp .L27_1
.L27_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r13
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
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L27_3:
.L27_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L27_4:
    leaq .Ltext_82(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_TemporaryFile_write
    .type lb_files_TemporaryFile_write, @function
lb_files_TemporaryFile_write:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    leaq -104(%rbp), %rbx
    movq %r12, %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -144(%rbp), %rdi
    call lb_files_File_write@PLT
    leaq -144(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L28_2
    jmp .L28_1
.L28_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r13
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
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L28_3:
.L28_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L28_4:
    leaq .Ltext_83(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_TemporaryFile_seek
    .type lb_files_TemporaryFile_seek, @function
lb_files_TemporaryFile_seek:
    pushq %rbp
    movq %rsp, %rbp
    subq $352, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movq %rdx, -112(%rbp)
    movl %ecx, -128(%rbp)
    leaq -96(%rbp), %r10
    movq (%r10), %r13
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -128(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -224(%rbp), %r10
    movq %rbx, (%r10)
    leaq -240(%rbp), %r10
    movl %r12d, (%r10)
    movq $4, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L29_5
    jmp .L29_6
.L29_5:
    movq %r13, %r10
    movslq (%r10), %r12
    jmp .L29_7
.L29_6:
    leaq -208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_27(%rip), %r13
    leaq -256(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $18, %rax
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
    movq %rbx, %r10
    leaq -168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L29_23
.L29_8:
.L29_7:
    leaq -240(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %eax
    movq %rax, -328(%rbp)
    leaq -288(%rbp), %r10
    movl %r12d, (%r10)
    leaq -304(%rbp), %r10
    movq %rbx, (%r10)
    movl -328(%rbp), %eax
    leaq -320(%rbp), %r10
    movl %eax, (%r10)
    movl %r12d, %edi
    movq %rbx, %rsi
    movl -328(%rbp), %edx
    call lseek@PLT
    movq %rax, %r14
    jmp .L29_20
.L29_19:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L29_20:
    leaq lb_c_interrupted(%rip), %r15
    movq %r14, %rax
    movq %rax, -344(%rbp)
.L29_9:
    movq -344(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setl %al
    movzbl %al, %eax
    movl %eax, -336(%rbp)
    movl -336(%rbp), %eax
    testl %eax, %eax
    jne .L29_12
    jmp .L29_24
.L29_24:
    movl -336(%rbp), %eax
    movl %eax, %r13d
    jmp .L29_13
.L29_12:
    call lb_c_errno@PLT
    movl %eax, %r13d
    movq %r15, %r10
    movslq (%r10), %r14
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r13d
.L29_13:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L29_10
    jmp .L29_11
.L29_10:
    leaq -288(%rbp), %r10
    movl %r12d, (%r10)
    leaq -304(%rbp), %r10
    movq %rbx, (%r10)
    movl -328(%rbp), %eax
    leaq -320(%rbp), %r10
    movl %eax, (%r10)
    movl %r12d, %edi
    movq %rbx, %rsi
    movl -328(%rbp), %edx
    call lseek@PLT
    movq %rax, %r13
    jmp .L29_22
.L29_21:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L29_22:
    movq %r13, %rax
    movq %rax, -344(%rbp)
    jmp .L29_9
.L29_11:
    movl -336(%rbp), %eax
    testl %eax, %eax
    jne .L29_14
    jmp .L29_15
.L29_14:
    leaq -208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_c_errno@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_41(%rip), %r13
    leaq -272(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L29_23
.L29_17:
    jmp .L29_16
.L29_15:
.L29_16:
    leaq -208(%rbp), %rbx
    movq -344(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L29_23
.L29_18:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L29_23:
    leaq -168(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L29_2
    jmp .L29_1
.L29_2:
    movq $8, %rcx
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
.L29_3:
.L29_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
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
.L29_4:
    leaq .Ltext_84(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_TemporaryFile_12release_name
    .type lb_files_TemporaryFile_12release_name, @function
lb_files_TemporaryFile_12release_name:
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
    movq (%r10), %r13
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L30_2
.L30_1:
    leaq -64(%rbp), %r14
    movq $24, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -152(%rbp)
    movq -152(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L30_4
    jmp .L30_5
.L30_4:
    leaq -80(%rbp), %r12
    movq -152(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L30_6
.L30_5:
    leaq .Ltext_86(%rip), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $39, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_87(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_87(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L30_6:
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -112(%rbp), %r13
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r15
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_88(%rip), %r13
    leaq -128(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -144(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq -152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L30_3
.L30_2:
.L30_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_TemporaryFile_11remove_name
    .type lb_files_TemporaryFile_11remove_name, @function
lb_files_TemporaryFile_11remove_name:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L31_2
.L31_1:
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
.L31_4:
    jmp .L31_3
.L31_2:
.L31_3:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -144(%rbp), %rdi
    call lb_files_11remove_file@PLT
    leaq -144(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L31_8
    jmp .L31_7
.L31_8:
    leaq -112(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L31_5
.L31_7:
    jmp .L31_6
.L31_5:
    movq %rbx, %r10
    movl (%r10), %r12d
    leaq lb_files_missing(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    cmpl %r14d, %r12d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L31_10
.L31_9:
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
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
.L31_12:
    jmp .L31_11
.L31_10:
.L31_11:
.L31_6:
    movq %r13, %rdi
    call lb_files_TemporaryFile_12release_name@PLT
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

    .p2align 4
    .globl lb_files_Replacement_prepare
    .type lb_files_Replacement_prepare, @function
lb_files_Replacement_prepare:
    pushq %rbp
    movq %rsp, %rbp
    subq $1248, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -152(%rbp)
    movl %edx, -168(%rbp)
    movl %ecx, -184(%rbp)
    leaq -200(%rbp), %rax
    movq %rax, -1184(%rbp)
    leaq -152(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    leaq -216(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_paths_directory@PLT
    leaq -232(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -232(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -280(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -280(%rbp), %r12
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
    leaq -136(%rbp), %r13
    movq $56, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $80, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $88, %rdx
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
.L32_1:
    movq %r12, %r10
    movq -1184(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -288(%rbp), %rax
    movq %rax, -1032(%rbp)
    movq -1032(%rbp), %r11
    movq $0, 0(%r11)
    leaq -184(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, -1040(%rbp)
    movl -1040(%rbp), %eax
    testl %eax, %eax
    jne .L32_4
    jmp .L32_5
.L32_4:
    movq -1184(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rsi
    movl $0, %edx
    movl $420, %ecx
    leaq -328(%rbp), %rdi
    call lb_files_File_open@PLT
    leaq -328(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L32_8
    jmp .L32_7
.L32_8:
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -136(%rbp), %r13
    movq $56, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $80, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1032(%rbp), %rsi
    leaq -552(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -552(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L32_17
    jmp .L32_16
.L32_17:
    leaq -520(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L32_14
.L32_16:
    jmp .L32_15
.L32_14:
.L32_15:
.L32_18:
    movq -1184(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $88, %rdx
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
.L32_7:
    movq %r15, %r10
    movq -1032(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    jmp .L32_6
.L32_5:
.L32_6:
    leaq -368(%rbp), %rax
    movq %rax, -1192(%rbp)
    movq -1184(%rbp), %r10
    movq (%r10), %r12
    leaq -168(%rbp), %r14
    movq %r14, %r10
    movl (%r10), %eax
    movl %eax, -1048(%rbp)
    leaq -640(%rbp), %r10
    movq %r12, (%r10)
    movl -1048(%rbp), %eax
    leaq -656(%rbp), %r10
    movl %eax, (%r10)
    leaq -672(%rbp), %rax
    movq %rax, -1200(%rbp)
    movq %r12, %rdi
    call strlen@PLT
    movq %rax, %r15
    leaq -688(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    leaq .Ltext_71(%rip), %r12
    leaq -704(%rbp), %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq $38, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    leaq -752(%rbp), %rdi
    call lb_paths_join@PLT
    leaq -752(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L32_20
    jmp .L32_19
.L32_20:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -624(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
    movq %r12, %r10
    leaq -440(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    jmp .L32_47
.L32_19:
    movq %r13, %r10
    movq -1200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -768(%rbp), %rax
    movq %rax, -1056(%rbp)
    leaq .Ltext_72(%rip), %rax
    movq %rax, -1064(%rbp)
    leaq -784(%rbp), %rax
    movq %rax, -1072(%rbp)
    movq -1064(%rbp), %rax
    movq -1072(%rbp), %r10
    movq %rax, (%r10)
    movq -1072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq $16, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq -1072(%rbp), %r10
    movq -1056(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1200(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1080(%rbp)
    movq -1200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1088(%rbp)
    movq -1088(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1096(%rbp)
    movq -1096(%rbp), %rax
    movq $32, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_73(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -1104(%rbp)
    leaq -800(%rbp), %rax
    movq %rax, -1112(%rbp)
    leaq -840(%rbp), %rax
    movq %rax, -1120(%rbp)
    movq -1120(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1128(%rbp)
    leaq -872(%rbp), %rax
    movq %rax, -1216(%rbp)
    movq -1216(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -1136(%rbp)
    leaq -896(%rbp), %rax
    movq %rax, -1232(%rbp)
    leaq -968(%rbp), %rax
    movq %rax, -1240(%rbp)
    movq -1240(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -1152(%rbp)
    movq -1240(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1160(%rbp)
    leaq -928(%rbp), %rax
    movq %rax, -1168(%rbp)
    leaq lb_files_14already_exists(%rip), %rax
    movq %rax, -1176(%rbp)
    movq $0, %rax
    movq %rax, -1208(%rbp)
.L32_22:
    movq -1208(%rbp), %rax
    movq $128, %rcx
    cmpq %rcx, %rax
    jae .L32_24
.L32_23:
    movq -1112(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -1112(%rbp), %rax
    movq -1120(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -1128(%rbp), %r10
    movq %rax, (%r10)
    movq -1120(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -872(%rbp), %rdi
    call lb_os_12random_bytes@PLT
    movq -1136(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L32_28
    jmp .L32_27
.L32_28:
    leaq -824(%rbp), %r12
    movq -1216(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L32_25
.L32_27:
    jmp .L32_26
.L32_25:
    leaq -624(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_files_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_74(%rip), %r14
    leaq -888(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $44, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -1200(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r12, %r10
    leaq -440(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    jmp .L32_47
.L32_26:
    movq $0, %rax
    movq %rax, -1224(%rbp)
.L32_30:
    movq -1224(%rbp), %rax
    movq $16, %rcx
    cmpq %rcx, %rax
    jae .L32_33
.L32_31:
    movq -1224(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -1104(%rbp), %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -1080(%rbp), %rax
    movq %rax, %rbx
    addq %r14, %rbx
    movq -1112(%rbp), %rax
    movq -1224(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, -1144(%rbp)
    movq -1144(%rbp), %r10
    movzbl (%r10), %r12d
.L32_35:
    movl $4, %ecx
    movl %r12d, %r15d
    shrl %cl, %r15d
    movzbl %r15b, %r15d
    movl %r15d, %r15d
    movq $16, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1064(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq %rbx, %r10
    movb %r15b, (%r10)
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_77(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -1080(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq -1144(%rbp), %r10
    movzbl (%r10), %r13d
    movl $15, %ecx
    andl %ecx, %r13d
    movl %r13d, %r13d
    movq -1064(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq %r15, %r10
    movb %r13b, (%r10)
.L32_32:
    movq -1224(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -1224(%rbp)
    jmp .L32_30
.L32_33:
    movq -1200(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $5, %edx
    movl -1048(%rbp), %ecx
    leaq -968(%rbp), %rdi
    call lb_files_File_open@PLT
    movq -1152(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L32_39
    jmp .L32_38
.L32_39:
    movq -1160(%rbp), %r10
    movq -1168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L32_36
.L32_38:
    leaq -904(%rbp), %rbx
    movq -1240(%rbp), %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    jmp .L32_37
.L32_36:
    movq -1168(%rbp), %r10
    movl (%r10), %ebx
    movq -1176(%rbp), %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    jne .L32_41
.L32_40:
    movq -1208(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -1208(%rbp)
    jmp .L32_22
.L32_41:
.L32_42:
    leaq -624(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -1200(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r12, %r10
    leaq -440(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    jmp .L32_47
.L32_37:
    movq %rbx, %r10
    movq -1232(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -1008(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq -1232(%rbp), %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -1200(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -624(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %r10
    leaq -440(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    jmp .L32_47
.L32_24:
    leaq -624(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_14already_exists(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_79(%rip), %r13
    leaq -1024(%rbp), %r14
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
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1200(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %rbx, %r10
    leaq -440(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
.L32_47:
    leaq -440(%rbp), %r12
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L32_11
    jmp .L32_10
.L32_11:
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -136(%rbp), %r13
    movq $56, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $80, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -1032(%rbp), %rsi
    leaq -552(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -552(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L32_51
    jmp .L32_50
.L32_51:
    leaq -520(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L32_48
.L32_50:
    jmp .L32_49
.L32_48:
.L32_49:
.L32_52:
    movq -1184(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $88, %rdx
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
.L32_10:
    movq %r12, %r10
    movq -1192(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -496(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movq -1032(%rbp), %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq -1192(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $48, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl -1040(%rbp), %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -136(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $80, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -1184(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $88, %rdx
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
    .globl lb_files_Replacement_finish
    .type lb_files_Replacement_finish, @function
lb_files_Replacement_finish:
    pushq %rbp
    movq %rsp, %rbp
    subq $496, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    movq %rdx, -104(%rbp)
    movl %ecx, -120(%rbp)
    movq %r8, -136(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -488(%rbp)
    movq -488(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -480(%rbp)
    movq -480(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L33_1
    jmp .L33_2
.L33_1:
    movq -488(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %rsi
    leaq -328(%rbp), %rdi
    call lb_files_File_sync@PLT
    leaq -328(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L33_24
    jmp .L33_23
.L33_24:
    leaq -296(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %r12, %r10
    leaq -168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L33_26
.L33_25:
.L33_23:
    leaq -296(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %r10
    leaq -168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L33_26:
    leaq -168(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L33_5
    jmp .L33_4
.L33_5:
    leaq -80(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L33_6:
.L33_4:
    jmp .L33_3
.L33_2:
.L33_3:
    movq -488(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    leaq -120(%rbp), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    leaq -376(%rbp), %r10
    movq %r14, (%r10)
    leaq -392(%rbp), %r10
    movl %r15d, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L33_28
.L33_27:
    leaq -360(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_85(%rip), %r12
    leaq -408(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $40, %rax
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
    movq %rbx, %r10
    leaq -200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L33_37
.L33_30:
    jmp .L33_29
.L33_28:
.L33_29:
    movq %r12, %rsi
    leaq -440(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -440(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L33_32
    jmp .L33_31
.L33_32:
    leaq -360(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L33_37
.L33_33:
.L33_31:
    movq %r15, %r10
    movq (%r10), %rbx
    leaq -392(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq %rbx, %rsi
    movq %r14, %rdx
    movl %r13d, %ecx
    leaq -472(%rbp), %rdi
    call lb_files_rename@PLT
    leaq -472(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L33_35
    jmp .L33_34
.L33_35:
    leaq -360(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L33_37
.L33_36:
.L33_34:
    movq %r12, %rdi
    call lb_files_TemporaryFile_12release_name@PLT
    leaq -360(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L33_37:
    leaq -200(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L33_8
    jmp .L33_7
.L33_8:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
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
.L33_9:
.L33_7:
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L33_13
    jmp .L33_11
.L33_13:
.L33_10:
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L33_12
.L33_11:
.L33_12:
    movq -480(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L33_14
    jmp .L33_15
.L33_14:
    movq -488(%rbp), %rsi
    leaq -232(%rbp), %rdi
    call lb_files_File_sync@PLT
    leaq -232(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L33_18
    jmp .L33_17
.L33_18:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
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
.L33_19:
.L33_17:
    movq -488(%rbp), %rsi
    leaq -264(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -264(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L33_21
    jmp .L33_20
.L33_21:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
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
.L33_22:
.L33_20:
    jmp .L33_16
.L33_15:
.L33_16:
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

    .p2align 4
    .globl lb_files_Replacement_destroy
    .type lb_files_Replacement_destroy, @function
lb_files_Replacement_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $352, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rsi
    leaq -192(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -192(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L34_8
    jmp .L34_7
.L34_8:
    leaq -160(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L34_5
.L34_7:
    jmp .L34_6
.L34_5:
    movq %rbx, %rsi
    leaq -248(%rbp), %rdi
    call lb_files_TemporaryFile_11remove_name@PLT
    leaq -248(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L34_12
    jmp .L34_11
.L34_12:
    leaq -216(%rbp), %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L34_9
.L34_11:
    jmp .L34_10
.L34_9:
.L34_10:
    leaq -136(%rbp), %r14
    movq %r12, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r14, %r10
    leaq -104(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L34_17
.L34_13:
.L34_6:
    movq %rbx, %rsi
    leaq -280(%rbp), %rdi
    call lb_files_TemporaryFile_11remove_name@PLT
    leaq -280(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L34_15
    jmp .L34_14
.L34_15:
    leaq -136(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %r10
    leaq -104(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L34_17
.L34_16:
.L34_14:
    leaq -136(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %r10
    leaq -104(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L34_17:
    leaq -104(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L34_4
    jmp .L34_3
.L34_4:
    leaq -72(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L34_1
.L34_3:
    jmp .L34_2
.L34_1:
.L34_2:
    movq %rbx, %rdi
    call lb_files_TemporaryFile_12release_name@PLT
.L34_18:
    movq -344(%rbp), %rsi
    leaq -336(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -336(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L34_22
    jmp .L34_21
.L34_22:
    leaq -304(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L34_19
.L34_21:
    jmp .L34_20
.L34_19:
.L34_20:
.L34_23:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_9copy_file
    .type lb_files_9copy_file, @function
lb_files_9copy_file:
    pushq %rbp
    movq %rsp, %rbp
    subq $6720, %rsp
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
    movq %rax, -6696(%rbp)
    movq -6696(%rbp), %rax
    testq %rax, %rax
    jne .L35_4
    jmp .L35_2
.L35_4:
.L35_1:
    movl $0, %eax
    movq -6696(%rbp), %r10
    movb %al, (%r10)
    jmp .L35_3
.L35_2:
.L35_3:
    leaq -208(%rbp), %rax
    movq %rax, -6704(%rbp)
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
    jne .L35_6
    jmp .L35_5
.L35_6:
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
.L35_5:
    movq %r14, %r10
    movq -6704(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -376(%rbp), %rax
    movq %rax, -6712(%rbp)
    movq -6704(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L35_61
    jmp .L35_62
.L35_61:
    movq -6704(%rbp), %r10
    movslq (%r10), %r12
    jmp .L35_63
.L35_62:
    leaq -5520(%rbp), %r12
    movq $128, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    leaq lb_io_closed(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movq %r14, %r10
    movl %ebx, (%r10)
    leaq .Ltext_27(%rip), %rbx
    leaq -5536(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq $18, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $152, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -536(%rbp), %rdi
    movq %r12, %rsi
    movq $160, %rdx
    call memcpy@PLT
    jmp .L35_69
.L35_63:
    movl %r12d, %esi
    leaq -5696(%rbp), %rdi
    call lb_files_19metadata_descriptor@PLT
    leaq -5696(%rbp), %r14
    movq $152, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L35_66
    jmp .L35_65
.L35_66:
    movq $128, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -5520(%rbp), %r12
    movq $128, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $152, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -536(%rbp), %rdi
    movq %r12, %rsi
    movq $160, %rdx
    call memcpy@PLT
    jmp .L35_69
.L35_65:
    leaq -5520(%rbp), %rbx
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
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -536(%rbp), %rdi
    movq %rbx, %rsi
    movq $160, %rdx
    call memcpy@PLT
.L35_69:
    leaq -536(%rbp), %r12
    movq $152, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L35_9
    jmp .L35_8
.L35_9:
    movq $128, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -6704(%rbp), %rsi
    leaq -5752(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -5752(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L35_73
    jmp .L35_72
.L35_73:
    leaq -5720(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L35_70
.L35_72:
    jmp .L35_71
.L35_70:
.L35_71:
.L35_74:
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
.L35_8:
    movq %r12, %r10
    movq -6712(%rbp), %r11
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
    movq -6712(%rbp), %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L35_12
.L35_11:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_12is_directory(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_90(%rip), %r14
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
    movq -6704(%rbp), %rsi
    leaq -5752(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -5752(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L35_78
    jmp .L35_77
.L35_78:
    leaq -5720(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L35_75
.L35_77:
    jmp .L35_76
.L35_75:
.L35_76:
.L35_79:
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
.L35_12:
.L35_13:
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -6656(%rbp)
    movq -6656(%rbp), %rax
    leaq -5936(%rbp), %r10
    movq %rax, (%r10)
    leaq -6064(%rbp), %r14
    movq -6656(%rbp), %rsi
    movl $0, %edx
    leaq -6376(%rbp), %rdi
    call lb_files_metadata@PLT
    leaq -6376(%rbp), %r15
    movq $152, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L35_83
    jmp .L35_82
.L35_83:
    movq $128, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -6216(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L35_80
.L35_82:
    leaq -6192(%rbp), %r12
    movq %r15, %r10
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
    jmp .L35_81
.L35_80:
    movq %r14, %r10
    movl (%r10), %r12d
    leaq lb_files_missing(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    cmpl %r15d, %r12d
    jne .L35_85
.L35_84:
    leaq -6512(%rbp), %r12
    movq %r12, %rdi
    xorl %esi, %esi
    movq $136, %rdx
    call memset@PLT
    leaq -5920(%rbp), %r14
    movq %r14, %rdi
    movq %r12, %rsi
    movq $136, %rdx
    call memcpy@PLT
    movq $160, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -720(%rbp), %rdi
    movq %r14, %rsi
    movq $168, %rdx
    call memcpy@PLT
    jmp .L35_90
.L35_85:
.L35_86:
    leaq -5920(%rbp), %r15
    movq $136, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $160, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -720(%rbp), %rdi
    movq %r15, %rsi
    movq $168, %rdx
    call memcpy@PLT
    jmp .L35_90
.L35_81:
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
    leaq -6648(%rbp), %rbx
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
    leaq -5920(%rbp), %r13
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
.L35_90:
    leaq -720(%rbp), %r12
    movq $160, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L35_19
    jmp .L35_18
.L35_19:
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
    movq -6704(%rbp), %rsi
    leaq -5752(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -5752(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L35_94
    jmp .L35_93
.L35_94:
    leaq -5720(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L35_91
.L35_93:
    jmp .L35_92
.L35_91:
.L35_92:
.L35_95:
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
.L35_18:
    movq $128, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L35_21
    jmp .L35_16
.L35_21:
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
.L35_15:
    leaq -152(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L35_23
.L35_22:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_14already_exists(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_91(%rip), %r13
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
    movq -6704(%rbp), %rsi
    leaq -5752(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -5752(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L35_99
    jmp .L35_98
.L35_99:
    leaq -5720(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L35_96
.L35_98:
    jmp .L35_97
.L35_96:
.L35_97:
.L35_100:
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
.L35_23:
.L35_24:
    movq -6712(%rbp), %rax
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
    jne .L35_29
    jmp .L35_151
.L35_151:
    movl %r12d, %r13d
    jmp .L35_30
.L35_29:
    movq -6712(%rbp), %rax
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
.L35_30:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L35_26
    jmp .L35_27
.L35_26:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_92(%rip), %r13
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
    movq -6704(%rbp), %rsi
    leaq -5752(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -5752(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L35_104
    jmp .L35_103
.L35_104:
    leaq -5720(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L35_101
.L35_103:
    jmp .L35_102
.L35_101:
.L35_102:
.L35_105:
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
.L35_27:
.L35_28:
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $2, %ecx
    cmpl %ecx, %r12d
    jne .L35_33
.L35_32:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_12is_directory(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_93(%rip), %r13
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
    movq -6704(%rbp), %rsi
    leaq -5752(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -5752(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L35_109
    jmp .L35_108
.L35_109:
    leaq -5720(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L35_106
.L35_108:
    jmp .L35_107
.L35_106:
.L35_107:
.L35_110:
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
.L35_33:
.L35_34:
    jmp .L35_17
.L35_16:
.L35_17:
    leaq -952(%rbp), %r13
    leaq -168(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    leaq -184(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq -6656(%rbp), %rsi
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
    jne .L35_37
    jmp .L35_36
.L35_37:
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
    movq -6704(%rbp), %rsi
    leaq -5752(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -5752(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L35_114
    jmp .L35_113
.L35_114:
    leaq -5720(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L35_111
.L35_113:
    jmp .L35_112
.L35_111:
.L35_112:
.L35_115:
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
.L35_36:
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
    movq %rax, -6664(%rbp)
    movq -6664(%rbp), %rdi
    xorl %esi, %esi
    movq $4096, %rdx
    call memset@PLT
    leaq -5152(%rbp), %rax
    movq %rax, -6672(%rbp)
    movq -6704(%rbp), %rax
    movq -6672(%rbp), %r10
    movq %rax, (%r10)
    leaq lb_vt_files_File_Reader(%rip), %rax
    movq %rax, -6680(%rbp)
    movq -6672(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq -6680(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    leaq -5168(%rbp), %rax
    movq %rax, -6688(%rbp)
    movq -6688(%rbp), %r10
    movq %r14, (%r10)
    leaq lb_vt_files_TemporaryFile_Writer(%rip), %r14
    movq -6688(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    leaq -5184(%rbp), %r14
    movq -6664(%rbp), %rax
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
    movq -6672(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -6688(%rbp), %r10
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
    jne .L35_40
    jmp .L35_39
.L35_40:
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
    movq -6704(%rbp), %rsi
    leaq -5752(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -5752(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L35_119
    jmp .L35_118
.L35_119:
    leaq -5720(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L35_116
.L35_118:
    jmp .L35_117
.L35_116:
.L35_117:
.L35_120:
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
.L35_39:
    movq %rbx, %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    jne .L35_43
.L35_42:
.L35_48:
    leaq -5240(%rbp), %rbx
    movq -6664(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -6704(%rbp), %rsi
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
    jne .L35_51
    jmp .L35_50
.L35_51:
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
    movq -6704(%rbp), %rsi
    leaq -5752(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -5752(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L35_124
    jmp .L35_123
.L35_124:
    leaq -5720(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L35_121
.L35_123:
    jmp .L35_122
.L35_121:
.L35_122:
.L35_125:
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
.L35_50:
    movq %r14, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L35_46
.L35_45:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_9too_large(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_95(%rip), %r14
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
    movq -6704(%rbp), %rsi
    leaq -5752(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -5752(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L35_129
    jmp .L35_128
.L35_129:
    leaq -5720(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L35_126
.L35_128:
    jmp .L35_127
.L35_126:
.L35_127:
.L35_130:
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
.L35_46:
.L35_47:
    jmp .L35_44
.L35_43:
.L35_44:
    movq -6704(%rbp), %rsi
    leaq -5328(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -5328(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L35_55
    jmp .L35_54
.L35_55:
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
    movq -6704(%rbp), %rsi
    leaq -5752(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -5752(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L35_134
    jmp .L35_133
.L35_134:
    leaq -5720(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L35_131
.L35_133:
    jmp .L35_132
.L35_131:
.L35_132:
.L35_135:
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
.L35_54:
    leaq -152(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq %r13, %rsi
    movq -6656(%rbp), %rdx
    movl %ebx, %ecx
    movq -6696(%rbp), %r8
    leaq -5360(%rbp), %rdi
    call lb_files_Replacement_finish@PLT
    leaq -5360(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L35_58
    jmp .L35_57
.L35_58:
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
    movq -6704(%rbp), %rsi
    leaq -5752(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -5752(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L35_139
    jmp .L35_138
.L35_139:
    leaq -5720(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L35_136
.L35_138:
    jmp .L35_137
.L35_136:
.L35_137:
.L35_140:
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
.L35_57:
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
    movq -6704(%rbp), %rsi
    leaq -5752(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -5752(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L35_144
    jmp .L35_143
.L35_144:
    leaq -5720(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L35_141
.L35_143:
    jmp .L35_142
.L35_141:
.L35_142:
.L35_145:
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

    .p2align 4
    .globl lb_files_read
    .type lb_files_read, @function
lb_files_read:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -104(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movq $-1, %rdx
    leaq -152(%rbp), %rdi
    call lb_files_10read_limit@PLT
    leaq -152(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L36_2
    jmp .L36_1
.L36_2:
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
.L36_3:
.L36_1:
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
.L36_4:
    leaq .Ltext_98(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_10read_limit
    .type lb_files_10read_limit, @function
lb_files_10read_limit:
    pushq %rbp
    movq %rsp, %rbp
    subq $5024, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    movq %rdx, -128(%rbp)
    leaq -136(%rbp), %rax
    movq %rax, -4960(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $0, %edx
    movl $420, %ecx
    leaq -176(%rbp), %rdi
    call lb_files_File_open@PLT
    leaq -176(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L37_2
    jmp .L37_1
.L37_2:
    movq $8, %rcx
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
.L37_1:
    movq %r13, %r10
    movq -4960(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -192(%rbp), %rax
    movq %rax, -4720(%rbp)
    movq -4720(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -4288(%rbp), %rax
    movq %rax, -4728(%rbp)
    movq -4728(%rbp), %rdi
    xorl %esi, %esi
    movq $4096, %rdx
    call memset@PLT
    leaq -128(%rbp), %rax
    movq %rax, -4736(%rbp)
    leaq -4304(%rbp), %rax
    movq %rax, -4744(%rbp)
    movq -4744(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4752(%rbp)
    leaq -4344(%rbp), %rax
    movq %rax, -4976(%rbp)
    movq -4976(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -4760(%rbp)
    movq -4720(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4784(%rbp)
    leaq -4368(%rbp), %rax
    movq %rax, -4792(%rbp)
    leaq -4384(%rbp), %rax
    movq %rax, -4984(%rbp)
    movq -4984(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4800(%rbp)
    leaq -4504(%rbp), %rax
    movq %rax, -4992(%rbp)
    movq -4992(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -4920(%rbp)
    leaq -4432(%rbp), %rax
    movq %rax, -5000(%rbp)
    leaq -4456(%rbp), %rax
    movq %rax, -5008(%rbp)
    movq -5008(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4848(%rbp)
    movq -5000(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4896(%rbp)
    movq -5000(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -4904(%rbp)
    movq -5000(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4856(%rbp)
    leaq .Ltext_63(%rip), %rax
    movq %rax, -4864(%rbp)
    movq -4856(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4872(%rbp)
    movq -4856(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4880(%rbp)
    movq -5000(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -4888(%rbp)
    movq -5000(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4808(%rbp)
    leaq .Ltext_60(%rip), %rax
    movq %rax, -4816(%rbp)
    movq -4808(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4824(%rbp)
    movq -4808(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4832(%rbp)
    movq -5000(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -4840(%rbp)
    movq -5000(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -4912(%rbp)
    leaq -4520(%rbp), %rax
    movq %rax, -4928(%rbp)
    movq -4928(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4936(%rbp)
    leaq -4536(%rbp), %rax
    movq %rax, -4944(%rbp)
    movq -4944(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4952(%rbp)
    movq $0, %rax
    movq %rax, -4968(%rbp)
.L37_4:
.L37_5:
    movq -4736(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq -4968(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_99(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L37_7
    jmp .L37_8
.L37_7:
    movq $1, %rax
    movq %rax, %r14
    jmp .L37_9
.L37_8:
    movq $4096, %rcx
    cmpq %rcx, %r14
    jae .L37_11
.L37_10:
    movq %r14, %rbx
    jmp .L37_12
.L37_11:
    movq $4096, %rax
    movq %rax, %rbx
.L37_12:
    movq %rbx, %r14
.L37_9:
    movq $4097, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L37_13
.L37_14:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
.L37_13:
    movq -4728(%rbp), %rax
    movq -4744(%rbp), %r10
    movq %rax, (%r10)
    movq -4752(%rbp), %r10
    movq %r14, (%r10)
    movq -4960(%rbp), %rsi
    movq -4744(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -4344(%rbp), %rdi
    call lb_files_File_read@PLT
    movq -4760(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L37_16
    jmp .L37_15
.L37_16:
    movq -4976(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
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
    movq -4720(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_files_14release_buffer@PLT
    movq -4960(%rbp), %rsi
    leaq -4712(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -4712(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L37_82
    jmp .L37_81
.L37_82:
    leaq -4680(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L37_79
.L37_81:
    jmp .L37_80
.L37_79:
.L37_80:
.L37_83:
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
.L37_15:
    movq -4976(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -4768(%rbp)
    movq -4768(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L37_19
.L37_18:
    jmp .L37_6
.L37_19:
.L37_20:
    testl %r15d, %r15d
    jne .L37_22
    jmp .L37_23
.L37_22:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_files_9too_large(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_101(%rip), %r14
    leaq -4360(%rbp), %r15
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
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -4720(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_files_14release_buffer@PLT
    movq -4960(%rbp), %rsi
    leaq -4712(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -4712(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L37_87
    jmp .L37_86
.L37_87:
    leaq -4680(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L37_84
.L37_86:
    jmp .L37_85
.L37_84:
.L37_85:
.L37_88:
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
.L37_23:
.L37_24:
    movq -4768(%rbp), %rax
    movq -4968(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -4776(%rbp)
    movq -4784(%rbp), %r10
    movq (%r10), %r15
    movq -4776(%rbp), %rax
    cmpq %r15, %rax
    jbe .L37_27
.L37_26:
    movq %r15, %rdi
    movq $2, %rsi
    movl $64, %edx
    movq -4792(%rbp), %rcx
    call lb_core_6qmul_u@PLT
    movl %eax, %r12d
    movq -4792(%rbp), %r10
    movq (%r10), %rbx
    movq -4984(%rbp), %r10
    movq %rbx, (%r10)
    movq -4800(%rbp), %r10
    movb %r12b, (%r10)
    movq -4800(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L37_29
    jmp .L37_30
.L37_29:
    movq %rbx, %r12
    jmp .L37_31
.L37_30:
    movq %r13, %r12
.L37_31:
    movq $4096, %rcx
    cmpq %rcx, %r12
    jae .L37_33
.L37_32:
    movq $4096, %rax
    movq %rax, %r12
    jmp .L37_34
.L37_33:
.L37_34:
    movq -4776(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L37_36
.L37_35:
    movq -4776(%rbp), %rax
    movq %rax, %rbx
    jmp .L37_37
.L37_36:
    movq %r12, %rbx
.L37_37:
    cmpq %r13, %rbx
    jbe .L37_39
.L37_38:
    movq %r13, %rbx
    jmp .L37_40
.L37_39:
.L37_40:
    movq -4784(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L37_42
.L37_41:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rbx
    jbe .L37_45
.L37_44:
    movl $208273409, %eax
    movq -4808(%rbp), %r10
    movl %eax, (%r10)
    movq -4816(%rbp), %rax
    movq -4824(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq -4832(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -4840(%rbp), %r10
    movb %al, (%r10)
    jmp .L37_46
.L37_45:
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L37_47
    jmp .L37_48
.L37_48:
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    call lb_core_7trap_at@PLT
.L37_47:
    movq %r15, %r10
    movq (%r10), %r13
    movq %r12, %rsi
    movq %rbx, %rdx
    movq $1, %rcx
    leaq -4456(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    movq -4848(%rbp), %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ecx
    movl %r14d, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L37_49
    jmp .L37_50
.L37_49:
    movl $208273409, %eax
    movq -4856(%rbp), %r10
    movl %eax, (%r10)
    movq -4864(%rbp), %rax
    movq -4872(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -4880(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -4888(%rbp), %r10
    movb %al, (%r10)
    jmp .L37_46
.L37_50:
    movq -5008(%rbp), %r10
    movq (%r10), %r12
    movq -5000(%rbp), %r10
    movq %r12, (%r10)
    movq -4896(%rbp), %r10
    movq %rbx, (%r10)
    movl $0, %eax
    movq -4904(%rbp), %r10
    movb %al, (%r10)
.L37_46:
    movq -4912(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L37_52
    jmp .L37_51
.L37_52:
    movq -5000(%rbp), %rax
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
    movq -4720(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_files_14release_buffer@PLT
    movq -4960(%rbp), %rsi
    leaq -4712(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -4712(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L37_92
    jmp .L37_91
.L37_92:
    leaq -4680(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L37_89
.L37_91:
    jmp .L37_90
.L37_89:
.L37_90:
.L37_93:
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
.L37_51:
    movq -5000(%rbp), %r10
    movq -4720(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L37_43
.L37_42:
    movq -4720(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %rcx
    leaq -4504(%rbp), %rdi
    call lb_memory_grow@PLT
    movq -4920(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L37_55
    jmp .L37_54
.L37_55:
    movq -4992(%rbp), %rax
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
    movq -4720(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_files_14release_buffer@PLT
    movq -4960(%rbp), %rsi
    leaq -4712(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -4712(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L37_97
    jmp .L37_96
.L37_97:
    leaq -4680(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L37_94
.L37_96:
    jmp .L37_95
.L37_94:
.L37_95:
.L37_98:
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
.L37_54:
    movq -4992(%rbp), %r10
    movq -4720(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L37_43:
    jmp .L37_28
.L37_27:
.L37_28:
    movq -4720(%rbp), %r10
    movq (%r10), %r12
    movq -4784(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq -4968(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_104(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_104(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -4968(%rbp), %rax
    cmpq %r13, %rax
    jbe .L37_57
.L37_58:
    leaq .Ltext_104(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
.L37_57:
    movq -4968(%rbp), %rax
    movq %rax, %rbx
    addq %r12, %rbx
    movq -4968(%rbp), %rcx
    movq %r13, %r14
    subq %rcx, %r14
    movq -4928(%rbp), %r10
    movq %rbx, (%r10)
    movq -4936(%rbp), %r10
    movq %r14, (%r10)
    movq -4728(%rbp), %rax
    movq -4944(%rbp), %r10
    movq %rax, (%r10)
    movq $4096, %rax
    movq -4952(%rbp), %r10
    movq %rax, (%r10)
    movq -4928(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -4944(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -4768(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -4776(%rbp), %rax
    movq %rax, -4968(%rbp)
    jmp .L37_4
.L37_6:
    movq -4960(%rbp), %rsi
    leaq -4568(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -4568(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L37_60
    jmp .L37_59
.L37_60:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -4720(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_files_14release_buffer@PLT
    movq -4960(%rbp), %rsi
    leaq -4712(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -4712(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L37_102
    jmp .L37_101
.L37_102:
    leaq -4680(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L37_99
.L37_101:
    jmp .L37_100
.L37_99:
.L37_100:
.L37_103:
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
.L37_59:
    movq -4720(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -4968(%rbp), %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L37_65
    jmp .L37_124
.L37_124:
    movl %ebx, %r12d
    jmp .L37_66
.L37_65:
    movq -4968(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r12d
.L37_66:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L37_62
    jmp .L37_63
.L37_62:
    leaq -96(%rbp), %rbx
    movq -4720(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -4960(%rbp), %rsi
    leaq -4712(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -4712(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L37_107
    jmp .L37_106
.L37_107:
    leaq -4680(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L37_104
.L37_106:
    jmp .L37_105
.L37_104:
.L37_105:
.L37_108:
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
.L37_63:
.L37_64:
    leaq -4584(%rbp), %rax
    movq %rax, -5016(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -4632(%rbp), %rax
    movq %rax, -5024(%rbp)
    movq -4968(%rbp), %rax
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rax
    jbe .L37_69
.L37_68:
    movq -5024(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_60(%rip), %r13
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
    movq -5024(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L37_70
.L37_69:
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L37_71
    jmp .L37_72
.L37_72:
    leaq .Ltext_106(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    call lb_core_7trap_at@PLT
.L37_71:
    movq %r15, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq -4968(%rbp), %rdx
    movq $1, %rcx
    leaq -4656(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -4656(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq -4968(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setne %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    andl %r13d, %r12d
    testl %r12d, %r12d
    jne .L37_73
    jmp .L37_74
.L37_73:
    movq -5024(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_63(%rip), %r12
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
    movq -5024(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L37_70
.L37_74:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -5024(%rbp), %r10
    movq %rbx, (%r10)
    movq -5024(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -4968(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -5024(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L37_70:
    movq -5024(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L37_76
    jmp .L37_75
.L37_76:
    movq -5024(%rbp), %rax
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
    movq -4720(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_files_14release_buffer@PLT
    movq -4960(%rbp), %rsi
    leaq -4712(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -4712(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L37_112
    jmp .L37_111
.L37_112:
    leaq -4680(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L37_109
.L37_111:
    jmp .L37_110
.L37_109:
.L37_110:
.L37_113:
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
.L37_75:
    movq -5024(%rbp), %r10
    movq -5016(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -5016(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -4720(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -4968(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -4720(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_files_14release_buffer@PLT
    leaq -96(%rbp), %rbx
    movq -5016(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -4960(%rbp), %rsi
    leaq -4712(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -4712(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L37_117
    jmp .L37_116
.L37_117:
    leaq -4680(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L37_114
.L37_116:
    jmp .L37_115
.L37_114:
.L37_115:
.L37_118:
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
    .globl lb_files_write
    .type lb_files_write, @function
lb_files_write:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
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
    leaq -120(%rbp), %r12
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $2, %edx
    movl $420, %ecx
    leaq -160(%rbp), %rdi
    call lb_files_File_open@PLT
    leaq -160(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L38_2
    jmp .L38_1
.L38_2:
    movq $8, %rcx
    movq %r13, %rbx
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
.L38_3:
.L38_1:
    movq %r13, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -176(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq lb_vt_files_File_Writer(%rip), %r14
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    leaq -112(%rbp), %r14
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -208(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -208(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L38_5
    jmp .L38_4
.L38_5:
    leaq -80(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    leaq -296(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -296(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L38_13
    jmp .L38_12
.L38_13:
    leaq -264(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L38_10
.L38_12:
    jmp .L38_11
.L38_10:
.L38_11:
.L38_14:
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
.L38_6:
.L38_4:
    movq %r12, %rsi
    leaq -240(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -240(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L38_8
    jmp .L38_7
.L38_8:
    leaq -80(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    leaq -296(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -296(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L38_18
    jmp .L38_17
.L38_18:
    leaq -264(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L38_15
.L38_17:
    jmp .L38_16
.L38_15:
.L38_16:
.L38_19:
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
.L38_9:
.L38_7:
    movq %r12, %rsi
    leaq -296(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -296(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L38_23
    jmp .L38_22
.L38_23:
    leaq -264(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L38_20
.L38_22:
    jmp .L38_21
.L38_20:
.L38_21:
.L38_24:
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

    .p2align 4
    .globl lb_files_14release_buffer
    .type lb_files_14release_buffer, @function
lb_files_14release_buffer:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -56(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L39_2
.L39_1:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -72(%rbp), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L39_5
    jmp .L39_4
.L39_5:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r15, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L39_4:
    jmp .L39_3
.L39_2:
.L39_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_Directory_open
    .type lb_files_Directory_open, @function
lb_files_Directory_open:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -96(%rbp)
    movl %edx, -112(%rbp)
    leaq lb_files_20current_directory_fd(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %ebx, %esi
    movq %r12, %rdx
    movl %r13d, %ecx
    leaq -152(%rbp), %rdi
    call lb_files_17open_directory_at@PLT
    leaq -152(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L40_2
    jmp .L40_1
.L40_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r13
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
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L40_3:
.L40_1:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L40_4:
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_Directory_descriptor
    .type lb_files_Directory_descriptor, @function
lb_files_Directory_descriptor:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L41_1
    jmp .L41_2
.L41_1:
    jmp .L41_3
.L41_2:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_110(%rip), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $23, %rax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_4:
.L41_3:
    movq %rbx, %rdi
    call dirfd@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jge .L41_6
.L41_5:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_c_errno@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_111(%rip), %r13
    leaq -120(%rbp), %r14
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_8:
    jmp .L41_7
.L41_6:
.L41_7:
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movl %r12d, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_9:
    leaq .Ltext_112(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_Directory_metadata
    .type lb_files_Directory_metadata, @function
lb_files_Directory_metadata:
    pushq %rbp
    movq %rsp, %rbp
    subq $416, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -208(%rbp)
    leaq -208(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -248(%rbp), %rdi
    call lb_files_Directory_descriptor@PLT
    leaq -248(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L42_2
    jmp .L42_1
.L42_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -200(%rbp), %r13
    movq $128, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $152, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L42_3:
.L42_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    movl %ebx, %esi
    leaq -408(%rbp), %rdi
    call lb_files_19metadata_descriptor@PLT
    leaq -408(%rbp), %r13
    movq $152, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L42_5
    jmp .L42_4
.L42_5:
    movq $128, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -200(%rbp), %r12
    movq $128, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $152, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $160, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L42_6:
.L42_4:
    leaq -200(%rbp), %rbx
    movq %r13, %r10
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
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L42_7:
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_Directory_9open_file
    .type lb_files_Directory_9open_file, @function
lb_files_Directory_9open_file:
    pushq %rbp
    movq %rsp, %rbp
    subq $336, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movq %rdx, -112(%rbp)
    movl %ecx, -128(%rbp)
    movl %r8d, -144(%rbp)
    movl %r9d, -160(%rbp)
    movq 16(%rbp), %rax
    movl %eax, -176(%rbp)
    leaq -96(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -216(%rbp), %rdi
    call lb_files_Directory_descriptor@PLT
    leaq -216(%rbp), %r12
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
.L43_3:
.L43_1:
    movq %r12, %r10
    movslq (%r10), %rax
    movq %rax, -296(%rbp)
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl %r13d, %esi
    movl %r14d, %edx
    leaq -256(%rbp), %rdi
    call lb_files_15file_open_flags@PLT
    leaq -256(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L43_5
    jmp .L43_4
.L43_5:
    movq $8, %rcx
    movq %r15, %rbx
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
.L43_6:
.L43_4:
    movq %r15, %r10
    movslq (%r10), %r12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L43_8
.L43_7:
    leaq lb_files_14no_follow_flag(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl %r13d, %ecx
    movl %r12d, %r13d
    orl %ecx, %r13d
    jmp .L43_9
.L43_8:
    movl %r12d, %r13d
.L43_9:
    leaq -176(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L43_10
    jmp .L43_11
.L43_10:
    leaq lb_platform_macos(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L43_13
    jmp .L43_14
.L43_13:
    movl $4, %eax
    movl %eax, %r12d
    jmp .L43_15
.L43_14:
    movl $2048, %eax
    movl %eax, %r12d
.L43_15:
    movl %r13d, %r15d
    orl %r12d, %r15d
    jmp .L43_12
.L43_11:
    movl %r13d, %r15d
.L43_12:
    leaq -112(%rbp), %rax
    movq %rax, -304(%rbp)
    movq -304(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -312(%rbp)
    movl -296(%rbp), %edi
    movq -312(%rbp), %rsi
    movl %r15d, %edx
    movl %r14d, %ecx
    movl $0, %eax
    call openat@PLT
    movl %eax, %r13d
    leaq lb_c_interrupted(%rip), %r12
    movl %r13d, %eax
    movl %eax, -328(%rbp)
.L43_16:
    movl -328(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    setl %al
    movzbl %al, %eax
    movl %eax, -320(%rbp)
    movl -320(%rbp), %eax
    testl %eax, %eax
    jne .L43_19
    jmp .L43_26
.L43_26:
    movl -320(%rbp), %eax
    movl %eax, %r13d
    jmp .L43_20
.L43_19:
    call lb_c_errno@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movslq (%r10), %rbx
    cmpl %ebx, %r13d
    sete %al
    movzbl %al, %r13d
.L43_20:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L43_17
    jmp .L43_18
.L43_17:
    movl -296(%rbp), %edi
    movq -312(%rbp), %rsi
    movl %r15d, %edx
    movl %r14d, %ecx
    movl $0, %eax
    call openat@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movl %eax, -328(%rbp)
    jmp .L43_16
.L43_18:
    movl -320(%rbp), %eax
    testl %eax, %eax
    jne .L43_21
    jmp .L43_22
.L43_21:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_c_errno@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_116(%rip), %r13
    leaq -272(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $47, %rax
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
.L43_24:
    jmp .L43_23
.L43_22:
.L43_23:
    leaq -280(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -288(%rbp), %r12
    movl -328(%rbp), %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -88(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
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
.L43_25:
    leaq .Ltext_117(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_Directory_next
    .type lb_files_Directory_next, @function
lb_files_Directory_next:
    pushq %rbp
    movq %rsp, %rbp
    subq $720, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    leaq -112(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -688(%rbp)
    movq -688(%rbp), %rax
    testq %rax, %rax
    jne .L44_1
    jmp .L44_2
.L44_1:
    jmp .L44_3
.L44_2:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_110(%rip), %r13
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $23, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
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
.L44_3:
    leaq -144(%rbp), %rax
    movq %rax, -696(%rbp)
    leaq lb_c_interrupted(%rip), %rax
    movq %rax, -600(%rbp)
    leaq -464(%rbp), %rax
    movq %rax, -664(%rbp)
    leaq -352(%rbp), %rax
    movq %rax, -672(%rbp)
    movq -672(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -680(%rbp)
    leaq -352(%rbp), %rax
    movq %rax, -608(%rbp)
    movq -608(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -616(%rbp)
    leaq .Ltext_11(%rip), %rax
    movq %rax, -624(%rbp)
    leaq -440(%rbp), %rax
    movq %rax, -632(%rbp)
    movq -632(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -640(%rbp)
    movq -616(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -648(%rbp)
    movq -608(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -656(%rbp)
    leaq -384(%rbp), %rax
    movq %rax, -536(%rbp)
    movq -536(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -544(%rbp)
    leaq -400(%rbp), %rax
    movq %rax, -552(%rbp)
    movq -552(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -560(%rbp)
    leaq -424(%rbp), %rax
    movq %rax, -568(%rbp)
    movq -568(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -576(%rbp)
    leaq -352(%rbp), %rax
    movq %rax, -584(%rbp)
    movq -584(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -592(%rbp)
    leaq -200(%rbp), %rax
    movq %rax, -704(%rbp)
    movq -704(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -472(%rbp)
    movq -704(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -480(%rbp)
    leaq -216(%rbp), %rax
    movq %rax, -488(%rbp)
    leaq .Ltext_118(%rip), %rax
    movq %rax, -496(%rbp)
    leaq -256(%rbp), %rax
    movq %rax, -712(%rbp)
    movq -712(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -504(%rbp)
    movq -696(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -512(%rbp)
    leaq .Ltext_119(%rip), %rax
    movq %rax, -520(%rbp)
    leaq -272(%rbp), %rax
    movq %rax, -720(%rbp)
    movq -720(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -528(%rbp)
.L44_5:
.L44_6:
    movq -688(%rbp), %rax
    leaq -368(%rbp), %r10
    movq %rax, (%r10)
.L44_25:
.L44_26:
    movl $0, %edi
    call lb_c_9set_errno@PLT
    movq -688(%rbp), %rdi
    call readdir@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L44_31
    jmp .L44_29
.L44_31:
.L44_28:
    movq $19, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %rax, %rbx
.L44_32:
    movq $256, %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L44_35
    jmp .L44_50
.L44_50:
    movl %r13d, %r15d
    jmp .L44_36
.L44_35:
    movq %r12, %r13
    addq %rbx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
.L44_36:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L44_33
    jmp .L44_34
.L44_33:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rbx
    jmp .L44_32
.L44_34:
    movq $19, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $257, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L44_37
.L44_38:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
.L44_37:
    movq -536(%rbp), %r10
    movq %r13, (%r10)
    movq -544(%rbp), %r10
    movq %rbx, (%r10)
    movq -552(%rbp), %r10
    movq %r13, (%r10)
    movq -560(%rbp), %r10
    movq %rbx, (%r10)
    movq -552(%rbp), %r10
    movq -568(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    movq -576(%rbp), %r10
    movb %al, (%r10)
    movq -568(%rbp), %r10
    movq -584(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl $0, %eax
    movq -592(%rbp), %r10
    movb %al, (%r10)
    movq -584(%rbp), %r10
    leaq -200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    jmp .L44_49
.L44_29:
.L44_30:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movq -600(%rbp), %r10
    movslq (%r10), %r12
    cmpl %r12d, %ebx
    jne .L44_41
.L44_40:
    jmp .L44_25
.L44_41:
.L44_42:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L44_45
.L44_44:
    movl %ebx, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq -616(%rbp), %r10
    movl %r12d, (%r10)
    movq -624(%rbp), %rax
    movq -632(%rbp), %r10
    movq %rax, (%r10)
    movq $31, %rax
    movq -640(%rbp), %r10
    movq %rax, (%r10)
    movq -632(%rbp), %r10
    movq -648(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    movq -656(%rbp), %r10
    movb %al, (%r10)
    movq -608(%rbp), %r10
    leaq -200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    jmp .L44_49
.L44_45:
.L44_46:
    movq -664(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq -664(%rbp), %r10
    movq -672(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl $0, %eax
    movq -680(%rbp), %r10
    movb %al, (%r10)
    movq -672(%rbp), %r10
    leaq -200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
.L44_49:
    movq -472(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L44_9
    jmp .L44_8
.L44_9:
    movq -704(%rbp), %rax
    movq $24, %rcx
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
.L44_8:
    movq -480(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L44_11
    jmp .L44_12
.L44_11:
    movq -704(%rbp), %r10
    movq -488(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L44_13
.L44_12:
    leaq -240(%rbp), %rbx
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
.L44_13:
    movq -488(%rbp), %r10
    movq -696(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -496(%rbp), %rax
    movq -712(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq -504(%rbp), %r10
    movq %rax, (%r10)
    movq -512(%rbp), %r10
    movq (%r10), %rbx
    movq $1, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L44_18
    jmp .L44_51
.L44_51:
    movl %r12d, %r13d
    jmp .L44_19
.L44_18:
    movq -696(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rdi
    movq -496(%rbp), %rsi
    movq %rbx, %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L44_19:
    movzbl %r13b, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L44_20
    jmp .L44_52
.L44_52:
    movl %r12d, %ebx
    jmp .L44_21
.L44_20:
    movq -520(%rbp), %rax
    movq -720(%rbp), %r10
    movq %rax, (%r10)
    movq $2, %rax
    movq -528(%rbp), %r10
    movq %rax, (%r10)
    movq $2, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L44_22
    jmp .L44_53
.L44_53:
    movl %r12d, %ebx
    jmp .L44_23
.L44_22:
    movq -696(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rdi
    movq -520(%rbp), %rsi
    movq %rbx, %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L44_23:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L44_21:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L44_15
    jmp .L44_16
.L44_15:
    leaq -296(%rbp), %rbx
    movq -696(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
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
.L44_16:
.L44_17:
    jmp .L44_5

    .p2align 4
    .globl lb_files_Directory_close
    .type lb_files_Directory_close, @function
lb_files_Directory_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -72(%rbp)
    leaq -72(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L45_1
    jmp .L45_2
.L45_1:
    jmp .L45_3
.L45_2:
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
.L45_4:
.L45_3:
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call closedir@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L45_6
.L45_5:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_121(%rip), %r12
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $33, %rax
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
.L45_8:
    jmp .L45_7
.L45_6:
.L45_7:
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
    .globl lb_files_17open_directory_at
    .type lb_files_17open_directory_at, @function
lb_files_17open_directory_at:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -104(%rbp)
    movq %rdx, -120(%rbp)
    movl %ecx, -136(%rbp)
    leaq lb_files_14directory_flag(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_files_13close_on_exec(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    orl %r12d, %ebx
    leaq -136(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L46_2
.L46_1:
    leaq lb_files_14no_follow_flag(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl %r12d, %ecx
    movl %ebx, %r12d
    orl %ecx, %r12d
    jmp .L46_3
.L46_2:
    movl %ebx, %r12d
.L46_3:
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rax
    movq %rax, -184(%rbp)
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl -184(%rbp), %edi
    movq %r13, %rsi
    movl %r12d, %edx
    movl $0, %eax
    call openat@PLT
    movl %eax, %r14d
    leaq lb_c_interrupted(%rip), %r15
    movl %r14d, %eax
    movl %eax, -200(%rbp)
.L46_4:
    movl -200(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    setl %al
    movzbl %al, %eax
    movl %eax, -192(%rbp)
    movl -192(%rbp), %eax
    testl %eax, %eax
    jne .L46_7
    jmp .L46_19
.L46_19:
    movl -192(%rbp), %eax
    movl %eax, %r14d
    jmp .L46_8
.L46_7:
    call lb_c_errno@PLT
    movl %eax, %r14d
    movq %r15, %r10
    movslq (%r10), %rbx
    cmpl %ebx, %r14d
    sete %al
    movzbl %al, %r14d
.L46_8:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L46_5
    jmp .L46_6
.L46_5:
    movl -184(%rbp), %edi
    movq %r13, %rsi
    movl %r12d, %edx
    movl $0, %eax
    call openat@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movl %eax, -200(%rbp)
    jmp .L46_4
.L46_6:
    movl -192(%rbp), %eax
    testl %eax, %eax
    jne .L46_9
    jmp .L46_10
.L46_9:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_c_errno@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_122(%rip), %r13
    leaq -152(%rbp), %r14
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
.L46_12:
    jmp .L46_11
.L46_10:
.L46_11:
    movl -200(%rbp), %edi
    call fdopendir@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L46_16
    jmp .L46_14
.L46_16:
.L46_13:
    leaq -160(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq -88(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
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
.L46_17:
    jmp .L46_15
.L46_14:
.L46_15:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movl -200(%rbp), %edi
    call close@PLT
    movl %eax, %r12d
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl %ebx, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %ebx
    movq %r13, %r10
    movl %ebx, (%r10)
    leaq .Ltext_123(%rip), %rbx
    leaq -176(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq $41, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
.L46_18:
    leaq .Ltext_124(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_list
    .type lb_files_list, @function
lb_files_list:
    pushq %rbp
    movq %rsp, %rbp
    subq $1376, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -1264(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $1, %edx
    leaq -160(%rbp), %rdi
    call lb_files_Directory_open@PLT
    leaq -160(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L47_2
    jmp .L47_1
.L47_2:
    movq $8, %rcx
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
.L47_1:
    movq %r13, %r10
    movq -1264(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -176(%rbp), %rax
    movq %rax, -1272(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -1280(%rbp)
    leaq -224(%rbp), %r15
.L47_5:
    movq -1280(%rbp), %r10
    movq (%r10), %r13
    movq -1280(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -864(%rbp)
    movq -864(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L47_7
    jmp .L47_8
.L47_8:
    leaq .Ltext_125(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    call lb_core_7trap_at@PLT
.L47_7:
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r13, %rsi
    movq $256, %rdx
    movq $8, %rcx
    leaq -248(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -248(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $1, %ecx
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L47_9
    jmp .L47_10
.L47_9:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_63(%rip), %r12
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
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L47_6
.L47_10:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L47_6:
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L47_12
    jmp .L47_11
.L47_12:
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
    movq -1264(%rbp), %rsi
    leaq -824(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -824(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L47_79
    jmp .L47_78
.L47_79:
    leaq -792(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L47_76
.L47_78:
    jmp .L47_77
.L47_76:
.L47_77:
.L47_80:
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
.L47_11:
    movq %r15, %r10
    movq -1272(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -304(%rbp), %rax
    movq %rax, -1296(%rbp)
    movq -1296(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -872(%rbp)
    movq -1296(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -880(%rbp)
    leaq -320(%rbp), %rax
    movq %rax, -888(%rbp)
    movq -1272(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -896(%rbp)
    leaq -328(%rbp), %rax
    movq %rax, -904(%rbp)
    leaq -344(%rbp), %rax
    movq %rax, -1320(%rbp)
    movq -1320(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -920(%rbp)
    leaq -376(%rbp), %rax
    movq %rax, -1328(%rbp)
    leaq -424(%rbp), %rax
    movq %rax, -1336(%rbp)
    leaq -448(%rbp), %rax
    movq %rax, -1344(%rbp)
    movq -1344(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -968(%rbp)
    movq -1336(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1016(%rbp)
    movq -1336(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -1024(%rbp)
    movq -1336(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -976(%rbp)
    leaq .Ltext_63(%rip), %rax
    movq %rax, -984(%rbp)
    movq -976(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -992(%rbp)
    movq -976(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -1000(%rbp)
    movq -1336(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -1008(%rbp)
    movq -1336(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -928(%rbp)
    leaq .Ltext_60(%rip), %rax
    movq %rax, -936(%rbp)
    movq -928(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -944(%rbp)
    movq -928(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -952(%rbp)
    movq -1336(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -960(%rbp)
    movq -1336(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -1032(%rbp)
    leaq -464(%rbp), %rax
    movq %rax, -1040(%rbp)
    movq -1040(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1048(%rbp)
    leaq -480(%rbp), %rax
    movq %rax, -1352(%rbp)
    movq -888(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1056(%rbp)
    leaq -528(%rbp), %rax
    movq %rax, -1360(%rbp)
    leaq -552(%rbp), %rax
    movq %rax, -1368(%rbp)
    movq -1368(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -1104(%rbp)
    movq -1360(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1152(%rbp)
    movq -1360(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -1160(%rbp)
    movq -1360(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -1112(%rbp)
    leaq .Ltext_63(%rip), %rax
    movq %rax, -1120(%rbp)
    movq -1112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1128(%rbp)
    movq -1112(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -1136(%rbp)
    movq -1360(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -1144(%rbp)
    movq -1360(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -1064(%rbp)
    leaq .Ltext_60(%rip), %rax
    movq %rax, -1072(%rbp)
    movq -1064(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1080(%rbp)
    movq -1064(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -1088(%rbp)
    movq -1360(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -1096(%rbp)
    movq -1360(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -1168(%rbp)
    movq -1352(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1176(%rbp)
    leaq -568(%rbp), %rax
    movq %rax, -1184(%rbp)
    movq -1184(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1192(%rbp)
    leaq -584(%rbp), %rax
    movq %rax, -1200(%rbp)
    movq -1200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1208(%rbp)
    movq $0, %rax
    movq %rax, -1288(%rbp)
.L47_14:
    movq -1264(%rbp), %rsi
    leaq -304(%rbp), %rdi
    call lb_files_Directory_next@PLT
    movq -872(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L47_18
    jmp .L47_17
.L47_18:
    movq -1296(%rbp), %rax
    movq $24, %rcx
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
    movq -1272(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1288(%rbp), %rdx
    call lb_files_15release_entries@PLT
    movq -1264(%rbp), %rsi
    leaq -824(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -824(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L47_84
    jmp .L47_83
.L47_84:
    leaq -792(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L47_81
.L47_83:
    jmp .L47_82
.L47_81:
.L47_82:
.L47_85:
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
.L47_17:
    movq -880(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L47_20
    jmp .L47_16
.L47_20:
    movq -1296(%rbp), %r10
    movq -888(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L47_15:
    movq -896(%rbp), %r10
    movq (%r10), %r15
    movq -1288(%rbp), %rcx
    cmpq %rcx, %r15
    jne .L47_22
.L47_21:
    movq %r15, %rdi
    movq $2, %rsi
    movl $64, %edx
    movq -904(%rbp), %rcx
    call lb_core_6qmul_u@PLT
    movl %eax, %r14d
    movq -904(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -912(%rbp)
    movq -912(%rbp), %rax
    movq -1320(%rbp), %r10
    movq %rax, (%r10)
    movq -920(%rbp), %r10
    movb %r14b, (%r10)
    movq -920(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L47_24
    jmp .L47_25
.L47_24:
    jmp .L47_26
.L47_25:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_126(%rip), %r13
    leaq -360(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $34, %rax
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
    movq -1272(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1288(%rbp), %rdx
    call lb_files_15release_entries@PLT
    movq -1264(%rbp), %rsi
    leaq -824(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -824(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L47_89
    jmp .L47_88
.L47_89:
    leaq -792(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L47_86
.L47_88:
    jmp .L47_87
.L47_86:
.L47_87:
.L47_90:
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
.L47_26:
    movq -912(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L47_29
.L47_28:
    movl $208273409, %eax
    movq -928(%rbp), %r10
    movl %eax, (%r10)
    movq -936(%rbp), %rax
    movq -944(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq -952(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -960(%rbp), %r10
    movb %al, (%r10)
    jmp .L47_30
.L47_29:
    movq -912(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq -1280(%rbp), %r10
    movq (%r10), %r14
    movq -864(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L47_31
    jmp .L47_32
.L47_32:
    leaq .Ltext_127(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    call lb_core_7trap_at@PLT
.L47_31:
    movq %r13, %r10
    movq (%r10), %r12
    movq %r14, %rsi
    movq %r15, %rdx
    movq $8, %rcx
    leaq -448(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    movq -968(%rbp), %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r15
    setne %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    andl %r12d, %ebx
    testl %ebx, %ebx
    jne .L47_33
    jmp .L47_34
.L47_33:
    movl $208273409, %eax
    movq -976(%rbp), %r10
    movl %eax, (%r10)
    movq -984(%rbp), %rax
    movq -992(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -1000(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -1008(%rbp), %r10
    movb %al, (%r10)
    jmp .L47_30
.L47_34:
    movq -1344(%rbp), %r10
    movq (%r10), %rbx
    movq -1336(%rbp), %r10
    movq %rbx, (%r10)
    movq -912(%rbp), %rax
    movq -1016(%rbp), %r10
    movq %rax, (%r10)
    movl $0, %eax
    movq -1024(%rbp), %r10
    movb %al, (%r10)
.L47_30:
    movq -1032(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L47_36
    jmp .L47_35
.L47_36:
    movq -1336(%rbp), %rax
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
    movq -1272(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1288(%rbp), %rdx
    call lb_files_15release_entries@PLT
    movq -1264(%rbp), %rsi
    leaq -824(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -824(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L47_94
    jmp .L47_93
.L47_94:
    leaq -792(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L47_91
.L47_93:
    jmp .L47_92
.L47_91:
.L47_92:
.L47_95:
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
.L47_35:
    movq -1336(%rbp), %r10
    movq -1328(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1328(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1272(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -1288(%rbp), %r8
    call lb_memory_copy_0g1_str@PLT
    movq -1272(%rbp), %r10
    movq (%r10), %rbx
    movq -896(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_128(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -1040(%rbp), %r10
    movq %rbx, (%r10)
    movq -1048(%rbp), %r10
    movq %r12, (%r10)
    movq -1280(%rbp), %r10
    movq (%r10), %rbx
    movq -864(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L47_39
    jmp .L47_38
.L47_39:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq -1040(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L47_38:
    movq -1328(%rbp), %r10
    movq -1272(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L47_23
.L47_22:
.L47_23:
    movq -1056(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_129(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r12
    jbe .L47_41
.L47_40:
    movl $208273409, %eax
    movq -1064(%rbp), %r10
    movl %eax, (%r10)
    movq -1072(%rbp), %rax
    movq -1080(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq -1088(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -1096(%rbp), %r10
    movb %al, (%r10)
    jmp .L47_42
.L47_41:
    movq -1280(%rbp), %r10
    movq (%r10), %rbx
    movq -864(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L47_43
    jmp .L47_44
.L47_44:
    leaq .Ltext_129(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    call lb_core_7trap_at@PLT
.L47_43:
    movq %r13, %r10
    movq (%r10), %r14
    movq %rbx, %rsi
    movq %r12, %rdx
    movq $1, %rcx
    leaq -552(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    movq -1104(%rbp), %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %ecx
    movl %r15d, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L47_45
    jmp .L47_46
.L47_45:
    movl $208273409, %eax
    movq -1112(%rbp), %r10
    movl %eax, (%r10)
    movq -1120(%rbp), %rax
    movq -1128(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -1136(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -1144(%rbp), %r10
    movb %al, (%r10)
    jmp .L47_42
.L47_46:
    movq -1368(%rbp), %r10
    movq (%r10), %rbx
    movq -1360(%rbp), %r10
    movq %rbx, (%r10)
    movq -1152(%rbp), %r10
    movq %r12, (%r10)
    movl $0, %eax
    movq -1160(%rbp), %r10
    movb %al, (%r10)
.L47_42:
    movq -1168(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L47_48
    jmp .L47_47
.L47_48:
    movq -1360(%rbp), %rax
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
    movq -1272(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1288(%rbp), %rdx
    call lb_files_15release_entries@PLT
    movq -1264(%rbp), %rsi
    leaq -824(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -824(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L47_99
    jmp .L47_98
.L47_99:
    leaq -792(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L47_96
.L47_98:
    jmp .L47_97
.L47_96:
.L47_97:
.L47_100:
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
.L47_47:
    movq -1360(%rbp), %r10
    movq -1352(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1056(%rbp), %r10
    movq (%r10), %rbx
    movq -1352(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -888(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -1056(%rbp), %r10
    movq (%r10), %rbx
    movq -1352(%rbp), %r10
    movq (%r10), %r12
    movq -1176(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_130(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r12, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -1272(%rbp), %r10
    movq (%r10), %rbx
    movq -896(%rbp), %r10
    movq (%r10), %r12
    movq -1288(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_131(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1288(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -1352(%rbp), %r10
    movq (%r10), %r13
    movq -1176(%rbp), %r10
    movq (%r10), %rbx
    movq -1056(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_131(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_131(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L47_50
.L47_51:
    leaq .Ltext_131(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
.L47_50:
    movq -1184(%rbp), %r10
    movq %r13, (%r10)
    movq -1192(%rbp), %r10
    movq %r14, (%r10)
    movq -1200(%rbp), %r10
    movq %r13, (%r10)
    movq -1208(%rbp), %r10
    movq %r14, (%r10)
    movq -1200(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1288(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -1288(%rbp)
    jmp .L47_14
.L47_16:
    movq -1264(%rbp), %rsi
    leaq -616(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -616(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L47_53
    jmp .L47_52
.L47_53:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -1272(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1288(%rbp), %rdx
    call lb_files_15release_entries@PLT
    movq -1264(%rbp), %rsi
    leaq -824(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -824(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L47_104
    jmp .L47_103
.L47_104:
    leaq -792(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L47_101
.L47_103:
    jmp .L47_102
.L47_101:
.L47_102:
.L47_105:
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
.L47_52:
    movq -1272(%rbp), %r10
    movq (%r10), %r13
    movq -1272(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1216(%rbp)
    movq -1216(%rbp), %r10
    movq (%r10), %r12
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_133(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1288(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_133(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -1288(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L47_55
.L47_56:
    leaq .Ltext_133(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
.L47_55:
    leaq -632(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq -1288(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    leaq -840(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -840(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
.L47_107:
    movq $2, %rcx
    movq -1288(%rbp), %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r13
.L47_108:
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L47_110
.L47_109:
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_140(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r14, %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %rdx
    movq %rbx, %rcx
    call lb_files_10sift_names@PLT
    movq %r15, %r13
    jmp .L47_108
.L47_110:
    movq %r14, %r10
    movq (%r10), %rbx
    leaq -856(%rbp), %rax
    movq %rax, -1240(%rbp)
.L47_111:
    movq $1, %rcx
    cmpq %rcx, %rbx
    jbe .L47_113
.L47_112:
    movq $1, %rcx
    movq %rbx, %rax
    subq %rcx, %rax
    movq %rax, -1232(%rbp)
    movq %r12, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -1248(%rbp)
    movq $0, %rax
    movq -1248(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_142(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r15, %r10
    movq -1240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1232(%rbp), %rax
    movq -1248(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_143(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1232(%rbp), %rax
    movq $16, %rcx
    imulq %rcx, %rax
    movq %rax, -1256(%rbp)
    movq -1256(%rbp), %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %r13
    movq %r14, %r10
    movq (%r10), %r15
    movq -1232(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_144(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1256(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -1240(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq $0, %rdx
    movq -1232(%rbp), %rcx
    call lb_files_10sift_names@PLT
    movq -1232(%rbp), %rax
    movq %rax, %rbx
    jmp .L47_111
.L47_113:
.L47_114:
    movq -1288(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L47_58
.L47_57:
    leaq -648(%rbp), %rbx
    movq -1272(%rbp), %r10
    movq (%r10), %r12
    movq -1216(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_134(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
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
    movq -1280(%rbp), %r10
    movq (%r10), %r12
    movq -864(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L47_61
    jmp .L47_60
.L47_61:
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
.L47_60:
    leaq -664(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
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
    movq -1264(%rbp), %rsi
    leaq -824(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -824(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L47_118
    jmp .L47_117
.L47_118:
    leaq -792(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L47_115
.L47_117:
    jmp .L47_116
.L47_115:
.L47_116:
.L47_119:
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
.L47_58:
.L47_59:
    leaq -680(%rbp), %rax
    movq %rax, -1304(%rbp)
    leaq -728(%rbp), %rax
    movq %rax, -1312(%rbp)
    movq -1288(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L47_64
.L47_63:
    movq -1312(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_60(%rip), %r14
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1312(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L47_65
.L47_64:
    movq -1288(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -1280(%rbp), %r10
    movq (%r10), %rbx
    movq -864(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L47_66
    jmp .L47_67
.L47_67:
    leaq .Ltext_135(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    call lb_core_7trap_at@PLT
.L47_66:
    movq %r15, %r10
    movq (%r10), %r12
    movq %rbx, %rsi
    movq %r14, %rdx
    movq $8, %rcx
    leaq -752(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    leaq -752(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %eax
    movl %eax, -1224(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl -1224(%rbp), %eax
    movl %r12d, %ecx
    movl %eax, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L47_68
    jmp .L47_69
.L47_68:
    movq -1312(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_63(%rip), %r12
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
    movq -1312(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L47_65
.L47_69:
    movq %r13, %r10
    movq (%r10), %rbx
    movq -1312(%rbp), %r10
    movq %rbx, (%r10)
    movq -1312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -1288(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1312(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L47_65:
    movq -1312(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L47_71
    jmp .L47_70
.L47_71:
    movq -1312(%rbp), %rax
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
    movq -1272(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1288(%rbp), %rdx
    call lb_files_15release_entries@PLT
    movq -1264(%rbp), %rsi
    leaq -824(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -824(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L47_123
    jmp .L47_122
.L47_123:
    leaq -792(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L47_120
.L47_122:
    jmp .L47_121
.L47_120:
.L47_121:
.L47_124:
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
.L47_70:
    movq -1312(%rbp), %r10
    movq -1304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1304(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1272(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -1288(%rbp), %r8
    call lb_memory_copy_0g1_str@PLT
    leaq -768(%rbp), %rbx
    movq -1272(%rbp), %r10
    movq (%r10), %r12
    movq -1216(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_136(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
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
    movq -1280(%rbp), %r10
    movq (%r10), %r12
    movq -864(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L47_74
    jmp .L47_73
.L47_74:
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
.L47_73:
    leaq -96(%rbp), %rbx
    movq -1304(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1264(%rbp), %rsi
    leaq -824(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -824(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L47_128
    jmp .L47_127
.L47_128:
    leaq -792(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L47_125
.L47_127:
    jmp .L47_126
.L47_125:
.L47_126:
.L47_129:
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
    .globl lb_files_10sift_names
    .type lb_files_10sift_names, @function
lb_files_10sift_names:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movq %rdx, -72(%rbp)
    movq %rcx, -88(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -88(%rbp), %rax
    movq %rax, -112(%rbp)
    leaq -56(%rbp), %rax
    movq %rax, -144(%rbp)
    movq -144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    leaq -56(%rbp), %rax
    movq %rax, -152(%rbp)
    movq -152(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -160(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -168(%rbp)
    movq %rbx, %rax
    movq %rax, -176(%rbp)
.L48_1:
    movq -112(%rbp), %r10
    movq (%r10), %r15
.L48_5:
    movq $2, %rcx
    movq %r15, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r12
    movq -176(%rbp), %rax
    cmpq %r12, %rax
    jae .L48_3
.L48_2:
    movq -176(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_146(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -120(%rbp)
    movq -120(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_146(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_147(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -136(%rbp)
    movq -136(%rbp), %rax
    cmpq %r15, %rax
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L48_9
    jmp .L48_15
.L48_15:
    movl %r12d, %r15d
    jmp .L48_10
.L48_9:
    movq -144(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r15
    movq -128(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_147(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -128(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq -136(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_147(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -136(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    addq %r15, %r12
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_core_11str_compare@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %r15d
.L48_10:
    movzbl %r15b, %ebx
    testl %ebx, %ebx
    jne .L48_6
    jmp .L48_7
.L48_6:
    movq -136(%rbp), %rax
    movq %rax, %rbx
    jmp .L48_8
.L48_7:
    movq -128(%rbp), %rax
    movq %rax, %rbx
.L48_8:
    movq -152(%rbp), %r10
    movq (%r10), %r12
    movq -160(%rbp), %r10
    movq (%r10), %r15
    movq -176(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_149(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -176(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    cmpq %r15, %rbx
    jb 1f
    leaq .Ltext_149(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $16, %rcx
    movq %rbx, %r15
    imulq %rcx, %r15
    addq %r15, %r12
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_core_11str_compare@PLT
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    setl %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L48_12
.L48_11:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L48_12:
.L48_13:
    movq %r13, %r10
    movq -168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -168(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rax
    movq %rax, -176(%rbp)
    jmp .L48_1
.L48_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_15release_entries
    .type lb_files_15release_entries, @function
lb_files_15release_entries:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movq %rdx, -72(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -160(%rbp)
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -224(%rbp)
    movq -160(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_153(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -224(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_153(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -224(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L49_5
.L49_6:
    leaq .Ltext_153(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
.L49_5:
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq -224(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -104(%rbp), %rax
    movq %rax, -168(%rbp)
    movq -168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -176(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -184(%rbp)
    movq -184(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -192(%rbp)
    leaq -136(%rbp), %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -216(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L49_1:
    movq -224(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L49_4
.L49_2:
    movq $16, %rcx
    movq %rbx, %r15
    imulq %rcx, %r15
    addq %r13, %r15
    movq %r15, %r10
    movq -168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -168(%rbp), %r10
    movq (%r10), %r15
    movq -176(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_154(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -184(%rbp), %r10
    movq %r15, (%r10)
    movq -192(%rbp), %r10
    movq %r14, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -200(%rbp)
    movq -208(%rbp), %r10
    movq %r15, (%r10)
    movq -216(%rbp), %r10
    movq %r14, (%r10)
    movq -200(%rbp), %r10
    movq (%r10), %r14
    movq -200(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L49_8
    jmp .L49_7
.L49_8:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq -208(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L49_7:
.L49_3:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L49_1
.L49_4:
    movq -160(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jbe .L49_10
.L49_9:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    leaq -152(%rbp), %r12
    movq -160(%rbp), %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_155(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L49_13
    jmp .L49_12
.L49_13:
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L49_12:
    jmp .L49_11
.L49_10:
.L49_11:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_walk
    .type lb_files_walk, @function
lb_files_walk:
    pushq %rbp
    movq %rsp, %rbp
    subq $4800, %rsp
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
    movq %r8, -128(%rbp)
    leaq -144(%rbp), %rax
    movq %rax, -3424(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -3432(%rbp)
    movq -3432(%rbp), %r10
    movq -3424(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -272(%rbp), %r15
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rsi
    movl $1, %edx
    leaq -432(%rbp), %rdi
    call lb_files_metadata@PLT
    leaq -432(%rbp), %r12
    movq $152, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L50_2
    jmp .L50_1
.L50_2:
    movq $128, %rcx
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
.L50_1:
    movq %r12, %r10
    movq %r15, %r11
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
    leaq -112(%rbp), %rax
    movq %rax, -3440(%rbp)
    movq -3440(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -3448(%rbp)
    movq -3440(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -3456(%rbp)
    movq -3456(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -3464(%rbp)
    movq -3464(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -3472(%rbp)
    movq %r13, %rdi
    call strlen@PLT
    movq %rax, %rbx
    leaq -448(%rbp), %rax
    movq %rax, -3480(%rbp)
    movq -3480(%rbp), %r10
    movq %r13, (%r10)
    movq -3480(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    subq $128, %rsp
    movq %r15, %r10
    leaq 0(%rsp), %r11
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
    movq -3448(%rbp), %rsi
    movq -3480(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq $0, %r8
    leaq -488(%rbp), %rdi
    movq -3472(%rbp), %r11
    call *%r11
    addq $128, %rsp
    leaq -488(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L50_5
    jmp .L50_4
.L50_5:
    movq $8, %rcx
    movq %r14, %rbx
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
.L50_4:
    movq %r14, %r10
    movzbl (%r10), %ebx
    movq %r15, %r10
    movzbl (%r10), %r12d
    movl $2, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L50_174
    jmp .L50_10
.L50_174:
    movl %r12d, %ebx
    jmp .L50_11
.L50_10:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L50_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L50_7
    jmp .L50_8
.L50_7:
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
.L50_8:
.L50_9:
    leaq -568(%rbp), %rax
    movq %rax, -4576(%rbp)
    subq $128, %rsp
    movq %r15, %r10
    leaq 0(%rsp), %r11
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
    movq %r13, %rsi
    movq -3424(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -680(%rbp), %rdi
    call lb_files_WalkState_start@PLT
    addq $128, %rsp
    leaq -680(%rbp), %r14
    movq $104, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L50_14
    jmp .L50_13
.L50_14:
    movq $80, %rcx
    movq %r14, %rbx
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
.L50_13:
    movq %r14, %r10
    movq -4576(%rbp), %r11
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
    movq -4576(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -3488(%rbp)
    leaq -704(%rbp), %rax
    movq %rax, -4584(%rbp)
    movq -4576(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -3504(%rbp)
    leaq -760(%rbp), %rax
    movq %rax, -4592(%rbp)
    movq -4592(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -3520(%rbp)
    movq -4584(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -3528(%rbp)
    leaq -808(%rbp), %rax
    movq %rax, -4600(%rbp)
    leaq -824(%rbp), %rax
    movq %rax, -3544(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -3560(%rbp)
    leaq -968(%rbp), %rax
    movq %rax, -4608(%rbp)
    leaq -2080(%rbp), %rax
    movq %rax, -4616(%rbp)
    movq -4616(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -3856(%rbp)
    leaq -2040(%rbp), %rax
    movq %rax, -3896(%rbp)
    leaq -2448(%rbp), %rax
    movq %rax, -3960(%rbp)
    leaq lb_files_17at_no_follow_flag(%rip), %rax
    movq %rax, -3968(%rbp)
    leaq -2592(%rbp), %rax
    movq %rax, -3976(%rbp)
    leaq lb_c_interrupted(%rip), %rax
    movq %rax, -4008(%rbp)
    leaq -2400(%rbp), %rax
    movq %rax, -4016(%rbp)
    movq -4016(%rbp), %rax
    movq $128, %rcx
    addq %rcx, %rax
    movq %rax, -4024(%rbp)
    leaq .Ltext_22(%rip), %rax
    movq %rax, -4032(%rbp)
    leaq -2736(%rbp), %rax
    movq %rax, -4040(%rbp)
    movq -4040(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4048(%rbp)
    movq -4024(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4056(%rbp)
    movq -4016(%rbp), %rax
    movq $152, %rcx
    addq %rcx, %rax
    movq %rax, -4064(%rbp)
    leaq -2720(%rbp), %rax
    movq %rax, -3984(%rbp)
    leaq -2400(%rbp), %rax
    movq %rax, -3992(%rbp)
    movq -3992(%rbp), %rax
    movq $152, %rcx
    addq %rcx, %rax
    movq %rax, -4000(%rbp)
    leaq -2240(%rbp), %rax
    movq %rax, -4632(%rbp)
    movq -4632(%rbp), %rax
    movq $152, %rcx
    addq %rcx, %rax
    movq %rax, -3904(%rbp)
    leaq -2008(%rbp), %rax
    movq %rax, -3944(%rbp)
    movq -3944(%rbp), %rax
    movq $152, %rcx
    addq %rcx, %rax
    movq %rax, -3952(%rbp)
    movq -4632(%rbp), %rax
    movq $128, %rcx
    addq %rcx, %rax
    movq %rax, -3912(%rbp)
    leaq -2008(%rbp), %rax
    movq %rax, -3920(%rbp)
    movq -3920(%rbp), %rax
    movq $128, %rcx
    addq %rcx, %rax
    movq %rax, -3928(%rbp)
    movq -3920(%rbp), %rax
    movq $152, %rcx
    addq %rcx, %rax
    movq %rax, -3936(%rbp)
    movq -4616(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -3864(%rbp)
    leaq -2008(%rbp), %rax
    movq %rax, -3872(%rbp)
    movq -3872(%rbp), %rax
    movq $128, %rcx
    addq %rcx, %rax
    movq %rax, -3880(%rbp)
    movq -3872(%rbp), %rax
    movq $152, %rcx
    addq %rcx, %rax
    movq %rax, -3888(%rbp)
    leaq -1128(%rbp), %rax
    movq %rax, -4640(%rbp)
    movq -4640(%rbp), %rax
    movq $152, %rcx
    addq %rcx, %rax
    movq %rax, -3568(%rbp)
    movq -4576(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3576(%rbp)
    leaq -1144(%rbp), %rax
    movq %rax, -3584(%rbp)
    movq -3584(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -3592(%rbp)
    leaq -1160(%rbp), %rax
    movq %rax, -3600(%rbp)
    movq -3600(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -3608(%rbp)
    leaq .Ltext_161(%rip), %rax
    movq %rax, -3616(%rbp)
    leaq -1176(%rbp), %rax
    movq %rax, -3624(%rbp)
    movq -3624(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -3632(%rbp)
    leaq -1208(%rbp), %rax
    movq %rax, -4648(%rbp)
    movq -4648(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3640(%rbp)
    leaq -1240(%rbp), %rax
    movq %rax, -4656(%rbp)
    movq -4656(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3648(%rbp)
    leaq -1256(%rbp), %rax
    movq %rax, -3656(%rbp)
    leaq -1296(%rbp), %rax
    movq %rax, -4664(%rbp)
    movq -4664(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -3664(%rbp)
    movq -4608(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -3680(%rbp)
    movq -4608(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3696(%rbp)
    leaq -2784(%rbp), %rax
    movq %rax, -4080(%rbp)
    movq -4080(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4088(%rbp)
    leaq -2816(%rbp), %rax
    movq %rax, -4096(%rbp)
    movq -4096(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4104(%rbp)
    movq -4096(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4112(%rbp)
    leaq -1352(%rbp), %rax
    movq %rax, -4680(%rbp)
    leaq -2936(%rbp), %rax
    movq %rax, -4688(%rbp)
    movq -4688(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -4120(%rbp)
    leaq -2896(%rbp), %rax
    movq %rax, -4160(%rbp)
    leaq -2976(%rbp), %rax
    movq %rax, -4696(%rbp)
    movq -4696(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -4168(%rbp)
    leaq -2864(%rbp), %rax
    movq %rax, -4208(%rbp)
    movq -4208(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -4216(%rbp)
    movq -4696(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4176(%rbp)
    leaq -2864(%rbp), %rax
    movq %rax, -4184(%rbp)
    movq -4184(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4192(%rbp)
    movq -4184(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -4200(%rbp)
    movq -4688(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4128(%rbp)
    leaq -2864(%rbp), %rax
    movq %rax, -4136(%rbp)
    movq -4136(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4144(%rbp)
    movq -4136(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -4152(%rbp)
    leaq -1392(%rbp), %rax
    movq %rax, -4704(%rbp)
    movq -4704(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -3712(%rbp)
    leaq -1520(%rbp), %rax
    movq %rax, -4712(%rbp)
    leaq -1680(%rbp), %rax
    movq %rax, -4720(%rbp)
    movq -4720(%rbp), %rax
    movq $152, %rcx
    addq %rcx, %rax
    movq %rax, -3720(%rbp)
    movq -4712(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -3728(%rbp)
    movq -4712(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3744(%rbp)
    leaq -3216(%rbp), %rax
    movq %rax, -4224(%rbp)
    leaq -3232(%rbp), %rax
    movq %rax, -4728(%rbp)
    movq -4728(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4240(%rbp)
    leaq -3064(%rbp), %rax
    movq %rax, -4248(%rbp)
    leaq lb_memory_exhausted(%rip), %rax
    movq %rax, -4256(%rbp)
    leaq .Ltext_171(%rip), %rax
    movq %rax, -4264(%rbp)
    leaq -3248(%rbp), %rax
    movq %rax, -4272(%rbp)
    movq -4272(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4280(%rbp)
    movq -4248(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4288(%rbp)
    movq -4248(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -4296(%rbp)
    leaq -3264(%rbp), %rax
    movq %rax, -4304(%rbp)
    movq -4576(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, -4312(%rbp)
    leaq -3280(%rbp), %rax
    movq %rax, -4736(%rbp)
    leaq -3328(%rbp), %rax
    movq %rax, -4744(%rbp)
    movq -3432(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4360(%rbp)
    leaq -3352(%rbp), %rax
    movq %rax, -4752(%rbp)
    movq -4752(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4368(%rbp)
    movq -4744(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4416(%rbp)
    movq -4744(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -4424(%rbp)
    movq -4744(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4376(%rbp)
    leaq .Ltext_63(%rip), %rax
    movq %rax, -4384(%rbp)
    movq -4376(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4392(%rbp)
    movq -4376(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4400(%rbp)
    movq -4744(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -4408(%rbp)
    movq -4744(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4320(%rbp)
    leaq .Ltext_60(%rip), %rax
    movq %rax, -4328(%rbp)
    movq -4320(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4336(%rbp)
    movq -4320(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4344(%rbp)
    movq -4744(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -4352(%rbp)
    movq -4744(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -4432(%rbp)
    leaq -3368(%rbp), %rax
    movq %rax, -4464(%rbp)
    movq -4464(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4472(%rbp)
    movq -3432(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4480(%rbp)
    leaq -3400(%rbp), %rax
    movq %rax, -4488(%rbp)
    leaq -3080(%rbp), %rax
    movq %rax, -4496(%rbp)
    leaq -3208(%rbp), %rax
    movq %rax, -4504(%rbp)
    movq -4488(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4512(%rbp)
    movq -4504(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -4520(%rbp)
    movq -4488(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4528(%rbp)
    leaq -3416(%rbp), %rax
    movq %rax, -4536(%rbp)
    movq -4536(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4544(%rbp)
    movq -4488(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -4552(%rbp)
    leaq -3064(%rbp), %rax
    movq %rax, -4560(%rbp)
    movq -4560(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -4568(%rbp)
    movq -4744(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4440(%rbp)
    leaq -3064(%rbp), %rax
    movq %rax, -4448(%rbp)
    movq -4448(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -4456(%rbp)
    leaq -1728(%rbp), %rax
    movq %rax, -4760(%rbp)
    movq -4760(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3752(%rbp)
    leaq -1328(%rbp), %rax
    movq %rax, -4768(%rbp)
    movq -4768(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3672(%rbp)
    leaq -1816(%rbp), %rax
    movq %rax, -4776(%rbp)
    movq -4776(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3760(%rbp)
    movq -4576(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3808(%rbp)
    leaq -1848(%rbp), %rax
    movq %rax, -4784(%rbp)
    movq -4784(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3816(%rbp)
    leaq -1760(%rbp), %rax
    movq %rax, -3840(%rbp)
    movq -3840(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3848(%rbp)
    leaq -1760(%rbp), %rax
    movq %rax, -3824(%rbp)
    movq -3824(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3832(%rbp)
    leaq -1784(%rbp), %rax
    movq %rax, -3768(%rbp)
    leaq -1760(%rbp), %rax
    movq %rax, -3776(%rbp)
    movq -3768(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -3784(%rbp)
    movq -3776(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -3792(%rbp)
    movq -3776(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3800(%rbp)
    leaq -792(%rbp), %rax
    movq %rax, -4792(%rbp)
    movq -4792(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3536(%rbp)
.L50_16:
    movq -3488(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L50_18
.L50_17:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_156(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -3496(%rbp)
    movq -4576(%rbp), %r10
    movq (%r10), %r15
    movq -3504(%rbp), %r10
    movq (%r10), %r13
    movq -3496(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_157(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -3496(%rbp), %rax
    movq $32, %rcx
    imulq %rcx, %rax
    movq %rax, -3512(%rbp)
    movq -3512(%rbp), %rcx
    addq %rcx, %r15
    movq %r15, %rsi
    leaq -760(%rbp), %rdi
    call lb_files_Directory_next@PLT
    movq -3520(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L50_20
    jmp .L50_19
.L50_20:
    movq -4592(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
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
    movq -4576(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L50_19:
    movq -4592(%rbp), %r10
    movq -4584(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -3528(%rbp), %r10
    movzbl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L50_23
.L50_22:
    movq -3488(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_176(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -4576(%rbp), %r10
    movq (%r10), %r13
    movq -3504(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_177(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $32, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %rsi
    leaq -1816(%rbp), %rdi
    call lb_files_Directory_close@PLT
    movq -3760(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L50_85
    jmp .L50_84
.L50_85:
    movq -4776(%rbp), %r10
    movq -3768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L50_82
.L50_84:
    jmp .L50_83
.L50_82:
    movq -3488(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_178(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -3488(%rbp), %r10
    movq %rbx, (%r10)
    movq -3768(%rbp), %r10
    movl (%r10), %ebx
    movq -3776(%rbp), %r10
    movl %ebx, (%r10)
    movq -3784(%rbp), %r10
    movq -3792(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    movq -3800(%rbp), %r10
    movb %al, (%r10)
    movq -3776(%rbp), %r10
    leaq -792(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L50_93
.L50_83:
    movq -3488(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_177(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -3488(%rbp), %r10
    movq %rbx, (%r10)
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L50_88
.L50_87:
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_179(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -4576(%rbp), %r10
    movq (%r10), %r14
    movq -3504(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_179(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $32, %rcx
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $24, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -3808(%rbp), %rsi
    movq %r13, %rdx
    leaq -1848(%rbp), %rdi
    call lb_strings_Builder_truncate@PLT
    movq -3816(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L50_91
    jmp .L50_90
.L50_91:
    movq -4784(%rbp), %r10
    movq -3824(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl $1, %eax
    movq -3832(%rbp), %r10
    movb %al, (%r10)
    movq -3824(%rbp), %r10
    leaq -792(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L50_93
.L50_90:
    jmp .L50_89
.L50_88:
.L50_89:
    movl $0, %eax
    movq -3848(%rbp), %r10
    movb %al, (%r10)
    movq -3840(%rbp), %r10
    leaq -792(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L50_93:
    movq -3536(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L50_26
    jmp .L50_25
.L50_26:
    leaq -80(%rbp), %rbx
    movq -4792(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -4576(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L50_25:
    jmp .L50_16
.L50_23:
.L50_24:
    testl %r14d, %r14d
    jne .L50_29
    jmp .L50_30
.L50_29:
    movq -4584(%rbp), %r10
    movq -3544(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L50_31
.L50_30:
    jmp .L50_16
.L50_31:
    movq -3544(%rbp), %r10
    movq -4600(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -3488(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -3552(%rbp)
    movq -3560(%rbp), %r10
    movq (%r10), %r15
    movq -3552(%rbp), %rax
    cmpq %r15, %rax
    jbe .L50_34
.L50_33:
    leaq -80(%rbp), %rbx
    leaq lb_files_11depth_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_158(%rip), %r13
    leaq -840(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $44, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -4576(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L50_34:
.L50_35:
    movq -4576(%rbp), %r10
    movq (%r10), %r15
    movq -3504(%rbp), %r10
    movq (%r10), %r14
    movq -3496(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_159(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -3512(%rbp), %rax
    movq %rax, %r14
    addq %r15, %r14
    movq -4600(%rbp), %r10
    movq (%r10), %r15
    leaq -2024(%rbp), %r10
    movq %r15, (%r10)
    movl $0, %eax
    leaq -2040(%rbp), %r10
    movl %eax, (%r10)
    movq %r14, %rsi
    leaq -2080(%rbp), %rdi
    call lb_files_Directory_descriptor@PLT
    movq -3856(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L50_95
    jmp .L50_94
.L50_95:
    movq -3864(%rbp), %r10
    movq -3880(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl $1, %eax
    movq -3888(%rbp), %r10
    movb %al, (%r10)
    leaq -1128(%rbp), %rdi
    movq -3872(%rbp), %rsi
    movq $160, %rdx
    call memcpy@PLT
    jmp .L50_116
.L50_94:
    movq -4616(%rbp), %r10
    movslq (%r10), %r14
    movq -3896(%rbp), %r10
    movzbl (%r10), %r13d
    leaq -2416(%rbp), %r10
    movl %r14d, (%r10)
    leaq -2432(%rbp), %r10
    movq %r15, (%r10)
    leaq -2448(%rbp), %r10
    movl %r13d, (%r10)
    movq -3960(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L50_101
    jmp .L50_102
.L50_101:
    movl $0, %eax
    movl %eax, -4624(%rbp)
    jmp .L50_103
.L50_102:
    movq -3968(%rbp), %r10
    movslq (%r10), %r13
    movl %r13d, %eax
    movl %eax, -4624(%rbp)
.L50_103:
    movq -3976(%rbp), %rdi
    xorl %esi, %esi
    movq $144, %rdx
    call memset@PLT
.L50_104:
.L50_105:
    movl %r14d, %edi
    movq %r15, %rsi
    movq -3976(%rbp), %rdx
    movl -4624(%rbp), %ecx
    call fstatat@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L50_108
.L50_107:
    subq $144, %rsp
    movq -3976(%rbp), %r10
    leaq 0(%rsp), %r11
    movq %r11, %rdi
    movq %r10, %rsi
    movq $144, %rdx
    call memcpy@PLT
    leaq -2720(%rbp), %rdi
    call lb_files_14linux_metadata@PLT
    addq $144, %rsp
    movq -3984(%rbp), %r10
    movq -3992(%rbp), %r11
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
    movl $0, %eax
    movq -4000(%rbp), %r10
    movb %al, (%r10)
    leaq -2240(%rbp), %rdi
    movq -3992(%rbp), %rsi
    movq $160, %rdx
    call memcpy@PLT
    jmp .L50_115
.L50_108:
.L50_109:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movq -4008(%rbp), %r10
    movslq (%r10), %r13
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L50_112
.L50_111:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movl %ebx, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %ebx
    movq -4024(%rbp), %r10
    movl %ebx, (%r10)
    movq -4032(%rbp), %rax
    movq -4040(%rbp), %r10
    movq %rax, (%r10)
    movq $42, %rax
    movq -4048(%rbp), %r10
    movq %rax, (%r10)
    movq -4040(%rbp), %r10
    movq -4056(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    movq -4064(%rbp), %r10
    movb %al, (%r10)
    leaq -2240(%rbp), %rdi
    movq -4016(%rbp), %rsi
    movq $160, %rdx
    call memcpy@PLT
    jmp .L50_115
.L50_112:
.L50_113:
    jmp .L50_104
.L50_115:
    movq -3904(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L50_98
    jmp .L50_97
.L50_98:
    movq -3912(%rbp), %r10
    movq -3928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl $1, %eax
    movq -3936(%rbp), %r10
    movb %al, (%r10)
    leaq -1128(%rbp), %rdi
    movq -3920(%rbp), %rsi
    movq $160, %rdx
    call memcpy@PLT
    jmp .L50_116
.L50_97:
    movq -4632(%rbp), %r10
    movq -3944(%rbp), %r11
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
    movl $0, %eax
    movq -3952(%rbp), %r10
    movb %al, (%r10)
    leaq -1128(%rbp), %rdi
    movq -3944(%rbp), %rsi
    movq $160, %rdx
    call memcpy@PLT
.L50_116:
    movq -3568(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L50_38
    jmp .L50_37
.L50_38:
    movq -4640(%rbp), %rax
    movq $128, %rcx
    movq %rax, %rbx
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
    movq -4576(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L50_37:
    movq -4640(%rbp), %r10
    movq -4608(%rbp), %r11
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
    movq -3576(%rbp), %rdi
    call lb_strings_Builder_view@PLT
    leaq -1144(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -3592(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L50_43
    jmp .L50_175
.L50_175:
    movl %r13d, %r14d
    jmp .L50_44
.L50_43:
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_160(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -3576(%rbp), %rdi
    call lb_strings_Builder_view@PLT
    leaq -1160(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -3600(%rbp), %r10
    movq (%r10), %r14
    movq -3608(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_160(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r14, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $47, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L50_44:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L50_40
    jmp .L50_41
.L50_40:
    movq -3616(%rbp), %rax
    movq -3624(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq -3632(%rbp), %r10
    movq %rax, (%r10)
    movq -3576(%rbp), %rsi
    movq -3624(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -1208(%rbp), %rdi
    call lb_strings_Builder_put@PLT
    movq -3640(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L50_46
    jmp .L50_45
.L50_46:
    leaq -80(%rbp), %rbx
    movq -4648(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -4576(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L50_45:
    jmp .L50_42
.L50_41:
.L50_42:
    movq -3576(%rbp), %rsi
    movq -4600(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -1240(%rbp), %rdi
    call lb_strings_Builder_put@PLT
    movq -3648(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L50_49
    jmp .L50_48
.L50_49:
    leaq -80(%rbp), %rbx
    movq -4656(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -4576(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L50_48:
    movq -3464(%rbp), %r10
    movq (%r10), %r13
    movq -3576(%rbp), %rdi
    call lb_strings_Builder_view@PLT
    leaq -1256(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    subq $128, %rsp
    movq -4608(%rbp), %r10
    leaq 0(%rsp), %r11
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
    movq -3448(%rbp), %rsi
    movq -3656(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -3552(%rbp), %r8
    leaq -1296(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    addq $128, %rsp
    movq -3664(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L50_52
    jmp .L50_51
.L50_52:
    movq -4664(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
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
    movq -4576(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L50_51:
    movq -4664(%rbp), %r10
    movzbl (%r10), %r13d
    movq -4608(%rbp), %r10
    movzbl (%r10), %r14d
    movl $2, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L50_176
    jmp .L50_57
.L50_176:
    movl %r14d, %r13d
    jmp .L50_58
.L50_57:
    movzbl %r13b, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L50_58:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L50_54
    jmp .L50_55
.L50_54:
    movq -3576(%rbp), %rsi
    movq %rbx, %rdx
    leaq -1328(%rbp), %rdi
    call lb_strings_Builder_truncate@PLT
    movq -3672(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L50_60
    jmp .L50_59
.L50_60:
    leaq -80(%rbp), %rbx
    movq -4768(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -4576(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L50_59:
    jmp .L50_16
.L50_55:
.L50_56:
    movq -3680(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -3688(%rbp)
    movq -3696(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -3704(%rbp)
    movq -3688(%rbp), %rax
    leaq -2752(%rbp), %r10
    movq %rax, (%r10)
    movq -3704(%rbp), %rax
    leaq -2768(%rbp), %r10
    movq %rax, (%r10)
    movq -4576(%rbp), %r10
    movq (%r10), %r13
    movq -3504(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -4072(%rbp)
    movq -3488(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -4672(%rbp)
    movq -4072(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_169(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -4672(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_169(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -4672(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L50_121
.L50_122:
    leaq .Ltext_169(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
.L50_121:
    movq -4080(%rbp), %r10
    movq %r13, (%r10)
    movq -4672(%rbp), %rax
    movq -4088(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, %r15
.L50_117:
    movq -4672(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L50_120
.L50_118:
    movq $32, %rcx
    movq %r15, %r14
    imulq %rcx, %r14
    addq %r13, %r14
    movq %r14, %r10
    movq -4096(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -4104(%rbp), %r10
    movq (%r10), %r14
    movq -3688(%rbp), %rax
    cmpq %r14, %rax
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L50_126
    jmp .L50_177
.L50_177:
    movl %r14d, %ebx
    jmp .L50_127
.L50_126:
    movq -4112(%rbp), %r10
    movq (%r10), %rbx
    movq -3704(%rbp), %rax
    cmpq %rbx, %rax
    sete %al
    movzbl %al, %ebx
.L50_127:
    movzbl %bl, %r14d
    testl %r14d, %r14d
    jne .L50_123
    jmp .L50_124
.L50_123:
    movl $1, %eax
    leaq -2824(%rbp), %r10
    movl %eax, (%r10)
    movl $1, %eax
    movl %eax, %ebx
    jmp .L50_130
.L50_124:
.L50_125:
.L50_119:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L50_117
.L50_120:
    movl $0, %eax
    leaq -2824(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %ebx
.L50_130:
    testl %ebx, %ebx
    jne .L50_63
    jmp .L50_64
.L50_63:
    leaq -80(%rbp), %rbx
    leaq lb_files_15directory_cycle(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_162(%rip), %r13
    leaq -1344(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $49, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -4576(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L50_64:
.L50_65:
    movq -3496(%rbp), %rax
    movq -4072(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_163(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -3512(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq -4600(%rbp), %r10
    movq (%r10), %r14
    leaq -2880(%rbp), %r10
    movq %r14, (%r10)
    movl $0, %eax
    leaq -2896(%rbp), %r10
    movl %eax, (%r10)
    movq %rbx, %rsi
    leaq -2936(%rbp), %rdi
    call lb_files_Directory_descriptor@PLT
    movq -4120(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L50_132
    jmp .L50_131
.L50_132:
    movq -4128(%rbp), %r10
    movq -4144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl $1, %eax
    movq -4152(%rbp), %r10
    movb %al, (%r10)
    movq -4136(%rbp), %r10
    leaq -1392(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L50_138
.L50_131:
    movq -4688(%rbp), %r10
    movslq (%r10), %rbx
    movq -4160(%rbp), %r10
    movzbl (%r10), %r13d
    movl %ebx, %esi
    movq %r14, %rdx
    movl %r13d, %ecx
    leaq -2976(%rbp), %rdi
    call lb_files_17open_directory_at@PLT
    movq -4168(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L50_135
    jmp .L50_134
.L50_135:
    movq -4176(%rbp), %r10
    movq -4192(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl $1, %eax
    movq -4200(%rbp), %r10
    movb %al, (%r10)
    movq -4184(%rbp), %r10
    leaq -1392(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L50_138
.L50_134:
    movq -4696(%rbp), %r10
    movq -4208(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movl $0, %eax
    movq -4216(%rbp), %r10
    movb %al, (%r10)
    movq -4208(%rbp), %r10
    leaq -1392(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
.L50_138:
    movq -3712(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L50_68
    jmp .L50_67
.L50_68:
    movq -4704(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
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
    movq -4576(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L50_67:
    movq -4704(%rbp), %r10
    movq -4680(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -4680(%rbp), %rsi
    leaq -1680(%rbp), %rdi
    call lb_files_Directory_metadata@PLT
    movq -3720(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L50_71
    jmp .L50_70
.L50_71:
    movq -4720(%rbp), %rax
    movq $128, %rcx
    movq %rax, %rbx
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
    movq -4680(%rbp), %rsi
    leaq -3032(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -3032(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L50_142
    jmp .L50_141
.L50_142:
    leaq -3000(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L50_139
.L50_141:
    jmp .L50_140
.L50_139:
.L50_140:
.L50_143:
    movq -4576(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L50_70:
    movq -4720(%rbp), %r10
    movq -4712(%rbp), %r11
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
    movq -3728(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -3736(%rbp)
    movq -3680(%rbp), %r10
    movq (%r10), %r13
    movq -3736(%rbp), %rax
    cmpq %r13, %rax
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L50_178
    jmp .L50_76
.L50_178:
    movl %r13d, %r14d
    jmp .L50_77
.L50_76:
    movq -3744(%rbp), %r10
    movq (%r10), %r13
    movq -3696(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L50_77:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L50_73
    jmp .L50_74
.L50_73:
    leaq -80(%rbp), %rbx
    leaq lb_files_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_164(%rip), %r13
    leaq -1696(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $51, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -4680(%rbp), %rsi
    leaq -3032(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -3032(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L50_147
    jmp .L50_146
.L50_147:
    leaq -3000(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L50_144
.L50_146:
    jmp .L50_145
.L50_144:
.L50_145:
.L50_148:
    movq -4576(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L50_74:
.L50_75:
    movq -4680(%rbp), %r10
    leaq -3080(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -4712(%rbp), %r10
    leaq -3208(%rbp), %r11
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
    movq -3488(%rbp), %r10
    movq (%r10), %r13
    movq -3504(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jne .L50_150
.L50_149:
    movq %r14, %rdi
    movq $2, %rsi
    movl $64, %edx
    movq -4224(%rbp), %rcx
    call lb_core_6qmul_u@PLT
    movl %eax, %r13d
    movq -4224(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -4232(%rbp)
    movq -4232(%rbp), %rax
    movq -4728(%rbp), %r10
    movq %rax, (%r10)
    movq -4240(%rbp), %r10
    movb %r13b, (%r10)
    movq -4240(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L50_152
    jmp .L50_153
.L50_152:
    jmp .L50_154
.L50_153:
    movq -4256(%rbp), %r10
    movl (%r10), %ebx
    movq -4248(%rbp), %r10
    movl %ebx, (%r10)
    movq -4264(%rbp), %rax
    movq -4272(%rbp), %r10
    movq %rax, (%r10)
    movq $32, %rax
    movq -4280(%rbp), %r10
    movq %rax, (%r10)
    movq -4272(%rbp), %r10
    movq -4288(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    movq -4296(%rbp), %r10
    movb %al, (%r10)
    movq -4248(%rbp), %r10
    leaq -1728(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L50_168
.L50_154:
    movq -3432(%rbp), %r10
    movq -4304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -4312(%rbp), %r10
    movq -3432(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -4232(%rbp), %rax
    movabsq $144115188075855872, %rcx
    cmpq %rcx, %rax
    jbe .L50_157
.L50_156:
    movl $208273409, %eax
    movq -4320(%rbp), %r10
    movl %eax, (%r10)
    movq -4328(%rbp), %rax
    movq -4336(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq -4344(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -4352(%rbp), %r10
    movb %al, (%r10)
    jmp .L50_158
.L50_157:
    movq -4232(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -3432(%rbp), %r10
    movq (%r10), %r13
    movq -4360(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L50_159
    jmp .L50_160
.L50_160:
    leaq .Ltext_172(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    call lb_core_7trap_at@PLT
.L50_159:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r13, %rsi
    movq %r14, %rdx
    movq $8, %rcx
    leaq -3352(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    movq -4368(%rbp), %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ecx
    movl %r15d, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L50_161
    jmp .L50_162
.L50_161:
    movl $208273409, %eax
    movq -4376(%rbp), %r10
    movl %eax, (%r10)
    movq -4384(%rbp), %rax
    movq -4392(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -4400(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -4408(%rbp), %r10
    movb %al, (%r10)
    jmp .L50_158
.L50_162:
    movq -4752(%rbp), %r10
    movq (%r10), %rbx
    movq -4744(%rbp), %r10
    movq %rbx, (%r10)
    movq -4232(%rbp), %rax
    movq -4416(%rbp), %r10
    movq %rax, (%r10)
    movl $0, %eax
    movq -4424(%rbp), %r10
    movb %al, (%r10)
.L50_158:
    movq -4432(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L50_164
    jmp .L50_163
.L50_164:
    movq -4440(%rbp), %r10
    movq -4448(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl $1, %eax
    movq -4456(%rbp), %r10
    movb %al, (%r10)
    movq -4304(%rbp), %r10
    movq -3432(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -4448(%rbp), %r10
    leaq -1728(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L50_168
.L50_163:
    movq -4744(%rbp), %r10
    movq -4736(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -3488(%rbp), %r10
    movq (%r10), %rbx
    movq -4736(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -4576(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_copy_0g1_files_WalkFrame@PLT
    movq -4576(%rbp), %r10
    movq (%r10), %rbx
    movq -3504(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_173(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -4464(%rbp), %r10
    movq %rbx, (%r10)
    movq -4472(%rbp), %r10
    movq %r12, (%r10)
    movq -3432(%rbp), %r10
    movq (%r10), %rbx
    movq -4480(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L50_167
    jmp .L50_166
.L50_167:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq -4464(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L50_166:
    movq -4736(%rbp), %r10
    movq -4576(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -4304(%rbp), %r10
    movq -3432(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L50_151
.L50_150:
.L50_151:
    movq -3488(%rbp), %r10
    movq (%r10), %rbx
    movq -4576(%rbp), %r10
    movq (%r10), %r12
    movq -3504(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_174(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $32, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq -4488(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq -4496(%rbp), %r10
    movq -4488(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -3736(%rbp), %rax
    movq -4512(%rbp), %r10
    movq %rax, (%r10)
    movq -4520(%rbp), %r10
    movq (%r10), %r12
    movq -4528(%rbp), %r10
    movq %r12, (%r10)
    movq -3576(%rbp), %rdi
    call lb_strings_Builder_view@PLT
    leaq -3416(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -4544(%rbp), %r10
    movq (%r10), %r12
    movq -4552(%rbp), %r10
    movq %r12, (%r10)
    movq -4488(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -3488(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_175(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -3488(%rbp), %r10
    movq %rbx, (%r10)
    movl $0, %eax
    movq -4568(%rbp), %r10
    movb %al, (%r10)
    movq -4560(%rbp), %r10
    leaq -1728(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L50_168:
    movq -3752(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L50_80
    jmp .L50_79
.L50_80:
    leaq -80(%rbp), %rbx
    movq -4760(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -4680(%rbp), %rsi
    leaq -3032(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -3032(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L50_172
    jmp .L50_171
.L50_172:
    leaq -3000(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L50_169
.L50_171:
    jmp .L50_170
.L50_169:
.L50_170:
.L50_173:
    movq -4576(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L50_79:
    jmp .L50_16
.L50_18:
    movq -4576(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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

    .p2align 4
    .globl lb_files_WalkState_start
    .type lb_files_WalkState_start, @function
lb_files_WalkState_start:
    pushq %rbp
    movq %rsp, %rbp
    subq $1200, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -176(%rbp)
    leaq -320(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq 16(%rbp), %r10
    leaq -304(%rbp), %r11
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
    leaq -328(%rbp), %rax
    movq %rax, -1168(%rbp)
    leaq -176(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -1128(%rbp)
    movq -1128(%rbp), %rsi
    movl $1, %edx
    leaq -368(%rbp), %rdi
    call lb_files_Directory_open@PLT
    leaq -368(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L51_2
    jmp .L51_1
.L51_2:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -160(%rbp), %r12
    movq $80, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $104, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $112, %rdx
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
.L51_1:
    movq %r14, %r10
    movq -1168(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -496(%rbp), %rax
    movq %rax, -1176(%rbp)
    movq -1168(%rbp), %rsi
    leaq -656(%rbp), %rdi
    call lb_files_Directory_metadata@PLT
    leaq -656(%rbp), %rbx
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L51_5
    jmp .L51_4
.L51_5:
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq -160(%rbp), %r14
    movq $80, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $104, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1168(%rbp), %rsi
    leaq -1120(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -1120(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L51_33
    jmp .L51_32
.L51_33:
    leaq -1088(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L51_30
.L51_32:
    jmp .L51_31
.L51_30:
.L51_31:
.L51_34:
    movq %r14, %rsi
    movq -8(%rbp), %rdi
    movq $112, %rdx
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
.L51_4:
    movq %rbx, %r10
    movq -1176(%rbp), %r11
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
    movq -1176(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -1136(%rbp)
    leaq -304(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -1136(%rbp), %rax
    cmpq %r13, %rax
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L51_55
    jmp .L51_10
.L51_55:
    movl %r13d, %ebx
    jmp .L51_11
.L51_10:
    movq -1176(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L51_11:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L51_7
    jmp .L51_8
.L51_7:
    leaq -160(%rbp), %rbx
    movq $80, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_165(%rip), %r13
    leaq -672(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $52, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $104, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1168(%rbp), %rsi
    leaq -1120(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -1120(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L51_38
    jmp .L51_37
.L51_38:
    leaq -1088(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L51_35
.L51_37:
    jmp .L51_36
.L51_35:
.L51_36:
.L51_39:
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $112, %rdx
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
.L51_8:
.L51_9:
    leaq -688(%rbp), %rax
    movq %rax, -1144(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -1152(%rbp)
    movq -1152(%rbp), %r10
    movq -1144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -320(%rbp), %rax
    movq %rax, -1160(%rbp)
    movq -1160(%rbp), %r10
    movq -1152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -728(%rbp), %rax
    movq %rax, -1184(%rbp)
    movq $64, %rsi
    leaq -800(%rbp), %rdi
    call lb_strings_Builder_create@PLT
    leaq -800(%rbp), %r12
    movq $64, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L51_14
    jmp .L51_13
.L51_14:
    movq $40, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    leaq -160(%rbp), %r15
    movq $80, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $104, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -1144(%rbp), %r10
    movq -1152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1168(%rbp), %rsi
    leaq -1120(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -1120(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L51_43
    jmp .L51_42
.L51_43:
    leaq -1088(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L51_40
.L51_42:
    jmp .L51_41
.L51_40:
.L51_41:
.L51_44:
    movq %r15, %rsi
    movq -8(%rbp), %rdi
    movq $112, %rdx
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
.L51_13:
    movq %r12, %r10
    movq -1184(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -1128(%rbp), %rdi
    call strlen@PLT
    movq %rax, %rbx
    leaq -816(%rbp), %r14
    movq -1128(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq -1184(%rbp), %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -848(%rbp), %rdi
    call lb_strings_Builder_put@PLT
    leaq -848(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L51_17
    jmp .L51_16
.L51_17:
    leaq -160(%rbp), %rbx
    movq $80, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $104, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1184(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -1144(%rbp), %r10
    movq -1152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1168(%rbp), %rsi
    leaq -1120(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -1120(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L51_48
    jmp .L51_47
.L51_48:
    leaq -1088(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L51_45
.L51_47:
    jmp .L51_46
.L51_45:
.L51_46:
.L51_49:
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $112, %rdx
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
.L51_16:
    leaq -864(%rbp), %rax
    movq %rax, -1192(%rbp)
    leaq -912(%rbp), %r12
.L51_20:
    movq -1152(%rbp), %r10
    movq (%r10), %r13
    movq -1152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L51_22
    jmp .L51_23
.L51_23:
    leaq .Ltext_166(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    call lb_core_7trap_at@PLT
.L51_22:
    movq %r14, %r10
    movq (%r10), %rbx
    movq %r13, %rsi
    movq $256, %rdx
    movq $8, %rcx
    leaq -936(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -936(%rbp), %r15
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $1, %ecx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L51_24
    jmp .L51_25
.L51_24:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_63(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L51_21
.L51_25:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $8, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L51_21:
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L51_27
    jmp .L51_26
.L51_27:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -160(%rbp), %r13
    movq $80, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $104, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -1184(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -1144(%rbp), %r10
    movq -1152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1168(%rbp), %rsi
    leaq -1120(%rbp), %rdi
    call lb_files_Directory_close@PLT
    leaq -1120(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L51_53
    jmp .L51_52
.L51_53:
    leaq -1088(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L51_50
.L51_52:
    jmp .L51_51
.L51_50:
.L51_51:
.L51_54:
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $112, %rdx
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
.L51_26:
    movq %r12, %r10
    movq -1192(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1192(%rbp), %r10
    movq (%r10), %rbx
    movq -1192(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_167(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    leaq -968(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq -1168(%rbp), %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq -1136(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -1176(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $16, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -1184(%rbp), %rdi
    call lb_strings_Builder_view@PLT
    leaq -984(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -984(%rbp), %r14
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $24, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -1064(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movq -1192(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $1, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq -1184(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq -1160(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -160(%rbp), %r13
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
    movq $104, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -1144(%rbp), %r10
    movq -1152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $112, %rdx
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
    .globl lb_files_WalkState_destroy
    .type lb_files_WalkState_destroy, @function
lb_files_WalkState_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r15
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -136(%rbp), %rax
    movq %rax, -184(%rbp)
    movq -184(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -168(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -176(%rbp)
.L52_1:
    movq %rbx, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L52_3
.L52_2:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_180(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r13, (%r10)
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -144(%rbp)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -152(%rbp)
    movq -152(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_181(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $32, %rcx
    imulq %rcx, %r13
    movq -144(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %rsi
    leaq -136(%rbp), %rdi
    call lb_files_Directory_close@PLT
    movq -168(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L52_12
    jmp .L52_11
.L52_12:
    movq -184(%rbp), %r10
    movq -176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L52_9
.L52_11:
    jmp .L52_10
.L52_9:
.L52_10:
.L52_13:
    jmp .L52_1
.L52_3:
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_strings_Builder_destroy@PLT
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L52_5
.L52_4:
    movq $64, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -160(%rbp)
    leaq -64(%rbp), %r13
    movq %r15, %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_182(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq -160(%rbp), %r10
    movq (%r10), %r12
    movq -160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L52_8
    jmp .L52_7
.L52_8:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L52_7:
    leaq -80(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L52_6
.L52_5:
.L52_6:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_22windows_create_symlink
    .type lb_files_22windows_create_symlink, @function
lb_files_22windows_create_symlink:
    pushq %rbp
    movq %rsp, %rbp
    subq $1184, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movq %rdx, -112(%rbp)
    leaq -128(%rbp), %r10
    movw %cx, 0(%r10)
    leaq -128(%rbp), %r12
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_4
    jmp .L53_2
.L53_4:
    movq %r12, %r10
    movzbl (%r10), %ebx
.L53_1:
    movzbl %bl, %r12d
    movl %r12d, %eax
    movl %eax, -1168(%rbp)
    jmp .L53_3
.L53_2:
    leaq -144(%rbp), %rax
    movq %rax, -1160(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_paths_directory@PLT
    leaq -176(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -176(%rbp), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call strlen@PLT
    movq %rax, %r13
    leaq -192(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    leaq -240(%rbp), %rdi
    call lb_paths_join@PLT
    leaq -240(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_6
    jmp .L53_5
.L53_6:
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
.L53_7:
.L53_5:
    movq %r12, %r10
    movq -1160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -368(%rbp), %r13
    movq -1160(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $1, %edx
    leaq -680(%rbp), %rdi
    call lb_files_metadata@PLT
    leaq -680(%rbp), %r14
    movq $152, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_11
    jmp .L53_10
.L53_11:
    movq $128, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -520(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L53_8
.L53_10:
    leaq -496(%rbp), %rbx
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
    jmp .L53_9
.L53_8:
    movq %r12, %r10
    movl (%r10), %ebx
    leaq lb_files_missing(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    cmpl %r14d, %ebx
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L53_13
.L53_12:
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq -1160(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L53_15:
    jmp .L53_14
.L53_13:
.L53_14:
    leaq -808(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movups %xmm8, 96(%r11)
    movups %xmm8, 112(%r11)
    leaq -496(%rbp), %r12
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
    jmp .L53_9
.L53_16:
.L53_9:
    leaq -496(%rbp), %rbx
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
    movq %r13, %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movq -1160(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movl %r12d, %eax
    movl %eax, -1168(%rbp)
.L53_3:
    leaq -824(%rbp), %rax
    movq %rax, -1176(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -872(%rbp), %rdi
    call lb_files_9wide_path@PLT
    leaq -872(%rbp), %r14
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_18
    jmp .L53_17
.L53_18:
    movq $16, %rcx
    movq %r14, %rbx
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
.L53_19:
.L53_17:
    movq %r14, %r10
    movq -1176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -888(%rbp), %r15
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -936(%rbp), %rdi
    call lb_files_9wide_path@PLT
    leaq -936(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_21
    jmp .L53_20
.L53_21:
    movq $16, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -1040(%rbp)
    leaq -80(%rbp), %rax
    movq %rax, -1048(%rbp)
    movq -1040(%rbp), %r10
    movq -1048(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -1048(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -1056(%rbp)
    movl $1, %eax
    movq -1056(%rbp), %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -1064(%rbp)
    leaq -952(%rbp), %r15
    movq -1176(%rbp), %r10
    movq (%r10), %r14
    movq -1176(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_183(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq -1064(%rbp), %r10
    movq (%r10), %rbx
    movq -1064(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L53_23
    jmp .L53_22
.L53_23:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r15, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L53_22:
    movq -1048(%rbp), %rsi
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
.L53_24:
.L53_20:
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1176(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1072(%rbp)
    movq %r15, %r10
    movq (%r10), %r14
    movl -1168(%rbp), %eax
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L53_28
    jmp .L53_29
.L53_28:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L53_30
.L53_29:
    movl $0, %eax
    movl %eax, %ebx
.L53_30:
    movl $2, %ecx
    movl %ebx, %r12d
    orl %ecx, %r12d
    movq -1072(%rbp), %rdi
    movq %r14, %rsi
    movl %r12d, %edx
    call CreateSymbolicLinkW@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L53_26
.L53_25:
    leaq -80(%rbp), %rax
    movq %rax, -1080(%rbp)
    call GetLastError@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_13windows_error@PLT
    movl %eax, %r12d
    movq -1080(%rbp), %r10
    movl %r12d, (%r10)
    leaq .Ltext_57(%rip), %r12
    leaq -968(%rbp), %rax
    movq %rax, -1088(%rbp)
    movq -1088(%rbp), %r10
    movq %r12, (%r10)
    movq -1088(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $38, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -1080(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -1088(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1080(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -984(%rbp), %rax
    movq %rax, -1096(%rbp)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_184(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -1096(%rbp), %r10
    movq %r14, (%r10)
    movq -1096(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1104(%rbp)
    movq -1104(%rbp), %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -1112(%rbp)
    movq -1112(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L53_32
    jmp .L53_31
.L53_32:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rdi
    movq -1096(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L53_31:
    leaq -1000(%rbp), %rbx
    movq -1176(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_184(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -1072(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq (%r10), %r13
    movq -1112(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L53_34
    jmp .L53_33
.L53_34:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L53_33:
    movq -1080(%rbp), %rsi
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
.L53_35:
    jmp .L53_27
.L53_26:
.L53_27:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    leaq -1016(%rbp), %rax
    movq %rax, -1120(%rbp)
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -1128(%rbp)
    movq -1128(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1136(%rbp)
    movq -1136(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_184(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -1144(%rbp)
    movq -1120(%rbp), %r10
    movq %r14, (%r10)
    movq -1120(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -1144(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -1152(%rbp)
    movq -1152(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L53_37
    jmp .L53_36
.L53_37:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq -1120(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L53_36:
    leaq -1032(%rbp), %r12
    movq -1176(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_184(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -1072(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq -1152(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L53_39
    jmp .L53_38
.L53_39:
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
.L53_38:
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

    .p2align 4
    .globl lb_files_20windows_read_symlink
    .type lb_files_20windows_read_symlink, @function
lb_files_20windows_read_symlink:
    pushq %rbp
    movq %rsp, %rbp
    subq $16960, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    movq %rdx, -128(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $0, %edx
    movl $0, %ecx
    leaq -168(%rbp), %rdi
    call lb_files_19windows_path_handle@PLT
    leaq -168(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L54_2
    jmp .L54_1
.L54_2:
    movq $8, %rcx
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
.L54_1:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -16864(%rbp)
    leaq -16552(%rbp), %rax
    movq %rax, -16872(%rbp)
    movq -16872(%rbp), %rdi
    xorl %esi, %esi
    movq $16384, %rdx
    call memset@PLT
    leaq -16556(%rbp), %rax
    movq %rax, -16880(%rbp)
    movl $0, %eax
    movq -16880(%rbp), %r10
    movl %eax, (%r10)
    subq $16, %rsp
    movq -16880(%rbp), %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq -16864(%rbp), %rdi
    movl $589992, %esi
    movq $0, %rdx
    movl $0, %ecx
    movq -16872(%rbp), %r8
    movl $16384, %r9d
    call DeviceIoControl@PLT
    addq $16, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L54_5
.L54_4:
    leaq -96(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    call GetLastError@PLT
    movl %eax, %r14d
    movl %r14d, %edi
    call lb_files_13windows_error@PLT
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_64(%rip), %r14
    leaq -16576(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $35, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -16864(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
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
.L54_5:
.L54_6:
    movq -16872(%rbp), %r10
    movl (%r10), %r12d
    movl $2684354572, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L54_8
    jmp .L54_9
.L54_8:
    movq $20, %rax
    movq %rax, %r13
    jmp .L54_10
.L54_9:
    movq $16, %rax
    movq %rax, %r13
.L54_10:
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L54_14
    jmp .L54_71
.L54_71:
    movl %ebx, %r12d
    jmp .L54_15
.L54_14:
    movl $2684354563, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L54_15:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L54_72
    jmp .L54_16
.L54_72:
    movl %ebx, %r12d
    jmp .L54_17
.L54_16:
    movq -16880(%rbp), %r10
    movl (%r10), %ebx
    cmpl %r13d, %ebx
    setb %al
    movzbl %al, %r12d
.L54_17:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L54_11
    jmp .L54_12
.L54_11:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_188(%rip), %r13
    leaq -16592(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $44, %rax
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
    movq -16864(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
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
.L54_12:
.L54_13:
    movq -16872(%rbp), %rax
    movq $12, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl %ebx, %ebx
    movq -16872(%rbp), %rax
    movq $14, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movl %r12d, %r12d
.L54_23:
    movq $2, %rcx
    movq %rbx, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L54_73
    jmp .L54_24
.L54_73:
    movl %r15d, %r14d
    jmp .L54_25
.L54_24:
.L54_27:
    movq $2, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
.L54_25:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L54_74
    jmp .L54_28
.L54_74:
    movl %r15d, %r14d
    jmp .L54_29
.L54_28:
    movq %rbx, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_189(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_189(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -16880(%rbp), %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    cmpq %r15, %r14
    seta %al
    movzbl %al, %r14d
.L54_29:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L54_19
    jmp .L54_20
.L54_19:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_190(%rip), %r13
    leaq -16608(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $47, %rax
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
    movq -16864(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
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
.L54_20:
.L54_21:
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L54_32
.L54_31:
    leaq .Ltext_88(%rip), %rbx
    leaq -16624(%rbp), %r12
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
    leaq -16672(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -16672(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L54_35
    jmp .L54_34
.L54_35:
    movq $16, %rcx
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
    movq -16864(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
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
.L54_34:
    leaq -96(%rbp), %rbx
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
    movq -16864(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
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
.L54_32:
.L54_33:
    movq %rbx, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_191(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
.L54_39:
    movq $2, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %rbx
    movq $2, %rcx
    imulq %rcx, %rbx
    movq -16872(%rbp), %rax
    addq %rbx, %rax
    movq %rax, -16888(%rbp)
.L54_41:
    movq $2, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, -16896(%rbp)
    subq $16, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movl $65001, %edi
    movl $128, %esi
    movq -16888(%rbp), %rdx
    movl -16896(%rbp), %ecx
    movq $0, %r8
    movl $0, %r9d
    call WideCharToMultiByte@PLT
    addq $16, %rsp
    movl %eax, -16904(%rbp)
    movl -16904(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jg .L54_43
.L54_42:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_193(%rip), %r13
    leaq -16688(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -16864(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
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
.L54_43:
.L54_44:
    movl -16904(%rbp), %eax
    movslq %eax, %rax
    movq %rax, -16912(%rbp)
    leaq -128(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq -16912(%rbp), %rax
    cmpq %r15, %rax
    jbe .L54_47
.L54_46:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_9too_large(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_66(%rip), %r13
    leaq -16704(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $43, %rax
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
    movq -16864(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
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
.L54_47:
.L54_48:
    leaq -16720(%rbp), %rax
    movq %rax, -16936(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -16944(%rbp)
    movq -16912(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_194(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    leaq -16768(%rbp), %rax
    movq %rax, -16952(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r14
    jbe .L54_51
.L54_50:
    movq -16952(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $208273409, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    leaq .Ltext_60(%rip), %r15
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -16952(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L54_52
.L54_51:
    movq -16944(%rbp), %r10
    movq (%r10), %r12
    movq -16944(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L54_53
    jmp .L54_54
.L54_54:
    leaq .Ltext_194(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_53:
    movq %r15, %r10
    movq (%r10), %r13
    movq %r12, %rsi
    movq %r14, %rdx
    movq $1, %rcx
    leaq -16792(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -16792(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %eax
    movl %eax, -16920(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -16920(%rbp), %eax
    andl %r13d, %eax
    movl %eax, -16928(%rbp)
    movl -16928(%rbp), %eax
    testl %eax, %eax
    jne .L54_55
    jmp .L54_56
.L54_55:
    movq -16952(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_63(%rip), %r12
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
    movq -16952(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L54_52
.L54_56:
    movq %rbx, %r10
    movq (%r10), %r12
    movq -16952(%rbp), %r10
    movq %r12, (%r10)
    movq -16952(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq -16952(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L54_52:
    movq -16952(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L54_58
    jmp .L54_57
.L54_58:
    movq -16952(%rbp), %rax
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
    movq -16864(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
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
.L54_57:
    movq -16952(%rbp), %r10
    movq -16936(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L54_64:
    movq -16936(%rbp), %r10
    movq (%r10), %rbx
    subq $16, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movl $65001, %edi
    movl $128, %esi
    movq -16888(%rbp), %rdx
    movl -16896(%rbp), %ecx
    movq %rbx, %r8
    movl -16904(%rbp), %r9d
    call WideCharToMultiByte@PLT
    addq $16, %rsp
    movl %eax, %r12d
    movl -16904(%rbp), %eax
    cmpl %r12d, %eax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L54_61
.L54_60:
    leaq -16808(%rbp), %r12
    movq -16936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -16944(%rbp), %r10
    movq (%r10), %r13
    movq -16944(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L54_66
    jmp .L54_65
.L54_66:
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
.L54_65:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_197(%rip), %r13
    leaq -16824(%rbp), %r14
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
    movq -16864(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
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
.L54_61:
.L54_62:
    movq -16936(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq -16912(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_198(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -16912(%rbp), %rax
    movq %rax, %r13
    addq %rbx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_199(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -16912(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_199(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -16912(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L54_68
.L54_69:
    leaq .Ltext_199(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_68:
    leaq -16840(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq -16912(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -16856(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -16912(%rbp), %rax
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
    movq -16864(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
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

    .p2align 4
    .globl lb_files_19windows_permissions
    .type lb_files_19windows_permissions, @function
lb_files_19windows_permissions:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -96(%rbp)
    movl %edx, -112(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call _get_osfhandle@PLT
    movq %rax, -232(%rbp)
    leaq -152(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq -232(%rbp), %rdi
    movl $0, %esi
    movq %r12, %rdx
    movl $40, %ecx
    call GetFileInformationByHandleEx@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L55_2
.L55_1:
    leaq -80(%rbp), %rbx
    call GetLastError@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_13windows_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_200(%rip), %r12
    leaq -168(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $33, %rax
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
.L55_4:
    jmp .L55_3
.L55_2:
.L55_3:
    leaq -208(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq $32, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl $146, %ecx
    andl %ecx, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L55_6
.L55_5:
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl $1, %ecx
    orl %ecx, %r14d
    jmp .L55_7
.L55_6:
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    leaq .Ltext_201(%rip), %rbx
    subq $16, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq $1, %rdi
    movl $64, %esi
    movl $1, %edx
    movl $32, %ecx
    movl $0, %r8d
    movl $0, %r9d
    call lb_core_6conv_s@PLT
    addq $16, %rsp
    movq %rax, %rbx
    movl $4294967295, %ecx
    xorl %ecx, %ebx
    andl %ebx, %r14d
.L55_7:
    movq %r15, %r10
    movl %r14d, (%r10)
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L55_9
.L55_8:
    movl $128, %eax
    movq %r15, %r10
    movl %eax, (%r10)
    jmp .L55_10
.L55_9:
.L55_10:
    movq -232(%rbp), %rdi
    movl $0, %esi
    movq %r13, %rdx
    movl $40, %ecx
    call SetFileInformationByHandle@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L55_12
.L55_11:
    leaq -80(%rbp), %rbx
    call GetLastError@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_13windows_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_202(%rip), %r12
    leaq -224(%rbp), %r13
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
.L55_14:
    jmp .L55_13
.L55_12:
.L55_13:
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

    .p2align 4
    .globl lb_files_13windows_ticks
    .type lb_files_13windows_ticks, @function
lb_files_13windows_ticks:
    pushq %rbp
    movq %rsp, %rbp
    subq $256, %rsp
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
    movq (%r10), %r12
    leaq -112(%rbp), %r13
    movq %r12, %rdi
    movabsq $11644473600, %rsi
    movl $64, %edx
    movq %r13, %rcx
    call lb_core_6qadd_s@PLT
    movl %eax, %r12d
    leaq -128(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movb %r12b, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L56_1
    jmp .L56_2
.L56_1:
    jmp .L56_3
.L56_2:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_203(%rip), %r13
    leaq -144(%rbp), %r14
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
.L56_3:
    movq $0, %rcx
    cmpq %rcx, %r13
    jge .L56_6
.L56_5:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_204(%rip), %r13
    leaq -160(%rbp), %r14
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
.L56_6:
.L56_7:
    leaq -168(%rbp), %r12
    movq %r13, %rdi
    movq $10000000, %rsi
    movl $64, %edx
    movq %r12, %rcx
    call lb_core_6qmul_u@PLT
    movl %eax, %r14d
    leaq -184(%rbp), %r15
    movq %r12, %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %r14b, (%r10)
    movq %r15, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L56_9
    jmp .L56_10
.L56_9:
    jmp .L56_11
.L56_10:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_203(%rip), %r13
    leaq -200(%rbp), %r14
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
.L56_11:
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
.L56_14:
    movl $100, %ecx
    movl %r13d, %eax
    xorl %edx, %edx
    divl %ecx
    movl %eax, %ebx
    movl %ebx, %ebx
    leaq -208(%rbp), %r14
    movq %r12, %rdi
    movq %rbx, %rsi
    movl $64, %edx
    movq %r14, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %ebx
    leaq -224(%rbp), %r15
    movq %r14, %r10
    movq (%r10), %r14
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %bl, (%r10)
    movq %r15, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L56_15
    jmp .L56_16
.L56_15:
    jmp .L56_17
.L56_16:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_203(%rip), %r13
    leaq -240(%rbp), %r14
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
.L56_17:
    movabsq $9223372036854775807, %rcx
    cmpq %rcx, %r14
    jb .L56_20
.L56_19:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_203(%rip), %r13
    leaq -256(%rbp), %r14
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
.L56_20:
.L56_21:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
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

    .p2align 4
    .globl lb_files_17windows_set_times
    .type lb_files_17windows_set_times, @function
lb_files_17windows_set_times:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -96(%rbp)
    leaq -112(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -128(%rbp), %r10
    movq %r8, 0(%r10)
    movq %r9, 8(%r10)
    leaq -136(%rbp), %r12
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -176(%rbp), %rdi
    call lb_files_13windows_ticks@PLT
    leaq -176(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L57_2
    jmp .L57_1
.L57_2:
    movq $8, %rcx
    movq %r13, %rbx
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
.L57_3:
.L57_1:
    movq %r13, %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq -184(%rbp), %r14
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -224(%rbp), %rdi
    call lb_files_13windows_ticks@PLT
    leaq -224(%rbp), %r15
    movq $32, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L57_5
    jmp .L57_4
.L57_5:
    movq $8, %rcx
    movq %r15, %rbx
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
.L57_6:
.L57_4:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call _get_osfhandle@PLT
    movq %rax, %rbx
    movq %rbx, %rdi
    movq $0, %rsi
    movq %r12, %rdx
    movq %r14, %rcx
    call SetFileTime@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L57_8
.L57_7:
    leaq -80(%rbp), %rbx
    call GetLastError@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_13windows_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_36(%rip), %r12
    leaq -240(%rbp), %r13
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
.L57_10:
    jmp .L57_9
.L57_8:
.L57_9:
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

    .p2align 4
    .globl lb_files_9wide_path
    .type lb_files_9wide_path, @function
lb_files_9wide_path:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    leaq -128(%rbp), %r13
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %rsi
    movl %r12d, %edx
    leaq -176(%rbp), %rdi
    call lb_12windows_text_wide@PLT
    leaq -176(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L58_2
    jmp .L58_1
.L58_2:
    movq $16, %rcx
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
.L58_3:
.L58_1:
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -184(%rbp)
    movq %r13, %r10
    movq (%r10), %r14
    movq $0, %rax
    movq %rax, %r15
.L58_4:
    movq -184(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L58_7
.L58_5:
    movq $2, %rcx
    movq %r15, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzwl (%r10), %ebx
    movl $47, %ecx
    cmpl %ecx, %ebx
    jne .L58_9
.L58_8:
    movl $92, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    jmp .L58_10
.L58_9:
.L58_10:
.L58_6:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L58_4
.L58_7:
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
.L58_11:
    leaq .Ltext_209(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_13windows_error
    .type lb_files_13windows_error, @function
lb_files_13windows_error:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L59_40
    jmp .L59_4
.L59_40:
    movl %r12d, %r13d
    jmp .L59_5
.L59_4:
    movl $3, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L59_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L59_1
    jmp .L59_2
.L59_1:
    leaq lb_files_missing(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L59_6:
    jmp .L59_3
.L59_2:
.L59_3:
    movl $5, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L59_41
    jmp .L59_10
.L59_41:
    movl %r12d, %r13d
    jmp .L59_11
.L59_10:
    movl $1314, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L59_11:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L59_7
    jmp .L59_8
.L59_7:
    leaq lb_files_17permission_denied(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L59_12:
    jmp .L59_9
.L59_8:
.L59_9:
    movl $80, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L59_42
    jmp .L59_16
.L59_42:
    movl %r12d, %r13d
    jmp .L59_17
.L59_16:
    movl $183, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L59_17:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L59_13
    jmp .L59_14
.L59_13:
    leaq lb_files_14already_exists(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L59_18:
    jmp .L59_15
.L59_14:
.L59_15:
    movl $112, %ecx
    cmpl %ecx, %ebx
    jne .L59_20
.L59_19:
    leaq lb_files_8no_space(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L59_22:
    jmp .L59_21
.L59_20:
.L59_21:
    movl $145, %ecx
    cmpl %ecx, %ebx
    jne .L59_24
.L59_23:
    leaq lb_files_9not_empty(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L59_26:
    jmp .L59_25
.L59_24:
.L59_25:
    movl $206, %ecx
    cmpl %ecx, %ebx
    jne .L59_28
.L59_27:
    leaq lb_files_13name_too_long(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L59_30:
    jmp .L59_29
.L59_28:
.L59_29:
    movl $17, %ecx
    cmpl %ecx, %ebx
    jne .L59_32
.L59_31:
    leaq lb_files_12cross_device(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L59_34:
    jmp .L59_33
.L59_32:
.L59_33:
    movl $267, %ecx
    cmpl %ecx, %ebx
    jne .L59_36
.L59_35:
    leaq lb_files_13not_directory(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L59_38:
    jmp .L59_37
.L59_36:
.L59_37:
    leaq lb_files_failed(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L59_39:
    leaq .Ltext_210(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_12windows_open
    .type lb_files_12windows_open, @function
lb_files_12windows_open:
    pushq %rbp
    movq %rsp, %rbp
    subq $656, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    movl %edx, -120(%rbp)
    movl %ecx, -136(%rbp)
    movl %r8d, -152(%rbp)
    movl %r9d, -168(%rbp)
    leaq -184(%rbp), %rax
    movq %rax, -648(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -232(%rbp), %rdi
    call lb_files_9wide_path@PLT
    leaq -232(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L60_2
    jmp .L60_1
.L60_2:
    movq $16, %rcx
    movq %r13, %rbx
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
.L60_3:
.L60_1:
    movq %r13, %r10
    movq -648(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rax
    movq %rax, -560(%rbp)
    movl -560(%rbp), %eax
    movl $3, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    movl $2, %ecx
    cmpl %ecx, %r14d
    jne .L60_5
.L60_4:
    movl $3221225472, %eax
    movl %eax, %r13d
    jmp .L60_6
.L60_5:
    movl $1, %ecx
    cmpl %ecx, %r14d
    jne .L60_8
.L60_7:
    movl $1073741824, %eax
    movl %eax, %r13d
    jmp .L60_9
.L60_8:
    movl $2147483648, %eax
    movl %eax, %r13d
.L60_9:
.L60_6:
    leaq lb_files_create(%rip), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movl -560(%rbp), %eax
    movl %r14d, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L60_11
.L60_10:
    leaq lb_files_14exclusive_flag(%rip), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movl -560(%rbp), %eax
    movl %r14d, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L60_14
.L60_13:
    movl $1, %eax
    movl %eax, %r14d
    jmp .L60_15
.L60_14:
    movl $4, %eax
    movl %eax, %r14d
.L60_15:
    movl %r14d, %r15d
    jmp .L60_12
.L60_11:
    movl $3, %eax
    movl %eax, %r15d
.L60_12:
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl $146, %ecx
    andl %ecx, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L60_17
.L60_16:
    movl $1, %eax
    movl %eax, %r14d
    jmp .L60_18
.L60_17:
    movl $128, %eax
    movl %eax, %r14d
.L60_18:
    leaq -152(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %eax
    movl %eax, -568(%rbp)
    movl -568(%rbp), %eax
    testl %eax, %eax
    jne .L60_19
    jmp .L60_20
.L60_19:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L60_21
.L60_20:
    movl $2097152, %eax
    movl %eax, %ebx
.L60_21:
    movl %r14d, %eax
    orl %ebx, %eax
    movl %eax, -576(%rbp)
    movq -648(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -584(%rbp)
    subq $16, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq -584(%rbp), %rdi
    movl %r13d, %esi
    movl $7, %edx
    movq $0, %rcx
    movl %r15d, %r8d
    movl -576(%rbp), %r9d
    call CreateFileW@PLT
    addq $16, %rsp
    movq %rax, -656(%rbp)
    movq -656(%rbp), %rax
    testq %rax, %rax
    jne .L60_22
    jmp .L60_23
.L60_23:
    leaq .Ltext_212(%rip), %rdi
    leaq .Ltext_211(%rip), %rsi
    call lb_core_7trap_at@PLT
.L60_22:
    movq -656(%rbp), %rax
    movq $-1, %rcx
    cmpq %rcx, %rax
    jne .L60_25
.L60_24:
    leaq -88(%rbp), %rax
    movq %rax, -592(%rbp)
    movq -592(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    call GetLastError@PLT
    movl %eax, %r14d
    movl %r14d, %edi
    call lb_files_13windows_error@PLT
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_24(%rip), %r14
    leaq -248(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $28, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -592(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -264(%rbp), %r14
    movq -648(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_213(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -584(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L60_28
    jmp .L60_27
.L60_28:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L60_27:
    movq -592(%rbp), %rsi
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
.L60_29:
    jmp .L60_26
.L60_25:
.L60_26:
    leaq -168(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L60_33
    jmp .L60_74
.L60_74:
    movl %ebx, %r13d
    jmp .L60_34
.L60_33:
    movq -656(%rbp), %rdi
    call GetFileType@PLT
    movl %eax, %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L60_34:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L60_30
    jmp .L60_31
.L60_30:
    movq -656(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    leaq -88(%rbp), %rax
    movq %rax, -600(%rbp)
    movq -600(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq lb_files_15invalid_options(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_214(%rip), %r14
    leaq -280(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $53, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -600(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -296(%rbp), %r14
    movq -648(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_215(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -584(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L60_36
    jmp .L60_35
.L60_36:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L60_35:
    movq -600(%rbp), %rsi
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
.L60_37:
    jmp .L60_32
.L60_31:
.L60_32:
    leaq -348(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movl $0, 48(%r11)
    movl -568(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L60_39
.L60_38:
    movq -656(%rbp), %rdi
    movq %rbx, %rsi
    call GetFileInformationByHandle@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L60_42
.L60_41:
    call GetLastError@PLT
    movl %eax, %ebx
    movq -656(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r13d
    leaq -88(%rbp), %rax
    movq %rax, -608(%rbp)
    movq -608(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl %ebx, %edi
    call lb_files_13windows_error@PLT
    movl %eax, %ebx
    movq %r14, %r10
    movl %ebx, (%r10)
    leaq .Ltext_216(%rip), %rbx
    leaq -368(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -608(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    leaq -384(%rbp), %r14
    movq -648(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_217(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -584(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L60_45
    jmp .L60_44
.L60_45:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L60_44:
    movq -608(%rbp), %rsi
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
.L60_46:
    jmp .L60_43
.L60_42:
.L60_43:
    movq %rbx, %r10
    movl (%r10), %r13d
    movl $1024, %ecx
    andl %ecx, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L60_48
.L60_47:
    movq -656(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    leaq -88(%rbp), %rax
    movq %rax, -616(%rbp)
    movq -616(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq lb_files_12symlink_loop(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_218(%rip), %r14
    leaq -400(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $36, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -616(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -416(%rbp), %r14
    movq -648(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_219(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -584(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L60_51
    jmp .L60_50
.L60_51:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L60_50:
    movq -616(%rbp), %rsi
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
.L60_52:
    jmp .L60_49
.L60_48:
.L60_49:
    jmp .L60_40
.L60_39:
.L60_40:
    movl -560(%rbp), %eax
    movl $32907, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    movq -656(%rbp), %rdi
    movl %ebx, %esi
    call _open_osfhandle@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jge .L60_54
.L60_53:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movq -656(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r13d
    leaq -88(%rbp), %rax
    movq %rax, -624(%rbp)
    movq -624(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl %ebx, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %ebx
    movq %r14, %r10
    movl %ebx, (%r10)
    leaq .Ltext_220(%rip), %rbx
    leaq -432(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq $40, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -624(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    leaq -448(%rbp), %r14
    movq -648(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_221(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -584(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L60_57
    jmp .L60_56
.L60_57:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L60_56:
    movq -624(%rbp), %rsi
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
.L60_58:
    jmp .L60_55
.L60_54:
.L60_55:
    leaq lb_files_truncate(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl -560(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L60_62
    jmp .L60_75
.L60_75:
    movl %r13d, %r14d
    jmp .L60_63
.L60_62:
    leaq -528(%rbp), %r10
    movl %ebx, (%r10)
    movq $0, %rax
    leaq -544(%rbp), %r10
    movq %rax, (%r10)
    movl %ebx, %edi
    movq $0, %rsi
    call ftruncate@PLT
    movl %eax, %r13d
    leaq -552(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L60_73
.L60_72:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L60_73:
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
.L60_63:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L60_59
    jmp .L60_60
.L60_59:
    call lb_c_errno@PLT
    movl %eax, %r13d
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    leaq -88(%rbp), %rax
    movq %rax, -632(%rbp)
    movq -632(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movl %r13d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r13d
    movq %r15, %r10
    movl %r13d, (%r10)
    leaq .Ltext_222(%rip), %r13
    leaq -464(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -632(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -480(%rbp), %r13
    movq -648(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -584(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L60_65
    jmp .L60_64
.L60_65:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L60_64:
    movq -632(%rbp), %rsi
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
.L60_66:
    jmp .L60_61
.L60_60:
.L60_61:
    leaq -88(%rbp), %rax
    movq %rax, -640(%rbp)
    movq -640(%rbp), %r10
    movl %ebx, (%r10)
    movq -640(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -496(%rbp), %r14
    movq -648(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -584(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L60_68
    jmp .L60_67
.L60_68:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L60_67:
    movq -640(%rbp), %rsi
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
.L60_69:
    leaq -184(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -512(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
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
    jne .L60_71
    jmp .L60_70
.L60_71:
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
.L60_70:
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_19windows_path_handle
    .type lb_files_19windows_path_handle, @function
lb_files_19windows_path_handle:
    pushq %rbp
    movq %rsp, %rbp
    subq $400, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    movl %edx, -120(%rbp)
    movl %ecx, -136(%rbp)
    leaq -152(%rbp), %rax
    movq %rax, -392(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -200(%rbp), %rdi
    call lb_files_9wide_path@PLT
    leaq -200(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L61_2
    jmp .L61_1
.L61_2:
    movq $16, %rcx
    movq %r13, %rbx
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
.L61_3:
.L61_1:
    movq %r13, %r10
    movq -392(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -392(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -360(%rbp)
    leaq -120(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L61_4
    jmp .L61_5
.L61_4:
    movl $0, %eax
    movl %eax, %r13d
    jmp .L61_6
.L61_5:
    movl $2097152, %eax
    movl %eax, %r13d
.L61_6:
    movl $33554432, %ecx
    movl %r13d, %r15d
    orl %ecx, %r15d
    subq $16, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq -360(%rbp), %rdi
    movl $0, %esi
    movl $7, %edx
    movq $0, %rcx
    movl $3, %r8d
    movl %r15d, %r9d
    call CreateFileW@PLT
    addq $16, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L61_7
    jmp .L61_8
.L61_8:
    leaq .Ltext_225(%rip), %rdi
    leaq .Ltext_211(%rip), %rsi
    call lb_core_7trap_at@PLT
.L61_7:
    movq $-1, %rcx
    cmpq %rcx, %r15
    jne .L61_10
.L61_9:
    leaq -88(%rbp), %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    call GetLastError@PLT
    movl %eax, %r15d
    movl %r15d, %edi
    call lb_files_13windows_error@PLT
    movl %eax, %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_226(%rip), %r15
    leaq -216(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $33, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -368(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    leaq -232(%rbp), %r14
    movq -392(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_227(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -360(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L61_13
    jmp .L61_12
.L61_13:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L61_12:
    movq -368(%rbp), %rsi
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
.L61_14:
    jmp .L61_11
.L61_10:
.L61_11:
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L61_15
    jmp .L61_16
.L61_15:
    leaq -284(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movl $0, 48(%r11)
    movq %r15, %rdi
    movq %rbx, %rsi
    call GetFileInformationByHandle@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L61_35
    jmp .L61_21
.L61_35:
    movl %r13d, %r12d
    jmp .L61_22
.L61_21:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $16, %ecx
    andl %ecx, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L61_22:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L61_36
    jmp .L61_23
.L61_36:
    movl %r13d, %ebx
    jmp .L61_24
.L61_23:
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L61_25
    jmp .L61_37
.L61_37:
    movl %r12d, %ebx
    jmp .L61_26
.L61_25:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $1024, %ecx
    andl %ecx, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L61_26:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L61_24:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L61_18
    jmp .L61_19
.L61_18:
    movq %r15, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    leaq -88(%rbp), %rax
    movq %rax, -376(%rbp)
    movq -376(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    leaq lb_files_13not_directory(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_228(%rip), %r13
    leaq -304(%rbp), %r14
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
    movq -376(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -320(%rbp), %r13
    movq -392(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_229(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -360(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L61_28
    jmp .L61_27
.L61_28:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L61_27:
    movq -376(%rbp), %rsi
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
.L61_29:
    jmp .L61_20
.L61_19:
.L61_20:
    jmp .L61_17
.L61_16:
.L61_17:
    leaq -88(%rbp), %rax
    movq %rax, -384(%rbp)
    movq -384(%rbp), %r10
    movq %r15, (%r10)
    movq -384(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -336(%rbp), %r13
    movq -392(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_230(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -360(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L61_31
    jmp .L61_30
.L61_31:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L61_30:
    movq -384(%rbp), %rsi
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
.L61_32:
    leaq -152(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -352(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_230(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
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
    jne .L61_34
    jmp .L61_33
.L61_34:
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
.L61_33:
    leaq .Ltext_230(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_12windows_time
    .type lb_files_12windows_time, @function
lb_files_12windows_time:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -64(%rbp)
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
.L62_2:
    movabsq $-9223372036854775808, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L62_3
    jmp .L62_4
.L62_3:
    leaq .Ltext_231(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
.L62_4:
    movq $10000000, %rcx
    movq %rbx, %rax
    cqto
    idivq %rcx
    movq %rax, %r13
    movq %r13, %rax
    movabsq $11644473600, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_231(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    leaq -80(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    movq %r13, (%r10)
.L62_6:
    testl %r12d, %r12d
    jne .L62_7
    jmp .L62_8
.L62_7:
    leaq .Ltext_233(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
.L62_8:
    movq $10000000, %rcx
    movq %rbx, %rax
    cqto
    idivq %rcx
    movq %rdx, %r12
    movl %r12d, %eax
    movl $100, %ecx
    mull %ecx
    jnc 1f
    leaq .Ltext_233(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    leaq -48(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_16windows_metadata
    .type lb_files_16windows_metadata, @function
lb_files_16windows_metadata:
    pushq %rbp
    movq %rsp, %rbp
    subq $672, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -224(%rbp)
    movl %edx, -240(%rbp)
    leaq -292(%rbp), %rax
    movq %rax, -600(%rbp)
    movq -600(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movl $0, 48(%r11)
    leaq -336(%rbp), %rax
    movq %rax, -608(%rbp)
    movq -608(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq -360(%rbp), %rax
    movq %rax, -616(%rbp)
    movq -616(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -224(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rdi
    movq -600(%rbp), %rsi
    call GetFileInformationByHandle@PLT
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L63_32
    jmp .L63_4
.L63_32:
    movl %r15d, %ebx
    jmp .L63_5
.L63_4:
    movq %r14, %rdi
    movl $0, %esi
    movq -608(%rbp), %rdx
    movl $40, %ecx
    call GetFileInformationByHandleEx@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L63_5:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L63_33
    jmp .L63_6
.L63_33:
    movl %r15d, %ebx
    jmp .L63_7
.L63_6:
    movq %r14, %rdi
    movl $1, %esi
    movq -616(%rbp), %rdx
    movl $24, %ecx
    call GetFileInformationByHandleEx@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L63_7:
    movzbl %bl, %r14d
    testl %r14d, %r14d
    jne .L63_1
    jmp .L63_2
.L63_1:
    leaq -208(%rbp), %rbx
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call GetLastError@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_files_13windows_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_18(%rip), %r13
    leaq -376(%rbp), %r14
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
.L63_2:
.L63_3:
    movq -600(%rbp), %r10
    movl (%r10), %ebx
    movl $16, %ecx
    movl %ebx, %r14d
    andl %ecx, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L63_10
.L63_9:
    movl $2, %eax
    movl %eax, %r14d
    jmp .L63_11
.L63_10:
    movl $1, %eax
    movl %eax, %r14d
.L63_11:
    movzbl %r14b, %r15d
    leaq -240(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L63_15
    jmp .L63_34
.L63_34:
    movl %r12d, %r14d
    jmp .L63_16
.L63_15:
    movl $1024, %ecx
    movl %ebx, %r12d
    andl %ecx, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L63_16:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L63_12
    jmp .L63_13
.L63_12:
    movl $3, %eax
    movl %eax, %r15d
    jmp .L63_14
.L63_13:
.L63_14:
    movq -600(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
.L63_18:
    movq $32, %rcx
    movq %r12, %r14
    shlq %cl, %r14
    movq -600(%rbp), %rax
    movq $36, %rcx
    addq %rcx, %rax
    movq %rax, -624(%rbp)
    movq -624(%rbp), %r10
    movl (%r10), %eax
    movl %eax, -632(%rbp)
    movl -632(%rbp), %eax
    movl %eax, %eax
    movq %rax, -640(%rbp)
    movq -640(%rbp), %rcx
    movq %r14, %rax
    orq %rcx, %rax
    movq %rax, -648(%rbp)
    leaq -504(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movups %xmm8, 96(%r11)
    movups %xmm8, 112(%r11)
    movzbl %r15b, %r14d
    movq %r13, %r10
    movb %r14b, (%r10)
    movl $1, %ecx
    movl %ebx, %eax
    andl %ecx, %eax
    movl %eax, -656(%rbp)
    movl -656(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, -664(%rbp)
    movl -664(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L63_20
.L63_19:
    movl $292, %eax
    movl %eax, %ebx
    jmp .L63_21
.L63_20:
    movl $438, %eax
    movl %eax, %ebx
.L63_21:
    movl $2, %ecx
    cmpl %ecx, %r14d
    jne .L63_23
.L63_22:
    movl $73, %eax
    movl %eax, %r12d
    jmp .L63_24
.L63_23:
    movl $0, %eax
    movl %eax, %r12d
.L63_24:
    movl %ebx, %r14d
    orl %r12d, %r14d
    movq $4, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq -648(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -600(%rbp), %rax
    movq $28, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    movq $16, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -600(%rbp), %rax
    movq $44, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
.L63_26:
    movq $32, %rcx
    movq %r14, %rbx
    shlq %cl, %rbx
    movq -600(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    orq %r12, %rbx
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq -600(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq $44, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -616(%rbp), %r10
    movq (%r10), %rbx
.L63_28:
    movabsq $-9223372036854775808, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L63_29
    jmp .L63_30
.L63_29:
    leaq .Ltext_235(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
.L63_30:
    movq $512, %rcx
    movq %rbx, %rax
    cqto
    idivq %rcx
    movq %rax, %r12
    movq $48, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq -608(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_files_12windows_time@PLT
    leaq -520(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -520(%rbp), %r12
    movq $56, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -608(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_files_12windows_time@PLT
    leaq -536(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -536(%rbp), %r12
    movq $72, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -608(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_files_12windows_time@PLT
    leaq -552(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -552(%rbp), %r12
    movq $88, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -608(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_files_12windows_time@PLT
    leaq -568(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -568(%rbp), %r12
    leaq -592(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $104, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -208(%rbp), %r12
    movq %r13, %r10
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
    movq $152, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %rsi
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

    .p2align 4
    .globl lb_files_16windows_relative
    .type lb_files_16windows_relative, @function
lb_files_16windows_relative:
    pushq %rbp
    movq %rsp, %rbp
    subq $880, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -112(%rbp)
    movq %rdx, -128(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rax
    movq %rax, -744(%rbp)
    leaq lb_files_20current_directory_fd(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl -744(%rbp), %eax
    cmpl %r12d, %eax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L64_73
    jmp .L64_4
.L64_73:
    movl %r12d, %r13d
    jmp .L64_5
.L64_4:
    leaq -128(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call strlen@PLT
    movq %rax, %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_paths_11is_absolute@PLT
    movl %eax, %r13d
.L64_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L64_1
    jmp .L64_2
.L64_1:
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -208(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -208(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L64_7
    jmp .L64_6
.L64_7:
    movq $16, %rcx
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
.L64_6:
    leaq -96(%rbp), %rbx
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L64_2:
.L64_3:
    leaq -224(%rbp), %rax
    movq %rax, -848(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -856(%rbp)
    leaq -272(%rbp), %r14
.L64_11:
    movq -856(%rbp), %r10
    movq (%r10), %r15
    movq -856(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -752(%rbp)
    movq -752(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L64_13
    jmp .L64_14
.L64_14:
    leaq .Ltext_236(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    call lb_core_7trap_at@PLT
.L64_13:
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r15, %rsi
    movq $65536, %rdx
    movq $2, %rcx
    leaq -296(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -296(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $1, %ecx
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L64_15
    jmp .L64_16
.L64_15:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_63(%rip), %r12
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
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L64_12
.L64_16:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq $32768, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L64_12:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L64_18
    jmp .L64_17
.L64_18:
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
.L64_17:
    movq %r14, %r10
    movq -848(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl -744(%rbp), %edi
    call _get_osfhandle@PLT
    movq %rax, %rbx
    movq -848(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -760(%rbp)
    movq -848(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -768(%rbp)
    movq %rbx, %rdi
    movq -760(%rbp), %rsi
    movl -768(%rbp), %edx
    movl $0, %ecx
    call GetFinalPathNameByHandleW@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L64_74
    jmp .L64_23
.L64_74:
    movl %r15d, %r14d
    jmp .L64_24
.L64_23:
    movl -768(%rbp), %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r14d
.L64_24:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L64_20
    jmp .L64_21
.L64_20:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    call GetLastError@PLT
    movl %eax, %r15d
    movl %r15d, %edi
    call lb_files_13windows_error@PLT
    movl %eax, %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_237(%rip), %r15
    leaq -312(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $41, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -328(%rbp), %r12
    movq -768(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_238(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -760(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -856(%rbp), %r10
    movq (%r10), %r14
    movq -752(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L64_26
    jmp .L64_25
.L64_26:
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
.L64_25:
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
.L64_21:
.L64_22:
    leaq -344(%rbp), %rax
    movq %rax, -864(%rbp)
    movl %ebx, %eax
    movq %rax, -776(%rbp)
    movq -776(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_239(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    leaq -392(%rbp), %rax
    movq %rax, -872(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r12
    jbe .L64_29
.L64_28:
    movq -872(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_60(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -872(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L64_30
.L64_29:
    movq -856(%rbp), %r10
    movq (%r10), %rbx
    movq -752(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L64_31
    jmp .L64_32
.L64_32:
    leaq .Ltext_239(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    call lb_core_7trap_at@PLT
.L64_31:
    movq %r14, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r12, %rdx
    movq $1, %rcx
    leaq -416(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -416(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, -784(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -784(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L64_33
    jmp .L64_34
.L64_33:
    movq -872(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_63(%rip), %r12
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
    movq -872(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L64_30
.L64_34:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -872(%rbp), %r10
    movq %rbx, (%r10)
    movq -872(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -872(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L64_30:
    movq -872(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L64_36
    jmp .L64_35
.L64_36:
    movq -872(%rbp), %rax
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
    leaq -432(%rbp), %rbx
    movq -768(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_239(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -760(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -856(%rbp), %r10
    movq (%r10), %r13
    movq -752(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L64_38
    jmp .L64_37
.L64_38:
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
.L64_37:
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
.L64_35:
    movq -872(%rbp), %r10
    movq -864(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -864(%rbp), %r10
    movq (%r10), %rbx
    movq -864(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -792(%rbp)
    movq -792(%rbp), %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_240(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    subq $16, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movl $65001, %edi
    movl $128, %esi
    movq -760(%rbp), %rdx
    movl -776(%rbp), %ecx
    movq %rbx, %r8
    movl %r13d, %r9d
    call WideCharToMultiByte@PLT
    addq $16, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L64_41
.L64_40:
    leaq -96(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    leaq lb_files_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_241(%rip), %r15
    leaq -448(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $44, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -464(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq -792(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -856(%rbp), %r10
    movq (%r10), %r14
    movq -752(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L64_44
    jmp .L64_43
.L64_44:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L64_43:
    leaq -480(%rbp), %rbx
    movq -768(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_242(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -760(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq -856(%rbp), %r10
    movq (%r10), %r12
    movq -752(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L64_46
    jmp .L64_45
.L64_46:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L64_45:
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
.L64_41:
.L64_42:
    leaq -496(%rbp), %rax
    movq %rax, -880(%rbp)
    movslq %r13d, %r15
    movq -792(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_243(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_243(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L64_48
.L64_49:
    leaq .Ltext_243(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
.L64_48:
    leaq -512(%rbp), %rax
    movq %rax, -800(%rbp)
    movq -800(%rbp), %r10
    movq %rbx, (%r10)
    movq -800(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -808(%rbp)
    movq -808(%rbp), %r10
    movq %r15, (%r10)
    leaq -528(%rbp), %rax
    movq %rax, -816(%rbp)
    movq -816(%rbp), %r10
    movq %rbx, (%r10)
    movq -816(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    call strlen@PLT
    movq %rax, %r14
    leaq -544(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -816(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    leaq -592(%rbp), %rdi
    call lb_paths_join@PLT
    leaq -592(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L64_51
    jmp .L64_50
.L64_51:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq -96(%rbp), %rax
    movq %rax, -824(%rbp)
    movq -824(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -824(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -608(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq -792(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq -856(%rbp), %r10
    movq (%r10), %r15
    movq -752(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L64_53
    jmp .L64_52
.L64_53:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r15, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L64_52:
    leaq -624(%rbp), %rbx
    movq -768(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_243(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -760(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq -856(%rbp), %r10
    movq (%r10), %r12
    movq -752(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L64_55
    jmp .L64_54
.L64_55:
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
.L64_54:
    movq -824(%rbp), %rsi
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
.L64_50:
    movq %r13, %r10
    movq -880(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -880(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -672(%rbp), %rdi
    call lb_paths_normalize@PLT
    leaq -672(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L64_58
    jmp .L64_57
.L64_58:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -96(%rbp), %rax
    movq %rax, -832(%rbp)
    movq -832(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -832(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -880(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq -688(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq -792(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq -856(%rbp), %r10
    movq (%r10), %r15
    movq -752(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L64_60
    jmp .L64_59
.L64_60:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r15, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L64_59:
    leaq -704(%rbp), %rbx
    movq -768(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_244(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -760(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq -856(%rbp), %r10
    movq (%r10), %r12
    movq -752(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L64_62
    jmp .L64_61
.L64_62:
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
.L64_61:
    movq -832(%rbp), %rsi
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
.L64_57:
    leaq -96(%rbp), %rax
    movq %rax, -840(%rbp)
    movq %r14, %r10
    movq -840(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -840(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -880(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq -720(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq -792(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq -856(%rbp), %r10
    movq (%r10), %r15
    movq -752(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L64_65
    jmp .L64_64
.L64_65:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r15, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L64_64:
    leaq -736(%rbp), %rbx
    movq -768(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_244(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -760(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq -856(%rbp), %r10
    movq (%r10), %r12
    movq -752(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L64_67
    jmp .L64_66
.L64_67:
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
.L64_66:
    movq -840(%rbp), %rsi
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
    .globl lb_files_22windows_directory_open
    .type lb_files_22windows_directory_open, @function
lb_files_22windows_directory_open:
    pushq %rbp
    movq %rsp, %rbp
    subq $2048, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -104(%rbp)
    movq %rdx, -120(%rbp)
    movl %ecx, -136(%rbp)
    leaq -152(%rbp), %rax
    movq %rax, -2040(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movl %ebx, %esi
    movq %r12, %rdx
    leaq -200(%rbp), %rdi
    call lb_files_16windows_relative@PLT
    leaq -200(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L65_2
    jmp .L65_1
.L65_2:
    movq $16, %rcx
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
.L65_3:
.L65_1:
    movq %r12, %r10
    movq -2040(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2040(%rbp), %r10
    movq (%r10), %rbx
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq %rbx, %rsi
    movl %r14d, %edx
    movl $1, %ecx
    leaq -240(%rbp), %rdi
    call lb_files_19windows_path_handle@PLT
    leaq -240(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L65_5
    jmp .L65_4
.L65_5:
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
    movq -2040(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L65_6:
.L65_4:
    movq %r14, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    movl $128, %esi
    call _open_osfhandle@PLT
    movl %eax, -2032(%rbp)
    movl -2032(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jge .L65_8
.L65_7:
    movq %rbx, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    leaq lb_files_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_245(%rip), %r15
    leaq -256(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $45, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -2040(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L65_10:
    jmp .L65_9
.L65_8:
.L65_9:
    leaq lb_memory_heap(%rip), %rbx
    leaq -296(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -336(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L65_13
    jmp .L65_14
.L65_14:
    leaq .Ltext_246(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    call lb_core_7trap_at@PLT
.L65_13:
    movq %r13, %r10
    movq (%r10), %r15
    movq %rbx, %rsi
    movq $1656, %rdx
    movq $8, %rcx
    leaq -360(%rbp), %rdi
    movq %r15, %r11
    call *%r11
    leaq -360(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L65_15
    jmp .L65_16
.L65_16:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_63(%rip), %r12
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
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L65_17
.L65_15:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq -2016(%rbp), %r13
    movq %r13, %rdi
    xorl %esi, %esi
    movq $1656, %rdx
    call memset@PLT
    movl -2032(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq %rbx, %rdi
    movq %r13, %rsi
    movq $1656, %rdx
    call memcpy@PLT
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L65_17:
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L65_19
    jmp .L65_18
.L65_19:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -280(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L65_11
.L65_18:
    movq %r14, %r10
    movq (%r10), %rbx
    jmp .L65_12
.L65_11:
    movl -2032(%rbp), %edi
    call close@PLT
    movl %eax, %ebx
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -2040(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L65_20:
.L65_12:
    leaq -2024(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq -88(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -2040(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L65_21:
    leaq -152(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq .Ltext_247(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_12windows_next
    .type lb_files_12windows_next, @function
lb_files_12windows_next:
    pushq %rbp
    movq %rsp, %rbp
    subq $544, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -120(%rbp)
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -480(%rbp)
    movq -480(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -488(%rbp)
    movq -488(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L66_1
    jmp .L66_2
.L66_1:
    leaq -144(%rbp), %rbx
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
.L66_4:
    jmp .L66_3
.L66_2:
.L66_3:
    movq -480(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -496(%rbp)
    movq -496(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L66_8
    jmp .L66_6
.L66_8:
.L66_5:
    movq -480(%rbp), %rax
    movq $20, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r14, %rdi
    movq %r13, %rsi
    call FindNextFileW@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L66_10
.L66_9:
    call GetLastError@PLT
    movl %eax, %ebx
    movl $18, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L66_13
.L66_12:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call GetLastError@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_files_13windows_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_248(%rip), %r13
    leaq -160(%rbp), %r14
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
.L66_15:
    jmp .L66_14
.L66_13:
.L66_14:
    movl $1, %eax
    movq -488(%rbp), %r10
    movb %al, (%r10)
    leaq -184(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -104(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L66_16:
    jmp .L66_11
.L66_10:
.L66_11:
    jmp .L66_7
.L66_6:
    leaq -200(%rbp), %rax
    movq %rax, -536(%rbp)
    movq -480(%rbp), %r10
    movslq (%r10), %r14
    leaq .Ltext_249(%rip), %r15
    movl %r14d, %esi
    movq %r15, %rdx
    leaq -248(%rbp), %rdi
    call lb_files_16windows_relative@PLT
    leaq -248(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L66_18
    jmp .L66_17
.L66_18:
    movq $16, %rcx
    movq %r15, %rbx
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
.L66_19:
.L66_17:
    movq %r15, %r10
    movq -536(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -264(%rbp), %r12
    movq -536(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rsi
    leaq -312(%rbp), %rdi
    call lb_files_9wide_path@PLT
    leaq -312(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L66_21
    jmp .L66_20
.L66_21:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq -104(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -536(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L66_22:
.L66_20:
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -504(%rbp)
    movq -480(%rbp), %rax
    movq $20, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq -504(%rbp), %rdi
    movq %r15, %rsi
    call FindFirstFileW@PLT
    movq %rax, -544(%rbp)
    movq -544(%rbp), %rax
    testq %rax, %rax
    jne .L66_23
    jmp .L66_24
.L66_24:
    leaq .Ltext_250(%rip), %rdi
    leaq .Ltext_211(%rip), %rsi
    call lb_core_7trap_at@PLT
.L66_23:
    movq -544(%rbp), %rax
    movq $-1, %rcx
    cmpq %rcx, %rax
    jne .L66_26
.L66_25:
    call GetLastError@PLT
    movl %eax, %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L66_29
.L66_28:
    movl $1, %eax
    movq -488(%rbp), %r10
    movb %al, (%r10)
    leaq -336(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -104(%rbp), %rax
    movq %rax, -512(%rbp)
    movq %rbx, %r10
    movq -512(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -512(%rbp), %rax
    movq $48, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    leaq -352(%rbp), %rax
    movq %rax, -520(%rbp)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_251(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -504(%rbp), %rax
    movq -520(%rbp), %r10
    movq %rax, (%r10)
    movq -520(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L66_32
    jmp .L66_31
.L66_32:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq -520(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L66_31:
    movq -536(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -512(%rbp), %rsi
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
.L66_33:
    jmp .L66_30
.L66_29:
.L66_30:
    leaq -104(%rbp), %rax
    movq %rax, -528(%rbp)
    movq -528(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    call GetLastError@PLT
    movl %eax, %r15d
    movl %r15d, %edi
    call lb_files_13windows_error@PLT
    movl %eax, %r15d
    movq %r13, %r10
    movl %r15d, (%r10)
    leaq .Ltext_248(%rip), %r15
    leaq -368(%rbp), %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $37, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -528(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -384(%rbp), %r14
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_252(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -504(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L66_35
    jmp .L66_34
.L66_35:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L66_34:
    movq -536(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -528(%rbp), %rsi
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
.L66_36:
    jmp .L66_27
.L66_26:
.L66_27:
    movq -544(%rbp), %rax
    movq -496(%rbp), %r10
    movq %rax, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    leaq -400(%rbp), %r13
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_253(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -504(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L66_38
    jmp .L66_37
.L66_38:
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
.L66_37:
    movq -536(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
.L66_7:
    movq -480(%rbp), %rax
    movq $20, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $44, %rcx
    addq %rcx, %rbx
    movq -480(%rbp), %rax
    movq $612, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    subq $16, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movl $65001, %edi
    movl $128, %esi
    movq %rbx, %rdx
    movl $4294967295, %ecx
    movq %r12, %r8
    movl $1041, %r9d
    call WideCharToMultiByte@PLT
    addq $16, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jg .L66_40
.L66_39:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_255(%rip), %r13
    leaq -416(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $47, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
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
.L66_42:
    jmp .L66_41
.L66_40:
.L66_41:
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_256(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movslq %r13d, %r14
    movq $1042, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_256(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L66_43
.L66_44:
    leaq .Ltext_256(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
.L66_43:
    leaq -432(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    leaq -448(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    leaq -472(%rbp), %r13
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
.L66_45:
    leaq .Ltext_256(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_23windows_directory_close
    .type lb_files_23windows_directory_close, @function
lb_files_23windows_directory_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L67_4
    jmp .L67_2
.L67_4:
.L67_1:
    movq %r12, %rdi
    call FindClose@PLT
    movl %eax, %r12d
    jmp .L67_3
.L67_2:
.L67_3:
    movq %rbx, %r10
    movslq (%r10), %r12
    movl %r12d, %edi
    call close@PLT
    movl %eax, %r12d
    leaq lb_memory_heap(%rip), %r13
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $1656, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L67_6
    jmp .L67_5
.L67_6:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r15, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L67_5:
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L67_8
.L67_7:
    leaq -80(%rbp), %rbx
    leaq lb_files_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_121(%rip), %r12
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $33, %rax
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
.L67_10:
    jmp .L67_9
.L67_8:
.L67_9:
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

    .p2align 4
    .globl lb_files_canonical
    .type lb_files_canonical, @function
lb_files_canonical:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
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
    movq %rbx, %rdi
    movq $0, %rsi
    call realpath@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L68_1
    jmp .L68_2
.L68_1:
    jmp .L68_3
.L68_2:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_c_errno@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_257(%rip), %r13
    leaq -128(%rbp), %r14
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
.L68_4:
.L68_3:
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    leaq -144(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -192(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -192(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L68_6
    jmp .L68_5
.L68_6:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq -96(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rdi
    call free@PLT
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
.L68_7:
.L68_5:
    leaq -96(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %rbx, %rdi
    call free@PLT
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
.L68_8:
    movq %rbx, %rdi
    call free@PLT
    leaq .Ltext_258(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_11remove_tree
    .type lb_files_11remove_tree, @function
lb_files_11remove_tree:
    pushq %rbp
    movq %rsp, %rbp
    subq $880, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    leaq -224(%rbp), %r13
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -816(%rbp)
    movq -816(%rbp), %rsi
    movl $0, %edx
    leaq -536(%rbp), %rdi
    call lb_files_metadata@PLT
    leaq -536(%rbp), %r14
    movq $152, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L69_4
    jmp .L69_3
.L69_4:
    movq $128, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -376(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L69_1
.L69_3:
    leaq -352(%rbp), %r12
    movq %r14, %r10
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
    jmp .L69_2
.L69_1:
    movq %r12, %r10
    movl (%r10), %ebx
    leaq lb_files_missing(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    cmpl %r13d, %ebx
    jne .L69_6
.L69_5:
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
.L69_8:
    jmp .L69_7
.L69_6:
.L69_7:
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
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
.L69_9:
.L69_2:
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
    movq %r13, %r10
    movzbl (%r10), %r14d
    movl $2, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L69_11
.L69_10:
    movq -816(%rbp), %rsi
    leaq -568(%rbp), %rdi
    call lb_files_11remove_file@PLT
    leaq -568(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L69_14
    jmp .L69_13
.L69_14:
    leaq -80(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L69_15:
.L69_13:
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
.L69_16:
    jmp .L69_12
.L69_11:
.L69_12:
    leaq -584(%rbp), %r13
    movq -816(%rbp), %rsi
    leaq -632(%rbp), %rdi
    call lb_files_list@PLT
    leaq -632(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L69_18
    jmp .L69_17
.L69_18:
    movq $16, %rcx
    movq %r14, %rbx
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
.L69_19:
.L69_17:
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -824(%rbp)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    leaq -648(%rbp), %rax
    movq %rax, -832(%rbp)
    leaq -664(%rbp), %rax
    movq %rax, -872(%rbp)
    leaq -680(%rbp), %rax
    movq %rax, -840(%rbp)
    movq -840(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -848(%rbp)
    leaq -728(%rbp), %rax
    movq %rax, -880(%rbp)
    movq -880(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -856(%rbp)
    leaq -760(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -864(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L69_20:
    cmpq %r15, %rbx
    jae .L69_23
.L69_21:
    movq $16, %rcx
    movq %rbx, %r14
    imulq %rcx, %r14
    movq -824(%rbp), %rax
    movq %r14, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq -832(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -816(%rbp), %rdi
    call strlen@PLT
    movq %rax, %r14
    movq -816(%rbp), %rax
    movq -840(%rbp), %r10
    movq %rax, (%r10)
    movq -848(%rbp), %r10
    movq %r14, (%r10)
    movq -840(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -832(%rbp), %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    leaq -728(%rbp), %rdi
    call lb_paths_join@PLT
    movq -856(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L69_25
    jmp .L69_24
.L69_25:
    movq -880(%rbp), %rax
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
    movq %r13, %r10
    leaq -808(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -808(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r14, %rdx
    call lb_files_15release_entries@PLT
.L69_33:
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
.L69_26:
.L69_24:
    movq -880(%rbp), %r10
    movq -872(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -872(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rsi
    leaq -760(%rbp), %rdi
    call lb_files_11remove_tree@PLT
    movq -864(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L69_28
    jmp .L69_27
.L69_28:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq -872(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %r10
    leaq -808(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -808(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %rdx
    call lb_files_15release_entries@PLT
.L69_34:
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
.L69_29:
.L69_27:
    movq -872(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
.L69_22:
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %rbx
    jmp .L69_20
.L69_23:
    movq -816(%rbp), %rsi
    leaq -792(%rbp), %rdi
    call lb_files_16remove_directory@PLT
    leaq -792(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L69_31
    jmp .L69_30
.L69_31:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r13, %r10
    leaq -808(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -808(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %rdx
    call lb_files_15release_entries@PLT
.L69_35:
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
.L69_32:
.L69_30:
    movq %r13, %r10
    leaq -808(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -808(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %rdx
    call lb_files_15release_entries@PLT
.L69_36:
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

    .p2align 4
    .globl lb_files_TemporaryDirectory_init
    .type lb_files_TemporaryDirectory_init, @function
lb_files_TemporaryDirectory_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $752, %rsp
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
    movq %rax, -704(%rbp)
    leaq -120(%rbp), %r15
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    leaq -152(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L70_2
.L70_1:
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    leaq -168(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq -136(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L70_3
.L70_2:
    call lb_io_path_temp@PLT
    leaq -184(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -184(%rbp), %rbx
    leaq -136(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L70_3:
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r15, %r10
    movq (%r10), %rbx
    leaq -296(%rbp), %r10
    movq %rbx, (%r10)
    movl $448, %eax
    leaq -312(%rbp), %r10
    movl %eax, (%r10)
    leaq -328(%rbp), %rax
    movq %rax, -712(%rbp)
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    leaq -344(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq .Ltext_71(%rip), %rbx
    leaq -360(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    leaq -408(%rbp), %rdi
    call lb_paths_join@PLT
    leaq -408(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L70_8
    jmp .L70_7
.L70_8:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -280(%rbp), %r13
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
    movq %r13, %r10
    leaq -232(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    jmp .L70_33
.L70_7:
    movq %r12, %r10
    movq -712(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -424(%rbp), %rax
    movq %rax, -584(%rbp)
    leaq .Ltext_72(%rip), %rax
    movq %rax, -592(%rbp)
    leaq -440(%rbp), %r15
    movq -592(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -600(%rbp)
    movq $16, %rax
    movq -600(%rbp), %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq -584(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -712(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -608(%rbp)
    movq -712(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -616(%rbp)
    movq -616(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -624(%rbp)
    movq -624(%rbp), %rax
    movq $32, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_259(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -632(%rbp)
    leaq -456(%rbp), %rax
    movq %rax, -640(%rbp)
    leaq -472(%rbp), %rax
    movq %rax, -648(%rbp)
    movq -648(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -656(%rbp)
    leaq -504(%rbp), %rax
    movq %rax, -728(%rbp)
    movq -728(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -664(%rbp)
    leaq -560(%rbp), %rax
    movq %rax, -744(%rbp)
    movq -744(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -680(%rbp)
    leaq -528(%rbp), %rax
    movq %rax, -688(%rbp)
    leaq lb_files_14already_exists(%rip), %rax
    movq %rax, -696(%rbp)
    movq $0, %rax
    movq %rax, -720(%rbp)
.L70_10:
    movq -720(%rbp), %rax
    movq $128, %rcx
    cmpq %rcx, %rax
    jae .L70_12
.L70_11:
    movq -640(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -640(%rbp), %rax
    movq -648(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -656(%rbp), %r10
    movq %rax, (%r10)
    movq -648(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -504(%rbp), %rdi
    call lb_os_12random_bytes@PLT
    movq -664(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L70_14
    jmp .L70_13
.L70_14:
    leaq -280(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -728(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -712(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %rbx, %r10
    leaq -232(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    jmp .L70_33
.L70_13:
    movq $0, %rax
    movq %rax, -736(%rbp)
.L70_16:
    movq -736(%rbp), %rax
    movq $16, %rcx
    cmpq %rcx, %rax
    jae .L70_19
.L70_17:
    movq -736(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq -632(%rbp), %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_260(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -608(%rbp), %rax
    movq %rax, %r14
    addq %r13, %r14
    movq -640(%rbp), %rax
    movq -736(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, -672(%rbp)
    movq -672(%rbp), %r10
    movzbl (%r10), %ebx
.L70_21:
    movl $4, %ecx
    movl %ebx, %r15d
    shrl %cl, %r15d
    movzbl %r15b, %r15d
    movl %r15d, %r15d
    movq $16, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_260(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -592(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq %r14, %r10
    movb %r15b, (%r10)
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_261(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -608(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq -672(%rbp), %r10
    movzbl (%r10), %r12d
    movl $15, %ecx
    andl %ecx, %r12d
    movl %r12d, %r12d
    movq -592(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %r15, %r10
    movb %r12b, (%r10)
.L70_18:
    movq -736(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -736(%rbp)
    jmp .L70_16
.L70_19:
    movq -712(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $448, %edx
    leaq -560(%rbp), %rdi
    call lb_files_16create_directory@PLT
    movq -680(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L70_25
    jmp .L70_24
.L70_25:
    movq -744(%rbp), %r10
    movq -688(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L70_22
.L70_24:
    jmp .L70_23
.L70_22:
    movq -688(%rbp), %r10
    movl (%r10), %ebx
    movq -696(%rbp), %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    jne .L70_27
.L70_26:
    movq -720(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -720(%rbp)
    jmp .L70_10
.L70_27:
.L70_28:
    leaq -280(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    movq -688(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -712(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r12, %r10
    leaq -232(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    jmp .L70_33
.L70_23:
    leaq -280(%rbp), %rbx
    movq -712(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -232(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    jmp .L70_33
.L70_12:
    leaq -280(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_14already_exists(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_263(%rip), %r13
    leaq -576(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $44, %rax
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
    movq -712(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %rbx, %r10
    leaq -232(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
.L70_33:
    leaq -232(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L70_5
    jmp .L70_4
.L70_5:
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
.L70_4:
    movq %r12, %r10
    movq -704(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -704(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
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
    .globl lb_files_TemporaryDirectory_path
    .type lb_files_TemporaryDirectory_path, @function
lb_files_TemporaryDirectory_path:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %r10
    movq (%r10), %r12
    leaq -32(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L71_1:
    leaq .Ltext_265(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_TemporaryDirectory_12release_name
    .type lb_files_TemporaryDirectory_12release_name, @function
lb_files_TemporaryDirectory_12release_name:
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
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L72_2
.L72_1:
    leaq -64(%rbp), %r13
    movq $16, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -152(%rbp)
    movq -152(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L72_4
    jmp .L72_5
.L72_4:
    leaq -80(%rbp), %rbx
    movq -152(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L72_6
.L72_5:
    leaq .Ltext_266(%rip), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $40, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_267(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_267(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L72_6:
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -112(%rbp), %r15
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_88(%rip), %r14
    leaq -128(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -144(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    movq -152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L72_3
.L72_2:
.L72_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_TemporaryDirectory_destroy
    .type lb_files_TemporaryDirectory_destroy, @function
lb_files_TemporaryDirectory_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L73_6
.L73_5:
    leaq -128(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L73_12
.L73_8:
    jmp .L73_7
.L73_6:
.L73_7:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -160(%rbp), %rdi
    call lb_files_11remove_tree@PLT
    leaq -160(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L73_10
    jmp .L73_9
.L73_10:
    leaq -128(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L73_12
.L73_11:
.L73_9:
    movq %r12, %rdi
    call lb_files_TemporaryDirectory_12release_name@PLT
    leaq -128(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L73_12:
    leaq -96(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L73_4
    jmp .L73_3
.L73_4:
    leaq -64(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L73_1
.L73_3:
    jmp .L73_2
.L73_1:
.L73_2:
    movq %r12, %rdi
    call lb_files_TemporaryDirectory_12release_name@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_9text_path
    .type lb_files_9text_path, @function
lb_files_9text_path:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
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
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L74_19
    jmp .L74_4
.L74_19:
    movl %r13d, %r14d
    jmp .L74_5
.L74_4:
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L74_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L74_1
    jmp .L74_2
.L74_1:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_268(%rip), %r13
    leaq -128(%rbp), %r14
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
.L74_6:
    jmp .L74_3
.L74_2:
.L74_3:
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r14
    movq $0, %rax
    movq %rax, %r15
.L74_7:
    cmpq %r14, %r15
    jae .L74_10
.L74_8:
    movq %r13, %r12
    addq %r15, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movzbl %r12b, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L74_12
.L74_11:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_269(%rip), %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $25, %rax
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
.L74_14:
    jmp .L74_13
.L74_12:
.L74_13:
.L74_9:
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r15
    jmp .L74_7
.L74_10:
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -192(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -192(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L74_16
    jmp .L74_15
.L74_16:
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
.L74_17:
.L74_15:
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
.L74_18:
    leaq .Ltext_270(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_9read_text
    .type lb_files_9read_text, @function
lb_files_9read_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $496, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -120(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -136(%rbp)
    leaq -152(%rbp), %rax
    movq %rax, -496(%rbp)
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -200(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -200(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L75_2
    jmp .L75_1
.L75_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r12
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L75_3:
.L75_1:
    movq %r13, %r10
    movq -496(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -216(%rbp), %r15
    movq -496(%rbp), %r10
    movq (%r10), %rbx
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rsi
    movq %r14, %rdx
    leaq -264(%rbp), %rdi
    call lb_files_10read_limit@PLT
    leaq -264(%rbp), %r14
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L75_5
    jmp .L75_4
.L75_5:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
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
    movq -496(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L75_6:
.L75_4:
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r15, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L75_8
.L75_7:
    leaq -104(%rbp), %rax
    movq %rax, -424(%rbp)
    movq -424(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq lb_files_15invalid_options(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_271(%rip), %r14
    leaq -280(%rbp), %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $27, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -424(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -296(%rbp), %r13
    movq %r15, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L75_11
    jmp .L75_10
.L75_11:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L75_10:
    movq -496(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -424(%rbp), %rsi
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
.L75_12:
    jmp .L75_9
.L75_8:
.L75_9:
    movq %r15, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -432(%rbp)
    movq -432(%rbp), %r10
    movq (%r10), %r13
    leaq -312(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -368(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -368(%rbp), %r13
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L75_14
    jmp .L75_13
.L75_14:
    movq $24, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -440(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -448(%rbp)
    movq -448(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -440(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -448(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -456(%rbp)
    movl $1, %eax
    movq -456(%rbp), %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -464(%rbp)
    leaq -384(%rbp), %r12
    movq %r15, %r10
    movq (%r10), %r14
    movq -432(%rbp), %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq -464(%rbp), %r10
    movq (%r10), %rbx
    movq -464(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L75_16
    jmp .L75_15
.L75_16:
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L75_15:
    movq -496(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -448(%rbp), %rsi
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
.L75_17:
.L75_13:
    leaq -104(%rbp), %rax
    movq %rax, -472(%rbp)
    movq %r13, %r10
    movq -472(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -472(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -480(%rbp)
    movl $0, %eax
    movq -480(%rbp), %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -488(%rbp)
    leaq -400(%rbp), %r14
    movq %r15, %r10
    movq (%r10), %rbx
    movq -432(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -488(%rbp), %r10
    movq (%r10), %rbx
    movq -488(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L75_19
    jmp .L75_18
.L75_19:
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
.L75_18:
    movq -496(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -472(%rbp), %rsi
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
.L75_20:
    leaq -216(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -416(%rbp), %r13
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
    leaq .Ltext_273(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
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
    jne .L75_22
    jmp .L75_21
.L75_22:
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
.L75_21:
    leaq -152(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq .Ltext_273(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_10write_text
    .type lb_files_10write_text, @function
lb_files_10write_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $1328, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -112(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -112(%rbp), %rax
    movq %rax, -1304(%rbp)
    movq -1304(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L76_2
.L76_1:
    leaq -80(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_274(%rip), %r12
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $29, %rax
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
.L76_2:
.L76_3:
    leaq -144(%rbp), %rax
    movq %rax, -1320(%rbp)
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -192(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -192(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L76_6
    jmp .L76_5
.L76_6:
    movq $16, %rcx
    movq %r14, %rbx
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
.L76_5:
    movq %r14, %r10
    movq -1320(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -208(%rbp), %rax
    movq %rax, -1328(%rbp)
    movq -1320(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -296(%rbp), %rdi
    call lb_files_canonical@PLT
    leaq -296(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L76_11
    jmp .L76_10
.L76_11:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq -248(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L76_8
.L76_10:
    leaq -224(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L76_9
.L76_8:
    movq %r14, %r10
    movl (%r10), %ebx
    leaq lb_files_missing(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L76_13
.L76_12:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -1320(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L76_13:
.L76_14:
    movq -1320(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -344(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -344(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L76_17
    jmp .L76_16
.L76_17:
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
    movq -1320(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L76_16:
    leaq -224(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L76_9:
    leaq -224(%rbp), %rbx
    movq %rbx, %r10
    movq -1328(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -472(%rbp), %r12
    movq -1328(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $1, %edx
    leaq -784(%rbp), %rdi
    call lb_files_metadata@PLT
    leaq -784(%rbp), %r13
    movq $152, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L76_23
    jmp .L76_22
.L76_23:
    movq $128, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -624(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L76_20
.L76_22:
    leaq -600(%rbp), %rbx
    movq %r13, %r10
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
    jmp .L76_21
.L76_20:
    movq %r14, %r10
    movl (%r10), %ebx
    leaq lb_files_missing(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L76_25
.L76_24:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -1328(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -1320(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L76_25:
.L76_26:
    leaq -912(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movups %xmm8, 96(%r11)
    movups %xmm8, 112(%r11)
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $4, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $420, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq -600(%rbp), %r13
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
.L76_21:
    leaq -600(%rbp), %rbx
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
    movq %r12, %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L76_30
.L76_29:
    leaq -80(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_275(%rip), %r12
    leaq -928(%rbp), %r13
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
    movq -1328(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -1320(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L76_30:
.L76_31:
    movq -1328(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1312(%rbp)
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq -1312(%rbp), %rax
    leaq -1008(%rbp), %r10
    movq %rax, (%r10)
    movq -1304(%rbp), %r10
    leaq -1024(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -1040(%rbp), %r10
    movl %r13d, (%r10)
    movl $0, %eax
    leaq -1056(%rbp), %r10
    movl %eax, (%r10)
    movq $0, %rax
    leaq -1072(%rbp), %r10
    movq %rax, (%r10)
.L76_37:
.L76_38:
    leaq -1128(%rbp), %r14
    leaq -1056(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq -1312(%rbp), %rsi
    movl %r13d, %edx
    movl %r12d, %ecx
    leaq -1216(%rbp), %rdi
    call lb_files_Replacement_prepare@PLT
    leaq -1216(%rbp), %r15
    movq $80, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L76_41
    jmp .L76_40
.L76_41:
    movq $56, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -992(%rbp), %r12
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
    movq %r12, %r10
    leaq -960(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L76_49
.L76_40:
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -1232(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq lb_vt_files_TemporaryFile_Writer(%rip), %r12
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -1024(%rbp), %rbx
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -1264(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -1264(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L76_44
    jmp .L76_43
.L76_44:
    leaq -992(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r14, %rdi
    call lb_files_Replacement_destroy@PLT
    movq %rbx, %r10
    leaq -960(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L76_49
.L76_43:
    movq %r14, %rsi
    movq -1312(%rbp), %rdx
    movl $1, %ecx
    movq $0, %r8
    leaq -1296(%rbp), %rdi
    call lb_files_Replacement_finish@PLT
    leaq -1296(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L76_47
    jmp .L76_46
.L76_47:
    leaq -992(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r14, %rdi
    call lb_files_Replacement_destroy@PLT
    movq %rbx, %r10
    leaq -960(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L76_49
.L76_46:
    movq %r14, %rdi
    call lb_files_Replacement_destroy@PLT
    leaq -992(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -960(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L76_49:
    leaq -960(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L76_34
    jmp .L76_33
.L76_34:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -1328(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -1320(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L76_33:
    movq -1328(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -1320(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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

    .p2align 4
    .globl lb_files_13absolute_path
    .type lb_files_13absolute_path, @function
lb_files_13absolute_path:
    pushq %rbp
    movq %rsp, %rbp
    subq $320, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -120(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -136(%rbp), %rax
    movq %rax, -312(%rbp)
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -184(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -184(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L77_2
    jmp .L77_1
.L77_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r12
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L77_3:
.L77_1:
    movq %r13, %r10
    movq -312(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -200(%rbp), %r14
    movq -312(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -248(%rbp), %rdi
    call lb_files_canonical@PLT
    leaq -248(%rbp), %r15
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L77_5
    jmp .L77_4
.L77_5:
    movq $16, %rcx
    movq %r15, %rbx
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
    movq -312(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L77_6:
.L77_4:
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -304(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -304(%rbp), %r13
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L77_8
    jmp .L77_7
.L77_8:
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -312(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r15, %rsi
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
.L77_9:
.L77_7:
    leaq -104(%rbp), %rbx
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
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -312(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L77_10:
    leaq -200(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq .Ltext_276(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_9path_kind
    .type lb_files_9path_kind, @function
lb_files_9path_kind:
    pushq %rbp
    movq %rsp, %rbp
    subq $352, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movl %ecx, -120(%rbp)
    leaq -136(%rbp), %r12
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -184(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -184(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L78_2
    jmp .L78_1
.L78_2:
    movq $16, %rcx
    movq %r13, %rbx
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
.L78_3:
.L78_1:
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rbx
    leaq -120(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq %rbx, %rsi
    movl %r14d, %edx
    leaq -344(%rbp), %rdi
    call lb_files_metadata@PLT
    leaq -344(%rbp), %r14
    movq $152, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L78_5
    jmp .L78_4
.L78_5:
    movq $128, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
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
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L78_6:
.L78_4:
    movq %r14, %r10
    movzbl (%r10), %ebx
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movb %bl, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L78_7:
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq .Ltext_277(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_Entries_init
    .type lb_files_Entries_init, @function
lb_files_Entries_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $368, %rsp
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
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -360(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -368(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -168(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -168(%rbp), %r14
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L79_2
    jmp .L79_1
.L79_2:
    movq $16, %rcx
    movq %r14, %rbx
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
.L79_3:
.L79_1:
    movq %r14, %r10
    movq -368(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -368(%rbp), %r10
    movq (%r10), %rbx
    leaq -280(%rbp), %r10
    movq %rbx, (%r10)
    leaq -296(%rbp), %rax
    movq %rax, -352(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq -352(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r15
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    leaq -344(%rbp), %rdi
    call lb_files_list@PLT
    leaq -344(%rbp), %r15
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L79_8
    jmp .L79_7
.L79_8:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -264(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
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
    movq -352(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    leaq -216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    jmp .L79_11
.L79_9:
.L79_7:
    leaq -264(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -352(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    leaq -216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    jmp .L79_11
.L79_10:
    leaq -296(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_283(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L79_11:
    leaq -216(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L79_5
    jmp .L79_4
.L79_5:
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
    movq -368(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L79_6:
.L79_4:
    movq %r12, %r10
    movq -360(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -368(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
    .globl lb_files_Entries_count
    .type lb_files_Entries_count, @function
lb_files_Entries_count:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L80_1:
    leaq .Ltext_278(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_Entries_name
    .type lb_files_Entries_name, @function
lb_files_Entries_name:
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
    movq %rdx, -128(%rbp)
    leaq -112(%rbp), %r10
    movq (%r10), %r13
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    setl %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L81_15
    jmp .L81_4
.L81_15:
    movl %r12d, %r14d
    jmp .L81_5
.L81_4:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    setae %al
    movzbl %al, %r14d
.L81_5:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L81_1
    jmp .L81_2
.L81_1:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_279(%rip), %r13
    leaq -144(%rbp), %r14
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
.L81_6:
    jmp .L81_3
.L81_2:
.L81_3:
    leaq -160(%rbp), %r12
    movq %r13, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    cmpq %r15, %rbx
    jb 1f
    leaq .Ltext_280(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $16, %rcx
    movq %rbx, %r15
    imulq %rcx, %r15
    addq %r15, %r14
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L81_8
.L81_7:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_281(%rip), %r13
    leaq -176(%rbp), %r14
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
.L81_10:
    jmp .L81_9
.L81_8:
.L81_9:
    movq %r12, %r10
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
    jne .L81_12
    jmp .L81_11
.L81_12:
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r12
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L81_13:
.L81_11:
    leaq -104(%rbp), %rbx
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L81_14:
    leaq .Ltext_282(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_Entries_close
    .type lb_files_Entries_close, @function
lb_files_Entries_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r15
    leaq -64(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r13
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r15, %r10
    leaq -96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -96(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r14, %rdx
    call lb_files_15release_entries@PLT
.L82_1:
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -80(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq %r15, %r11
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
    .globl lb_files_16ensure_directory
    .type lb_files_16ensure_directory, @function
lb_files_16ensure_directory:
    pushq %rbp
    movq %rsp, %rbp
    subq $400, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -112(%rbp), %rax
    movq %rax, -400(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -160(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -160(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L83_2
    jmp .L83_1
.L83_2:
    movq $16, %rcx
    movq %r13, %rbx
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
.L83_3:
.L83_1:
    movq %r13, %r10
    movq -400(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -400(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $493, %edx
    leaq -216(%rbp), %rdi
    call lb_files_16create_directory@PLT
    leaq -216(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L83_7
    jmp .L83_6
.L83_7:
    leaq -184(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L83_4
.L83_6:
    jmp .L83_5
.L83_4:
    movq %rbx, %r10
    movl (%r10), %r13d
    leaq lb_files_14already_exists(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L83_9
.L83_8:
    leaq -80(%rbp), %r14
    movq %r14, %r10
    movl %r13d, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L83_11:
    jmp .L83_10
.L83_9:
.L83_10:
    movq -400(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $1, %edx
    leaq -376(%rbp), %rdi
    call lb_files_metadata@PLT
    leaq -376(%rbp), %r12
    movq $152, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L83_16
    jmp .L83_15
.L83_16:
    movq $128, %rcx
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
    movq -400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L83_17:
.L83_15:
    movq %r12, %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L83_13
.L83_12:
    leaq -80(%rbp), %rbx
    leaq lb_files_13not_directory(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_284(%rip), %r12
    leaq -392(%rbp), %r13
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
    movq -400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L83_18:
    jmp .L83_14
.L83_13:
.L83_14:
.L83_5:
    movq -400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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

    .p2align 4
    .globl lb_files_14home_directory
    .type lb_files_14home_directory, @function
lb_files_14home_directory:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -112(%rbp), %r12
    leaq -160(%rbp), %rdi
    call lb_io_path_user@PLT
    leaq -160(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L84_2
    jmp .L84_1
.L84_2:
    movq $16, %rcx
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
.L84_3:
.L84_1:
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L84_5
.L84_4:
    leaq -96(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_285(%rip), %r13
    leaq -176(%rbp), %r14
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L84_7:
    jmp .L84_6
.L84_5:
.L84_6:
    movq %r12, %r10
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
    jne .L84_9
    jmp .L84_8
.L84_9:
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
.L84_10:
.L84_8:
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
.L84_11:
    leaq .Ltext_286(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_11create_text
    .type lb_files_11create_text, @function
lb_files_11create_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -112(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -112(%rbp), %rax
    movq %rax, -424(%rbp)
    movq -424(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L85_2
.L85_1:
    leaq -80(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_274(%rip), %r12
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $29, %rax
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
.L85_4:
    jmp .L85_3
.L85_2:
.L85_3:
    leaq -144(%rbp), %rax
    movq %rax, -432(%rbp)
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -192(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -192(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L85_6
    jmp .L85_5
.L85_6:
    movq $16, %rcx
    movq %r14, %rbx
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
.L85_7:
.L85_5:
    movq %r14, %r10
    movq -432(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -248(%rbp), %r15
    movq -432(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rsi
    movl $420, %edx
    movl $0, %ecx
    leaq -336(%rbp), %rdi
    call lb_files_Replacement_prepare@PLT
    leaq -336(%rbp), %rbx
    movq $80, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L85_9
    jmp .L85_8
.L85_9:
    movq $56, %rcx
    movq %rbx, %r12
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
    movq -432(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L85_10:
.L85_8:
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -352(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq lb_vt_files_TemporaryFile_Writer(%rip), %r12
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -424(%rbp), %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -384(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -384(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L85_12
    jmp .L85_11
.L85_12:
    leaq -80(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r15, %rdi
    call lb_files_Replacement_destroy@PLT
    movq -432(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L85_13:
.L85_11:
    movq -432(%rbp), %r10
    movq (%r10), %rbx
    movq %r15, %rsi
    movq %rbx, %rdx
    movl $0, %ecx
    movq $0, %r8
    leaq -416(%rbp), %rdi
    call lb_files_Replacement_finish@PLT
    leaq -416(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L85_15
    jmp .L85_14
.L85_15:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r15, %rdi
    call lb_files_Replacement_destroy@PLT
    movq -432(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L85_16:
.L85_14:
    movq %r15, %rdi
    call lb_files_Replacement_destroy@PLT
    movq -432(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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

    .p2align 4
    .globl lb_files_9copy_path
    .type lb_files_9copy_path, @function
lb_files_9copy_path:
    pushq %rbp
    movq %rsp, %rbp
    subq $288, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -112(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -128(%rbp), %r12
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -176(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -176(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L86_2
    jmp .L86_1
.L86_2:
    movq $16, %rcx
    movq %r13, %rbx
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
.L86_3:
.L86_1:
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -192(%rbp), %r14
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -240(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -240(%rbp), %r15
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L86_5
    jmp .L86_4
.L86_5:
    movq $16, %rcx
    movq %r15, %rbx
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
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L86_6:
.L86_4:
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq (%r10), %r13
    subq $16, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rsi
    movq %r13, %rdx
    movq $-1, %rcx
    movl $0, %r8d
    movl $420, %r9d
    leaq -280(%rbp), %rdi
    call lb_files_9copy_file@PLT
    addq $16, %rsp
    leaq -280(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L86_8
    jmp .L86_7
.L86_8:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r15, %rsi
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
.L86_9:
.L86_7:
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
    .globl lb_files_9move_path
    .type lb_files_9move_path, @function
lb_files_9move_path:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -112(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -128(%rbp), %r12
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -176(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -176(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L87_2
    jmp .L87_1
.L87_2:
    movq $16, %rcx
    movq %r13, %rbx
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
.L87_3:
.L87_1:
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -192(%rbp), %r14
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -240(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -240(%rbp), %r15
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L87_5
    jmp .L87_4
.L87_5:
    movq $16, %rcx
    movq %r15, %rbx
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
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L87_6:
.L87_4:
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r13, %rdx
    movl $0, %ecx
    leaq -272(%rbp), %rdi
    call lb_files_rename@PLT
    leaq -272(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L87_8
    jmp .L87_7
.L87_8:
    leaq -80(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L87_9:
.L87_7:
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
    .globl lb_files_14make_directory
    .type lb_files_14make_directory, @function
lb_files_14make_directory:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -88(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %r12
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -152(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -152(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L88_2
    jmp .L88_1
.L88_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -72(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L88_3:
.L88_1:
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $493, %edx
    leaq -184(%rbp), %rdi
    call lb_files_16create_directory@PLT
    leaq -184(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L88_5
    jmp .L88_4
.L88_5:
    leaq -72(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L88_6:
.L88_4:
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq -72(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_11delete_path
    .type lb_files_11delete_path, @function
lb_files_11delete_path:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -88(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movl %ecx, -104(%rbp)
    leaq -120(%rbp), %r12
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -168(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -168(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L89_2
    jmp .L89_1
.L89_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -72(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L89_3:
.L89_1:
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L89_4
    jmp .L89_5
.L89_4:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -200(%rbp), %rdi
    call lb_files_11remove_tree@PLT
    leaq -200(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L89_8
    jmp .L89_7
.L89_8:
    leaq -72(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L89_9:
.L89_7:
    jmp .L89_6
.L89_5:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $0, %edx
    leaq -360(%rbp), %rdi
    call lb_files_metadata@PLT
    leaq -360(%rbp), %r13
    movq $152, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L89_14
    jmp .L89_13
.L89_14:
    movq $128, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -72(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r14, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L89_15:
.L89_13:
    movq %r13, %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L89_11
.L89_10:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -392(%rbp), %rdi
    call lb_files_16remove_directory@PLT
    leaq -392(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L89_17
    jmp .L89_16
.L89_17:
    leaq -72(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L89_18:
.L89_16:
    jmp .L89_12
.L89_11:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -424(%rbp), %rdi
    call lb_files_11remove_file@PLT
    leaq -424(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L89_20
    jmp .L89_19
.L89_20:
    leaq -72(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L89_21:
.L89_19:
.L89_12:
.L89_6:
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq -72(%rbp), %rbx
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
    jne .L90_11
    jmp .L90_4
.L90_11:
    movl %r13d, %r14d
    jmp .L90_5
.L90_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L90_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L90_1
    jmp .L90_2
.L90_1:
    leaq .Ltext_10(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_287(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L90_3
.L90_2:
.L90_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L90_7
.L90_6:
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
    jne .L90_9
    jmp .L90_10
.L90_10:
    leaq .Ltext_288(%rip), %rdi
    leaq .Ltext_211(%rip), %rsi
    call lb_core_7trap_at@PLT
.L90_9:
    jmp .L90_8
.L90_7:
.L90_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_copy_0g1_str
    .type lb_memory_copy_0g1_str, @function
    .weak lb_memory_copy_0g1_str
lb_memory_copy_0g1_str:
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
    movq %r8, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L91_11
    jmp .L91_4
.L91_11:
    movl %r13d, %r14d
    jmp .L91_5
.L91_4:
    leaq -72(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L91_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L91_1
    jmp .L91_2
.L91_1:
    leaq .Ltext_10(%rip), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_287(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L91_3
.L91_2:
.L91_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L91_7
.L91_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -72(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_288(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r13, %rdi
    movq %r14, %rsi
    movq %r15, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L91_9
    jmp .L91_10
.L91_10:
    leaq .Ltext_288(%rip), %rdi
    leaq .Ltext_211(%rip), %rsi
    call lb_core_7trap_at@PLT
.L91_9:
    jmp .L91_8
.L91_7:
.L91_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_copy_0g1_files_WalkFrame
    .type lb_memory_copy_0g1_files_WalkFrame, @function
    .weak lb_memory_copy_0g1_files_WalkFrame
lb_memory_copy_0g1_files_WalkFrame:
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
    movq %r8, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L92_11
    jmp .L92_4
.L92_11:
    movl %r13d, %r14d
    jmp .L92_5
.L92_4:
    leaq -72(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L92_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L92_1
    jmp .L92_2
.L92_1:
    leaq .Ltext_10(%rip), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_287(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L92_3
.L92_2:
.L92_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L92_7
.L92_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -72(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_288(%rip), %rdi
    leaq .Ltext_232(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r13, %rdi
    movq %r14, %rsi
    movq %r15, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L92_9
    jmp .L92_10
.L92_10:
    leaq .Ltext_288(%rip), %rdi
    leaq .Ltext_211(%rip), %rsi
    call lb_core_7trap_at@PLT
.L92_9:
    jmp .L92_8
.L92_7:
.L92_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "Directory entries"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/files/module.lucb:21:5"
.Ltext_3:
    .asciz "src/std/files/module.lucb:26:5"
.Ltext_4:
    .asciz "src/std/files/module.lucb:36:5"
.Ltext_5:
    .asciz "src/std/files/module.lucb:40:5"
.Ltext_6:
    .asciz "src/std/files/module.lucb:49:5"
.Ltext_7:
    .asciz "src/std/files/module.lucb:99:17"
.Ltext_8:
    .asciz "src/std/files/module.lucb:100:21"
.Ltext_9:
    .asciz "src/std/files/module.lucb:101:17"
.Ltext_10:
    .asciz "index out of bounds"
.Ltext_11:
    .asciz "the directory could not be read"
.Ltext_12:
    .asciz "src/std/files/module.lucb:107:9"
.Ltext_13:
    .asciz "src/std/files/metadata.lucb:133:5"
.Ltext_14:
    .asciz "src/std/files/metadata.lucb:136:5"
.Ltext_15:
    .asciz "src/std/files/metadata.lucb:139:5"
.Ltext_16:
    .asciz "src/std/files/metadata.lucb:147:5"
.Ltext_17:
    .asciz "src/std/files/metadata.lucb:154:5"
.Ltext_18:
    .asciz "file metadata could not be read"
.Ltext_19:
    .asciz "src/std/files/metadata.lucb:191:17"
.Ltext_20:
    .asciz "open-file metadata could not be read"
.Ltext_21:
    .asciz "src/std/files/metadata.lucb:217:17"
.Ltext_22:
    .asciz "directory-entry metadata could not be read"
.Ltext_23:
    .asciz "src/std/files/metadata.lucb:245:17"
.Ltext_24:
    .asciz "the file could not be opened"
.Ltext_25:
    .asciz "src/std/files/handles.lucb:33:9"
.Ltext_26:
    .asciz "src/std/files/handles.lucb:38:9"
.Ltext_27:
    .asciz "the file is closed"
.Ltext_28:
    .asciz "src/std/files/handles.lucb:43:9"
.Ltext_29:
    .asciz "a file length cannot be negative"
.Ltext_30:
    .asciz "the file length could not be changed"
.Ltext_31:
    .asciz "file permissions must fit the Unix mode bits"
.Ltext_32:
    .asciz "file permissions could not be changed"
.Ltext_33:
    .asciz "a timestamp nanosecond fraction must be below one billion"
.Ltext_34:
    .asciz "src/std/files/handles.lucb:87:9"
.Ltext_35:
    .asciz "src/std/files/handles.lucb:89:13"
.Ltext_36:
    .asciz "file timestamps could not be changed"
.Ltext_37:
    .asciz "the file could not be read"
.Ltext_38:
    .asciz "src/std/files/handles.lucb:105:9"
.Ltext_39:
    .asciz "the file could not be written"
.Ltext_40:
    .asciz "src/std/files/handles.lucb:119:9"
.Ltext_41:
    .asciz "the file could not be positioned"
.Ltext_42:
    .asciz "src/std/files/handles.lucb:130:9"
.Ltext_43:
    .asciz "the file could not be synchronized"
.Ltext_44:
    .asciz "the file could not be closed"
.Ltext_45:
    .asciz "src/std/files/handles.lucb:183:5"
.Ltext_46:
    .asciz "src/std/files/handles.lucb:189:5"
.Ltext_47:
    .asciz "unknown file opening mode"
.Ltext_48:
    .asciz "src/std/files/handles.lucb:207:5"
.Ltext_49:
    .asciz "src/std/files/entries.lucb:8:9"
.Ltext_50:
    .asciz "the path could not be inspected"
.Ltext_51:
    .asciz "src/std/files/entries.lucb:30:5"
.Ltext_52:
    .asciz "directory permissions must fit the Unix mode bits"
.Ltext_53:
    .asciz "the directory could not be created"
.Ltext_54:
    .asciz "the file entry could not be removed"
.Ltext_55:
    .asciz "the directory could not be removed"
.Ltext_56:
    .asciz "the entry could not be renamed"
.Ltext_57:
    .asciz "the symbolic link could not be created"
.Ltext_58:
    .asciz "the hard link could not be created"
.Ltext_59:
    .asciz "the link target limit overflows"
.Ltext_60:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_61:
    .asciz "memory.unset"
.Ltext_62:
    .asciz "src/std/files/entries.lucb:136:5"
.Ltext_63:
    .asciz "memory.exhausted"
.Ltext_64:
    .asciz "the symbolic link could not be read"
.Ltext_65:
    .asciz "src/std/files/entries.lucb:142:9"
.Ltext_66:
    .asciz "the link target exceeds the requested limit"
.Ltext_67:
    .asciz "src/std/files/entries.lucb:144:9"
.Ltext_68:
    .asciz "src/std/files/entries.lucb:146:5"
.Ltext_69:
    .asciz "src/std/files/entries.lucb:148:5"
.Ltext_70:
    .asciz "src/std/files/entries.lucb:149:5"
.Ltext_71:
    .asciz ".luce-00000000000000000000000000000000"
.Ltext_72:
    .asciz "0123456789abcdef"
.Ltext_73:
    .asciz "src/std/files/temporary.lucb:18:9"
.Ltext_74:
    .asciz "temporary filename randomness is unavailable"
.Ltext_75:
    .asciz "src/std/files/temporary.lucb:25:17"
.Ltext_76:
    .asciz "shift count out of range"
.Ltext_77:
    .asciz "src/std/files/temporary.lucb:26:17"
.Ltext_78:
    .asciz "src/std/files/temporary.lucb:29:21"
.Ltext_79:
    .asciz "no unused temporary filename was found"
.Ltext_80:
    .asciz "src/std/files/temporary.lucb:33:9"
.Ltext_81:
    .asciz "src/std/files/temporary.lucb:37:9"
.Ltext_82:
    .asciz "src/std/files/temporary.lucb:40:9"
.Ltext_83:
    .asciz "src/std/files/temporary.lucb:43:9"
.Ltext_84:
    .asciz "src/std/files/temporary.lucb:46:9"
.Ltext_85:
    .asciz "the temporary file has no owned pathname"
.Ltext_86:
    .asciz "a temporary pathname lost its allocator"
.Ltext_87:
    .asciz "src/std/files/temporary.lucb:66:13"
.Ltext_88:
    .asciz ""
.Ltext_89:
    .asciz "src/std/files/temporary.lucb:128:9"
.Ltext_90:
    .asciz "a directory cannot be copied as file bytes"
.Ltext_91:
    .asciz "the copy destination already exists"
.Ltext_92:
    .asciz "source and destination identify the same file"
.Ltext_93:
    .asciz "the copy destination is a directory"
.Ltext_94:
    .asciz "src/std/files/copy.lucb:30:9"
.Ltext_95:
    .asciz "the copy source exceeds the requested limit"
.Ltext_96:
    .asciz "src/std/files/copy.lucb:34:5"
.Ltext_97:
    .asciz "src/std/files/copy.lucb:41:5"
.Ltext_98:
    .asciz "src/std/files/contents.lucb:5:5"
.Ltext_99:
    .asciz "src/std/files/contents.lucb:19:9"
.Ltext_100:
    .asciz "src/std/files/contents.lucb:21:9"
.Ltext_101:
    .asciz "the file exceeds the read limit"
.Ltext_102:
    .asciz "src/std/files/contents.lucb:26:9"
.Ltext_103:
    .asciz "src/std/files/contents.lucb:36:17"
.Ltext_104:
    .asciz "src/std/files/contents.lucb:39:9"
.Ltext_105:
    .asciz "src/std/files/contents.lucb:40:9"
.Ltext_106:
    .asciz "src/std/files/contents.lucb:44:5"
.Ltext_107:
    .asciz "src/std/files/contents.lucb:47:5"
.Ltext_108:
    .asciz "src/std/files/contents.lucb:60:9"
.Ltext_109:
    .asciz "src/std/files/directory.lucb:9:9"
.Ltext_110:
    .asciz "the directory is closed"
.Ltext_111:
    .asciz "the directory has no usable descriptor"
.Ltext_112:
    .asciz "src/std/files/directory.lucb:19:9"
.Ltext_113:
    .asciz "src/std/files/directory.lucb:23:9"
.Ltext_114:
    .asciz "src/std/files/directory.lucb:29:9"
.Ltext_115:
    .asciz "src/std/files/directory.lucb:35:9"
.Ltext_116:
    .asciz "the directory-relative file could not be opened"
.Ltext_117:
    .asciz "src/std/files/directory.lucb:58:9"
.Ltext_118:
    .asciz "."
.Ltext_119:
    .asciz ".."
.Ltext_120:
    .asciz "src/std/files/directory.lucb:68:17"
.Ltext_121:
    .asciz "the directory could not be closed"
.Ltext_122:
    .asciz "the directory could not be opened"
.Ltext_123:
    .asciz "the directory stream could not be created"
.Ltext_124:
    .asciz "src/std/files/directory.lucb:102:5"
.Ltext_125:
    .asciz "src/std/files/directory.lucb:111:5"
.Ltext_126:
    .asciz "the directory listing is too large"
.Ltext_127:
    .asciz "src/std/files/directory.lucb:117:13"
.Ltext_128:
    .asciz "src/std/files/directory.lucb:119:13"
.Ltext_129:
    .asciz "src/std/files/directory.lucb:121:9"
.Ltext_130:
    .asciz "src/std/files/directory.lucb:123:9"
.Ltext_131:
    .asciz "src/std/files/directory.lucb:124:9"
.Ltext_132:
    .asciz "src/std/files/directory.lucb:125:9"
.Ltext_133:
    .asciz "src/std/files/directory.lucb:127:5"
.Ltext_134:
    .asciz "src/std/files/directory.lucb:130:9"
.Ltext_135:
    .asciz "src/std/files/directory.lucb:133:5"
.Ltext_136:
    .asciz "src/std/files/directory.lucb:135:5"
.Ltext_137:
    .asciz "src/std/files/directory.lucb:136:5"
.Ltext_138:
    .asciz "division by zero"
.Ltext_139:
    .asciz "src/std/files/directory.lucb:141:5"
.Ltext_140:
    .asciz "src/std/files/directory.lucb:143:9"
.Ltext_141:
    .asciz "src/std/files/directory.lucb:147:9"
.Ltext_142:
    .asciz "src/std/files/directory.lucb:148:9"
.Ltext_143:
    .asciz "src/std/files/directory.lucb:149:9"
.Ltext_144:
    .asciz "src/std/files/directory.lucb:150:9"
.Ltext_145:
    .asciz "src/std/files/directory.lucb:155:5"
.Ltext_146:
    .asciz "src/std/files/directory.lucb:156:9"
.Ltext_147:
    .asciz "src/std/files/directory.lucb:157:9"
.Ltext_148:
    .asciz "src/std/files/directory.lucb:158:13"
.Ltext_149:
    .asciz "src/std/files/directory.lucb:159:9"
.Ltext_150:
    .asciz "src/std/files/directory.lucb:161:9"
.Ltext_151:
    .asciz "src/std/files/directory.lucb:162:9"
.Ltext_152:
    .asciz "src/std/files/directory.lucb:163:9"
.Ltext_153:
    .asciz "src/std/files/directory.lucb:174:5"
.Ltext_154:
    .asciz "src/std/files/directory.lucb:175:9"
.Ltext_155:
    .asciz "src/std/files/directory.lucb:177:9"
.Ltext_156:
    .asciz "src/std/files/walk.lucb:30:9"
.Ltext_157:
    .asciz "src/std/files/walk.lucb:31:9"
.Ltext_158:
    .asciz "directory traversal exceeded its depth limit"
.Ltext_159:
    .asciz "src/std/files/walk.lucb:39:9"
.Ltext_160:
    .asciz "src/std/files/walk.lucb:41:9"
.Ltext_161:
    .asciz "/"
.Ltext_162:
    .asciz "directory traversal encountered an ancestor again"
.Ltext_163:
    .asciz "src/std/files/walk.lucb:50:9"
.Ltext_164:
    .asciz "a directory changed before traversal could enter it"
.Ltext_165:
    .asciz "the traversal root changed before it could be opened"
.Ltext_166:
    .asciz "src/std/files/walk.lucb:82:13"
.Ltext_167:
    .asciz "src/std/files/walk.lucb:83:13"
.Ltext_168:
    .asciz "src/std/files/walk.lucb:85:13"
.Ltext_169:
    .asciz "src/std/files/walk.lucb:88:9"
.Ltext_170:
    .asciz "src/std/files/walk.lucb:91:9"
.Ltext_171:
    .asciz "the traversal stack is too large"
.Ltext_172:
    .asciz "src/std/files/walk.lucb:99:17"
.Ltext_173:
    .asciz "src/std/files/walk.lucb:101:17"
.Ltext_174:
    .asciz "src/std/files/walk.lucb:103:9"
.Ltext_175:
    .asciz "src/std/files/walk.lucb:105:9"
.Ltext_176:
    .asciz "src/std/files/walk.lucb:108:9"
.Ltext_177:
    .asciz "src/std/files/walk.lucb:112:9"
.Ltext_178:
    .asciz "src/std/files/walk.lucb:110:13"
.Ltext_179:
    .asciz "src/std/files/walk.lucb:114:13"
.Ltext_180:
    .asciz "src/std/files/walk.lucb:118:13"
.Ltext_181:
    .asciz "src/std/files/walk.lucb:119:13"
.Ltext_182:
    .asciz "src/std/files/walk.lucb:122:13"
.Ltext_183:
    .asciz "src/std/files/windows.lucb:38:5"
.Ltext_184:
    .asciz "src/std/files/windows.lucb:41:9"
.Ltext_185:
    .asciz "src/std/files/windows.lucb:48:5"
.Ltext_186:
    .asciz "src/std/files/windows.lucb:50:5"
.Ltext_187:
    .asciz "src/std/files/windows.lucb:51:5"
.Ltext_188:
    .asciz "the entry is not a symbolic link or junction"
.Ltext_189:
    .asciz "src/std/files/windows.lucb:57:5"
.Ltext_190:
    .asciz "the symbolic link contains invalid reparse data"
.Ltext_191:
    .asciz "src/std/files/windows.lucb:61:5"
.Ltext_192:
    .asciz "src/std/files/windows.lucb:62:5"
.Ltext_193:
    .asciz "the symbolic link target is invalid UTF-16"
.Ltext_194:
    .asciz "src/std/files/windows.lucb:67:5"
.Ltext_195:
    .asciz "src/std/files/windows.lucb:68:5"
.Ltext_196:
    .asciz "src/std/files/windows.lucb:69:9"
.Ltext_197:
    .asciz "the symbolic link target could not be encoded"
.Ltext_198:
    .asciz "src/std/files/windows.lucb:71:5"
.Ltext_199:
    .asciz "src/std/files/windows.lucb:72:5"
.Ltext_200:
    .asciz "file attributes could not be read"
.Ltext_201:
    .asciz "src/std/files/windows.lucb:82:5"
.Ltext_202:
    .asciz "file attributes could not be changed"
.Ltext_203:
    .asciz "timestamp is outside the Windows range"
.Ltext_204:
    .asciz "timestamp predates the Windows epoch"
.Ltext_205:
    .asciz "src/std/files/windows.lucb:92:5"
.Ltext_206:
    .asciz "src/std/files/windows.lucb:95:5"
.Ltext_207:
    .asciz "src/std/files/windows.lucb:150:9"
.Ltext_208:
    .asciz "src/std/files/windows.lucb:151:13"
.Ltext_209:
    .asciz "src/std/files/windows.lucb:152:5"
.Ltext_210:
    .asciz "src/std/files/windows.lucb:163:5"
.Ltext_211:
    .asciz "null_foreign"
.Ltext_212:
    .asciz "src/std/files/windows.lucb:171:5"
.Ltext_213:
    .asciz "src/std/files/windows.lucb:173:9"
.Ltext_214:
    .asciz "nonblocking Windows file opening requires a disk file"
.Ltext_215:
    .asciz "src/std/files/windows.lucb:176:9"
.Ltext_216:
    .asciz "the opened file could not be inspected"
.Ltext_217:
    .asciz "src/std/files/windows.lucb:182:13"
.Ltext_218:
    .asciz "a final symbolic link is not allowed"
.Ltext_219:
    .asciz "src/std/files/windows.lucb:185:13"
.Ltext_220:
    .asciz "the file descriptor could not be created"
.Ltext_221:
    .asciz "src/std/files/windows.lucb:190:9"
.Ltext_222:
    .asciz "the file could not be truncated"
.Ltext_223:
    .asciz "src/std/files/windows.lucb:194:9"
.Ltext_224:
    .asciz "src/std/files/windows.lucb:195:5"
.Ltext_225:
    .asciz "src/std/files/windows.lucb:200:5"
.Ltext_226:
    .asciz "the file path could not be opened"
.Ltext_227:
    .asciz "src/std/files/windows.lucb:202:9"
.Ltext_228:
    .asciz "the path is not an allowed directory"
.Ltext_229:
    .asciz "src/std/files/windows.lucb:207:13"
.Ltext_230:
    .asciz "src/std/files/windows.lucb:208:5"
.Ltext_231:
    .asciz "src/std/files/windows.lucb:211:5"
.Ltext_232:
    .asciz "integer overflow"
.Ltext_233:
    .asciz "src/std/files/windows.lucb:212:5"
.Ltext_234:
    .asciz "src/std/files/windows.lucb:223:5"
.Ltext_235:
    .asciz "src/std/files/windows.lucb:224:5"
.Ltext_236:
    .asciz "src/std/files/windows.lucb:232:5"
.Ltext_237:
    .asciz "the open directory path could not be read"
.Ltext_238:
    .asciz "src/std/files/windows.lucb:236:9"
.Ltext_239:
    .asciz "src/std/files/windows.lucb:237:5"
.Ltext_240:
    .asciz "src/std/files/windows.lucb:239:5"
.Ltext_241:
    .asciz "the open directory path could not be encoded"
.Ltext_242:
    .asciz "src/std/files/windows.lucb:241:9"
.Ltext_243:
    .asciz "src/std/files/windows.lucb:242:5"
.Ltext_244:
    .asciz "src/std/files/windows.lucb:246:5"
.Ltext_245:
    .asciz "the directory descriptor could not be created"
.Ltext_246:
    .asciz "src/std/files/windows.lucb:256:5"
.Ltext_247:
    .asciz "src/std/files/windows.lucb:259:5"
.Ltext_248:
    .asciz "the directory could not be enumerated"
.Ltext_249:
    .asciz "*"
.Ltext_250:
    .asciz "src/std/files/windows.lucb:275:9"
.Ltext_251:
    .asciz "src/std/files/windows.lucb:279:17"
.Ltext_252:
    .asciz "src/std/files/windows.lucb:280:13"
.Ltext_253:
    .asciz "src/std/files/windows.lucb:281:9"
.Ltext_254:
    .asciz "src/std/files/windows.lucb:282:5"
.Ltext_255:
    .asciz "a directory entry could not be encoded as UTF-8"
.Ltext_256:
    .asciz "src/std/files/windows.lucb:285:5"
.Ltext_257:
    .asciz "the filesystem path could not be resolved"
.Ltext_258:
    .asciz "src/std/files/workspace.lucb:33:5"
.Ltext_259:
    .asciz "src/std/files/workspace.lucb:42:5"
.Ltext_260:
    .asciz "src/std/files/workspace.lucb:48:13"
.Ltext_261:
    .asciz "src/std/files/workspace.lucb:49:13"
.Ltext_262:
    .asciz "src/std/files/workspace.lucb:52:17"
.Ltext_263:
    .asciz "no unused temporary directory name was found"
.Ltext_264:
    .asciz "src/std/files/workspace.lucb:56:5"
.Ltext_265:
    .asciz "src/std/files/workspace.lucb:90:9"
.Ltext_266:
    .asciz "a temporary directory lost its allocator"
.Ltext_267:
    .asciz "src/std/files/workspace.lucb:94:13"
.Ltext_268:
    .asciz "a path must be nonempty UTF-8"
.Ltext_269:
    .asciz "a path cannot contain NUL"
.Ltext_270:
    .asciz "src/std/files/text.lucb:12:5"
.Ltext_271:
    .asciz "the file is not valid UTF-8"
.Ltext_272:
    .asciz "src/std/files/text.lucb:21:9"
.Ltext_273:
    .asciz "src/std/files/text.lucb:22:5"
.Ltext_274:
    .asciz "file text must be valid UTF-8"
.Ltext_275:
    .asciz "text can only replace a regular file"
.Ltext_276:
    .asciz "src/std/files/text.lucb:49:5"
.Ltext_277:
    .asciz "src/std/files/text.lucb:54:5"
.Ltext_278:
    .asciz "src/std/files/text.lucb:67:9"
.Ltext_279:
    .asciz "the directory entry index is outside the snapshot"
.Ltext_280:
    .asciz "src/std/files/text.lucb:72:9"
.Ltext_281:
    .asciz "the directory entry is not valid UTF-8"
.Ltext_282:
    .asciz "src/std/files/text.lucb:75:9"
.Ltext_283:
    .asciz "src/std/files/text.lucb:87:9"
.Ltext_284:
    .asciz "the existing path is not a directory"
.Ltext_285:
    .asciz "the user home directory is empty"
.Ltext_286:
    .asciz "src/std/files/text.lucb:105:5"
.Ltext_287:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_288:
    .asciz "src/std/memory.lucb:328:9"

    .section .data.rel.ro,"aw"
    .p2align 3
    .globl lb_vt_files_File_Reader
    .weak lb_vt_files_File_Reader
lb_vt_files_File_Reader:
    .quad lb_files_File_read
    .globl lb_vt_files_File_Writer
    .weak lb_vt_files_File_Writer
lb_vt_files_File_Writer:
    .quad lb_files_File_write
    .globl lb_vt_files_TemporaryFile_Writer
    .weak lb_vt_files_TemporaryFile_Writer
lb_vt_files_TemporaryFile_Writer:
    .quad lb_files_TemporaryFile_write

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

    .bss
    .globl lb_files_15directory_cycle
    .type lb_files_15directory_cycle, @object
    .p2align 2
lb_files_15directory_cycle:
    .zero 4

    .bss
    .globl lb_files_11depth_limit
    .type lb_files_11depth_limit, @object
    .p2align 2
lb_files_11depth_limit:
    .zero 4

    .bss
    .globl lb_files_12entries_type
    .type lb_files_12entries_type, @object
    .p2align 3
lb_files_12entries_type:
    .zero 40

    .section .note.GNU-stack,"",@progbits
