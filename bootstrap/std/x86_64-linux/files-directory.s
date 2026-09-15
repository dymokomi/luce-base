    .text

    .p2align 4
    .globl lb_files_directory_0init
    .type lb_files_directory_0init, @function
lb_files_directory_0init:
    pushq %rbp
    movq %rsp, %rbp
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
    jne .L1_2
    jmp .L1_1
.L1_2:
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
.L1_3:
.L1_1:
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
.L1_4:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
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
    jne .L2_1
    jmp .L2_2
.L2_1:
    jmp .L2_3
.L2_2:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
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
.L2_4:
.L2_3:
    movq %rbx, %rdi
    call dirfd@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jge .L2_6
.L2_5:
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
    leaq .Ltext_3(%rip), %r13
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
.L2_8:
    jmp .L2_7
.L2_6:
.L2_7:
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
.L2_9:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
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
    jne .L3_2
    jmp .L3_1
.L3_2:
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
.L3_3:
.L3_1:
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
    jne .L3_5
    jmp .L3_4
.L3_5:
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
.L3_6:
.L3_4:
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
.L3_7:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_Directory_14entry_metadata
    .type lb_files_Directory_14entry_metadata, @function
lb_files_Directory_14entry_metadata:
    pushq %rbp
    movq %rsp, %rbp
    subq $448, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -208(%rbp)
    movq %rdx, -224(%rbp)
    movl %ecx, -240(%rbp)
    leaq -208(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -280(%rbp), %rdi
    call lb_files_Directory_descriptor@PLT
    leaq -280(%rbp), %r12
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
.L4_3:
.L4_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    leaq -224(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -240(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl %ebx, %esi
    movq %r13, %rdx
    movl %r14d, %ecx
    leaq -440(%rbp), %rdi
    call lb_files_11metadata_at@PLT
    leaq -440(%rbp), %r13
    movq $152, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_5
    jmp .L4_4
.L4_5:
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
.L4_6:
.L4_4:
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
.L4_7:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_Directory_14open_directory
    .type lb_files_Directory_14open_directory, @function
lb_files_Directory_14open_directory:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    movq %rdx, -104(%rbp)
    movl %ecx, -120(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -160(%rbp), %rdi
    call lb_files_Directory_descriptor@PLT
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
    movslq (%r10), %rbx
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -120(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl %ebx, %esi
    movq %r13, %rdx
    movl %r14d, %ecx
    leaq -200(%rbp), %rdi
    call lb_files_17open_directory_at@PLT
    leaq -200(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_5
    jmp .L5_4
.L5_5:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_6:
.L5_4:
    leaq -80(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_7:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
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
    jne .L6_2
    jmp .L6_1
.L6_2:
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
.L6_3:
.L6_1:
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
    jne .L6_5
    jmp .L6_4
.L6_5:
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
.L6_6:
.L6_4:
    movq %r15, %r10
    movslq (%r10), %r12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L6_8
.L6_7:
    leaq lb_files_14no_follow_flag(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl %r13d, %ecx
    movl %r12d, %r13d
    orl %ecx, %r13d
    jmp .L6_9
.L6_8:
    movl %r12d, %r13d
.L6_9:
    leaq -176(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L6_10
    jmp .L6_11
.L6_10:
    leaq lb_files_21nonblocking_open_flag(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    orl %r13d, %r12d
    jmp .L6_12
.L6_11:
    movl %r13d, %r12d
.L6_12:
    leaq -112(%rbp), %rax
    movq %rax, -304(%rbp)
    movq -304(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -312(%rbp)
    movl -296(%rbp), %edi
    movq -312(%rbp), %rsi
    movl %r12d, %edx
    movl %r14d, %ecx
    movl $0, %eax
    call openat@PLT
    movl %eax, %r15d
    leaq lb_c_interrupted(%rip), %r13
    movl %r15d, %eax
    movl %eax, -328(%rbp)
.L6_13:
    movl -328(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    setl %al
    movzbl %al, %eax
    movl %eax, -320(%rbp)
    movl -320(%rbp), %eax
    testl %eax, %eax
    jne .L6_16
    jmp .L6_23
.L6_23:
    movl -320(%rbp), %eax
    movl %eax, %r15d
    jmp .L6_17
.L6_16:
    call lb_c_errno@PLT
    movl %eax, %r15d
    movq %r13, %r10
    movslq (%r10), %rbx
    cmpl %ebx, %r15d
    sete %al
    movzbl %al, %r15d
.L6_17:
    movzbl %r15b, %ebx
    testl %ebx, %ebx
    jne .L6_14
    jmp .L6_15
.L6_14:
    movl -296(%rbp), %edi
    movq -312(%rbp), %rsi
    movl %r12d, %edx
    movl %r14d, %ecx
    movl $0, %eax
    call openat@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movl %eax, -328(%rbp)
    jmp .L6_13
.L6_15:
    movl -320(%rbp), %eax
    testl %eax, %eax
    jne .L6_18
    jmp .L6_19
.L6_18:
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
    leaq .Ltext_8(%rip), %r13
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
.L6_21:
    jmp .L6_20
.L6_19:
.L6_20:
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
.L6_22:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_Directory_next
    .type lb_files_Directory_next, @function
lb_files_Directory_next:
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
    leaq -112(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %rax
    testq %rax, %rax
    jne .L7_1
    jmp .L7_2
.L7_1:
    jmp .L7_3
.L7_2:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
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
.L7_3:
    leaq -144(%rbp), %r15
    leaq -200(%rbp), %r14
    movq $48, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -304(%rbp)
    movq $16, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -312(%rbp)
    leaq -216(%rbp), %rax
    movq %rax, -320(%rbp)
    leaq .Ltext_10(%rip), %rax
    movq %rax, -328(%rbp)
    leaq -256(%rbp), %rax
    movq %rax, -376(%rbp)
    movq -376(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -336(%rbp)
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -344(%rbp)
    leaq .Ltext_11(%rip), %rax
    movq %rax, -352(%rbp)
    leaq -272(%rbp), %rax
    movq %rax, -384(%rbp)
    movq -384(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -360(%rbp)
.L7_5:
.L7_6:
    movq -368(%rbp), %rsi
    leaq -200(%rbp), %rdi
    call lb_files_10next_entry@PLT
    movq -304(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L7_9
    jmp .L7_8
.L7_9:
    movq $24, %rcx
    movq %r14, %rbx
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
.L7_8:
    movq -312(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L7_11
    jmp .L7_12
.L7_11:
    movq %r14, %r10
    movq -320(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L7_13
.L7_12:
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
.L7_13:
    movq -320(%rbp), %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -328(%rbp), %rax
    movq -376(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq -336(%rbp), %r10
    movq %rax, (%r10)
    movq -344(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L7_18
    jmp .L7_25
.L7_25:
    movl %ebx, %r12d
    jmp .L7_19
.L7_18:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    movq -328(%rbp), %rsi
    movq %r13, %rdx
    call memcmp@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L7_19:
    movzbl %r12b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L7_20
    jmp .L7_26
.L7_26:
    movl %ebx, %r12d
    jmp .L7_21
.L7_20:
    movq -352(%rbp), %rax
    movq -384(%rbp), %r10
    movq %rax, (%r10)
    movq $2, %rax
    movq -360(%rbp), %r10
    movq %rax, (%r10)
    movq $2, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L7_22
    jmp .L7_27
.L7_27:
    movl %ebx, %r12d
    jmp .L7_23
.L7_22:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    movq -352(%rbp), %rsi
    movq %r13, %rdx
    call memcmp@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L7_23:
    movzbl %r12b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L7_21:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L7_15
    jmp .L7_16
.L7_15:
    leaq -296(%rbp), %rbx
    movq %r15, %r10
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
.L7_16:
.L7_17:
    jmp .L7_5

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
    jne .L8_1
    jmp .L8_2
.L8_1:
    jmp .L8_3
.L8_2:
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
.L8_4:
.L8_3:
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
    jne .L8_6
.L8_5:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_13(%rip), %r12
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
.L8_8:
    jmp .L8_7
.L8_6:
.L8_7:
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
    .globl lb_files_Directory_destroy
    .type lb_files_Directory_destroy, @function
lb_files_Directory_destroy:
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
    call lb_files_Directory_close@PLT
    leaq -80(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_4
    jmp .L9_3
.L9_4:
    leaq -48(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L9_1
.L9_3:
    jmp .L9_2
.L9_1:
.L9_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
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
    jne .L10_2
.L10_1:
    leaq lb_files_14no_follow_flag(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl %r12d, %ecx
    movl %ebx, %r12d
    orl %ecx, %r12d
    jmp .L10_3
.L10_2:
    movl %ebx, %r12d
.L10_3:
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
.L10_4:
    movl -200(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    setl %al
    movzbl %al, %eax
    movl %eax, -192(%rbp)
    movl -192(%rbp), %eax
    testl %eax, %eax
    jne .L10_7
    jmp .L10_19
.L10_19:
    movl -192(%rbp), %eax
    movl %eax, %r14d
    jmp .L10_8
.L10_7:
    call lb_c_errno@PLT
    movl %eax, %r14d
    movq %r15, %r10
    movslq (%r10), %rbx
    cmpl %ebx, %r14d
    sete %al
    movzbl %al, %r14d
.L10_8:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L10_5
    jmp .L10_6
.L10_5:
    movl -184(%rbp), %edi
    movq %r13, %rsi
    movl %r12d, %edx
    movl $0, %eax
    call openat@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movl %eax, -200(%rbp)
    jmp .L10_4
.L10_6:
    movl -192(%rbp), %eax
    testl %eax, %eax
    jne .L10_9
    jmp .L10_10
.L10_9:
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
.L10_12:
    jmp .L10_11
.L10_10:
.L10_11:
    movl -200(%rbp), %edi
    call fdopendir@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L10_16
    jmp .L10_14
.L10_16:
.L10_13:
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
.L10_17:
    jmp .L10_15
.L10_14:
.L10_15:
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
    leaq .Ltext_15(%rip), %rbx
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
.L10_18:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
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
    jne .L11_2
    jmp .L11_1
.L11_2:
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
.L11_1:
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
.L11_5:
    movq -1280(%rbp), %r10
    movq (%r10), %r13
    movq -1280(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -864(%rbp)
    movq -864(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L11_7
    jmp .L11_8
.L11_8:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_7:
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
    jne .L11_9
    jmp .L11_10
.L11_9:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_20(%rip), %r12
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
    jmp .L11_6
.L11_10:
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
.L11_6:
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_12
    jmp .L11_11
.L11_12:
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
    jne .L11_79
    jmp .L11_78
.L11_79:
    leaq -792(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L11_76
.L11_78:
    jmp .L11_77
.L11_76:
.L11_77:
.L11_80:
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
.L11_11:
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
    leaq .Ltext_20(%rip), %rax
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
    leaq .Ltext_17(%rip), %rax
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
    leaq .Ltext_20(%rip), %rax
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
    leaq .Ltext_17(%rip), %rax
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
.L11_14:
    movq -1264(%rbp), %rsi
    leaq -304(%rbp), %rdi
    call lb_files_Directory_next@PLT
    movq -872(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L11_18
    jmp .L11_17
.L11_18:
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
    jne .L11_84
    jmp .L11_83
.L11_84:
    leaq -792(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L11_81
.L11_83:
    jmp .L11_82
.L11_81:
.L11_82:
.L11_85:
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
.L11_17:
    movq -880(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L11_20
    jmp .L11_16
.L11_20:
    movq -1296(%rbp), %r10
    movq -888(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L11_15:
    movq -896(%rbp), %r10
    movq (%r10), %r15
    movq -1288(%rbp), %rcx
    cmpq %rcx, %r15
    jne .L11_22
.L11_21:
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
    jne .L11_24
    jmp .L11_25
.L11_24:
    jmp .L11_26
.L11_25:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_21(%rip), %r13
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
    jne .L11_89
    jmp .L11_88
.L11_89:
    leaq -792(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L11_86
.L11_88:
    jmp .L11_87
.L11_86:
.L11_87:
.L11_90:
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
.L11_26:
    movq -912(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L11_29
.L11_28:
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
    jmp .L11_30
.L11_29:
    movq -912(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq -1280(%rbp), %r10
    movq (%r10), %r14
    movq -864(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L11_31
    jmp .L11_32
.L11_32:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_31:
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
    jne .L11_33
    jmp .L11_34
.L11_33:
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
    jmp .L11_30
.L11_34:
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
.L11_30:
    movq -1032(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_36
    jmp .L11_35
.L11_36:
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
    jne .L11_94
    jmp .L11_93
.L11_94:
    leaq -792(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L11_91
.L11_93:
    jmp .L11_92
.L11_91:
.L11_92:
.L11_95:
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
.L11_35:
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
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_55(%rip), %rsi
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
    jne .L11_39
    jmp .L11_38
.L11_39:
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
.L11_38:
    movq -1328(%rbp), %r10
    movq -1272(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L11_23
.L11_22:
.L11_23:
    movq -1056(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_55(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r12
    jbe .L11_41
.L11_40:
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
    jmp .L11_42
.L11_41:
    movq -1280(%rbp), %r10
    movq (%r10), %rbx
    movq -864(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L11_43
    jmp .L11_44
.L11_44:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_43:
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
    jne .L11_45
    jmp .L11_46
.L11_45:
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
    jmp .L11_42
.L11_46:
    movq -1368(%rbp), %r10
    movq (%r10), %rbx
    movq -1360(%rbp), %r10
    movq %rbx, (%r10)
    movq -1152(%rbp), %r10
    movq %r12, (%r10)
    movl $0, %eax
    movq -1160(%rbp), %r10
    movb %al, (%r10)
.L11_42:
    movq -1168(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_48
    jmp .L11_47
.L11_48:
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
    jne .L11_99
    jmp .L11_98
.L11_99:
    leaq -792(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L11_96
.L11_98:
    jmp .L11_97
.L11_96:
.L11_97:
.L11_100:
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
.L11_47:
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
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
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
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
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
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L11_50
.L11_51:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_50:
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
    jmp .L11_14
.L11_16:
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
    jne .L11_53
    jmp .L11_52
.L11_53:
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
    jne .L11_104
    jmp .L11_103
.L11_104:
    leaq -792(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L11_101
.L11_103:
    jmp .L11_102
.L11_101:
.L11_102:
.L11_105:
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
.L11_52:
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
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1288(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -1288(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L11_55
.L11_56:
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_55:
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
.L11_107:
    movq $2, %rcx
    movq -1288(%rbp), %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r13
.L11_108:
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L11_110
.L11_109:
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_55(%rip), %rsi
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
    jmp .L11_108
.L11_110:
    movq %r14, %r10
    movq (%r10), %rbx
    leaq -856(%rbp), %rax
    movq %rax, -1240(%rbp)
.L11_111:
    movq $1, %rcx
    cmpq %rcx, %rbx
    jbe .L11_113
.L11_112:
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
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
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
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
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
    jmp .L11_111
.L11_113:
.L11_114:
    movq -1288(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L11_58
.L11_57:
    leaq -648(%rbp), %rbx
    movq -1272(%rbp), %r10
    movq (%r10), %r12
    movq -1216(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_55(%rip), %rsi
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
    jne .L11_61
    jmp .L11_60
.L11_61:
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
.L11_60:
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
    jne .L11_118
    jmp .L11_117
.L11_118:
    leaq -792(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L11_115
.L11_117:
    jmp .L11_116
.L11_115:
.L11_116:
.L11_119:
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
.L11_58:
.L11_59:
    leaq -680(%rbp), %rax
    movq %rax, -1304(%rbp)
    leaq -728(%rbp), %rax
    movq %rax, -1312(%rbp)
    movq -1288(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L11_64
.L11_63:
    movq -1312(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_17(%rip), %r14
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
    jmp .L11_65
.L11_64:
    movq -1288(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -1280(%rbp), %r10
    movq (%r10), %rbx
    movq -864(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L11_66
    jmp .L11_67
.L11_67:
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_66:
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
    jne .L11_68
    jmp .L11_69
.L11_68:
    movq -1312(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_20(%rip), %r12
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
    jmp .L11_65
.L11_69:
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
.L11_65:
    movq -1312(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_71
    jmp .L11_70
.L11_71:
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
    jne .L11_123
    jmp .L11_122
.L11_123:
    leaq -792(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L11_120
.L11_122:
    jmp .L11_121
.L11_120:
.L11_121:
.L11_124:
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
.L11_70:
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
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_55(%rip), %rsi
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
    jne .L11_74
    jmp .L11_73
.L11_74:
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
.L11_73:
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
    jne .L11_128
    jmp .L11_127
.L11_128:
    leaq -792(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L11_125
.L11_127:
    jmp .L11_126
.L11_125:
.L11_126:
.L11_129:
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
.L12_1:
    movq -112(%rbp), %r10
    movq (%r10), %r15
.L12_5:
    movq $2, %rcx
    movq %r15, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r12
    movq -176(%rbp), %rax
    cmpq %r12, %rax
    jae .L12_3
.L12_2:
    movq -176(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_55(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -120(%rbp)
    movq -120(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_55(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_55(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -136(%rbp)
    movq -136(%rbp), %rax
    cmpq %r15, %rax
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L12_9
    jmp .L12_15
.L12_15:
    movl %r12d, %r15d
    jmp .L12_10
.L12_9:
    movq -144(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r15
    movq -128(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
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
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
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
.L12_10:
    movzbl %r15b, %ebx
    testl %ebx, %ebx
    jne .L12_6
    jmp .L12_7
.L12_6:
    movq -136(%rbp), %rax
    movq %rax, %rbx
    jmp .L12_8
.L12_7:
    movq -128(%rbp), %rax
    movq %rax, %rbx
.L12_8:
    movq -152(%rbp), %r10
    movq (%r10), %r12
    movq -160(%rbp), %r10
    movq (%r10), %r15
    movq -176(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
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
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
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
    jne .L12_12
.L12_11:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_12:
.L12_13:
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
    jmp .L12_1
.L12_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_12release_list
    .type lb_files_12release_list, @function
lb_files_12release_list:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq -32(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -32(%rbp), %rbx
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
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
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
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -224(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -224(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L14_5
.L14_6:
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
.L14_5:
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
.L14_1:
    movq -224(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L14_4
.L14_2:
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
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_55(%rip), %rsi
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
    jne .L14_8
    jmp .L14_7
.L14_8:
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
.L14_7:
.L14_3:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L14_1
.L14_4:
    movq -160(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jbe .L14_10
.L14_9:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    leaq -152(%rbp), %r12
    movq -160(%rbp), %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_55(%rip), %rsi
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
    jne .L14_13
    jmp .L14_12
.L14_13:
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
.L14_12:
    jmp .L14_11
.L14_10:
.L14_11:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .weak lb_memory_copy_0g1_str
    .type lb_memory_copy_0g1_str, @function
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
    jne .L15_11
    jmp .L15_4
.L15_11:
    movl %r13d, %r14d
    jmp .L15_5
.L15_4:
    leaq -72(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L15_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L15_1
    jmp .L15_2
.L15_1:
    leaq .Ltext_27(%rip), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_52(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L15_3
.L15_2:
.L15_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L15_7
.L15_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -72(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_55(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r13, %rdi
    movq %r14, %rsi
    movq %r15, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L15_9
    jmp .L15_10
.L15_10:
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_54(%rip), %rsi
    call lb_core_7trap_at@PLT
.L15_9:
    jmp .L15_8
.L15_7:
.L15_8:
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
    jne .L16_11
    jmp .L16_4
.L16_11:
    movl %r13d, %r14d
    jmp .L16_5
.L16_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L16_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L16_1
    jmp .L16_2
.L16_1:
    leaq .Ltext_27(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_52(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L16_3
.L16_2:
.L16_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L16_7
.L16_6:
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
    jne .L16_9
    jmp .L16_10
.L16_10:
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_54(%rip), %rsi
    call lb_core_7trap_at@PLT
.L16_9:
    jmp .L16_8
.L16_7:
.L16_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_directory_0init
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
    .asciz "src/std/files/directory.lucb:9:9"
.Ltext_2:
    .asciz "the directory is closed"
.Ltext_3:
    .asciz "the directory has no usable descriptor"
.Ltext_4:
    .asciz "src/std/files/directory.lucb:19:9"
.Ltext_5:
    .asciz "src/std/files/directory.lucb:23:9"
.Ltext_6:
    .asciz "src/std/files/directory.lucb:29:9"
.Ltext_7:
    .asciz "src/std/files/directory.lucb:35:9"
.Ltext_8:
    .asciz "the directory-relative file could not be opened"
.Ltext_9:
    .asciz "src/std/files/directory.lucb:58:9"
.Ltext_10:
    .asciz "."
.Ltext_11:
    .asciz ".."
.Ltext_12:
    .asciz "src/std/files/directory.lucb:68:17"
.Ltext_13:
    .asciz "the directory could not be closed"
.Ltext_14:
    .asciz "the directory could not be opened"
.Ltext_15:
    .asciz "the directory stream could not be created"
.Ltext_16:
    .asciz "src/std/files/directory.lucb:102:5"
.Ltext_17:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_18:
    .asciz "memory.unset"
.Ltext_19:
    .asciz "src/std/files/directory.lucb:111:5"
.Ltext_20:
    .asciz "memory.exhausted"
.Ltext_21:
    .asciz "the directory listing is too large"
.Ltext_22:
    .asciz "src/std/files/directory.lucb:117:13"
.Ltext_23:
    .asciz "src/std/files/directory.lucb:119:13"
.Ltext_24:
    .asciz "src/std/files/directory.lucb:121:9"
.Ltext_25:
    .asciz "src/std/files/directory.lucb:123:9"
.Ltext_26:
    .asciz "src/std/files/directory.lucb:124:9"
.Ltext_27:
    .asciz "index out of bounds"
.Ltext_28:
    .asciz "src/std/files/directory.lucb:125:9"
.Ltext_29:
    .asciz "src/std/files/directory.lucb:127:5"
.Ltext_30:
    .asciz "src/std/files/directory.lucb:130:9"
.Ltext_31:
    .asciz "src/std/files/directory.lucb:133:5"
.Ltext_32:
    .asciz "src/std/files/directory.lucb:135:5"
.Ltext_33:
    .asciz "src/std/files/directory.lucb:136:5"
.Ltext_34:
    .asciz "division by zero"
.Ltext_35:
    .asciz "src/std/files/directory.lucb:141:5"
.Ltext_36:
    .asciz "src/std/files/directory.lucb:143:9"
.Ltext_37:
    .asciz "src/std/files/directory.lucb:147:9"
.Ltext_38:
    .asciz "src/std/files/directory.lucb:148:9"
.Ltext_39:
    .asciz "src/std/files/directory.lucb:149:9"
.Ltext_40:
    .asciz "src/std/files/directory.lucb:150:9"
.Ltext_41:
    .asciz "src/std/files/directory.lucb:155:5"
.Ltext_42:
    .asciz "src/std/files/directory.lucb:156:9"
.Ltext_43:
    .asciz "src/std/files/directory.lucb:157:9"
.Ltext_44:
    .asciz "src/std/files/directory.lucb:158:13"
.Ltext_45:
    .asciz "src/std/files/directory.lucb:159:9"
.Ltext_46:
    .asciz "src/std/files/directory.lucb:161:9"
.Ltext_47:
    .asciz "src/std/files/directory.lucb:162:9"
.Ltext_48:
    .asciz "src/std/files/directory.lucb:163:9"
.Ltext_49:
    .asciz "src/std/files/directory.lucb:174:5"
.Ltext_50:
    .asciz "src/std/files/directory.lucb:175:9"
.Ltext_51:
    .asciz "src/std/files/directory.lucb:177:9"
.Ltext_52:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_53:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_54:
    .asciz "null_foreign"
.Ltext_55:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
