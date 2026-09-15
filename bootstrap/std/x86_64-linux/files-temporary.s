    .text

    .p2align 4
    .globl lb_files_temporary_0init
    .type lb_files_temporary_0init, @function
lb_files_temporary_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_TemporaryFile_create
    .type lb_files_TemporaryFile_create, @function
lb_files_TemporaryFile_create:
    pushq %rbp
    movq %rsp, %rbp
    subq $704, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -136(%rbp)
    movl %edx, -152(%rbp)
    leaq -168(%rbp), %rax
    movq %rax, -664(%rbp)
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    leaq -184(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq .Ltext_0(%rip), %rbx
    leaq -200(%rbp), %r12
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
    leaq -248(%rbp), %rdi
    call lb_paths_join@PLT
    leaq -248(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -120(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
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
.L1_1:
    movq %r12, %r10
    movq -664(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -264(%rbp), %rax
    movq %rax, -528(%rbp)
    leaq .Ltext_1(%rip), %rax
    movq %rax, -536(%rbp)
    leaq -280(%rbp), %r15
    movq -536(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -544(%rbp)
    movq $16, %rax
    movq -544(%rbp), %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq -528(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -664(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -552(%rbp)
    movq -664(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -560(%rbp)
    movq -560(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -568(%rbp)
    movq -568(%rbp), %rax
    movq $32, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -576(%rbp)
    leaq -296(%rbp), %rax
    movq %rax, -584(%rbp)
    leaq -336(%rbp), %rax
    movq %rax, -592(%rbp)
    movq -592(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -600(%rbp)
    leaq -368(%rbp), %rax
    movq %rax, -680(%rbp)
    movq -680(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -608(%rbp)
    leaq -392(%rbp), %rax
    movq %rax, -696(%rbp)
    leaq -152(%rbp), %rax
    movq %rax, -624(%rbp)
    leaq -464(%rbp), %rax
    movq %rax, -704(%rbp)
    movq -704(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -632(%rbp)
    movq -704(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -640(%rbp)
    leaq -424(%rbp), %rax
    movq %rax, -648(%rbp)
    leaq lb_files_14already_exists(%rip), %rax
    movq %rax, -656(%rbp)
    movq $0, %rax
    movq %rax, -672(%rbp)
.L1_4:
    movq -672(%rbp), %rax
    movq $128, %rcx
    cmpq %rcx, %rax
    jae .L1_6
.L1_5:
    movq -584(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -584(%rbp), %rax
    movq -592(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -600(%rbp), %r10
    movq %rax, (%r10)
    movq -592(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -368(%rbp), %rdi
    call lb_os_12random_bytes@PLT
    movq -608(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_10
    jmp .L1_9
.L1_10:
    leaq -320(%rbp), %rbx
    movq -680(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L1_7
.L1_9:
    jmp .L1_8
.L1_7:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq -384(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $44, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -664(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L1_8:
    movq $0, %rax
    movq %rax, -688(%rbp)
.L1_12:
    movq -688(%rbp), %rax
    movq $16, %rcx
    cmpq %rcx, %rax
    jae .L1_15
.L1_13:
    movq -688(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq -576(%rbp), %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -552(%rbp), %rax
    movq %rax, %r14
    addq %r13, %r14
    movq -584(%rbp), %rax
    movq -688(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, -616(%rbp)
    movq -616(%rbp), %r10
    movzbl (%r10), %ebx
.L1_17:
    movl $4, %ecx
    movl %ebx, %r15d
    shrl %cl, %r15d
    movzbl %r15b, %r15d
    movl %r15d, %r15d
    movq $16, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_21(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -536(%rbp), %rax
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
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -552(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq -616(%rbp), %r10
    movzbl (%r10), %r12d
    movl $15, %ecx
    andl %ecx, %r12d
    movl %r12d, %r12d
    movq -536(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %r15, %r10
    movb %r12b, (%r10)
.L1_14:
    movq -688(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -688(%rbp)
    jmp .L1_12
.L1_15:
    movq -664(%rbp), %r10
    movq (%r10), %rbx
    movq -624(%rbp), %r10
    movl (%r10), %r12d
    movq %rbx, %rsi
    movl $5, %edx
    movl %r12d, %ecx
    leaq -464(%rbp), %rdi
    call lb_files_File_open@PLT
    movq -632(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_21
    jmp .L1_20
.L1_21:
    movq -640(%rbp), %r10
    movq -648(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L1_18
.L1_20:
    leaq -400(%rbp), %rbx
    movq -704(%rbp), %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    jmp .L1_19
.L1_18:
    movq -648(%rbp), %r10
    movl (%r10), %ebx
    movq -656(%rbp), %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    jne .L1_23
.L1_22:
    movq -672(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -672(%rbp)
    jmp .L1_4
.L1_23:
.L1_24:
    leaq -120(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    movq -648(%rbp), %rax
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
    movq -664(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L1_19:
    movq %rbx, %r10
    movq -696(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -504(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq -696(%rbp), %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -664(%rbp), %r10
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
    leaq -120(%rbp), %r13
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
    movq %r13, %rsi
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
.L1_6:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_14already_exists(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_8(%rip), %r13
    leaq -520(%rbp), %r14
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
    movq -664(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L2_1:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
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
    jne .L3_2
    jmp .L3_1
.L3_2:
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
.L3_3:
.L3_1:
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
.L3_4:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
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
    jne .L4_2
    jmp .L4_1
.L4_2:
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
.L4_3:
.L4_1:
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
.L4_4:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_TemporaryFile_seek
    .type lb_files_TemporaryFile_seek, @function
lb_files_TemporaryFile_seek:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    movq %rdx, -104(%rbp)
    movl %ecx, -120(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r13
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %r13, %rsi
    movq %rbx, %rdx
    movl %r12d, %ecx
    leaq -160(%rbp), %rdi
    call lb_files_File_seek@PLT
    leaq -160(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_2
    jmp .L5_1
.L5_2:
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
.L5_3:
.L5_1:
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
.L5_4:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_TemporaryFile_sync
    .type lb_files_TemporaryFile_sync, @function
lb_files_TemporaryFile_sync:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -72(%rbp)
    leaq -72(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -104(%rbp), %rdi
    call lb_files_File_sync@PLT
    leaq -104(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_2
    jmp .L6_1
.L6_2:
    leaq -64(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_3:
.L6_1:
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
    .globl lb_files_TemporaryFile_publish
    .type lb_files_TemporaryFile_publish, @function
lb_files_TemporaryFile_publish:
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
    movl %ecx, -120(%rbp)
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
    jne .L7_2
.L7_1:
    leaq -80(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_15(%rip), %r12
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $40, %rax
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
.L7_4:
    jmp .L7_3
.L7_2:
.L7_3:
    movq %r13, %rsi
    leaq -168(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -168(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L7_6
    jmp .L7_5
.L7_6:
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
.L7_7:
.L7_5:
    movq %rbx, %r10
    movq (%r10), %r12
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    leaq -120(%rbp), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq %r12, %rsi
    movq %r14, %rdx
    movl %r15d, %ecx
    leaq -200(%rbp), %rdi
    call lb_files_rename@PLT
    leaq -200(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L7_9
    jmp .L7_8
.L7_9:
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
.L7_10:
.L7_8:
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
    jbe .L8_2
.L8_1:
    leaq -64(%rbp), %r14
    movq $24, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -152(%rbp)
    movq -152(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L8_4
    jmp .L8_5
.L8_4:
    leaq -80(%rbp), %r12
    movq -152(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L8_6
.L8_5:
    leaq .Ltext_16(%rip), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $39, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_17(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_6:
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
    leaq .Ltext_18(%rip), %r13
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
    jmp .L8_3
.L8_2:
.L8_3:
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
    jne .L9_2
.L9_1:
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
.L9_4:
    jmp .L9_3
.L9_2:
.L9_3:
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
    jne .L9_8
    jmp .L9_7
.L9_8:
    leaq -112(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L9_5
.L9_7:
    jmp .L9_6
.L9_5:
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
    jne .L9_10
.L9_9:
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
.L9_12:
    jmp .L9_11
.L9_10:
.L9_11:
.L9_6:
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
    .globl lb_files_TemporaryFile_discard
    .type lb_files_TemporaryFile_discard, @function
lb_files_TemporaryFile_discard:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -80(%rbp)
    leaq -80(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -136(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -136(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_4
    jmp .L10_3
.L10_4:
    leaq -104(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L10_1
.L10_3:
    jmp .L10_2
.L10_1:
    movq %r12, %rsi
    leaq -192(%rbp), %rdi
    call lb_files_TemporaryFile_11remove_name@PLT
    leaq -192(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L10_8
    jmp .L10_7
.L10_8:
    leaq -160(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L10_5
.L10_7:
    jmp .L10_6
.L10_5:
.L10_6:
    leaq -72(%rbp), %r12
    movq %rbx, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L10_9:
.L10_2:
    movq %r12, %rsi
    leaq -224(%rbp), %rdi
    call lb_files_TemporaryFile_11remove_name@PLT
    leaq -224(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_11
    jmp .L10_10
.L10_11:
    leaq -72(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_12:
.L10_10:
    leaq -72(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_TemporaryFile_destroy
    .type lb_files_TemporaryFile_destroy, @function
lb_files_TemporaryFile_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -88(%rbp), %rdi
    call lb_files_TemporaryFile_discard@PLT
    leaq -88(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_4
    jmp .L11_3
.L11_4:
    leaq -56(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L11_1
.L11_3:
    jmp .L11_2
.L11_1:
.L11_2:
    movq %r12, %rdi
    call lb_files_TemporaryFile_12release_name@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_12write_atomic
    .type lb_files_12write_atomic, @function
lb_files_12write_atomic:
    pushq %rbp
    movq %rsp, %rbp
    subq $400, %rsp
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
    movl %r8d, -128(%rbp)
    movl %r9d, -144(%rbp)
    movq 16(%rbp), %rax
    movq %rax, -160(%rbp)
    leaq -160(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -400(%rbp)
    movq -400(%rbp), %rax
    testq %rax, %rax
    jne .L12_4
    jmp .L12_2
.L12_4:
.L12_1:
    movl $0, %eax
    movq -400(%rbp), %r10
    movb %al, (%r10)
    jmp .L12_3
.L12_2:
.L12_3:
    leaq -216(%rbp), %r15
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -392(%rbp)
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq -392(%rbp), %rsi
    movl %r13d, %edx
    movl %r14d, %ecx
    leaq -304(%rbp), %rdi
    call lb_files_Replacement_prepare@PLT
    leaq -304(%rbp), %r14
    movq $80, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L12_6
    jmp .L12_5
.L12_6:
    movq $56, %rcx
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
.L12_7:
.L12_5:
    movq %r14, %r10
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
    movq %r15, %r13
    addq %rcx, %r13
    leaq -320(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    leaq lb_vt_files_TemporaryFile_Writer(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    leaq -112(%rbp), %r12
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -352(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -352(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_9
    jmp .L12_8
.L12_9:
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
.L12_10:
.L12_8:
    movq %r15, %rsi
    movq -392(%rbp), %rdx
    movl $1, %ecx
    movq -400(%rbp), %r8
    leaq -384(%rbp), %rdi
    call lb_files_Replacement_finish@PLT
    leaq -384(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_12
    jmp .L12_11
.L12_12:
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
.L12_13:
.L12_11:
    movq %r15, %rdi
    call lb_files_Replacement_destroy@PLT
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
    subq $512, %rsp
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
    movq %rax, -512(%rbp)
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
    jne .L13_2
    jmp .L13_1
.L13_2:
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
.L13_3:
.L13_1:
    movq %r12, %r10
    movq -512(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -288(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -184(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, -504(%rbp)
    movl -504(%rbp), %eax
    testl %eax, %eax
    jne .L13_4
    jmp .L13_5
.L13_4:
    movq -512(%rbp), %r10
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
    jne .L13_8
    jmp .L13_7
.L13_8:
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
    movq %rbx, %rdi
    call lb_files_File_destroy@PLT
    movq -512(%rbp), %r10
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
.L13_9:
.L13_7:
    movq %r15, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    jmp .L13_6
.L13_5:
.L13_6:
    leaq -368(%rbp), %r15
    movq -512(%rbp), %r10
    movq (%r10), %r12
    leaq -168(%rbp), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %rsi
    movl %r14d, %edx
    leaq -440(%rbp), %rdi
    call lb_files_TemporaryFile_create@PLT
    leaq -440(%rbp), %r14
    movq $64, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L13_11
    jmp .L13_10
.L13_11:
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -136(%rbp), %r13
    movq $56, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
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
    movq %rbx, %rdi
    call lb_files_File_destroy@PLT
    movq -512(%rbp), %r10
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
.L13_12:
.L13_10:
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -496(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $48, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl -504(%rbp), %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -136(%rbp), %r13
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
    movq $80, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -512(%rbp), %r10
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
.L13_13:
    leaq -200(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_Replacement_finish
    .type lb_files_Replacement_finish, @function
lb_files_Replacement_finish:
    pushq %rbp
    movq %rsp, %rbp
    subq $336, %rsp
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
    movq (%r10), %r13
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L14_1
    jmp .L14_2
.L14_1:
    movq $8, %rcx
    movq %r13, %r12
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
    jne .L14_24
    jmp .L14_23
.L14_24:
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
    jmp .L14_26
.L14_25:
.L14_23:
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
.L14_26:
    leaq -168(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L14_5
    jmp .L14_4
.L14_5:
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
.L14_6:
.L14_4:
    jmp .L14_3
.L14_2:
.L14_3:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    leaq -120(%rbp), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq %r12, %rsi
    movq %r14, %rdx
    movl %r15d, %ecx
    leaq -200(%rbp), %rdi
    call lb_files_TemporaryFile_publish@PLT
    leaq -200(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L14_8
    jmp .L14_7
.L14_8:
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
.L14_9:
.L14_7:
    leaq -136(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L14_13
    jmp .L14_11
.L14_13:
.L14_10:
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L14_12
.L14_11:
.L14_12:
    movq %rbx, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L14_14
    jmp .L14_15
.L14_14:
    movq %r13, %rsi
    leaq -232(%rbp), %rdi
    call lb_files_File_sync@PLT
    leaq -232(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L14_18
    jmp .L14_17
.L14_18:
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
.L14_19:
.L14_17:
    movq %r13, %rsi
    leaq -264(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -264(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L14_21
    jmp .L14_20
.L14_21:
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
.L14_22:
.L14_20:
    jmp .L14_16
.L14_15:
.L14_16:
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
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %rsi
    leaq -96(%rbp), %rdi
    call lb_files_TemporaryFile_discard@PLT
    leaq -96(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L15_4
    jmp .L15_3
.L15_4:
    leaq -64(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L15_1
.L15_3:
    jmp .L15_2
.L15_1:
.L15_2:
    movq %rbx, %rdi
    call lb_files_TemporaryFile_12release_name@PLT
.L15_5:
    movq %r13, %rdi
    call lb_files_File_destroy@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_temporary_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz ".luce-00000000000000000000000000000000"
.Ltext_1:
    .asciz "0123456789abcdef"
.Ltext_2:
    .asciz "src/std/files/temporary.lucb:18:9"
.Ltext_3:
    .asciz "temporary filename randomness is unavailable"
.Ltext_4:
    .asciz "src/std/files/temporary.lucb:25:17"
.Ltext_5:
    .asciz "shift count out of range"
.Ltext_6:
    .asciz "src/std/files/temporary.lucb:26:17"
.Ltext_7:
    .asciz "src/std/files/temporary.lucb:29:21"
.Ltext_8:
    .asciz "no unused temporary filename was found"
.Ltext_9:
    .asciz "unreachable"
.Ltext_10:
    .asciz "src/std/files/temporary.lucb:33:9"
.Ltext_11:
    .asciz "src/std/files/temporary.lucb:37:9"
.Ltext_12:
    .asciz "src/std/files/temporary.lucb:40:9"
.Ltext_13:
    .asciz "src/std/files/temporary.lucb:43:9"
.Ltext_14:
    .asciz "src/std/files/temporary.lucb:46:9"
.Ltext_15:
    .asciz "the temporary file has no owned pathname"
.Ltext_16:
    .asciz "a temporary pathname lost its allocator"
.Ltext_17:
    .asciz "src/std/files/temporary.lucb:66:13"
.Ltext_18:
    .asciz ""
.Ltext_19:
    .asciz "src/std/files/temporary.lucb:128:9"
.Ltext_20:
    .asciz "integer overflow"
.Ltext_21:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3
    .weak lb_vt_files_TemporaryFile_Writer
lb_vt_files_TemporaryFile_Writer:
    .quad lb_files_TemporaryFile_write

    .section .note.GNU-stack,"",@progbits
