    .text

    .p2align 4
    .globl lb_clipboard_0init
    .type lb_clipboard_0init, @function
lb_clipboard_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_clipboard_failed(%rip), %rbx
    movl $208273525, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_clipboard_10text_limit(%rip), %rbx
    movq $1048576, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_clipboard_12unicode_text(%rip), %rbx
    movl $13, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_clipboard_9read_text
    .type lb_clipboard_9read_text, @function
lb_clipboard_9read_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -128(%rbp), %rdi
    call lb_clipboard_12check_access@PLT
    leaq -128(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    leaq -96(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_3:
.L1_1:
    leaq -96(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $51, %rax
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
.L1_4:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_clipboard_10write_text
    .type lb_clipboard_10write_text, @function
lb_clipboard_10write_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -128(%rbp), %rdi
    call lb_clipboard_12check_access@PLT
    leaq -128(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
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
.L2_3:
.L2_1:
    leaq -96(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    leaq lb_clipboard_10text_limit(%rip), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_19
    jmp .L2_7
.L2_19:
    movl %r13d, %r14d
    jmp .L2_8
.L2_7:
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L2_8:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_4
    jmp .L2_5
.L2_4:
    leaq -80(%rbp), %rbx
    leaq lb_clipboard_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_3(%rip), %r12
    leaq -144(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $47, %rax
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
.L2_9:
    jmp .L2_6
.L2_5:
.L2_6:
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r14
    movq $0, %rax
    movq %rax, %r15
.L2_10:
    cmpq %r14, %r15
    jae .L2_13
.L2_11:
    movq %r13, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_15
.L2_14:
    leaq -80(%rbp), %rbx
    leaq lb_clipboard_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq -160(%rbp), %r13
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
    jmp .L2_16
.L2_15:
.L2_16:
.L2_12:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L2_10
.L2_13:
    leaq -80(%rbp), %rbx
    leaq lb_window_unsupported(%rip), %r12
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
    movq $51, %rax
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
.L2_18:
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
    .globl lb_clipboard_12check_access
    .type lb_clipboard_12check_access, @function
lb_clipboard_12check_access:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    call lb_window_supported@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_2
.L3_1:
    leaq -64(%rbp), %rbx
    leaq lb_window_unsupported(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_0(%rip), %r12
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $51, %rax
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
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    call lb_thread_7is_main@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_6
.L3_5:
    leaq -64(%rbp), %rbx
    leaq lb_interop_12wrong_thread(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq -96(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_8:
    jmp .L3_7
.L3_6:
.L3_7:
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
    .globl lb_clipboard_9mac_board
    .type lb_clipboard_9mac_board, @function
lb_clipboard_9mac_board:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq .Ltext_6(%rip), %rbx
    movq %rbx, %rdi
    call objc_getClass@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L4_1
    jmp .L4_2
.L4_1:
    jmp .L4_3
.L4_2:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq -96(%rbp), %r14
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_4:
.L4_3:
    leaq .Ltext_8(%rip), %r12
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L4_5
    jmp .L4_6
.L4_6:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_5:
    movq %rbx, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L4_7
    jmp .L4_8
.L4_7:
    jmp .L4_9
.L4_8:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_11(%rip), %r13
    leaq -112(%rbp), %r14
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_10:
.L4_9:
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
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
.L4_11:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_clipboard_8mac_read
    .type lb_clipboard_8mac_read, @function
lb_clipboard_8mac_read:
    pushq %rbp
    movq %rsp, %rbp
    subq $336, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    call objc_autoreleasePoolPush@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L5_1
    jmp .L5_2
.L5_2:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_1:
    leaq -144(%rbp), %rdi
    call lb_clipboard_9mac_board@PLT
    leaq -144(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_4
    jmp .L5_3
.L5_4:
    movq $8, %rcx
    movq %r13, %r12
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
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
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
.L5_5:
.L5_3:
    movq %r13, %r10
    movq (%r10), %r12
    leaq .Ltext_13(%rip), %r14
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L5_6
    jmp .L5_7
.L5_7:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_6:
    movq NSPasteboardTypeString@GOTPCREL(%rip), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %r14, %rsi
    movq %r13, %rdx
    call objc_msgSend@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L5_8
    jmp .L5_9
.L5_8:
    jmp .L5_10
.L5_9:
    leaq .Ltext_15(%rip), %r12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -216(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -216(%rbp), %r13
    movq $48, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_12
    jmp .L5_11
.L5_12:
    movq $24, %rcx
    movq %r13, %r12
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
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
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
.L5_13:
.L5_11:
    leaq -104(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
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
.L5_14:
.L5_10:
    leaq .Ltext_16(%rip), %r12
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L5_15
    jmp .L5_16
.L5_16:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_15:
    movq %r13, %rdi
    movq %r12, %rsi
    movq $4, %rdx
    call objc_msgSend@PLT
    movq %rax, %r14
    leaq lb_clipboard_10text_limit(%rip), %r15
    movq %r15, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jbe .L5_18
.L5_17:
    leaq -104(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_clipboard_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_18(%rip), %r14
    leaq -232(%rbp), %r15
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
    movq $48, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
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
.L5_20:
    jmp .L5_19
.L5_18:
.L5_19:
    leaq .Ltext_19(%rip), %r12
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L5_21
    jmp .L5_22
.L5_22:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_21:
    movq %r13, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L5_23
    jmp .L5_24
.L5_23:
    jmp .L5_25
.L5_24:
    leaq -104(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_clipboard_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_21(%rip), %r14
    leaq -248(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $27, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $48, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
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
.L5_26:
.L5_25:
    leaq -264(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    leaq -280(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -336(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -336(%rbp), %r13
    movq $48, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_28
    jmp .L5_27
.L5_28:
    movq $24, %rcx
    movq %r13, %r12
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
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
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
.L5_29:
.L5_27:
    leaq -104(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
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
.L5_30:
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_clipboard_9mac_write
    .type lb_clipboard_9mac_write, @function
lb_clipboard_9mac_write:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    call objc_autoreleasePoolPush@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L6_1
    jmp .L6_2
.L6_2:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_1:
    leaq -136(%rbp), %rdi
    call lb_clipboard_9mac_board@PLT
    leaq -136(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L6_4
    jmp .L6_3
.L6_4:
    movq $8, %rcx
    movq %r13, %r12
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
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
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
.L6_5:
.L6_3:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -208(%rbp)
    leaq .Ltext_24(%rip), %r14
    movq %r14, %rdi
    call objc_getClass@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L6_6
    jmp .L6_7
.L6_6:
    jmp .L6_8
.L6_7:
    leaq -80(%rbp), %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_25(%rip), %r13
    leaq -152(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $34, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
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
.L6_9:
.L6_8:
    leaq .Ltext_26(%rip), %r13
    movq %r13, %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L6_10
    jmp .L6_11
.L6_11:
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_10:
    movq %r14, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L6_12
    jmp .L6_13
.L6_12:
    jmp .L6_14
.L6_13:
    leaq -80(%rbp), %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_28(%rip), %r13
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
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
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
.L6_15:
.L6_14:
    leaq .Ltext_29(%rip), %r13
    movq %r13, %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L6_16
    jmp .L6_17
.L6_17:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_16:
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r15, %rdi
    movq %r13, %rsi
    movq %r12, %rdx
    movq %r14, %rcx
    movq $4, %r8
    call objc_msgSend@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L6_18
    jmp .L6_19
.L6_18:
    jmp .L6_20
.L6_19:
    leaq -80(%rbp), %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_31(%rip), %r13
    leaq -184(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
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
.L6_21:
.L6_20:
    leaq .Ltext_32(%rip), %r13
    movq %r13, %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L6_22
    jmp .L6_23
.L6_23:
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_22:
    movq -208(%rbp), %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq %rax, %r13
    leaq .Ltext_34(%rip), %r14
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L6_27
    jmp .L6_28
.L6_28:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_27:
    movq NSPasteboardTypeString@GOTPCREL(%rip), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -208(%rbp), %rdi
    movq %r14, %rsi
    movq %r12, %rdx
    movq %r13, %rcx
    call objc_msgSend@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L6_25
.L6_24:
    leaq -80(%rbp), %r13
    leaq lb_clipboard_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_36(%rip), %r14
    leaq -200(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $32, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    leaq .Ltext_37(%rip), %r14
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L6_29
    jmp .L6_30
.L6_30:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_29:
    movq %r12, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
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
.L6_31:
    jmp .L6_26
.L6_25:
.L6_26:
    leaq .Ltext_37(%rip), %r13
    movq %r13, %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L6_32
    jmp .L6_33
.L6_33:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_32:
    movq %r12, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
    leaq -80(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movl $0, %eax
    movq %r15, %r10
    movb %al, (%r10)
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

    .p2align 4
    .globl lb_clipboard_8win_read
    .type lb_clipboard_8win_read, @function
lb_clipboard_8win_read:
    pushq %rbp
    movq %rsp, %rbp
    subq $576, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    call GetActiveWindow@PLT
    movq %rax, %rbx
    movq %rbx, %rdi
    call OpenClipboard@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L7_2
.L7_1:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_39(%rip), %r13
    leaq -120(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $21, %rax
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
.L7_2:
.L7_3:
    leaq lb_clipboard_12unicode_text(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %edi
    call IsClipboardFormatAvailable@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L7_6
.L7_5:
    leaq .Ltext_15(%rip), %rbx
    leaq -136(%rbp), %r12
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
    leaq -192(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -192(%rbp), %r12
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_9
    jmp .L7_8
.L7_9:
    movq $24, %rcx
    movq %r12, %rbx
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
    call CloseClipboard@PLT
    movl %eax, %ebx
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
.L7_8:
    leaq -104(%rbp), %rbx
    movq %r12, %r10
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
    call CloseClipboard@PLT
    movl %eax, %r12d
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
.L7_6:
.L7_7:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %edi
    call GetClipboardData@PLT
    movq %rax, -568(%rbp)
    movq -568(%rbp), %rax
    testq %rax, %rax
    jne .L7_12
    jmp .L7_13
.L7_12:
    jmp .L7_14
.L7_13:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_40(%rip), %r13
    leaq -208(%rbp), %r14
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
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    call CloseClipboard@PLT
    movl %eax, %r12d
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
.L7_14:
    movq -568(%rbp), %rdi
    call GlobalSize@PLT
    movq %rax, %rbx
.L7_17:
    movq $2, %rcx
    movq %rbx, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, -512(%rbp)
    movq -568(%rbp), %rdi
    call GlobalLock@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L7_18
    jmp .L7_19
.L7_18:
    jmp .L7_20
.L7_19:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_43(%rip), %r13
    leaq -224(%rbp), %r14
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
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    call CloseClipboard@PLT
    movl %eax, %r12d
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
.L7_20:
    leaq lb_clipboard_10text_limit(%rip), %rbx
    movq $0, %rax
    movq %rax, %r15
.L7_22:
    movq -512(%rbp), %rcx
    cmpq %rcx, %r15
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L7_25
    jmp .L7_54
.L7_54:
    movl %r12d, %r13d
    jmp .L7_26
.L7_25:
    movq %rbx, %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    setbe %al
    movzbl %al, %r13d
.L7_26:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L7_27
    jmp .L7_55
.L7_55:
    movl %r12d, %r13d
    jmp .L7_28
.L7_27:
    movq $2, %rcx
    movq %r15, %r12
    imulq %rcx, %r12
    addq %r14, %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L7_28:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L7_23
    jmp .L7_24
.L7_23:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r15
    jmp .L7_22
.L7_24:
    movq -512(%rbp), %rax
    cmpq %r15, %rax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L7_56
    jmp .L7_32
.L7_56:
    movl %ebx, %r12d
    jmp .L7_33
.L7_32:
    leaq lb_clipboard_10text_limit(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r15
    seta %al
    movzbl %al, %r12d
.L7_33:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L7_29
    jmp .L7_30
.L7_29:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_45(%rip), %r13
    leaq -240(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $51, %rax
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
    movq -568(%rbp), %rdi
    call GlobalUnlock@PLT
    movl %eax, %r12d
    call CloseClipboard@PLT
    movl %eax, %r12d
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
.L7_30:
.L7_31:
    leaq -256(%rbp), %rax
    movq %rax, -520(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -528(%rbp)
    movq -528(%rbp), %r10
    movq -520(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r13
    movq %r13, %r10
    movq -528(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -272(%rbp), %rax
    movq %rax, -576(%rbp)
    leaq -288(%rbp), %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -536(%rbp)
    movq -536(%rbp), %r10
    movq %r15, (%r10)
    leaq lb_clipboard_failed(%rip), %rax
    movq %rax, -544(%rbp)
    movq -544(%rbp), %r10
    movl (%r10), %ebx
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movl %ebx, %ecx
    leaq -336(%rbp), %rdi
    call lb_12windows_text_narrow@PLT
    leaq -336(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_36
    jmp .L7_35
.L7_36:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -520(%rbp), %r10
    movq -528(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -568(%rbp), %rdi
    call GlobalUnlock@PLT
    movl %eax, %ebx
    call CloseClipboard@PLT
    movl %eax, %ebx
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
.L7_35:
    movq %r13, %r10
    movq -576(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -576(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r14
    leaq lb_clipboard_10text_limit(%rip), %r15
    movq %r15, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jbe .L7_39
.L7_38:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq -544(%rbp), %r10
    movl (%r10), %r15d
    movq %r13, %r10
    movl %r15d, (%r10)
    leaq .Ltext_18(%rip), %r15
    leaq -352(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $28, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -576(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    leaq -368(%rbp), %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    leaq -384(%rbp), %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -528(%rbp), %r10
    movq (%r10), %r12
    movq -528(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L7_42
    jmp .L7_41
.L7_42:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %r15, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L7_41:
    movq -520(%rbp), %r10
    movq -528(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -568(%rbp), %rdi
    call GlobalUnlock@PLT
    movl %eax, %r12d
    call CloseClipboard@PLT
    movl %eax, %r12d
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
.L7_39:
.L7_40:
    movq -576(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -440(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -440(%rbp), %r13
    movq $48, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L7_45
    jmp .L7_44
.L7_45:
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq -104(%rbp), %rax
    movq %rax, -552(%rbp)
    movq -552(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -552(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -576(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    leaq -456(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    leaq -472(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq -528(%rbp), %r10
    movq (%r10), %r12
    movq -528(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L7_47
    jmp .L7_46
.L7_47:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L7_46:
    movq -520(%rbp), %r10
    movq -528(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -568(%rbp), %rdi
    call GlobalUnlock@PLT
    movl %eax, %ebx
    call CloseClipboard@PLT
    movl %eax, %ebx
    movq -552(%rbp), %rsi
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
.L7_44:
    leaq -104(%rbp), %rax
    movq %rax, -560(%rbp)
    movq %r13, %r10
    movq -560(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -560(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq -576(%rbp), %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    leaq -488(%rbp), %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    leaq -504(%rbp), %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -528(%rbp), %r10
    movq (%r10), %r14
    movq -528(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L7_50
    jmp .L7_49
.L7_50:
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
.L7_49:
    movq -520(%rbp), %r10
    movq -528(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -568(%rbp), %rdi
    call GlobalUnlock@PLT
    movl %eax, %ebx
    call CloseClipboard@PLT
    movl %eax, %ebx
    movq -560(%rbp), %rsi
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

    .p2align 4
    .globl lb_clipboard_9win_write
    .type lb_clipboard_9win_write, @function
lb_clipboard_9win_write:
    pushq %rbp
    movq %rsp, %rbp
    subq $672, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    call GetActiveWindow@PLT
    movq %rax, -648(%rbp)
    movq -648(%rbp), %rax
    testq %rax, %rax
    jne .L8_1
    jmp .L8_2
.L8_1:
    jmp .L8_3
.L8_2:
    leaq -80(%rbp), %rbx
    leaq lb_clipboard_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_48(%rip), %r12
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $55, %rax
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
.L8_4:
.L8_3:
    leaq -128(%rbp), %rax
    movq %rax, -576(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -584(%rbp)
    movq -584(%rbp), %r10
    movq -576(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -592(%rbp)
    movq -592(%rbp), %r10
    movq -584(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -168(%rbp), %rax
    movq %rax, -656(%rbp)
    leaq -96(%rbp), %rax
    movq %rax, -600(%rbp)
    movq -600(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rsi
    leaq -240(%rbp), %rdi
    call lb_strings_Builder_create@PLT
    leaq -240(%rbp), %r14
    movq $64, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L8_6
    jmp .L8_5
.L8_6:
    movq $40, %rcx
    movq %r14, %rbx
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
    movq -576(%rbp), %r10
    movq -584(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
.L8_7:
.L8_5:
    movq %r14, %r10
    movq -656(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -656(%rbp), %rsi
    movq -600(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -272(%rbp), %rdi
    call lb_strings_Builder_put@PLT
    leaq -272(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L8_9
    jmp .L8_8
.L8_9:
    leaq -80(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq -656(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -576(%rbp), %r10
    movq -584(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
.L8_10:
.L8_8:
    leaq -288(%rbp), %rax
    movq %rax, -664(%rbp)
    movq -656(%rbp), %rdi
    call lb_strings_Builder_view@PLT
    leaq -304(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -304(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq lb_clipboard_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r15d
    movq %r12, %rsi
    movl %r15d, %edx
    leaq -352(%rbp), %rdi
    call lb_12windows_text_wide@PLT
    leaq -352(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L8_12
    jmp .L8_11
.L8_12:
    movq $16, %rcx
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
    movq -656(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -576(%rbp), %r10
    movq -584(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
.L8_13:
.L8_11:
    movq %r15, %r10
    movq -664(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -664(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -608(%rbp)
    movl $2, %edi
    movq -608(%rbp), %rsi
    call GlobalAlloc@PLT
    movq %rax, -672(%rbp)
    movq -672(%rbp), %rax
    testq %rax, %rax
    jne .L8_14
    jmp .L8_15
.L8_14:
    jmp .L8_16
.L8_15:
    leaq -80(%rbp), %rax
    movq %rax, -616(%rbp)
    movq %r14, %r10
    movl (%r10), %r15d
    movq -616(%rbp), %r10
    movl %r15d, (%r10)
    leaq .Ltext_50(%rip), %r15
    leaq -368(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $36, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq -616(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -616(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -384(%rbp), %r13
    movq -664(%rbp), %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq -608(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq -584(%rbp), %r10
    movq (%r10), %r15
    movq -584(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L8_18
    jmp .L8_17
.L8_18:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r15, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L8_17:
    movq -656(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -576(%rbp), %r10
    movq -584(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -616(%rbp), %rsi
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
.L8_19:
.L8_16:
    leaq -385(%rbp), %rax
    movq %rax, -624(%rbp)
    movl $0, %eax
    movq -624(%rbp), %r10
    movb %al, (%r10)
    movq -672(%rbp), %rdi
    call GlobalLock@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L8_20
    jmp .L8_21
.L8_20:
    jmp .L8_22
.L8_21:
    leaq -80(%rbp), %r13
    movq %r14, %r10
    movl (%r10), %r15d
    movq %r13, %r10
    movl %r15d, (%r10)
    leaq .Ltext_51(%rip), %r15
    leaq -408(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $32, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -672(%rbp), %rax
    leaq -552(%rbp), %r10
    movq %rax, (%r10)
    movq -624(%rbp), %rax
    leaq -568(%rbp), %r10
    movq %rax, (%r10)
    movq -624(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L8_43
.L8_42:
    movq -672(%rbp), %rdi
    call GlobalFree@PLT
    movq %rax, %rbx
    jmp .L8_44
.L8_43:
.L8_44:
.L8_45:
    leaq -424(%rbp), %rbx
    movq -664(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -608(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -584(%rbp), %r10
    movq (%r10), %r12
    movq -584(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L8_24
    jmp .L8_23
.L8_24:
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
.L8_23:
    movq -656(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -576(%rbp), %r10
    movq -584(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
.L8_25:
.L8_22:
    leaq -440(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -632(%rbp)
    movq -608(%rbp), %rax
    movq -632(%rbp), %r10
    movq %rax, (%r10)
    movq -664(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -640(%rbp)
    leaq -456(%rbp), %rbx
    movq -640(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq -608(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -608(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -672(%rbp), %rdi
    call GlobalUnlock@PLT
    movl %eax, %ebx
    movq -648(%rbp), %rdi
    call OpenClipboard@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L8_27
.L8_26:
    leaq -80(%rbp), %rbx
    movq %r14, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_39(%rip), %r12
    leaq -472(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $21, %rax
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
    movq -672(%rbp), %rax
    leaq -552(%rbp), %r10
    movq %rax, (%r10)
    movq -624(%rbp), %rax
    leaq -568(%rbp), %r10
    movq %rax, (%r10)
    movq -624(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L8_47
.L8_46:
    movq -672(%rbp), %rdi
    call GlobalFree@PLT
    movq %rax, %r12
    jmp .L8_48
.L8_47:
.L8_48:
.L8_49:
    leaq -488(%rbp), %r12
    movq -640(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -608(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -584(%rbp), %r10
    movq (%r10), %r13
    movq -584(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L8_30
    jmp .L8_29
.L8_30:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L8_29:
    movq -656(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -576(%rbp), %r10
    movq -584(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
.L8_31:
    jmp .L8_28
.L8_27:
.L8_28:
    call EmptyClipboard@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L8_58
    jmp .L8_35
.L8_58:
    movl %ebx, %r12d
    jmp .L8_36
.L8_35:
    leaq lb_clipboard_12unicode_text(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %edi
    movq -672(%rbp), %rsi
    call SetClipboardData@PLT
    movq %rax, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
.L8_36:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L8_32
    jmp .L8_33
.L8_32:
    leaq -80(%rbp), %rbx
    movq %r14, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_36(%rip), %r12
    leaq -504(%rbp), %r13
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
    call CloseClipboard@PLT
    movl %eax, %r12d
    movq -672(%rbp), %rax
    leaq -552(%rbp), %r10
    movq %rax, (%r10)
    movq -624(%rbp), %rax
    leaq -568(%rbp), %r10
    movq %rax, (%r10)
    movq -624(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L8_51
.L8_50:
    movq -672(%rbp), %rdi
    call GlobalFree@PLT
    movq %rax, %r12
    jmp .L8_52
.L8_51:
.L8_52:
.L8_53:
    leaq -520(%rbp), %r12
    movq -640(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -608(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -584(%rbp), %r10
    movq (%r10), %r13
    movq -584(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L8_38
    jmp .L8_37
.L8_38:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L8_37:
    movq -656(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -576(%rbp), %r10
    movq -584(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
.L8_39:
    jmp .L8_34
.L8_33:
.L8_34:
    movl $1, %eax
    movq -624(%rbp), %r10
    movb %al, (%r10)
    call CloseClipboard@PLT
    movl %eax, %ebx
    movq -672(%rbp), %rax
    leaq -552(%rbp), %r10
    movq %rax, (%r10)
    movq -624(%rbp), %rax
    leaq -568(%rbp), %r10
    movq %rax, (%r10)
    movq -624(%rbp), %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L8_55
.L8_54:
    movq -672(%rbp), %rdi
    call GlobalFree@PLT
    movq %rax, %rbx
    jmp .L8_56
.L8_55:
.L8_56:
.L8_57:
    leaq -536(%rbp), %rbx
    movq -640(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -608(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -584(%rbp), %r10
    movq (%r10), %r12
    movq -584(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L8_41
    jmp .L8_40
.L8_41:
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
.L8_40:
    movq -656(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -576(%rbp), %r10
    movq -584(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
    jne .L9_11
    jmp .L9_4
.L9_11:
    movl %r13d, %r14d
    jmp .L9_5
.L9_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L9_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L9_1
    jmp .L9_2
.L9_1:
    leaq .Ltext_57(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_58(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L9_3
.L9_2:
.L9_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L9_7
.L9_6:
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
    jne .L9_9
    jmp .L9_10
.L9_10:
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_9:
    jmp .L9_8
.L9_7:
.L9_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_clipboard_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "the desktop clipboard is unavailable on this target"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/clipboard/module.lucb:22:5"
.Ltext_3:
    .asciz "clipboard text must be valid UTF-8 within 1 MiB"
.Ltext_4:
    .asciz "clipboard text cannot contain NUL"
.Ltext_5:
    .asciz "clipboard access requires the UI thread"
.Ltext_6:
    .asciz "NSPasteboard"
.Ltext_7:
    .asciz "AppKit pasteboard is unavailable"
.Ltext_8:
    .asciz "generalPasteboard"
.Ltext_9:
    .asciz "null_foreign"
.Ltext_10:
    .asciz "src/std/clipboard/macos/native.lucb:18:5"
.Ltext_11:
    .asciz "the clipboard is unavailable"
.Ltext_12:
    .asciz "src/std/clipboard/macos/native.lucb:21:5"
.Ltext_13:
    .asciz "stringForType:"
.Ltext_14:
    .asciz "src/std/clipboard/macos/native.lucb:24:5"
.Ltext_15:
    .asciz ""
.Ltext_16:
    .asciz "lengthOfBytesUsingEncoding:"
.Ltext_17:
    .asciz "src/std/clipboard/macos/native.lucb:25:5"
.Ltext_18:
    .asciz "clipboard text exceeds 1 MiB"
.Ltext_19:
    .asciz "UTF8String"
.Ltext_20:
    .asciz "src/std/clipboard/macos/native.lucb:28:5"
.Ltext_21:
    .asciz "clipboard text is not UTF-8"
.Ltext_22:
    .asciz "src/std/clipboard/macos/native.lucb:29:5"
.Ltext_23:
    .asciz "src/std/clipboard/macos/native.lucb:32:5"
.Ltext_24:
    .asciz "NSString"
.Ltext_25:
    .asciz "Foundation strings are unavailable"
.Ltext_26:
    .asciz "alloc"
.Ltext_27:
    .asciz "src/std/clipboard/macos/native.lucb:36:5"
.Ltext_28:
    .asciz "could not allocate clipboard text"
.Ltext_29:
    .asciz "initWithBytes:length:encoding:"
.Ltext_30:
    .asciz "src/std/clipboard/macos/native.lucb:37:5"
.Ltext_31:
    .asciz "could not create clipboard text"
.Ltext_32:
    .asciz "clearContents"
.Ltext_33:
    .asciz "src/std/clipboard/macos/native.lucb:39:5"
.Ltext_34:
    .asciz "setString:forType:"
.Ltext_35:
    .asciz "src/std/clipboard/macos/native.lucb:40:5"
.Ltext_36:
    .asciz "could not publish clipboard text"
.Ltext_37:
    .asciz "release"
.Ltext_38:
    .asciz "src/std/clipboard/macos/native.lucb:41:9"
.Ltext_39:
    .asciz "the clipboard is busy"
.Ltext_40:
    .asciz "clipboard text is unavailable"
.Ltext_41:
    .asciz "division by zero"
.Ltext_42:
    .asciz "src/std/clipboard/windows/native.lucb:24:5"
.Ltext_43:
    .asciz "clipboard text cannot be read"
.Ltext_44:
    .asciz "src/std/clipboard/windows/native.lucb:30:9"
.Ltext_45:
    .asciz "clipboard text is unterminated or exceeds the limit"
.Ltext_46:
    .asciz "src/std/clipboard/windows/native.lucb:37:13"
.Ltext_47:
    .asciz "src/std/clipboard/windows/native.lucb:38:9"
.Ltext_48:
    .asciz "clipboard writing requires an active application window"
.Ltext_49:
    .asciz "src/std/clipboard/windows/native.lucb:48:9"
.Ltext_50:
    .asciz "could not allocate clipboard storage"
.Ltext_51:
    .asciz "could not lock clipboard storage"
.Ltext_52:
    .asciz "src/std/clipboard/windows/native.lucb:51:9"
.Ltext_53:
    .asciz "src/std/clipboard/windows/native.lucb:52:9"
.Ltext_54:
    .asciz "src/std/clipboard/windows/native.lucb:55:13"
.Ltext_55:
    .asciz "src/std/clipboard/windows/native.lucb:58:13"
.Ltext_56:
    .asciz "src/std/clipboard/windows/native.lucb:59:9"
.Ltext_57:
    .asciz "index out of bounds"
.Ltext_58:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_59:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_60:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_clipboard_failed
    .type lb_clipboard_failed, @object
    .p2align 2
lb_clipboard_failed:
    .zero 4

    .bss
    .globl lb_clipboard_10text_limit
    .type lb_clipboard_10text_limit, @object
    .p2align 3
lb_clipboard_10text_limit:
    .zero 8

    .bss
    .globl lb_clipboard_12unicode_text
    .type lb_clipboard_12unicode_text, @object
    .p2align 2
lb_clipboard_12unicode_text:
    .zero 4

    .section .note.GNU-stack,"",@progbits
