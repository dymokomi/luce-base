    .text

    .p2align 4
    .globl lb_files_contents_0init
    .type lb_files_contents_0init, @function
lb_files_contents_0init:
    pushq %rbp
    movq %rsp, %rbp
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
    jne .L1_2
    jmp .L1_1
.L1_2:
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
.L1_3:
.L1_1:
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
.L1_4:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_10read_limit
    .type lb_files_10read_limit, @function
lb_files_10read_limit:
    pushq %rbp
    movq %rsp, %rbp
    subq $4976, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    movq %rdx, -128(%rbp)
    leaq -136(%rbp), %rax
    movq %rax, -4904(%rbp)
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
    jne .L2_2
    jmp .L2_1
.L2_2:
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
.L2_1:
    movq %r13, %r10
    movq -4904(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -192(%rbp), %rax
    movq %rax, -4664(%rbp)
    movq -4664(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -4288(%rbp), %rax
    movq %rax, -4672(%rbp)
    movq -4672(%rbp), %rdi
    xorl %esi, %esi
    movq $4096, %rdx
    call memset@PLT
    leaq -128(%rbp), %rax
    movq %rax, -4680(%rbp)
    leaq -4304(%rbp), %rax
    movq %rax, -4688(%rbp)
    movq -4688(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4696(%rbp)
    leaq -4344(%rbp), %rax
    movq %rax, -4920(%rbp)
    movq -4920(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -4704(%rbp)
    movq -4664(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4728(%rbp)
    leaq -4368(%rbp), %rax
    movq %rax, -4736(%rbp)
    leaq -4384(%rbp), %rax
    movq %rax, -4928(%rbp)
    movq -4928(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4744(%rbp)
    leaq -4504(%rbp), %rax
    movq %rax, -4936(%rbp)
    movq -4936(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -4864(%rbp)
    leaq -4432(%rbp), %rax
    movq %rax, -4944(%rbp)
    leaq -4456(%rbp), %rax
    movq %rax, -4952(%rbp)
    movq -4952(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4792(%rbp)
    movq -4944(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4840(%rbp)
    movq -4944(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -4848(%rbp)
    movq -4944(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4800(%rbp)
    leaq .Ltext_10(%rip), %rax
    movq %rax, -4808(%rbp)
    movq -4800(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4816(%rbp)
    movq -4800(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4824(%rbp)
    movq -4944(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -4832(%rbp)
    movq -4944(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4752(%rbp)
    leaq .Ltext_7(%rip), %rax
    movq %rax, -4760(%rbp)
    movq -4752(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4768(%rbp)
    movq -4752(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4776(%rbp)
    movq -4944(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -4784(%rbp)
    movq -4944(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -4856(%rbp)
    leaq -4520(%rbp), %rax
    movq %rax, -4872(%rbp)
    movq -4872(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4880(%rbp)
    leaq -4536(%rbp), %rax
    movq %rax, -4888(%rbp)
    movq -4888(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4896(%rbp)
    movq $0, %rax
    movq %rax, -4912(%rbp)
.L2_4:
.L2_5:
    movq -4680(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq -4912(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L2_7
    jmp .L2_8
.L2_7:
    movq $1, %rax
    movq %rax, %r14
    jmp .L2_9
.L2_8:
    movq $4096, %rcx
    cmpq %rcx, %r14
    jae .L2_11
.L2_10:
    movq %r14, %rbx
    jmp .L2_12
.L2_11:
    movq $4096, %rax
    movq %rax, %rbx
.L2_12:
    movq %rbx, %r14
.L2_9:
    movq $4097, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L2_13
.L2_14:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_13:
    movq -4672(%rbp), %rax
    movq -4688(%rbp), %r10
    movq %rax, (%r10)
    movq -4696(%rbp), %r10
    movq %r14, (%r10)
    movq -4904(%rbp), %rsi
    movq -4688(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -4344(%rbp), %rdi
    call lb_files_File_read@PLT
    movq -4704(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_16
    jmp .L2_15
.L2_16:
    movq -4920(%rbp), %rax
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
    movq -4664(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_files_14release_buffer@PLT
    movq -4904(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L2_15:
    movq -4920(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -4712(%rbp)
    movq -4712(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L2_19
.L2_18:
    jmp .L2_6
.L2_19:
.L2_20:
    testl %r15d, %r15d
    jne .L2_22
    jmp .L2_23
.L2_22:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_files_9too_large(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_5(%rip), %r14
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
    movq -4664(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_files_14release_buffer@PLT
    movq -4904(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L2_23:
.L2_24:
    movq -4712(%rbp), %rax
    movq -4912(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -4720(%rbp)
    movq -4728(%rbp), %r10
    movq (%r10), %r15
    movq -4720(%rbp), %rax
    cmpq %r15, %rax
    jbe .L2_27
.L2_26:
    movq %r15, %rdi
    movq $2, %rsi
    movl $64, %edx
    movq -4736(%rbp), %rcx
    call lb_core_6qmul_u@PLT
    movl %eax, %r12d
    movq -4736(%rbp), %r10
    movq (%r10), %rbx
    movq -4928(%rbp), %r10
    movq %rbx, (%r10)
    movq -4744(%rbp), %r10
    movb %r12b, (%r10)
    movq -4744(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_29
    jmp .L2_30
.L2_29:
    movq %rbx, %r12
    jmp .L2_31
.L2_30:
    movq %r13, %r12
.L2_31:
    movq $4096, %rcx
    cmpq %rcx, %r12
    jae .L2_33
.L2_32:
    movq $4096, %rax
    movq %rax, %r12
    jmp .L2_34
.L2_33:
.L2_34:
    movq -4720(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L2_36
.L2_35:
    movq -4720(%rbp), %rax
    movq %rax, %rbx
    jmp .L2_37
.L2_36:
    movq %r12, %rbx
.L2_37:
    cmpq %r13, %rbx
    jbe .L2_39
.L2_38:
    movq %r13, %rbx
    jmp .L2_40
.L2_39:
.L2_40:
    movq -4728(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L2_42
.L2_41:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rbx
    jbe .L2_45
.L2_44:
    movl $208273409, %eax
    movq -4752(%rbp), %r10
    movl %eax, (%r10)
    movq -4760(%rbp), %rax
    movq -4768(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq -4776(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -4784(%rbp), %r10
    movb %al, (%r10)
    jmp .L2_46
.L2_45:
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_47
    jmp .L2_48
.L2_48:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_47:
    movq %r15, %r10
    movq (%r10), %r13
    movq %r12, %rsi
    movq %rbx, %rdx
    movq $1, %rcx
    leaq -4456(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    movq -4792(%rbp), %r10
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
    jne .L2_49
    jmp .L2_50
.L2_49:
    movl $208273409, %eax
    movq -4800(%rbp), %r10
    movl %eax, (%r10)
    movq -4808(%rbp), %rax
    movq -4816(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -4824(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -4832(%rbp), %r10
    movb %al, (%r10)
    jmp .L2_46
.L2_50:
    movq -4952(%rbp), %r10
    movq (%r10), %r12
    movq -4944(%rbp), %r10
    movq %r12, (%r10)
    movq -4840(%rbp), %r10
    movq %rbx, (%r10)
    movl $0, %eax
    movq -4848(%rbp), %r10
    movb %al, (%r10)
.L2_46:
    movq -4856(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_52
    jmp .L2_51
.L2_52:
    movq -4944(%rbp), %rax
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
    movq -4664(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_files_14release_buffer@PLT
    movq -4904(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L2_51:
    movq -4944(%rbp), %r10
    movq -4664(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_43
.L2_42:
    movq -4664(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %rcx
    leaq -4504(%rbp), %rdi
    call lb_memory_grow@PLT
    movq -4864(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_55
    jmp .L2_54
.L2_55:
    movq -4936(%rbp), %rax
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
    movq -4664(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_files_14release_buffer@PLT
    movq -4904(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L2_54:
    movq -4936(%rbp), %r10
    movq -4664(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L2_43:
    jmp .L2_28
.L2_27:
.L2_28:
    movq -4664(%rbp), %r10
    movq (%r10), %r12
    movq -4728(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq -4912(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -4912(%rbp), %rax
    cmpq %r13, %rax
    jbe .L2_57
.L2_58:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_57:
    movq -4912(%rbp), %rax
    movq %rax, %rbx
    addq %r12, %rbx
    movq -4912(%rbp), %rcx
    movq %r13, %r14
    subq %rcx, %r14
    movq -4872(%rbp), %r10
    movq %rbx, (%r10)
    movq -4880(%rbp), %r10
    movq %r14, (%r10)
    movq -4672(%rbp), %rax
    movq -4888(%rbp), %r10
    movq %rax, (%r10)
    movq $4096, %rax
    movq -4896(%rbp), %r10
    movq %rax, (%r10)
    movq -4872(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -4888(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -4712(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -4720(%rbp), %rax
    movq %rax, -4912(%rbp)
    jmp .L2_4
.L2_6:
    movq -4904(%rbp), %rsi
    leaq -4568(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -4568(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_60
    jmp .L2_59
.L2_60:
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
    movq -4664(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_files_14release_buffer@PLT
    movq -4904(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L2_59:
    movq -4664(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -4912(%rbp), %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L2_65
    jmp .L2_79
.L2_79:
    movl %ebx, %r12d
    jmp .L2_66
.L2_65:
    movq -4912(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r12d
.L2_66:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L2_62
    jmp .L2_63
.L2_62:
    leaq -96(%rbp), %rbx
    movq -4664(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -4904(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L2_63:
.L2_64:
    leaq -4584(%rbp), %rax
    movq %rax, -4960(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -4632(%rbp), %rax
    movq %rax, -4968(%rbp)
    movq -4912(%rbp), %rax
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rax
    jbe .L2_69
.L2_68:
    movq -4968(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_7(%rip), %r13
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
    movq -4968(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_70
.L2_69:
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_71
    jmp .L2_72
.L2_72:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_71:
    movq %r15, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq -4912(%rbp), %rdx
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
    movq -4912(%rbp), %rax
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
    jne .L2_73
    jmp .L2_74
.L2_73:
    movq -4968(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_10(%rip), %r12
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
    movq -4968(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_70
.L2_74:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -4968(%rbp), %r10
    movq %rbx, (%r10)
    movq -4968(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -4912(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -4968(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_70:
    movq -4968(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_76
    jmp .L2_75
.L2_76:
    movq -4968(%rbp), %rax
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
    movq -4664(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_files_14release_buffer@PLT
    movq -4904(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L2_75:
    movq -4968(%rbp), %r10
    movq -4960(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -4960(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -4664(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -4912(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -4664(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_files_14release_buffer@PLT
    leaq -96(%rbp), %rbx
    movq -4960(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -4904(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
    subq $240, %rsp
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
    jne .L3_2
    jmp .L3_1
.L3_2:
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
.L3_3:
.L3_1:
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
    jne .L3_5
    jmp .L3_4
.L3_5:
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
    movq %r12, %rdi
    call lb_files_File_destroy@PLT
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
.L3_6:
.L3_4:
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
    jne .L3_8
    jmp .L3_7
.L3_8:
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
    movq %r12, %rdi
    call lb_files_File_destroy@PLT
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
.L3_9:
.L3_7:
    movq %r12, %rdi
    call lb_files_File_destroy@PLT
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
    jbe .L4_2
.L4_1:
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
    jne .L4_5
    jmp .L4_4
.L4_5:
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
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

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
    jne .L5_11
    jmp .L5_4
.L5_11:
    movl %r13d, %r14d
    jmp .L5_5
.L5_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L5_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L5_1
    jmp .L5_2
.L5_1:
    leaq .Ltext_4(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_16(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L5_3
.L5_2:
.L5_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L5_7
.L5_6:
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
    jne .L5_9
    jmp .L5_10
.L5_10:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_9:
    jmp .L5_8
.L5_7:
.L5_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_contents_0init
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
    .asciz "src/std/files/contents.lucb:5:5"
.Ltext_2:
    .asciz "src/std/files/contents.lucb:19:9"
.Ltext_3:
    .asciz "src/std/files/contents.lucb:21:9"
.Ltext_4:
    .asciz "index out of bounds"
.Ltext_5:
    .asciz "the file exceeds the read limit"
.Ltext_6:
    .asciz "src/std/files/contents.lucb:26:9"
.Ltext_7:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_8:
    .asciz "memory.unset"
.Ltext_9:
    .asciz "src/std/files/contents.lucb:36:17"
.Ltext_10:
    .asciz "memory.exhausted"
.Ltext_11:
    .asciz "src/std/files/contents.lucb:39:9"
.Ltext_12:
    .asciz "src/std/files/contents.lucb:40:9"
.Ltext_13:
    .asciz "src/std/files/contents.lucb:44:5"
.Ltext_14:
    .asciz "src/std/files/contents.lucb:47:5"
.Ltext_15:
    .asciz "src/std/files/contents.lucb:60:9"
.Ltext_16:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_17:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_18:
    .asciz "null_foreign"
.Ltext_19:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3
    .weak lb_vt_files_File_Writer
lb_vt_files_File_Writer:
    .quad lb_files_File_write

    .section .note.GNU-stack,"",@progbits
