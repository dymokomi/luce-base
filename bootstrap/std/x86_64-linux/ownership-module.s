    .text

    .p2align 4
    .globl lb_ownership_module_0init
    .type lb_ownership_module_0init, @function
lb_ownership_module_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_ownership_black(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_gray(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_white(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_purple(%rip), %rbx
    movl $3, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_10color_mask(%rip), %rbx
    movl $3, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_buffered(%rip), %rbx
    movl $4, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_dead(%rip), %rbx
    movl $8, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_collecting(%rip), %rbx
    movl $16, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_immortal(%rip), %rbx
    movl $32, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_ownership_live@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_ownership_12next_context(%rip), %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_ownership_15next_generation(%rip), %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %fs:0, %rax
    addq lb_ownership_14thread_context@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %fs:0, %rax
    addq lb_ownership_13runtime_depth@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_10live_count
    .type lb_ownership_10live_count, @function
lb_ownership_10live_count:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %fs:0, %rax
    addq lb_ownership_live@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_1:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_12restore_site
    .type lb_ownership_12restore_site, @function
lb_ownership_12restore_site:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq -32(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movq %fs:0, %rax
    addq lb_ownership_site@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_stop
    .type lb_ownership_stop, @function
lb_ownership_stop:
    pushq %rbp
    movq %rsp, %rbp
    subq $512, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -72(%rbp), %rbx
    call lb_io_stderr@PLT
    leaq -88(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -104(%rbp), %r12
    leaq .Ltext_2(%rip), %r13
    leaq -120(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $6, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r13, %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -184(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -184(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_4
    jmp .L3_3
.L3_4:
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -144(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_1
.L3_3:
    jmp .L3_2
.L3_1:
    jmp .L3_2
.L3_5:
.L3_2:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %fs:0, %rax
    addq lb_ownership_site@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    movq %r13, %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -248(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    leaq -248(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_9
    jmp .L3_8
.L3_9:
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -208(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_6
.L3_8:
    jmp .L3_7
.L3_6:
    jmp .L3_7
.L3_10:
.L3_7:
    leaq -264(%rbp), %r12
    leaq .Ltext_3(%rip), %r14
    leaq -280(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $2, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r13, %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -344(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -344(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_14
    jmp .L3_13
.L3_14:
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -304(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_11
.L3_13:
    jmp .L3_12
.L3_11:
    jmp .L3_12
.L3_15:
.L3_12:
    movq %rbx, %r10
    movq (%r10), %r12
    leaq -56(%rbp), %r14
    movq %r13, %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -408(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    leaq -408(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_19
    jmp .L3_18
.L3_19:
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -368(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_16
.L3_18:
    jmp .L3_17
.L3_16:
    jmp .L3_17
.L3_20:
.L3_17:
    leaq -424(%rbp), %r12
    leaq .Ltext_4(%rip), %r14
    leaq -440(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r13, %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -504(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -504(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_24
    jmp .L3_23
.L3_24:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -464(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_21
.L3_23:
    jmp .L3_22
.L3_21:
    jmp .L3_22
.L3_25:
.L3_22:
    movl $1, %edi
    call lb_core_exit@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_8color_of
    .type lb_ownership_8color_of, @function
lb_ownership_8color_of:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $3, %ecx
    andl %ecx, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_1:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_9set_color
    .type lb_ownership_9set_color, @function
lb_ownership_9set_color:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movl %esi, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $252, %ecx
    andl %ecx, %r12d
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    orl %r13d, %r12d
    movq %rbx, %r10
    movb %r12b, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_has
    .type lb_ownership_has, @function
lb_ownership_has:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    movl %esi, -48(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    leaq -48(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    andl %r12d, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_1:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_10context_id
    .type lb_ownership_10context_id, @function
lb_ownership_10context_id:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %fs:0, %rax
    addq lb_ownership_14thread_context@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L7_2
.L7_1:
    leaq lb_ownership_12next_context(%rip), %r12
    movq $1, %rcx
    movq %r12, %r10
    lock xaddq %rcx, (%r10)
    movq %rcx, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L7_5
.L7_4:
    leaq .Ltext_7(%rip), %r12
    leaq -40(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $34, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_ownership_stop@PLT
    jmp .L7_6
.L7_5:
.L7_6:
    jmp .L7_3
.L7_2:
.L7_3:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_7:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_enter
    .type lb_ownership_enter, @function
lb_ownership_enter:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    call lb_ownership_10context_id@PLT
    movq %rax, %rbx
    movq %fs:0, %rax
    addq lb_ownership_13runtime_depth@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_15require_context
    .type lb_ownership_15require_context, @function
lb_ownership_15require_context:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %fs:0, %rax
    addq lb_ownership_13runtime_depth@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L9_2
.L9_1:
    leaq .Ltext_10(%rip), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $55, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_ownership_stop@PLT
    jmp .L9_3
.L9_2:
.L9_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_12check_thread
    .type lb_ownership_12check_thread, @function
lb_ownership_12check_thread:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -72(%rbp), %r10
    movq %rbx, (%r10)
    movl $32, %eax
    leaq -88(%rbp), %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq -96(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L10_7
.L10_6:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_7:
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L10_4
    jmp .L10_8
.L10_8:
    movl %r13d, %ebx
    jmp .L10_5
.L10_4:
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    call lb_ownership_10context_id@PLT
    movq %rax, %r13
    cmpq %r13, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L10_5:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L10_1
    jmp .L10_2
.L10_1:
    leaq .Ltext_11(%rip), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $43, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_ownership_stop@PLT
    jmp .L10_3
.L10_2:
.L10_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_11check_alive
    .type lb_ownership_11check_alive, @function
lb_ownership_11check_alive:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    leaq -72(%rbp), %r10
    movq %rbx, (%r10)
    movl $8, %eax
    leaq -88(%rbp), %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq -96(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L11_7
.L11_6:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_7:
    testl %r12d, %r12d
    jne .L11_8
    jmp .L11_4
.L11_8:
    movl %r12d, %ebx
    jmp .L11_5
.L11_4:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L11_5:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L11_1
    jmp .L11_2
.L11_1:
    leaq .Ltext_12(%rip), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $36, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_ownership_stop@PLT
    jmp .L11_3
.L11_2:
.L11_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_reserve
    .type lb_ownership_reserve, @function
lb_ownership_reserve:
    pushq %rbp
    movq %rsp, %rbp
    subq $320, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    movq %rdx, -120(%rbp)
    leaq -136(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $64, %rcx
    cmpq %rcx, %rbx
    jae .L12_2
.L12_1:
    leaq .Ltext_13(%rip), %r12
    leaq -152(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_ownership_stop@PLT
    jmp .L12_3
.L12_2:
.L12_3:
    leaq -168(%rbp), %rax
    movq %rax, -304(%rbp)
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L12_4
    jmp .L12_5
.L12_4:
    leaq -184(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L12_6
.L12_5:
    leaq lb_memory_heap(%rip), %r12
    leaq -184(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L12_6:
    leaq -184(%rbp), %r12
    movq %r12, %r10
    movq -304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -200(%rbp), %rax
    movq %rax, -312(%rbp)
    leaq -248(%rbp), %rax
    movq %rax, -320(%rbp)
    movq -304(%rbp), %r10
    movq (%r10), %r12
    movq -304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L12_7
    jmp .L12_8
.L12_8:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_7:
    movq %r14, %r10
    movq (%r10), %r13
    movq %r12, %rsi
    movq %rbx, %rdx
    movq $16, %rcx
    leaq -272(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -272(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, -296(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -296(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L12_9
    jmp .L12_10
.L12_9:
    movq -320(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_16(%rip), %r12
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
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L12_11
.L12_10:
    movq %r15, %r10
    movq -320(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L12_11:
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_13
    jmp .L12_12
.L12_13:
    movq -320(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
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
.L12_14:
.L12_12:
    movq -320(%rbp), %r10
    movq -312(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -312(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl $0, %edx
    call lb_memory_set@PLT
    movq -312(%rbp), %r10
    movq (%r10), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_ownership_10context_id@PLT
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_ownership_15next_generation(%rip), %r13
    movq $1, %rcx
    movq %r13, %r10
    lock xaddq %rcx, (%r10)
    movq %rcx, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L12_16
.L12_15:
    leaq .Ltext_17(%rip), %r12
    leaq -288(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $36, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_ownership_stop@PLT
    jmp .L12_17
.L12_16:
.L12_17:
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -304(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %fs:0, %rax
    addq lb_ownership_live@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_18:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_allocate
    .type lb_ownership_allocate, @function
lb_ownership_allocate:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call lb_ownership_14allocate_sized@PLT
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_1:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_14allocate_sized
    .type lb_ownership_14allocate_sized, @function
lb_ownership_14allocate_sized:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq %r12, %rdx
    movq %r13, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    leaq -136(%rbp), %rdi
    call lb_ownership_reserve@PLT
    leaq -136(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L14_4
    jmp .L14_3
.L14_4:
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
    jmp .L14_1
.L14_3:
    movq %r12, %r10
    movq (%r10), %rbx
    jmp .L14_2
.L14_1:
    leaq .Ltext_21(%rip), %rbx
    leaq -152(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $13, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_22(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    movq $0, %rax
    movq %rax, %rbx
.L14_2:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_5:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_retain
    .type lb_ownership_retain, @function
lb_ownership_retain:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    leaq -64(%rbp), %r10
    movq %rbx, (%r10)
    movl $32, %eax
    leaq -80(%rbp), %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq -80(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    andl %r14d, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq -88(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L15_7
.L15_6:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L15_7:
    testl %r13d, %r13d
    jne .L15_1
    jmp .L15_2
.L15_1:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L15_4:
    jmp .L15_3
.L15_2:
.L15_3:
    movq %rbx, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq -104(%rbp), %r10
    movq %rbx, (%r10)
    movl $0, %eax
    leaq -120(%rbp), %r10
    movl %eax, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl $252, %ecx
    andl %ecx, %r13d
    leaq -120(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
.L15_8:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L15_5:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_release
    .type lb_ownership_release, @function
lb_ownership_release:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    leaq -72(%rbp), %r10
    movq %rbx, (%r10)
    movl $32, %eax
    leaq -88(%rbp), %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq -88(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r15d
    andl %r15d, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq -96(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L16_16
.L16_15:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L16_16:
    testl %r13d, %r13d
    jne .L16_1
    jmp .L16_2
.L16_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_4:
    jmp .L16_3
.L16_2:
.L16_3:
    leaq -72(%rbp), %r10
    movq %rbx, (%r10)
    movl $16, %eax
    leaq -88(%rbp), %r10
    movl %eax, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    movq %r14, %r10
    movzbl (%r10), %r15d
    andl %r15d, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq -104(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L16_18
.L16_17:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L16_18:
    testl %r13d, %r13d
    jne .L16_5
    jmp .L16_6
.L16_5:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jbe .L16_9
.L16_8:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    jmp .L16_10
.L16_9:
.L16_10:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_11:
    jmp .L16_7
.L16_6:
.L16_7:
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    movq %rbx, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    movq %rbx, %r10
    movl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L16_13
.L16_12:
    leaq -120(%rbp), %r10
    movq %rbx, (%r10)
    leaq -152(%rbp), %r10
    movq %rbx, (%r10)
    movl $0, %eax
    leaq -168(%rbp), %r10
    movl %eax, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl $252, %ecx
    andl %ecx, %r13d
    leaq -168(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
.L16_29:
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $24, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L16_22
    jmp .L16_20
.L16_22:
.L16_19:
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq %rbx, %rdi
    movq %r14, %r11
    call *%r11
    movq %rbx, %r10
    movl (%r10), %r15d
    movl $1, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L16_24
.L16_23:
    leaq .Ltext_27(%rip), %r14
    leaq -136(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $25, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq .Ltext_28(%rip), %r14
    movq %r14, %rdi
    movq %r15, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L16_25
.L16_24:
.L16_25:
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    jmp .L16_21
.L16_20:
.L16_21:
    movq %r13, %r10
    movq (%r10), %r14
    movq $32, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rdi
    movq %r14, %r11
    call *%r11
    movq %fs:0, %rax
    addq lb_ownership_live@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r14, %r10
    movq %r15, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r14d
    movl $8, %ecx
    orl %ecx, %r14d
    movq %r12, %r10
    movb %r14b, (%r10)
    leaq -184(%rbp), %r10
    movq %rbx, (%r10)
    movl $4, %eax
    leaq -200(%rbp), %r10
    movl %eax, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r14d
    leaq -200(%rbp), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    andl %r15d, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movzbl %r14b, %r14d
    leaq -208(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L16_31
.L16_30:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L16_31:
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L16_27
.L16_26:
    movq %rbx, %rdi
    call lb_ownership_13release_shell@PLT
    jmp .L16_28
.L16_27:
.L16_28:
.L16_32:
    jmp .L16_14
.L16_13:
    movq %rbx, %rdi
    call lb_ownership_13possible_root@PLT
.L16_14:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_13release_shell
    .type lb_ownership_13release_shell, @function
lb_ownership_13release_shell:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L17_4
    jmp .L17_17
.L17_17:
    movl %r12d, %r13d
    jmp .L17_5
.L17_4:
    leaq -168(%rbp), %r10
    movq %rbx, (%r10)
    movl $8, %eax
    leaq -184(%rbp), %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -184(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r13d
    leaq -192(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L17_14
.L17_13:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L17_14:
.L17_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L17_6
    jmp .L17_18
.L17_18:
    movl %r12d, %r13d
    jmp .L17_7
.L17_6:
    leaq -168(%rbp), %r10
    movq %rbx, (%r10)
    movl $4, %eax
    leaq -184(%rbp), %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -184(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq -200(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L17_16
.L17_15:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L17_16:
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L17_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L17_1
    jmp .L17_2
.L17_1:
    leaq -72(%rbp), %r13
    movq $48, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    testq %rax, %rax
    jne .L17_8
    jmp .L17_9
.L17_8:
    leaq -88(%rbp), %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L17_10
.L17_9:
    leaq .Ltext_30(%rip), %rbx
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $33, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_ownership_stop@PLT
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L17_10:
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -120(%rbp), %rax
    movq %rax, -216(%rbp)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -136(%rbp), %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %r10
    movq %rbx, (%r10)
    movq -224(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -232(%rbp)
    movq -232(%rbp), %r10
    movq %r12, (%r10)
    movq -224(%rbp), %r10
    movq -216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -152(%rbp), %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %r10
    movq %rbx, (%r10)
    movq -240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L17_12
    jmp .L17_11
.L17_12:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -208(%rbp), %rdi
    movq -240(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L17_11:
    jmp .L17_3
.L17_2:
.L17_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_19discard_unpublished
    .type lb_ownership_19discard_unpublished, @function
lb_ownership_19discard_unpublished:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $1, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L18_10
    jmp .L18_4
.L18_10:
    movl %r12d, %r13d
    jmp .L18_5
.L18_4:
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L18_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L18_11
    jmp .L18_6
.L18_11:
    movl %r12d, %r13d
    jmp .L18_7
.L18_6:
    leaq -72(%rbp), %r10
    movq %rbx, (%r10)
    movl $4, %eax
    leaq -88(%rbp), %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r13d
    leaq -96(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L18_9
.L18_8:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L18_9:
.L18_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L18_1
    jmp .L18_2
.L18_1:
    leaq .Ltext_33(%rip), %r12
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $34, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_ownership_stop@PLT
    jmp .L18_3
.L18_2:
.L18_3:
    movq %fs:0, %rax
    addq lb_ownership_live@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl $8, %ecx
    orl %ecx, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq %rbx, %rdi
    call lb_ownership_13release_shell@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_abandon
    .type lb_ownership_abandon, @function
lb_ownership_abandon:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $32, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %r11
    call *%r11
    movq %fs:0, %rax
    addq lb_ownership_live@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl $8, %ecx
    orl %ecx, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    leaq -56(%rbp), %r10
    movq %rbx, (%r10)
    movl $4, %eax
    leaq -72(%rbp), %r10
    movl %eax, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq -80(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L19_5
.L19_4:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L19_5:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L19_2
.L19_1:
    movq %rbx, %rdi
    call lb_ownership_13release_shell@PLT
    jmp .L19_3
.L19_2:
.L19_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_identity
    .type lb_ownership_identity, @function
lb_ownership_identity:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $48, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L20_4
    jmp .L20_2
.L20_4:
.L20_1:
    movq %rbx, %rdi
    movq %r12, %r11
    call *%r11
    movq %rax, %r13
    movq %r13, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L20_5:
    jmp .L20_3
.L20_2:
.L20_3:
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L20_6:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_ownership_module_0init
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
    .asciz "src/std/ownership/module.lucb:53:5"
.Ltext_2:
    .asciz "trap: "
.Ltext_3:
    .asciz ": "
.Ltext_4:
    .asciz "\n"
.Ltext_5:
    .asciz "src/std/ownership/module.lucb:78:5"
.Ltext_6:
    .asciz "src/std/ownership/module.lucb:84:5"
.Ltext_7:
    .asciz "runtime context identity exhausted"
.Ltext_8:
    .asciz "src/std/ownership/module.lucb:97:5"
.Ltext_9:
    .asciz "src/std/ownership/module.lucb:103:5"
.Ltext_10:
    .asciz "a managed callback needs a runtime entry on this thread"
.Ltext_11:
    .asciz "an object belongs to another runtime thread"
.Ltext_12:
    .asciz "an object has already been destroyed"
.Ltext_13:
    .asciz "an object allocation is smaller than its header"
.Ltext_14:
    .asciz "memory.unset"
.Ltext_15:
    .asciz "src/std/ownership/module.lucb:124:5"
.Ltext_16:
    .asciz "memory.exhausted"
.Ltext_17:
    .asciz "object allocation identity exhausted"
.Ltext_18:
    .asciz "src/std/ownership/module.lucb:135:5"
.Ltext_19:
    .asciz "src/std/ownership/module.lucb:136:5"
.Ltext_20:
    .asciz "src/std/ownership/module.lucb:139:5"
.Ltext_21:
    .asciz "out of memory"
.Ltext_22:
    .asciz "src/std/ownership/module.lucb:144:9"
.Ltext_23:
    .asciz "src/std/ownership/module.lucb:150:5"
.Ltext_24:
    .asciz "src/std/ownership/module.lucb:152:5"
.Ltext_25:
    .asciz "src/std/ownership/module.lucb:162:13"
.Ltext_26:
    .asciz "src/std/ownership/module.lucb:165:5"
.Ltext_27:
    .asciz "`deinit` published `self`"
.Ltext_28:
    .asciz "src/std/ownership/module.lucb:178:13"
.Ltext_29:
    .asciz "src/std/ownership/module.lucb:181:5"
.Ltext_30:
    .asciz "an object has no allocation owner"
.Ltext_31:
    .asciz "src/std/ownership/module.lucb:189:9"
.Ltext_32:
    .asciz "src/std/ownership/module.lucb:191:9"
.Ltext_33:
    .asciz "an incomplete object was published"
.Ltext_34:
    .asciz "src/std/ownership/module.lucb:199:5"
.Ltext_35:
    .asciz "src/std/ownership/module.lucb:208:5"
.Ltext_36:
    .asciz "src/std/ownership/module.lucb:219:5"
.Ltext_37:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_ownership_black
    .type lb_ownership_black, @object
    .p2align 0
lb_ownership_black:
    .zero 1

    .bss
    .globl lb_ownership_gray
    .type lb_ownership_gray, @object
    .p2align 0
lb_ownership_gray:
    .zero 1

    .bss
    .globl lb_ownership_white
    .type lb_ownership_white, @object
    .p2align 0
lb_ownership_white:
    .zero 1

    .bss
    .globl lb_ownership_purple
    .type lb_ownership_purple, @object
    .p2align 0
lb_ownership_purple:
    .zero 1

    .bss
    .globl lb_ownership_10color_mask
    .type lb_ownership_10color_mask, @object
    .p2align 0
lb_ownership_10color_mask:
    .zero 1

    .bss
    .globl lb_ownership_buffered
    .type lb_ownership_buffered, @object
    .p2align 0
lb_ownership_buffered:
    .zero 1

    .bss
    .globl lb_ownership_dead
    .type lb_ownership_dead, @object
    .p2align 0
lb_ownership_dead:
    .zero 1

    .bss
    .globl lb_ownership_collecting
    .type lb_ownership_collecting, @object
    .p2align 0
lb_ownership_collecting:
    .zero 1

    .bss
    .globl lb_ownership_immortal
    .type lb_ownership_immortal, @object
    .p2align 0
lb_ownership_immortal:
    .zero 1

    .section .tbss,"awT",@nobits
    .globl lb_ownership_live
    .type lb_ownership_live, @object
    .p2align 3
lb_ownership_live:
    .zero 8

    .section .tbss,"awT",@nobits
    .globl lb_ownership_site
    .type lb_ownership_site, @object
    .p2align 3
lb_ownership_site:
    .zero 16

    .bss
    .globl lb_ownership_12next_context
    .type lb_ownership_12next_context, @object
    .p2align 3
lb_ownership_12next_context:
    .zero 8

    .bss
    .globl lb_ownership_15next_generation
    .type lb_ownership_15next_generation, @object
    .p2align 3
lb_ownership_15next_generation:
    .zero 8

    .section .tbss,"awT",@nobits
    .globl lb_ownership_14thread_context
    .type lb_ownership_14thread_context, @object
    .p2align 3
lb_ownership_14thread_context:
    .zero 8

    .section .tbss,"awT",@nobits
    .globl lb_ownership_13runtime_depth
    .type lb_ownership_13runtime_depth, @object
    .p2align 2
lb_ownership_13runtime_depth:
    .zero 4

    .section .note.GNU-stack,"",@progbits
