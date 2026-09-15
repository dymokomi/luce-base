    .text

    .p2align 4
    .globl lb_process_15command_windows_0init
    .type lb_process_15command_windows_0init, @function
lb_process_15command_windows_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_15monitor_windows
    .type lb_process_15monitor_windows, @function
lb_process_15monitor_windows:
    pushq %rbp
    movq %rsp, %rbp
    subq $480, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movq %rdx, -112(%rbp)
    movq %rcx, -128(%rbp)
    movq %r8, -144(%rbp)
    movq %r9, -160(%rbp)
    movq $0, %rdi
    movq $0, %rsi
    call CreateJobObjectW@PLT
    movq %rax, -464(%rbp)
    movq -464(%rbp), %rax
    testq %rax, %rax
    jne .L1_1
    jmp .L1_2
.L1_1:
    jmp .L1_3
.L1_2:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_0(%rip), %r12
    leaq -176(%rbp), %r13
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
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %r12d
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
.L1_3:
    leaq -96(%rbp), %rax
    movq %rax, -392(%rbp)
    movq -392(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -400(%rbp)
    movq -464(%rbp), %rdi
    movq -400(%rbp), %rsi
    call AssignProcessToJobObject@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_40
    jmp .L1_8
.L1_40:
    movl %r14d, %r15d
    jmp .L1_9
.L1_8:
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rdi
    call ResumeThread@PLT
    movl %eax, %r14d
    movl $4294967295, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L1_9:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L1_5
    jmp .L1_6
.L1_5:
    leaq -80(%rbp), %r12
    leaq lb_process_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_1(%rip), %r14
    leaq -192(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $43, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r14d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -400(%rbp), %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %ebx
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
.L1_6:
.L1_7:
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rsi
    leaq -232(%rbp), %rdi
    call lb_process_14command_reader@PLT
    leaq -232(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_12
    jmp .L1_11
.L1_12:
    movq $8, %rcx
    movq %r15, %r12
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
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -400(%rbp), %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %ebx
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
.L1_11:
    movq %r15, %r10
    movq (%r10), %r14
    leaq -144(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -272(%rbp), %rdi
    call lb_process_14command_reader@PLT
    leaq -272(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_15
    jmp .L1_14
.L1_15:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq -80(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r14, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -400(%rbp), %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %ebx
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
.L1_14:
    movq %r13, %r10
    movq (%r10), %r12
    leaq -280(%rbp), %rax
    movq %rax, -408(%rbp)
    movq $0, %rax
    movq -408(%rbp), %r10
    movq %rax, (%r10)
    leaq -288(%rbp), %rax
    movq %rax, -416(%rbp)
    movq $0, %rax
    movq -416(%rbp), %r10
    movq %rax, (%r10)
    leaq -160(%rbp), %rax
    movq %rax, -424(%rbp)
    leaq -352(%rbp), %rax
    movq %rax, -472(%rbp)
    movq -472(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -448(%rbp)
    leaq -384(%rbp), %rax
    movq %rax, -480(%rbp)
    movq -480(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -456(%rbp)
.L1_17:
.L1_18:
    movq -424(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, %r13d
    testl %r13d, %r13d
    jne .L1_20
    jmp .L1_21
.L1_20:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq -304(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $17, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %r14, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -392(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %r12d
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
.L1_21:
.L1_22:
    movq -392(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -432(%rbp)
    movq -432(%rbp), %rdi
    movl $20, %esi
    call WaitForSingleObject@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %eax
    movl %eax, -440(%rbp)
    movl -440(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L1_27
    jmp .L1_41
.L1_41:
    movl %r15d, %ebx
    jmp .L1_28
.L1_27:
    movl $258, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %ebx
.L1_28:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L1_24
    jmp .L1_25
.L1_24:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %rbx, %r10
    movl %r15d, (%r10)
    leaq .Ltext_3(%rip), %r15
    leaq -320(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $30, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %r14, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -432(%rbp), %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %r12d
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
.L1_25:
.L1_26:
    movq -424(%rbp), %r10
    movq (%r10), %rbx
    movq %r14, %rsi
    movq -408(%rbp), %rdx
    movq %rbx, %rcx
    leaq -352(%rbp), %rdi
    call lb_process_12pull_windows@PLT
    movq -448(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_31
    jmp .L1_30
.L1_31:
    leaq -80(%rbp), %rbx
    movq -472(%rbp), %r10
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
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %r14, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -432(%rbp), %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %r12d
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
.L1_30:
    movq %r12, %rsi
    movq -416(%rbp), %rdx
    movq %rbx, %rcx
    leaq -384(%rbp), %rdi
    call lb_process_12pull_windows@PLT
    movq -456(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_34
    jmp .L1_33
.L1_34:
    leaq -80(%rbp), %rbx
    movq -480(%rbp), %r10
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
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %r14, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -432(%rbp), %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %r12d
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
.L1_33:
    movl -440(%rbp), %eax
    testl %eax, %eax
    jne .L1_36
    jmp .L1_37
.L1_36:
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %r14, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
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
.L1_37:
.L1_38:
    jmp .L1_17

    .p2align 4
    .globl lb_process_12pull_windows
    .type lb_process_12pull_windows, @function
lb_process_12pull_windows:
    pushq %rbp
    movq %rsp, %rbp
    subq $4448, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movq %rdx, -112(%rbp)
    movq %rcx, -128(%rbp)
    leaq -136(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -96(%rbp), %rax
    movq %rax, -4376(%rbp)
    movq -4376(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    call GetFileSizeEx@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_33
    jmp .L2_4
.L2_33:
    movl %r13d, %r14d
    jmp .L2_5
.L2_4:
    movq %rbx, %r10
    movq (%r10), %r13
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    setl %al
    movzbl %al, %r14d
.L2_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
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
.L2_6:
    jmp .L2_3
.L2_2:
.L2_3:
    movq %rbx, %r10
    movq (%r10), %r13
    leaq -112(%rbp), %rax
    movq %rax, -4384(%rbp)
    movq -4384(%rbp), %r10
    movq (%r10), %r15
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -4392(%rbp)
    movq %r13, %rax
    movq -4392(%rbp), %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_21(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    leaq -128(%rbp), %rax
    movq %rax, -4400(%rbp)
    movq -4400(%rbp), %r10
    movq (%r10), %r14
    movq $48, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jbe .L2_8
.L2_7:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_6(%rip), %r12
    leaq -168(%rbp), %r13
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
.L2_10:
    jmp .L2_9
.L2_8:
.L2_9:
    leaq -4264(%rbp), %rax
    movq %rax, -4408(%rbp)
    movq -4408(%rbp), %rdi
    xorl %esi, %esi
    movq $4096, %rdx
    call memset@PLT
    leaq -4300(%rbp), %rax
    movq %rax, -4416(%rbp)
    leaq -4336(%rbp), %rax
    movq %rax, -4424(%rbp)
    movq -4424(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4432(%rbp)
    leaq -4368(%rbp), %rax
    movq %rax, -4448(%rbp)
    movq -4448(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -4440(%rbp)
    movq %r15, %r12
    movq %r14, %r13
.L2_11:
    movq %r12, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jge .L2_13
.L2_12:
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L2_14
    jmp .L2_15
.L2_14:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_2(%rip), %r12
    leaq -4280(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $17, %rax
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
    jmp .L2_16
.L2_15:
.L2_16:
    movq -4376(%rbp), %r10
    movq (%r10), %r12
    movq -4384(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movq $0, %rdx
    movl $0, %ecx
    call SetFilePointerEx@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L2_19
.L2_18:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_7(%rip), %r12
    leaq -4296(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $39, %rax
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
.L2_21:
    jmp .L2_20
.L2_19:
.L2_20:
    movl $0, %eax
    movq -4416(%rbp), %r10
    movl %eax, (%r10)
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq %r14, %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_21(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq $4096, %rdi
    movq %r14, %rsi
    call lb_process_13math_min_size@PLT
    movq %rax, %r14
    movq %r12, %rdi
    movq -4408(%rbp), %rsi
    movl %r14d, %edx
    movq -4416(%rbp), %rcx
    movq $0, %r8
    call ReadFile@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L2_34
    jmp .L2_25
.L2_34:
    movl %r14d, %r12d
    jmp .L2_26
.L2_25:
    movq -4416(%rbp), %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L2_26:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L2_22
    jmp .L2_23
.L2_22:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_10(%rip), %r12
    leaq -4320(%rbp), %r13
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
.L2_27:
    jmp .L2_24
.L2_23:
.L2_24:
    movq -4400(%rbp), %r10
    movq (%r10), %r14
    movq -4416(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r15d
    movq $4097, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L2_28
.L2_29:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_28:
    movq -4408(%rbp), %rax
    movq -4424(%rbp), %r10
    movq %rax, (%r10)
    movq -4432(%rbp), %r10
    movq %r15, (%r10)
    movq %r14, %rsi
    movq -4424(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -4368(%rbp), %rdi
    call lb_process_14command_append@PLT
    movq -4440(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_31
    jmp .L2_30
.L2_31:
    leaq -80(%rbp), %rbx
    movq -4448(%rbp), %r10
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
.L2_32:
.L2_30:
    movq %r13, %r10
    movq (%r10), %r12
    movq -4416(%rbp), %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movq %r12, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_21(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r13, %r10
    movq %r12, (%r10)
    movq %r13, %r12
    movq %r14, %r13
    jmp .L2_11
.L2_13:
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
    .globl lb_process_14command_reader
    .type lb_process_14command_reader, @function
lb_process_14command_reader:
    pushq %rbp
    movq %rsp, %rbp
    subq $65664, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -96(%rbp)
    leaq -65632(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $65536, %rdx
    call memset@PLT
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call _fileno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call _get_osfhandle@PLT
    movq %rax, %r12
    movq %r12, %rdi
    movq %rbx, %rsi
    movl $32768, %edx
    movl $0, %ecx
    call GetFinalPathNameByHandleW@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_14
    jmp .L3_4
.L3_14:
    movl %r13d, %r12d
    jmp .L3_5
.L3_4:
    movl $32768, %ecx
    cmpl %ecx, %r12d
    setae %al
    movzbl %al, %r13d
    movl %r13d, %r12d
.L3_5:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L3_1
    jmp .L3_2
.L3_1:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_15(%rip), %r13
    leaq -65648(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $39, %rax
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
.L3_6:
    jmp .L3_3
.L3_2:
.L3_3:
    subq $16, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rdi
    movl $2147483648, %esi
    movl $7, %edx
    movq $0, %rcx
    movl $3, %r8d
    movl $128, %r9d
    call CreateFileW@PLT
    addq $16, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L3_7
    jmp .L3_8
.L3_8:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_7:
    movq $-1, %rcx
    cmpq %rcx, %r12
    jne .L3_10
.L3_9:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_18(%rip), %r13
    leaq -65664(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $46, %rax
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
.L3_12:
    jmp .L3_11
.L3_10:
.L3_11:
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
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
.L3_13:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_process_15command_windows_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "a command job could not be created"
.Ltext_1:
    .asciz "the command could not enter its process job"
.Ltext_2:
    .asciz "command cancelled"
.Ltext_3:
    .asciz "waiting for the command failed"
.Ltext_4:
    .asciz "the command output cannot be measured"
.Ltext_5:
    .asciz "src/std/process/command/windows.lucb:40:5"
.Ltext_6:
    .asciz "the command exceeded its output limit"
.Ltext_7:
    .asciz "the command output cannot be positioned"
.Ltext_8:
    .asciz "src/std/process/command/windows.lucb:49:9"
.Ltext_9:
    .asciz "src/std/process/command/windows.lucb:50:9"
.Ltext_10:
    .asciz "the command output cannot be read"
.Ltext_11:
    .asciz "src/std/process/command/windows.lucb:52:9"
.Ltext_12:
    .asciz "index out of bounds"
.Ltext_13:
    .asciz "src/std/process/command/windows.lucb:53:9"
.Ltext_14:
    .asciz "src/std/process/command/windows.lucb:62:5"
.Ltext_15:
    .asciz "the command capture path is unavailable"
.Ltext_16:
    .asciz "src/std/process/command/windows.lucb:65:5"
.Ltext_17:
    .asciz "null_foreign"
.Ltext_18:
    .asciz "the command capture reader could not be opened"
.Ltext_19:
    .asciz "unreachable"
.Ltext_20:
    .asciz "src/std/process/command/windows.lucb:68:5"
.Ltext_21:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
