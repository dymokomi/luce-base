    .text

    .p2align 4
    .globl lb_process_13command_posix_0init
    .type lb_process_13command_posix_0init, @function
lb_process_13command_posix_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_15capture_command
    .type lb_process_15capture_command, @function
lb_process_15capture_command:
    pushq %rbp
    movq %rsp, %rbp
    subq $496, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -104(%rbp)
    movq %rdx, -120(%rbp)
    movq %rcx, -136(%rbp)
    movq %r8, -152(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl %r12d, %edi
    movl $4, %esi
    movl $2048, %edx
    movl $0, %eax
    call fcntl@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    setl %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_65
    jmp .L1_4
.L1_65:
    movl %r12d, %r13d
    jmp .L1_5
.L1_4:
    leaq -136(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl %r12d, %edi
    movl $4, %esi
    movl $2048, %edx
    movl $0, %eax
    call fcntl@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    setl %al
    movzbl %al, %r13d
.L1_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_1
    jmp .L1_2
.L1_1:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_1(%rip), %r13
    leaq -168(%rbp), %r14
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
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -336(%rbp), %r10
    movl %r12d, (%r10)
    movl $0, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movl %r13d, %edi
    movl $9, %esi
    call kill@PLT
    movl %eax, %r13d
    movl %r12d, %edi
    call lb_process_terminate@PLT
.L1_59:
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
.L1_2:
.L1_3:
    leaq -152(%rbp), %rax
    movq %rax, -352(%rbp)
    leaq -200(%rbp), %r13
    leaq -208(%rbp), %r15
    movq $4, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -376(%rbp)
    movq $6, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -384(%rbp)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -472(%rbp)
    leaq -216(%rbp), %rax
    movq %rax, -480(%rbp)
    leaq -136(%rbp), %rax
    movq %rax, -392(%rbp)
    movq -480(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -408(%rbp)
    movq -480(%rbp), %rax
    movq $6, %rcx
    addq %rcx, %rax
    movq %rax, -416(%rbp)
    movq $6, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -424(%rbp)
    leaq -264(%rbp), %rax
    movq %rax, -488(%rbp)
    movq -488(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -432(%rbp)
    movq -472(%rbp), %rax
    movq $6, %rcx
    addq %rcx, %rax
    movq %rax, -440(%rbp)
    leaq -296(%rbp), %rax
    movq %rax, -496(%rbp)
    movq -496(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -448(%rbp)
    leaq -300(%rbp), %rax
    movq %rax, -456(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -464(%rbp)
.L1_7:
.L1_8:
    movq -352(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movzbl (%r10), %eax
    movl %eax, %ebx
    testl %ebx, %ebx
    jne .L1_10
    jmp .L1_11
.L1_10:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq -184(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $17, %rax
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
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -336(%rbp), %r10
    movl %r12d, (%r10)
    movl $0, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movl %r13d, %edi
    movl $9, %esi
    call kill@PLT
    movl %eax, %r13d
    movl %r12d, %edi
    call lb_process_terminate@PLT
.L1_60:
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
.L1_11:
.L1_12:
    movq %r15, %r11
    movq $0, 0(%r11)
    movq -344(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_14
    jmp .L1_15
.L1_14:
    movq -360(%rbp), %r10
    movslq (%r10), %r12
    jmp .L1_16
.L1_15:
    movl $4294967295, %eax
    movl %eax, %r12d
.L1_16:
    movq %r15, %r10
    movl %r12d, (%r10)
    movl $1, %eax
    movq -376(%rbp), %r10
    movw %ax, (%r10)
    movl $0, %eax
    movq -384(%rbp), %r10
    movw %ax, (%r10)
    movq %r15, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -480(%rbp), %r11
    movq $0, 0(%r11)
    movq -392(%rbp), %r10
    movq (%r10), %rbx
    movq $32, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -400(%rbp)
    movq -400(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_17
    jmp .L1_18
.L1_17:
    movq %rbx, %r10
    movslq (%r10), %r12
    jmp .L1_19
.L1_18:
    movl $4294967295, %eax
    movl %eax, %r12d
.L1_19:
    movq -480(%rbp), %r10
    movl %r12d, (%r10)
    movl $1, %eax
    movq -408(%rbp), %r10
    movw %ax, (%r10)
    movl $0, %eax
    movq -416(%rbp), %r10
    movw %ax, (%r10)
    movq -480(%rbp), %r10
    movq -472(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r13, %rdi
    movl $2, %esi
    movl $20, %edx
    call poll@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jge .L1_21
.L1_20:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movl $4, %ecx
    cmpl %ecx, %ebx
    jne .L1_24
.L1_23:
    jmp .L1_7
.L1_24:
.L1_25:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_1(%rip), %r13
    leaq -232(%rbp), %r14
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
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -336(%rbp), %r10
    movl %r12d, (%r10)
    movl $0, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movl %r13d, %edi
    movl $9, %esi
    call kill@PLT
    movl %eax, %r13d
    movl %r12d, %edi
    call lb_process_terminate@PLT
.L1_61:
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
.L1_21:
.L1_22:
    movq -368(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_31
    jmp .L1_66
.L1_66:
    movl %r12d, %r14d
    jmp .L1_32
.L1_31:
    movq -424(%rbp), %r10
    movswl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L1_32:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L1_28
    jmp .L1_29
.L1_28:
    movq -352(%rbp), %r10
    movq (%r10), %r12
    movq -360(%rbp), %rsi
    movq %r12, %rdx
    leaq -264(%rbp), %rdi
    call lb_process_12pull_command@PLT
    movq -432(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_34
    jmp .L1_33
.L1_34:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -488(%rbp), %r10
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
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -336(%rbp), %r10
    movl %r12d, (%r10)
    movl $0, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movl %r13d, %edi
    movl $9, %esi
    call kill@PLT
    movl %eax, %r13d
    movl %r12d, %edi
    call lb_process_terminate@PLT
.L1_62:
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
    jmp .L1_30
.L1_29:
.L1_30:
    movq -400(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_39
    jmp .L1_67
.L1_67:
    movl %r12d, %r14d
    jmp .L1_40
.L1_39:
    movq -440(%rbp), %r10
    movswl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L1_40:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L1_36
    jmp .L1_37
.L1_36:
    movq -352(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rsi
    movq %r12, %rdx
    leaq -296(%rbp), %rdi
    call lb_process_12pull_command@PLT
    movq -448(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_42
    jmp .L1_41
.L1_42:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -496(%rbp), %r10
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
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -336(%rbp), %r10
    movl %r12d, (%r10)
    movl $0, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movl %r13d, %edi
    movl $9, %esi
    call kill@PLT
    movl %eax, %r13d
    movl %r12d, %edi
    call lb_process_terminate@PLT
.L1_63:
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
.L1_41:
    jmp .L1_38
.L1_37:
.L1_38:
    movq -368(%rbp), %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_47
    jmp .L1_68
.L1_68:
    movl %ebx, %r12d
    jmp .L1_48
.L1_47:
    movq -400(%rbp), %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L1_48:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_44
    jmp .L1_45
.L1_44:
    movl $0, %eax
    movq -456(%rbp), %r10
    movl %eax, (%r10)
    movq -464(%rbp), %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    movq -456(%rbp), %rsi
    movl $1, %edx
    call waitpid@PLT
    movl %eax, %r12d
    cmpl %r12d, %ebx
    jne .L1_50
.L1_49:
    movq -456(%rbp), %r10
    movslq (%r10), %rbx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
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
.L1_50:
.L1_51:
    movl $0, %ecx
    cmpl %ecx, %r12d
    setl %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_56
    jmp .L1_69
.L1_69:
    movl %r14d, %r12d
    jmp .L1_57
.L1_56:
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl $4, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L1_57:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L1_53
    jmp .L1_54
.L1_53:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_process_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_7(%rip), %r14
    leaq -320(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $33, %rax
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
    leaq -336(%rbp), %r10
    movl %ebx, (%r10)
    movl $0, %eax
    movl %ebx, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movl %r13d, %edi
    movl $9, %esi
    call kill@PLT
    movl %eax, %r13d
    movl %ebx, %edi
    call lb_process_terminate@PLT
.L1_64:
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
.L1_54:
.L1_55:
    jmp .L1_46
.L1_45:
.L1_46:
    jmp .L1_7

    .p2align 4
    .globl lb_process_12pull_command
    .type lb_process_12pull_command, @function
lb_process_12pull_command:
    pushq %rbp
    movq %rsp, %rbp
    subq $4272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movq %rdx, -112(%rbp)
    leaq -4208(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $4096, %rdx
    call memset@PLT
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %r10
    movslq (%r10), %r13
    movl %r13d, %edi
    movq %rbx, %rsi
    movq $4096, %rdx
    call read@PLT
    movq %rax, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L2_2
.L2_1:
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_3
.L2_2:
    movq $0, %rcx
    cmpq %rcx, %r13
    jle .L2_5
.L2_4:
    leaq -112(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $4097, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L2_7
.L2_8:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_7:
    leaq -4224(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq %r12, %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -4256(%rbp), %rdi
    call lb_process_14command_append@PLT
    leaq -4256(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_10
    jmp .L2_9
.L2_10:
    leaq -80(%rbp), %rbx
    movq %r15, %r10
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
.L2_11:
.L2_9:
    jmp .L2_6
.L2_5:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movl $4, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L2_15
    jmp .L2_18
.L2_18:
    movl %ebx, %r12d
    jmp .L2_16
.L2_15:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movl $11, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L2_16:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L2_12
    jmp .L2_13
.L2_12:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_1(%rip), %r12
    leaq -4272(%rbp), %r13
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
.L2_17:
    jmp .L2_14
.L2_13:
.L2_14:
.L2_6:
.L2_3:
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

    .section .init_array,"aw"
    .p2align 3
    .quad lb_process_13command_posix_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/process/command/posix.lucb:7:5"
.Ltext_1:
    .asciz "the command output cannot be read"
.Ltext_2:
    .asciz "command cancelled"
.Ltext_3:
    .asciz "src/std/process/command/posix.lucb:18:9"
.Ltext_4:
    .asciz "src/std/process/command/posix.lucb:19:9"
.Ltext_5:
    .asciz "src/std/process/command/posix.lucb:24:9"
.Ltext_6:
    .asciz "src/std/process/command/posix.lucb:26:9"
.Ltext_7:
    .asciz "the command status cannot be read"
.Ltext_8:
    .asciz "unreachable"
.Ltext_9:
    .asciz "src/std/process/command/posix.lucb:36:17"
.Ltext_10:
    .asciz "src/std/process/command/posix.lucb:40:5"
.Ltext_11:
    .asciz "src/std/process/command/posix.lucb:44:9"
.Ltext_12:
    .asciz "index out of bounds"
.Ltext_13:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
