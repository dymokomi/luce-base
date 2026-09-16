    .text

    .p2align 4
    .globl lb_files_handles_0init
    .type lb_files_handles_0init, @function
lb_files_handles_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_File_open
    .type lb_files_File_open, @function
lb_files_File_open:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
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
    jne .L1_2
    jmp .L1_1
.L1_2:
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
.L1_3:
.L1_1:
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
    leaq -328(%rbp), %rbx
    movq %rbx, %r10
    movl %r15d, (%r10)
    movq $32, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -424(%rbp)
    movl $0, %eax
    movq -424(%rbp), %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L1_21
.L1_20:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_21:
    leaq -216(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_5
    jmp .L1_4
.L1_5:
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
.L1_6:
.L1_4:
    leaq -256(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -416(%rbp)
    movl %r15d, %eax
    movl %eax, -432(%rbp)
.L1_7:
    movl -432(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    setl %al
    movzbl %al, %eax
    movl %eax, -408(%rbp)
    movl -408(%rbp), %eax
    testl %eax, %eax
    jne .L1_10
    jmp .L1_24
.L1_24:
    movl -408(%rbp), %eax
    movl %eax, %r14d
    jmp .L1_11
.L1_10:
    call lb_c_errno@PLT
    movl %eax, %r14d
    movl $4, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
.L1_11:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L1_8
    jmp .L1_9
.L1_8:
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
    movq %rbx, %r10
    movl %r14d, (%r10)
    movl $0, %eax
    movq -424(%rbp), %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L1_23
.L1_22:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_23:
    movq -416(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L1_13
    jmp .L1_12
.L1_13:
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
.L1_14:
.L1_12:
    movl %r14d, %eax
    movl %eax, -432(%rbp)
    jmp .L1_7
.L1_9:
    movl -408(%rbp), %eax
    testl %eax, %eax
    jne .L1_15
    jmp .L1_16
.L1_15:
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
    leaq .Ltext_0(%rip), %r13
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
.L1_18:
    jmp .L1_17
.L1_16:
.L1_17:
    leaq -280(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -288(%rbp), %r12
    movl -432(%rbp), %eax
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
.L1_19:
    leaq .Ltext_2(%rip), %rdi
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
.L2_1:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_File_metadata
    .type lb_files_File_metadata, @function
lb_files_File_metadata:
    pushq %rbp
    movq %rsp, %rbp
    subq $384, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -208(%rbp)
    leaq -208(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_1
    jmp .L3_2
.L3_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L3_3
.L3_2:
    leaq -200(%rbp), %rbx
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
    leaq -224(%rbp), %r14
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_4:
.L3_3:
    movl %ebx, %esi
    leaq -384(%rbp), %rdi
    call lb_files_19metadata_descriptor@PLT
    leaq -384(%rbp), %r13
    movq $152, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_6
    jmp .L3_5
.L3_6:
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
.L3_7:
.L3_5:
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
.L3_8:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_File_truncate
    .type lb_files_File_truncate, @function
lb_files_File_truncate:
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
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_1
    jmp .L4_2
.L4_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L4_3
.L4_2:
    leaq -80(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
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
.L4_4:
.L4_3:
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jge .L4_6
.L4_5:
    leaq -80(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_6(%rip), %r12
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
.L4_8:
    jmp .L4_7
.L4_6:
.L4_7:
    movl %ebx, %edi
    movq %r12, %rsi
    call lb_files_ftruncate@PLT
    movl %eax, %r13d
.L4_9:
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L4_12
    jmp .L4_18
.L4_18:
    movl %r14d, %r13d
    jmp .L4_13
.L4_12:
    call lb_c_errno@PLT
    movl %eax, %r13d
    movl $4, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L4_13:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L4_10
    jmp .L4_11
.L4_10:
    movl %ebx, %edi
    movq %r12, %rsi
    call lb_files_ftruncate@PLT
    movl %eax, %r13d
    jmp .L4_9
.L4_11:
    testl %r14d, %r14d
    jne .L4_14
    jmp .L4_15
.L4_14:
    leaq -80(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_7(%rip), %r12
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
.L4_17:
    jmp .L4_16
.L4_15:
.L4_16:
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
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -72(%rbp)
    movl %edx, -88(%rbp)
    leaq -72(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_1
    jmp .L5_2
.L5_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L5_3
.L5_2:
    leaq -64(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_3:
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl $4095, %ecx
    cmpl %ecx, %r12d
    jbe .L5_6
.L5_5:
    leaq -64(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_8(%rip), %r12
    leaq -120(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_6:
.L5_7:
.L5_9:
.L5_10:
    movl %ebx, %edi
    movl %r12d, %esi
    call fchmod@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L5_13
.L5_12:
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
.L5_13:
.L5_14:
    call lb_c_errno@PLT
    movl %eax, %r13d
    movl $4, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L5_17
.L5_16:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_9(%rip), %r12
    leaq -136(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_17:
.L5_18:
    jmp .L5_9

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
    jne .L6_1
    jmp .L6_2
.L6_1:
    movq %r12, %r10
    movslq (%r10), %rax
    movq %rax, -272(%rbp)
    jmp .L6_3
.L6_2:
    leaq -80(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
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
.L6_4:
.L6_3:
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
    jne .L6_20
    jmp .L6_8
.L6_20:
    movl %r14d, %r15d
    jmp .L6_9
.L6_8:
    leaq -120(%rbp), %r14
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl $1000000000, %ecx
    cmpl %ecx, %r14d
    setae %al
    movzbl %al, %r15d
.L6_9:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L6_5
    jmp .L6_6
.L6_5:
    leaq -80(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_10(%rip), %r12
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
.L6_10:
    jmp .L6_7
.L6_6:
.L6_7:
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
.L6_11:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_14
    jmp .L6_21
.L6_21:
    movl %r12d, %ebx
    jmp .L6_15
.L6_14:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movl $4, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L6_15:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L6_12
    jmp .L6_13
.L6_12:
    movl -272(%rbp), %edi
    movq -280(%rbp), %rsi
    call futimens@PLT
    movl %eax, %ebx
    jmp .L6_11
.L6_13:
    testl %r12d, %r12d
    jne .L6_16
    jmp .L6_17
.L6_16:
    leaq -80(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_13(%rip), %r12
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
.L6_19:
    jmp .L6_18
.L6_17:
.L6_18:
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
    subq $160, %rsp
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
    jne .L7_1
    jmp .L7_2
.L7_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L7_3
.L7_2:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
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
.L7_4:
.L7_3:
    leaq -112(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L7_6
.L7_5:
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
.L7_8:
    jmp .L7_7
.L7_6:
.L7_7:
    movq $1073741824, %rcx
    cmpq %rcx, %r13
    jae .L7_10
.L7_9:
    movq %r13, %r14
    jmp .L7_11
.L7_10:
    movq $1073741824, %rax
    movq %rax, %r14
.L7_11:
    movq %r12, %r10
    movq (%r10), %r13
    movl %ebx, %edi
    movq %r13, %rsi
    movq %r14, %rdx
    call lb_files_6c_read@PLT
    movq %rax, %r15
    movq %r15, %rax
    movq %rax, -160(%rbp)
.L7_12:
    movq -160(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setl %al
    movzbl %al, %eax
    movl %eax, -152(%rbp)
    movl -152(%rbp), %eax
    testl %eax, %eax
    jne .L7_15
    jmp .L7_22
.L7_22:
    movl -152(%rbp), %eax
    movl %eax, %r15d
    jmp .L7_16
.L7_15:
    call lb_c_errno@PLT
    movl %eax, %r15d
    movl $4, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
.L7_16:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L7_13
    jmp .L7_14
.L7_13:
    movl %ebx, %edi
    movq %r13, %rsi
    movq %r14, %rdx
    call lb_files_6c_read@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, -160(%rbp)
    jmp .L7_12
.L7_14:
    movl -152(%rbp), %eax
    testl %eax, %eax
    jne .L7_17
    jmp .L7_18
.L7_17:
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
    leaq .Ltext_14(%rip), %r13
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
.L7_20:
    jmp .L7_19
.L7_18:
.L7_19:
    leaq -88(%rbp), %rbx
    movq -160(%rbp), %rax
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
.L7_21:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_File_write
    .type lb_files_File_write, @function
lb_files_File_write:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
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
    jne .L8_1
    jmp .L8_2
.L8_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L8_3
.L8_2:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
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
.L8_4:
.L8_3:
    leaq -112(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L8_6
.L8_5:
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
.L8_8:
    jmp .L8_7
.L8_6:
.L8_7:
    movq $1073741824, %rcx
    cmpq %rcx, %r13
    jae .L8_10
.L8_9:
    movq %r13, %r14
    jmp .L8_11
.L8_10:
    movq $1073741824, %rax
    movq %rax, %r14
.L8_11:
    movq %r12, %r10
    movq (%r10), %r13
    movl %ebx, %edi
    movq %r13, %rsi
    movq %r14, %rdx
    call lb_files_7c_write@PLT
    movq %rax, %r15
    movq %r15, %rax
    movq %rax, -160(%rbp)
.L8_12:
    movq -160(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setl %al
    movzbl %al, %eax
    movl %eax, -152(%rbp)
    movl -152(%rbp), %eax
    testl %eax, %eax
    jne .L8_15
    jmp .L8_22
.L8_22:
    movl -152(%rbp), %eax
    movl %eax, %r15d
    jmp .L8_16
.L8_15:
    call lb_c_errno@PLT
    movl %eax, %r15d
    movl $4, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
.L8_16:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L8_13
    jmp .L8_14
.L8_13:
    movl %ebx, %edi
    movq %r13, %rsi
    movq %r14, %rdx
    call lb_files_7c_write@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, -160(%rbp)
    jmp .L8_12
.L8_14:
    movl -152(%rbp), %eax
    testl %eax, %eax
    jne .L8_17
    jmp .L8_18
.L8_17:
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
    leaq .Ltext_16(%rip), %r13
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
.L8_20:
    jmp .L8_19
.L8_18:
.L8_19:
    leaq -88(%rbp), %rbx
    movq -160(%rbp), %rax
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
.L8_21:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_File_seek
    .type lb_files_File_seek, @function
lb_files_File_seek:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
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
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
    leaq -144(%rbp), %r14
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
.L9_4:
.L9_3:
    leaq -112(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %r13d
    movl %ebx, %edi
    movq %r12, %rsi
    movl %r13d, %edx
    call lb_files_lseek@PLT
    movq %rax, %r14
    movq %r14, %rax
    movq %rax, -176(%rbp)
.L9_5:
    movq -176(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setl %al
    movzbl %al, %eax
    movl %eax, -168(%rbp)
    movl -168(%rbp), %eax
    testl %eax, %eax
    jne .L9_8
    jmp .L9_15
.L9_15:
    movl -168(%rbp), %eax
    movl %eax, %r14d
    jmp .L9_9
.L9_8:
    call lb_c_errno@PLT
    movl %eax, %r14d
    movl $4, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
.L9_9:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L9_6
    jmp .L9_7
.L9_6:
    movl %ebx, %edi
    movq %r12, %rsi
    movl %r13d, %edx
    call lb_files_lseek@PLT
    movq %rax, %r14
    movq %r14, %rax
    movq %rax, -176(%rbp)
    jmp .L9_5
.L9_7:
    movl -168(%rbp), %eax
    testl %eax, %eax
    jne .L9_10
    jmp .L9_11
.L9_10:
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
    leaq .Ltext_18(%rip), %r13
    leaq -160(%rbp), %r14
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
.L9_13:
    jmp .L9_12
.L9_11:
.L9_12:
    leaq -88(%rbp), %rbx
    movq -176(%rbp), %rax
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
.L9_14:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_File_sync
    .type lb_files_File_sync, @function
lb_files_File_sync:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -80(%rbp)
    leaq -80(%rbp), %r10
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
    movslq (%r10), %rbx
    jmp .L10_3
.L10_2:
    leaq -72(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq -96(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_4:
.L10_3:
    movl %ebx, %edi
    call lb_files_fsync@PLT
    movl %eax, %r12d
.L10_5:
    movl $0, %ecx
    cmpl %ecx, %r12d
    setl %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L10_8
    jmp .L10_14
.L10_14:
    movl %r13d, %r12d
    jmp .L10_9
.L10_8:
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl $4, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L10_9:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L10_6
    jmp .L10_7
.L10_6:
    movl %ebx, %edi
    call lb_files_fsync@PLT
    movl %eax, %r12d
    jmp .L10_5
.L10_7:
    testl %r13d, %r13d
    jne .L10_10
    jmp .L10_11
.L10_10:
    leaq -72(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_20(%rip), %r12
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
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_13:
    jmp .L10_12
.L10_11:
.L10_12:
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
    jne .L11_1
    jmp .L11_2
.L11_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L11_3
.L11_2:
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
.L11_4:
.L11_3:
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
    jne .L11_6
.L11_5:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_21(%rip), %r12
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
.L11_8:
    jmp .L11_7
.L11_6:
.L11_7:
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
    .globl lb_files_File_destroy
    .type lb_files_File_destroy, @function
lb_files_File_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -80(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -80(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_4
    jmp .L12_3
.L12_4:
    leaq -48(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L12_1
.L12_3:
    jmp .L12_2
.L12_1:
.L12_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
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
    movl %edi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L13_2
.L13_1:
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
.L13_4:
    jmp .L13_3
.L13_2:
.L13_3:
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L13_54
    jmp .L13_8
.L13_54:
    movl %r12d, %r13d
    jmp .L13_9
.L13_8:
    movl $13, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L13_9:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L13_5
    jmp .L13_6
.L13_5:
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
.L13_10:
    jmp .L13_7
.L13_6:
.L13_7:
    movl $17, %ecx
    cmpl %ecx, %ebx
    jne .L13_12
.L13_11:
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
.L13_14:
    jmp .L13_13
.L13_12:
.L13_13:
    movl $28, %ecx
    cmpl %ecx, %ebx
    jne .L13_16
.L13_15:
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
.L13_18:
    jmp .L13_17
.L13_16:
.L13_17:
    movl $20, %ecx
    cmpl %ecx, %ebx
    jne .L13_20
.L13_19:
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
.L13_22:
    jmp .L13_21
.L13_20:
.L13_21:
    movl $21, %ecx
    cmpl %ecx, %ebx
    jne .L13_24
.L13_23:
    leaq lb_files_12is_directory(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_26:
    jmp .L13_25
.L13_24:
.L13_25:
    movl $30, %ecx
    cmpl %ecx, %ebx
    jne .L13_28
.L13_27:
    leaq lb_files_20read_only_filesystem(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_30:
    jmp .L13_29
.L13_28:
.L13_29:
    movl $39, %ecx
    cmpl %ecx, %ebx
    jne .L13_32
.L13_31:
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
.L13_34:
    jmp .L13_33
.L13_32:
.L13_33:
    movl $18, %ecx
    cmpl %ecx, %ebx
    jne .L13_36
.L13_35:
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
.L13_38:
    jmp .L13_37
.L13_36:
.L13_37:
    movl $40, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L13_42
    jmp .L13_55
.L13_55:
    movl %r12d, %r13d
    jmp .L13_43
.L13_42:
    movl $1, %eax
    movl %eax, %r13d
.L13_43:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L13_39
    jmp .L13_40
.L13_39:
    leaq lb_files_12symlink_loop(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_44:
    jmp .L13_41
.L13_40:
.L13_41:
    movl $36, %ecx
    cmpl %ecx, %ebx
    jne .L13_46
.L13_45:
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
.L13_48:
    jmp .L13_47
.L13_46:
.L13_47:
    movl $11, %ecx
    cmpl %ecx, %ebx
    jne .L13_50
.L13_49:
    leaq lb_files_11would_block(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_52:
    jmp .L13_51
.L13_50:
.L13_51:
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
.L13_53:
    leaq .Ltext_22(%rip), %rdi
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
    jbe .L14_2
.L14_1:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_8(%rip), %r13
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
.L14_4:
    jmp .L14_3
.L14_2:
.L14_3:
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L14_5
    jmp .L14_6
.L14_5:
    movl $524288, %eax
    movl %eax, %ebx
    jmp .L14_7
.L14_6:
    movl $1, %ecx
    cmpl %ecx, %ebx
    jne .L14_9
.L14_8:
    movl $524290, %eax
    movl %eax, %ebx
    jmp .L14_10
.L14_9:
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L14_12
.L14_11:
    movl $524865, %eax
    movl %eax, %ebx
    jmp .L14_13
.L14_12:
    movl $3, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L14_30
    jmp .L14_17
.L14_30:
    movl %r13d, %r14d
    jmp .L14_18
.L14_17:
    movl $5, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
.L14_18:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L14_14
    jmp .L14_15
.L14_14:
    movl $5, %ecx
    cmpl %ecx, %ebx
    jne .L14_20
.L14_19:
    movl $2, %eax
    movl %eax, %ebx
    jmp .L14_21
.L14_20:
    movl $1, %eax
    movl %eax, %ebx
.L14_21:
    movl $192, %ecx
    movl %ebx, %r12d
    orl %ecx, %r12d
    movl $524288, %ecx
    orl %ecx, %r12d
    jmp .L14_16
.L14_15:
    movl $4, %ecx
    cmpl %ecx, %ebx
    jne .L14_23
.L14_22:
    movl $525377, %eax
    movl %eax, %r12d
    jmp .L14_24
.L14_23:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L14_26
.L14_25:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_25(%rip), %r13
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
.L14_28:
    jmp .L14_27
.L14_26:
.L14_27:
    movl $524288, %eax
    movl %eax, %r12d
.L14_24:
.L14_16:
    movl %r12d, %ebx
.L14_13:
.L14_10:
.L14_7:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_29:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_handles_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "the file could not be opened"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/files/handles.lucb:33:9"
.Ltext_3:
    .asciz "src/std/files/handles.lucb:38:9"
.Ltext_4:
    .asciz "the file is closed"
.Ltext_5:
    .asciz "src/std/files/handles.lucb:43:9"
.Ltext_6:
    .asciz "a file length cannot be negative"
.Ltext_7:
    .asciz "the file length could not be changed"
.Ltext_8:
    .asciz "file permissions must fit the Unix mode bits"
.Ltext_9:
    .asciz "file permissions could not be changed"
.Ltext_10:
    .asciz "a timestamp nanosecond fraction must be below one billion"
.Ltext_11:
    .asciz "src/std/files/handles.lucb:87:9"
.Ltext_12:
    .asciz "src/std/files/handles.lucb:89:13"
.Ltext_13:
    .asciz "file timestamps could not be changed"
.Ltext_14:
    .asciz "the file could not be read"
.Ltext_15:
    .asciz "src/std/files/handles.lucb:105:9"
.Ltext_16:
    .asciz "the file could not be written"
.Ltext_17:
    .asciz "src/std/files/handles.lucb:119:9"
.Ltext_18:
    .asciz "the file could not be positioned"
.Ltext_19:
    .asciz "src/std/files/handles.lucb:130:9"
.Ltext_20:
    .asciz "the file could not be synchronized"
.Ltext_21:
    .asciz "the file could not be closed"
.Ltext_22:
    .asciz "src/std/files/handles.lucb:185:5"
.Ltext_23:
    .asciz "src/std/files/handles.lucb:213:5"
.Ltext_24:
    .asciz "src/std/files/handles.lucb:219:5"
.Ltext_25:
    .asciz "unknown file opening mode"
.Ltext_26:
    .asciz "src/std/files/handles.lucb:239:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
