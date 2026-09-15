    .text

    .p2align 4
    .globl lb_ownership_0init
    .type lb_ownership_0init, @function
lb_ownership_0init:
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
    movq %fs:0, %rax
    addq lb_ownership_13pending_count@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_ownership_15candidate_limit(%rip), %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %fs:0, %rax
    addq lb_ownership_10root_count@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %fs:0, %rax
    addq lb_ownership_11white_count@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %fs:0, %rax
    addq lb_ownership_17collector_running@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
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
    jne .L4_2
.L4_1:
    leaq lb_ownership_12next_context(%rip), %r12
    movq $1, %rcx
    movq %r12, %r10
    lock xaddq %rcx, (%r10)
    movq %rcx, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L4_5
.L4_4:
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
    jmp .L4_6
.L4_5:
.L4_6:
    jmp .L4_3
.L4_2:
.L4_3:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_7:
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
    leaq .Ltext_110(%rip), %rsi
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
    jne .L6_2
.L6_1:
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
    jmp .L6_3
.L6_2:
.L6_3:
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
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -72(%rbp), %r10
    movq %rbx, (%r10)
    leaq -88(%rbp), %r10
    movl %r12d, (%r10)
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
    jmp .L7_7
.L7_6:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_7:
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_4
    jmp .L7_8
.L7_8:
    movl %r13d, %ebx
    jmp .L7_5
.L7_4:
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
.L7_5:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_1
    jmp .L7_2
.L7_1:
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
    jmp .L7_3
.L7_2:
.L7_3:
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
    leaq lb_ownership_dead(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -72(%rbp), %r10
    movq %rbx, (%r10)
    leaq -88(%rbp), %r10
    movl %r12d, (%r10)
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
    jmp .L8_7
.L8_6:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_7:
    testl %r12d, %r12d
    jne .L8_8
    jmp .L8_4
.L8_8:
    movl %r12d, %ebx
    jmp .L8_5
.L8_4:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L8_5:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L8_1
    jmp .L8_2
.L8_1:
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
    jmp .L8_3
.L8_2:
.L8_3:
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
    jae .L9_2
.L9_1:
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
    jmp .L9_3
.L9_2:
.L9_3:
    leaq -168(%rbp), %rax
    movq %rax, -304(%rbp)
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L9_4
    jmp .L9_5
.L9_4:
    leaq -184(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L9_6
.L9_5:
    leaq lb_memory_heap(%rip), %r12
    leaq -184(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L9_6:
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
    jne .L9_7
    jmp .L9_8
.L9_8:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_7:
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
    jne .L9_9
    jmp .L9_10
.L9_9:
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
    jmp .L9_11
.L9_10:
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
.L9_11:
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_13
    jmp .L9_12
.L9_13:
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
.L9_14:
.L9_12:
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
    jne .L9_16
.L9_15:
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
    jmp .L9_17
.L9_16:
.L9_17:
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
    leaq .Ltext_110(%rip), %rsi
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
.L9_18:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_allocate
    .type lb_ownership_allocate, @function
lb_ownership_allocate:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -56(%rbp), %r10
    movq %rbx, (%r10)
    leaq -72(%rbp), %r10
    movq %r12, (%r10)
    leaq -112(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq %r12, %rdx
    movq %r13, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    leaq -152(%rbp), %rdi
    call lb_ownership_reserve@PLT
    leaq -152(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_5
    jmp .L10_4
.L10_5:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L10_2
.L10_4:
    movq %r12, %r10
    movq (%r10), %rbx
    jmp .L10_3
.L10_2:
    leaq .Ltext_21(%rip), %rbx
    leaq -168(%rbp), %r12
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
.L10_3:
    jmp .L10_7
.L10_6:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_7:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_1:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

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
    jne .L11_4
    jmp .L11_17
.L11_17:
    movl %r12d, %r13d
    jmp .L11_5
.L11_4:
    leaq lb_ownership_dead(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -168(%rbp), %r10
    movq %rbx, (%r10)
    leaq -184(%rbp), %r10
    movl %r12d, (%r10)
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
    jmp .L11_14
.L11_13:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_14:
.L11_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L11_6
    jmp .L11_18
.L11_18:
    movl %r12d, %r13d
    jmp .L11_7
.L11_6:
    leaq lb_ownership_buffered(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -168(%rbp), %r10
    movq %rbx, (%r10)
    leaq -184(%rbp), %r10
    movl %r12d, (%r10)
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
    jmp .L11_16
.L11_15:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_16:
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L11_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L11_1
    jmp .L11_2
.L11_1:
    leaq -72(%rbp), %r13
    movq $48, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    testq %rax, %rax
    jne .L11_8
    jmp .L11_9
.L11_8:
    leaq -88(%rbp), %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L11_10
.L11_9:
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
.L11_10:
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
    jne .L11_12
    jmp .L11_11
.L11_12:
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
.L11_11:
    jmp .L11_3
.L11_2:
.L11_3:
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
    subq $112, %rsp
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
    jne .L12_10
    jmp .L12_4
.L12_10:
    movl %r12d, %r13d
    jmp .L12_5
.L12_4:
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
.L12_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L12_11
    jmp .L12_6
.L12_11:
    movl %r12d, %r13d
    jmp .L12_7
.L12_6:
    leaq lb_ownership_buffered(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -80(%rbp), %r10
    movq %rbx, (%r10)
    leaq -96(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -96(%rbp), %r13
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
    leaq -104(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L12_9
.L12_8:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_9:
.L12_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L12_1
    jmp .L12_2
.L12_1:
    leaq .Ltext_33(%rip), %r12
    leaq -64(%rbp), %r13
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
    jmp .L12_3
.L12_2:
.L12_3:
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
    leaq .Ltext_110(%rip), %rsi
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
    leaq lb_ownership_dead(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq %rbx, %rdi
    call lb_ownership_13release_shell@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_abandon
    .type lb_ownership_abandon, @function
lb_ownership_abandon:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
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
    leaq .Ltext_110(%rip), %rsi
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
    leaq lb_ownership_dead(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    leaq lb_ownership_buffered(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq -64(%rbp), %r10
    movq %rbx, (%r10)
    leaq -80(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -80(%rbp), %r13
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
    leaq -88(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L13_5
.L13_4:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_5:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L13_2
.L13_1:
    movq %rbx, %rdi
    call lb_ownership_13release_shell@PLT
    jmp .L13_3
.L13_2:
.L13_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
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
    jne .L14_4
    jmp .L14_2
.L14_4:
.L14_1:
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
.L14_5:
    jmp .L14_3
.L14_2:
.L14_3:
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
.L14_6:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_mark
    .type lb_ownership_mark, @function
lb_ownership_mark:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %fs:0, %rax
    addq lb_ownership_13pending_count@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L15_1:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_11pool_object
    .type lb_ownership_11pool_object, @function
lb_ownership_11pool_object:
    pushq %rbp
    movq %rsp, %rbp
    subq $384, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq -56(%rbp), %rax
    movq %rax, -288(%rbp)
    movq -288(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -296(%rbp)
    movq -296(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    leaq -120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %fs:0, %rax
    addq lb_ownership_13pending_count@GOTTPOFF(%rip), %rax
    movq %rax, -304(%rbp)
    movq -304(%rbp), %r10
    movq (%r10), %r13
    movq %fs:0, %rax
    addq lb_ownership_pending@GOTTPOFF(%rip), %rax
    movq %rax, -312(%rbp)
    movq -312(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -320(%rbp)
    movq -320(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jne .L16_3
.L16_2:
    leaq -136(%rbp), %rax
    movq %rax, -360(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -368(%rbp)
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L16_8
.L16_7:
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rax
    movq %rax, -376(%rbp)
    jmp .L16_9
.L16_8:
    movq $64, %rax
    movq %rax, -376(%rbp)
.L16_9:
    leaq -224(%rbp), %rax
    movq %rax, -384(%rbp)
    movq -376(%rbp), %rax
    movabsq $144115188075855872, %rcx
    cmpq %rcx, %rax
    jbe .L16_11
.L16_10:
    movq -384(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_39(%rip), %r13
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -384(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L16_12
.L16_11:
    movq -376(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq -368(%rbp), %r10
    movq (%r10), %r12
    movq -368(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L16_13
    jmp .L16_14
.L16_14:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L16_13:
    movq %r15, %r10
    movq (%r10), %r14
    movq %r12, %rsi
    movq %rbx, %rdx
    movq $8, %rcx
    leaq -248(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -248(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, -328(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl -328(%rbp), %eax
    andl %r14d, %eax
    movl %eax, -336(%rbp)
    movl -336(%rbp), %eax
    testl %eax, %eax
    jne .L16_15
    jmp .L16_16
.L16_15:
    movq -384(%rbp), %rax
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
    movq -384(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L16_12
.L16_16:
    movq %r13, %r10
    movq (%r10), %rbx
    movq -384(%rbp), %r10
    movq %rbx, (%r10)
    movq -384(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -376(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -384(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L16_12:
    movq -384(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L16_18
    jmp .L16_17
.L16_18:
    movq -384(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -176(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L16_5
.L16_17:
    leaq -152(%rbp), %rbx
    movq -384(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L16_6
.L16_5:
    leaq .Ltext_21(%rip), %rbx
    leaq -264(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $13, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
.L16_6:
    leaq -152(%rbp), %rbx
    movq %rbx, %r10
    movq -360(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -360(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rax, %r12
.L16_19:
    movq -304(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L16_21
.L16_20:
    movq -360(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -344(%rbp)
    movq %rbx, %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $32, %rcx
    movq %r12, %r14
    imulq %rcx, %r14
    movq -344(%rbp), %rax
    addq %r14, %rax
    movq %rax, -352(%rbp)
    movq -312(%rbp), %r10
    movq (%r10), %r15
    movq -320(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r14, %r13
    addq %r15, %r13
    movq %r13, %r10
    movq -352(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L16_19
.L16_21:
    movq -320(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L16_23
.L16_22:
    leaq -280(%rbp), %r12
    movq -312(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -368(%rbp), %r10
    movq (%r10), %r13
    movq -368(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L16_26
    jmp .L16_25
.L16_26:
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
.L16_25:
    jmp .L16_24
.L16_23:
.L16_24:
    movq -360(%rbp), %r10
    movq -312(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L16_4
.L16_3:
.L16_4:
    movq -304(%rbp), %r10
    movq (%r10), %rbx
    movq -312(%rbp), %r10
    movq (%r10), %r12
    movq -320(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $32, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -304(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -304(%rbp), %r10
    movq %rbx, (%r10)
.L16_27:
    movq -296(%rbp), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_1:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_drain
    .type lb_ownership_drain, @function
lb_ownership_drain:
    pushq %rbp
    movq %rsp, %rbp
    subq $512, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %fs:0, %rax
    addq lb_ownership_13pending_count@GOTTPOFF(%rip), %rax
    movq %rax, -296(%rbp)
    movq -296(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -304(%rbp)
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -312(%rbp)
    movq -304(%rbp), %rax
    movq -312(%rbp), %rcx
    cmpq %rcx, %rax
    ja .L17_2
.L17_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L17_4:
    jmp .L17_3
.L17_2:
.L17_3:
    leaq -88(%rbp), %rax
    movq %rax, -320(%rbp)
    movq -320(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -328(%rbp)
    movq -320(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -336(%rbp)
    movq -320(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -344(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -360(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -368(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -376(%rbp)
    movq -376(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -384(%rbp)
    movq -368(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -392(%rbp)
    leaq lb_ownership_immortal(%rip), %rax
    movq %rax, -400(%rbp)
    leaq -168(%rbp), %rax
    movq %rax, -416(%rbp)
    leaq lb_ownership_collecting(%rip), %rax
    movq %rax, -408(%rbp)
    leaq lb_ownership_black(%rip), %rax
    movq %rax, -424(%rbp)
    leaq lb_ownership_10color_mask(%rip), %rax
    movq %rax, -480(%rbp)
    leaq -248(%rbp), %rax
    movq %rax, -488(%rbp)
    leaq .Ltext_27(%rip), %rax
    movq %rax, -432(%rbp)
    leaq -216(%rbp), %rax
    movq %rax, -440(%rbp)
    movq -440(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -448(%rbp)
    leaq .Ltext_28(%rip), %rax
    movq %rax, -456(%rbp)
    leaq lb_ownership_dead(%rip), %rax
    movq %rax, -464(%rbp)
    leaq lb_ownership_buffered(%rip), %rax
    movq %rax, -472(%rbp)
    leaq -280(%rbp), %rax
    movq %rax, -496(%rbp)
    movq -312(%rbp), %rax
    movq %rax, -504(%rbp)
.L17_5:
    movq -504(%rbp), %rax
    movq -304(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L17_7
.L17_6:
    movq %fs:0, %rax
    addq lb_ownership_pending@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -504(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -504(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    addq %r13, %r12
    movq %r12, %r10
    movq -320(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -320(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L17_11
    jmp .L17_9
.L17_11:
.L17_8:
    leaq -136(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call lb_ownership_12check_thread@PLT
    movq -400(%rbp), %r10
    movzbl (%r10), %r13d
    leaq -152(%rbp), %r10
    movq %r12, (%r10)
    leaq -168(%rbp), %r10
    movl %r13d, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r14d
    movq -416(%rbp), %r10
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
    leaq -176(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L17_37
.L17_36:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L17_37:
    testl %r14d, %r14d
    jne .L17_22
    jmp .L17_23
.L17_22:
    jmp .L17_54
.L17_25:
    jmp .L17_24
.L17_23:
.L17_24:
    movq -408(%rbp), %r10
    movzbl (%r10), %r14d
    leaq -152(%rbp), %r10
    movq %r12, (%r10)
    leaq -168(%rbp), %r10
    movl %r14d, (%r10)
    movq %r13, %r10
    movzbl (%r10), %r14d
    movq -416(%rbp), %r10
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
    leaq -184(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L17_39
.L17_38:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L17_39:
    testl %r14d, %r14d
    jne .L17_26
    jmp .L17_27
.L17_26:
    movq %r12, %r10
    movl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jbe .L17_30
.L17_29:
    movq %r12, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    jmp .L17_31
.L17_30:
.L17_31:
    jmp .L17_54
.L17_32:
    jmp .L17_28
.L17_27:
.L17_28:
    movq %r12, %rdi
    call lb_ownership_11check_alive@PLT
    movq %r12, %r10
    movl (%r10), %r14d
    movl %r14d, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    movq %r12, %r10
    movl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L17_34
.L17_33:
    leaq -200(%rbp), %r10
    movq %r12, (%r10)
    movq -424(%rbp), %r10
    movzbl (%r10), %r14d
    leaq -232(%rbp), %r10
    movq %r12, (%r10)
    leaq -248(%rbp), %r10
    movl %r14d, (%r10)
    movq %r13, %r10
    movzbl (%r10), %r14d
    movq -480(%rbp), %r10
    movzbl (%r10), %r15d
    movl $4294967295, %ecx
    xorl %ecx, %r15d
    movzbl %r15b, %r15d
    andl %r15d, %r14d
    movq -488(%rbp), %r10
    movzbl (%r10), %r15d
    orl %r15d, %r14d
    movq %r13, %r10
    movb %r14b, (%r10)
.L17_50:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $24, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L17_43
    jmp .L17_41
.L17_43:
.L17_40:
    movl $1, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq %r12, %rdi
    movq %r15, %r11
    call *%r11
    movq %r12, %r10
    movl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L17_45
.L17_44:
    movq -432(%rbp), %rax
    movq -440(%rbp), %r10
    movq %rax, (%r10)
    movq $25, %rax
    movq -448(%rbp), %r10
    movq %rax, (%r10)
    movq -456(%rbp), %rdi
    movq -440(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L17_46
.L17_45:
.L17_46:
    movl $0, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    jmp .L17_42
.L17_41:
.L17_42:
    movq %r14, %r10
    movq (%r10), %rbx
    movq $32, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rdi
    movq %rbx, %r11
    call *%r11
    movq %fs:0, %rax
    addq lb_ownership_live@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movzbl (%r10), %ebx
    movq -464(%rbp), %r10
    movzbl (%r10), %r15d
    orl %r15d, %ebx
    movq %r13, %r10
    movb %bl, (%r10)
    movq -472(%rbp), %r10
    movzbl (%r10), %ebx
    leaq -264(%rbp), %r10
    movq %r12, (%r10)
    leaq -280(%rbp), %r10
    movl %ebx, (%r10)
    movq %r13, %r10
    movzbl (%r10), %ebx
    movq -496(%rbp), %r10
    movzbl (%r10), %r15d
    andl %r15d, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq -288(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L17_52
.L17_51:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L17_52:
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L17_48
.L17_47:
    movq %r12, %rdi
    call lb_ownership_13release_shell@PLT
    jmp .L17_49
.L17_48:
.L17_49:
.L17_53:
    jmp .L17_35
.L17_34:
    movq %r12, %rdi
    call lb_ownership_13possible_root@PLT
.L17_35:
.L17_54:
    jmp .L17_10
.L17_9:
    movq -328(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L17_15
    jmp .L17_13
.L17_15:
.L17_12:
    movq -336(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L17_19
    jmp .L17_17
.L17_19:
.L17_16:
    movq %rbx, %rdi
    movq %r12, %r11
    call *%r11
    jmp .L17_18
.L17_17:
.L17_18:
    movq -344(%rbp), %r10
    movq (%r10), %r12
    movq -352(%rbp), %r10
    movq %rbx, (%r10)
    movq -360(%rbp), %r10
    movq %r12, (%r10)
    movq -376(%rbp), %r10
    movq %rbx, (%r10)
    movq -384(%rbp), %r10
    movq %r12, (%r10)
    movq -368(%rbp), %r10
    movq (%r10), %r12
    movq -392(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L17_21
    jmp .L17_20
.L17_21:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rdi
    movq -376(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L17_20:
    jmp .L17_14
.L17_13:
.L17_14:
.L17_10:
    movq -504(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -504(%rbp)
    jmp .L17_5
.L17_7:
    movq -312(%rbp), %rax
    movq -296(%rbp), %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_13possible_root
    .type lb_ownership_13possible_root, @function
lb_ownership_13possible_root:
    pushq %rbp
    movq %rsp, %rbp
    subq $448, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -336(%rbp)
    movq -336(%rbp), %rax
    leaq -72(%rbp), %r10
    movq %rax, (%r10)
    movq -336(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_10color_mask(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %eax
    movl %eax, -360(%rbp)
    movl -360(%rbp), %ecx
    andl %ecx, %r13d
    movzbl %r13b, %r13d
    leaq -80(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L18_13
.L18_12:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L18_13:
    leaq lb_ownership_purple(%rip), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    cmpl %r13d, %r15d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L18_2
.L18_1:
    movq -336(%rbp), %rax
    leaq -96(%rbp), %r10
    movq %rax, (%r10)
    leaq -112(%rbp), %r10
    movl %r15d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl -360(%rbp), %eax
    movl $4294967295, %ecx
    movl %eax, %r14d
    xorl %ecx, %r14d
    movzbl %r14b, %r14d
    andl %r14d, %r13d
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
.L18_14:
    leaq lb_ownership_buffered(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq -336(%rbp), %rax
    leaq -128(%rbp), %r10
    movq %rax, (%r10)
    leaq -144(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r14d
    leaq -144(%rbp), %r15
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
    leaq -152(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L18_16
.L18_15:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L18_16:
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L18_5
.L18_4:
    movq %r12, %r10
    movzbl (%r10), %eax
    movl %eax, -344(%rbp)
    movl -344(%rbp), %ecx
    movl %r13d, %eax
    orl %ecx, %eax
    movl %eax, -352(%rbp)
    movl -352(%rbp), %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -336(%rbp), %rax
    leaq -168(%rbp), %r10
    movq %rax, (%r10)
    movq %fs:0, %rax
    addq lb_ownership_10root_count@GOTTPOFF(%rip), %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %r10
    movq (%r10), %r15
    movq %fs:0, %rax
    addq lb_ownership_roots@GOTTPOFF(%rip), %rax
    movq %rax, -376(%rbp)
    movq -376(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -384(%rbp)
    movq -384(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r15
    jne .L18_18
.L18_17:
    leaq -184(%rbp), %rax
    movq %rax, -424(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -432(%rbp)
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L18_23
.L18_22:
    movq %r14, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, -440(%rbp)
    jmp .L18_24
.L18_23:
    leaq lb_ownership_15candidate_limit(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq %rax, -440(%rbp)
.L18_24:
    leaq -272(%rbp), %rax
    movq %rax, -448(%rbp)
    movq -440(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L18_26
.L18_25:
    movq -448(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_39(%rip), %r14
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -448(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L18_27
.L18_26:
    movq -440(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq -432(%rbp), %r10
    movq (%r10), %r13
    movq -432(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L18_28
    jmp .L18_29
.L18_29:
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L18_28:
    movq %r14, %r10
    movq (%r10), %r15
    movq %r13, %rsi
    movq %rbx, %rdx
    movq $8, %rcx
    leaq -296(%rbp), %rdi
    movq %r15, %r11
    call *%r11
    leaq -296(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, -392(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl -392(%rbp), %eax
    andl %r15d, %eax
    movl %eax, -400(%rbp)
    movl -400(%rbp), %eax
    testl %eax, %eax
    jne .L18_30
    jmp .L18_31
.L18_30:
    movq -448(%rbp), %rax
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
    movq -448(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L18_27
.L18_31:
    movq %r12, %r10
    movq (%r10), %rbx
    movq -448(%rbp), %r10
    movq %rbx, (%r10)
    movq -448(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -440(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -448(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L18_27:
    movq -448(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L18_33
    jmp .L18_32
.L18_33:
    movq -448(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -224(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L18_20
.L18_32:
    leaq -200(%rbp), %rbx
    movq -448(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L18_21
.L18_20:
    leaq .Ltext_21(%rip), %rbx
    leaq -312(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $13, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_51(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
.L18_21:
    leaq -200(%rbp), %rbx
    movq %rbx, %r10
    movq -424(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -424(%rbp), %r10
    movq (%r10), %rbx
    movq -424(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rax
    movq %rax, %r13
.L18_34:
    movq -368(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L18_36
.L18_35:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r13, %rax
    imulq %rcx, %rax
    movq %rax, -408(%rbp)
    movq -408(%rbp), %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -416(%rbp)
    movq -376(%rbp), %r10
    movq (%r10), %r15
    movq -384(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -408(%rbp), %rax
    movq %rax, %r14
    addq %r15, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -416(%rbp), %r10
    movq %r14, (%r10)
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r13
    jmp .L18_34
.L18_36:
    movq -384(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L18_38
.L18_37:
    leaq -328(%rbp), %r12
    movq -376(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -432(%rbp), %r10
    movq (%r10), %r13
    movq -432(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L18_41
    jmp .L18_40
.L18_41:
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
.L18_40:
    jmp .L18_39
.L18_38:
.L18_39:
    movq -424(%rbp), %r10
    movq -376(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L18_19
.L18_18:
.L18_19:
    movq -368(%rbp), %r10
    movq (%r10), %rbx
    movq -376(%rbp), %r10
    movq (%r10), %r12
    movq -384(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq -336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -368(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -368(%rbp), %r10
    movq %rbx, (%r10)
.L18_42:
    leaq lb_ownership_15candidate_limit(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L18_10
    jmp .L18_43
.L18_43:
    movl %r12d, %ebx
    jmp .L18_11
.L18_10:
    movq %fs:0, %rax
    addq lb_ownership_17collector_running@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L18_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L18_7
    jmp .L18_8
.L18_7:
    call lb_ownership_collect@PLT
    jmp .L18_9
.L18_8:
.L18_9:
    jmp .L18_6
.L18_5:
.L18_6:
    jmp .L18_3
.L18_2:
.L18_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_15visit_mark_gray
    .type lb_ownership_15visit_mark_gray, @function
lb_ownership_15visit_mark_gray:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -72(%rbp), %r10
    movq %rbx, (%r10)
    leaq -88(%rbp), %r10
    movl %r12d, (%r10)
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
    jmp .L19_6
.L19_5:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L19_6:
    testl %r12d, %r12d
    jne .L19_1
    jmp .L19_2
.L19_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L19_4:
    jmp .L19_3
.L19_2:
.L19_3:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    movq %rbx, %rdi
    call lb_ownership_9mark_gray@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_9mark_gray
    .type lb_ownership_9mark_gray, @function
lb_ownership_9mark_gray:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -72(%rbp), %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_10color_mask(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %eax
    movl %eax, -120(%rbp)
    movl -120(%rbp), %ecx
    andl %ecx, %r13d
    movzbl %r13b, %r13d
    leaq -80(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L20_5
.L20_4:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L20_5:
    leaq lb_ownership_gray(%rip), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    cmpl %r13d, %r15d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L20_2
.L20_1:
    leaq -96(%rbp), %r10
    movq %rbx, (%r10)
    leaq -112(%rbp), %r10
    movl %r15d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl -120(%rbp), %eax
    movl $4294967295, %ecx
    movl %eax, %r14d
    xorl %ecx, %r14d
    movzbl %r14b, %r14d
    andl %r14d, %r13d
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
.L20_6:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $40, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq lb_ownership_15visit_mark_gray@GOTPCREL(%rip), %r13
    movq %rbx, %rdi
    movq %r13, %rsi
    movq %rbx, %rdx
    movq %r12, %r11
    call *%r11
    jmp .L20_3
.L20_2:
.L20_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_10visit_scan
    .type lb_ownership_10visit_scan, @function
lb_ownership_10visit_scan:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -72(%rbp), %r10
    movq %rbx, (%r10)
    leaq -88(%rbp), %r10
    movl %r12d, (%r10)
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
    jmp .L21_6
.L21_5:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L21_6:
    testl %r12d, %r12d
    jne .L21_1
    jmp .L21_2
.L21_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L21_4:
    jmp .L21_3
.L21_2:
.L21_3:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    movq %rbx, %rdi
    call lb_ownership_scan@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_16visit_scan_black
    .type lb_ownership_16visit_scan_black, @function
lb_ownership_16visit_scan_black:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -80(%rbp), %r10
    movq %rbx, (%r10)
    leaq -96(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq -96(%rbp), %r14
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
    leaq -104(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L22_9
.L22_8:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L22_9:
    testl %r13d, %r13d
    jne .L22_1
    jmp .L22_2
.L22_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L22_4:
    jmp .L22_3
.L22_2:
.L22_3:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    movq %rbx, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_65(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq -120(%rbp), %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_10color_mask(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    andl %r14d, %r13d
    movzbl %r13b, %r13d
    leaq -128(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L22_11
.L22_10:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L22_11:
    leaq lb_ownership_black(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L22_6
.L22_5:
    movq %rbx, %rdi
    call lb_ownership_10scan_black@PLT
    jmp .L22_7
.L22_6:
.L22_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_scan
    .type lb_ownership_scan, @function
lb_ownership_scan:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -72(%rbp), %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_10color_mask(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    andl %r14d, %r13d
    movzbl %r13b, %r13d
    leaq -80(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L23_8
.L23_7:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L23_8:
    leaq lb_ownership_gray(%rip), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    cmpl %r13d, %r15d
    jne .L23_2
.L23_1:
    movq %rbx, %r10
    movl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jbe .L23_5
.L23_4:
    movq %rbx, %rdi
    call lb_ownership_10scan_black@PLT
    jmp .L23_6
.L23_5:
    leaq lb_ownership_white(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq -96(%rbp), %r10
    movq %rbx, (%r10)
    leaq -112(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl $4294967295, %ecx
    movl %r14d, %r15d
    xorl %ecx, %r15d
    movzbl %r15b, %r15d
    andl %r15d, %r13d
    leaq -112(%rbp), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    orl %r15d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
.L23_9:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $40, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq lb_ownership_10visit_scan@GOTPCREL(%rip), %r13
    movq %rbx, %rdi
    movq %r13, %rsi
    movq %rbx, %rdx
    movq %r12, %r11
    call *%r11
.L23_6:
    jmp .L23_3
.L23_2:
.L23_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_10scan_black
    .type lb_ownership_10scan_black, @function
lb_ownership_10scan_black:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_black(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -64(%rbp), %r10
    movq %rbx, (%r10)
    leaq -80(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_10color_mask(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $4294967295, %ecx
    xorl %ecx, %r14d
    movzbl %r14b, %r14d
    andl %r14d, %r13d
    leaq -80(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
.L24_1:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $40, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq lb_ownership_16visit_scan_black@GOTPCREL(%rip), %r13
    movq %rbx, %rdi
    movq %r13, %rsi
    movq %rbx, %rdx
    movq %r12, %r11
    call *%r11
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_12visit_gather
    .type lb_ownership_12visit_gather, @function
lb_ownership_12visit_gather:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -72(%rbp), %r10
    movq %rbx, (%r10)
    leaq -88(%rbp), %r10
    movl %r12d, (%r10)
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
    jmp .L25_6
.L25_5:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L25_6:
    testl %r12d, %r12d
    jne .L25_1
    jmp .L25_2
.L25_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L25_4:
    jmp .L25_3
.L25_2:
.L25_3:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    movq %rbx, %rdi
    call lb_ownership_gather@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_gather
    .type lb_ownership_gather, @function
lb_ownership_gather:
    pushq %rbp
    movq %rsp, %rbp
    subq $384, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -304(%rbp)
    movq -304(%rbp), %rax
    leaq -72(%rbp), %r10
    movq %rax, (%r10)
    movq -304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_10color_mask(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    andl %r14d, %r13d
    movzbl %r13b, %r13d
    leaq -80(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L26_7
.L26_6:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L26_7:
    leaq lb_ownership_white(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    cmpl %r13d, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L26_4
    jmp .L26_36
.L26_36:
    movl %r14d, %r13d
    jmp .L26_5
.L26_4:
    leaq lb_ownership_collecting(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq -304(%rbp), %rax
    leaq -96(%rbp), %r10
    movq %rax, (%r10)
    leaq -112(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq -112(%rbp), %r14
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
    leaq -120(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L26_9
.L26_8:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L26_9:
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L26_5:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L26_1
    jmp .L26_2
.L26_1:
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_collecting(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq -304(%rbp), %rax
    leaq -136(%rbp), %r10
    movq %rax, (%r10)
    movq %fs:0, %rax
    addq lb_ownership_11white_count@GOTTPOFF(%rip), %rax
    movq %rax, -312(%rbp)
    movq -312(%rbp), %r10
    movq (%r10), %r14
    movq %fs:0, %rax
    addq lb_ownership_whites@GOTTPOFF(%rip), %rax
    movq %rax, -320(%rbp)
    movq -320(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -328(%rbp)
    movq -328(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jne .L26_11
.L26_10:
    leaq -152(%rbp), %rax
    movq %rax, -360(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -368(%rbp)
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L26_16
.L26_15:
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, -376(%rbp)
    jmp .L26_17
.L26_16:
    movq $256, %rax
    movq %rax, -376(%rbp)
.L26_17:
    leaq -240(%rbp), %rax
    movq %rax, -384(%rbp)
    movq -376(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L26_19
.L26_18:
    movq -384(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_39(%rip), %r15
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -384(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L26_20
.L26_19:
    movq -376(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq -368(%rbp), %r10
    movq (%r10), %r14
    movq -368(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L26_21
    jmp .L26_22
.L26_22:
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L26_21:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %r14, %rsi
    movq %r13, %rdx
    movq $8, %rcx
    leaq -264(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -264(%rbp), %r12
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, -336(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl -336(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L26_23
    jmp .L26_24
.L26_23:
    movq -384(%rbp), %rax
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
    movq -384(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L26_20
.L26_24:
    movq %r12, %r10
    movq (%r10), %rbx
    movq -384(%rbp), %r10
    movq %rbx, (%r10)
    movq -384(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -376(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -384(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L26_20:
    movq -384(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L26_26
    jmp .L26_25
.L26_26:
    movq -384(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -192(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L26_13
.L26_25:
    leaq -168(%rbp), %rbx
    movq -384(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L26_14
.L26_13:
    leaq .Ltext_21(%rip), %rbx
    leaq -280(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $13, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_58(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
.L26_14:
    leaq -168(%rbp), %rbx
    movq %rbx, %r10
    movq -360(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -360(%rbp), %r10
    movq (%r10), %rbx
    movq -360(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rax
    movq %rax, %r13
.L26_27:
    movq -312(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L26_29
.L26_28:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r13, %rax
    imulq %rcx, %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -352(%rbp)
    movq -320(%rbp), %r10
    movq (%r10), %r15
    movq -328(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -344(%rbp), %rax
    movq %rax, %r14
    addq %r15, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -352(%rbp), %r10
    movq %r14, (%r10)
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r13
    jmp .L26_27
.L26_29:
    movq -328(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L26_31
.L26_30:
    leaq -296(%rbp), %r12
    movq -320(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -368(%rbp), %r10
    movq (%r10), %r13
    movq -368(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L26_34
    jmp .L26_33
.L26_34:
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
.L26_33:
    jmp .L26_32
.L26_31:
.L26_32:
    movq -360(%rbp), %r10
    movq -320(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L26_12
.L26_11:
.L26_12:
    movq -312(%rbp), %r10
    movq (%r10), %rbx
    movq -320(%rbp), %r10
    movq (%r10), %r12
    movq -328(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq -304(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -312(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -312(%rbp), %r10
    movq %rbx, (%r10)
.L26_35:
    movq -304(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $40, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq lb_ownership_12visit_gather@GOTPCREL(%rip), %r12
    movq -304(%rbp), %rdi
    movq %r12, %rsi
    movq -304(%rbp), %rdx
    movq %rbx, %r11
    call *%r11
    jmp .L26_3
.L26_2:
.L26_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_13visit_restore
    .type lb_ownership_13visit_restore, @function
lb_ownership_13visit_restore:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -88(%rbp), %r10
    movq %rbx, (%r10)
    leaq -104(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq -104(%rbp), %r14
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
    leaq -112(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L27_9
.L27_8:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L27_9:
    testl %r13d, %r13d
    jne .L27_1
    jmp .L27_2
.L27_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L27_4:
    jmp .L27_3
.L27_2:
.L27_3:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    leaq lb_ownership_collecting(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq -88(%rbp), %r10
    movq %rbx, (%r10)
    leaq -104(%rbp), %r10
    movl %r13d, (%r10)
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
    leaq -120(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L27_11
.L27_10:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L27_11:
    testl %r13d, %r13d
    jne .L27_5
    jmp .L27_6
.L27_5:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    jmp .L27_7
.L27_6:
.L27_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_collect
    .type lb_ownership_collect, @function
lb_ownership_collect:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %fs:0, %rax
    addq lb_ownership_17collector_running@GOTTPOFF(%rip), %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L28_1
    jmp .L28_2
.L28_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L28_4:
    jmp .L28_3
.L28_2:
.L28_3:
    movl $1, %eax
    movq -128(%rbp), %r10
    movb %al, (%r10)
    leaq lb_ownership_10color_mask(%rip), %r15
    leaq lb_ownership_purple(%rip), %r12
    leaq lb_ownership_dead(%rip), %rax
    movq %rax, -200(%rbp)
    leaq -112(%rbp), %rax
    movq %rax, -256(%rbp)
    leaq lb_ownership_buffered(%rip), %rax
    movq %rax, -208(%rbp)
    movq $0, %rax
    movq %rax, -264(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L28_5:
    movq %fs:0, %rax
    addq lb_ownership_10root_count@GOTTPOFF(%rip), %rax
    movq %rax, -136(%rbp)
    movq -136(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r14
    jae .L28_7
.L28_6:
    movq %fs:0, %rax
    addq lb_ownership_roots@GOTTPOFF(%rip), %rax
    movq %rax, -144(%rbp)
    movq -144(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -152(%rbp)
    movq -144(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -160(%rbp)
    movq -160(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -168(%rbp)
    movq -168(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r14, %rax
    imulq %rcx, %rax
    movq %rax, -176(%rbp)
    movq -152(%rbp), %rax
    movq -176(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, -184(%rbp)
    movq -184(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -192(%rbp)
    movq -192(%rbp), %rax
    leaq -72(%rbp), %r10
    movq %rax, (%r10)
    movq -192(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %r10
    movzbl (%r10), %r13d
    movq %r15, %r10
    movzbl (%r10), %ebx
    movl %ebx, %ecx
    movl %r13d, %ebx
    andl %ecx, %ebx
    movzbl %bl, %ebx
    leaq -80(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L28_47
.L28_46:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L28_47:
    movq %r12, %r10
    movzbl (%r10), %r13d
    cmpl %ebx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L28_11
    jmp .L28_50
.L28_50:
    movl %r13d, %ebx
    jmp .L28_12
.L28_11:
    movq -192(%rbp), %r10
    movl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %ebx
.L28_12:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L28_13
    jmp .L28_51
.L28_51:
    movl %r13d, %ebx
    jmp .L28_14
.L28_13:
    movq -200(%rbp), %r10
    movzbl (%r10), %ebx
    movq -192(%rbp), %rax
    leaq -96(%rbp), %r10
    movq %rax, (%r10)
    leaq -112(%rbp), %r10
    movl %ebx, (%r10)
    movq -248(%rbp), %r10
    movzbl (%r10), %ebx
    movq -256(%rbp), %r10
    movzbl (%r10), %r13d
    andl %r13d, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq -120(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L28_49
.L28_48:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L28_49:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L28_14:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L28_8
    jmp .L28_9
.L28_8:
    movq -264(%rbp), %rax
    movq -168(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_68(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -264(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq -152(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -192(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -264(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    jmp .L28_10
.L28_9:
    movq -248(%rbp), %r10
    movzbl (%r10), %ebx
    movq -208(%rbp), %r10
    movzbl (%r10), %r13d
    movl $4294967295, %ecx
    xorl %ecx, %r13d
    movzbl %r13b, %r13d
    andl %r13d, %ebx
    movq -248(%rbp), %r10
    movb %bl, (%r10)
    movq -192(%rbp), %rdi
    call lb_ownership_13release_shell@PLT
    movq -264(%rbp), %rax
    movq %rax, %rbx
.L28_10:
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %rbx, %rax
    movq %rax, -264(%rbp)
    movq %r13, %r14
    jmp .L28_5
.L28_7:
    movq -264(%rbp), %rax
    movq -136(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, %rbx
.L28_15:
    movq -136(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L28_17
.L28_16:
    movq %fs:0, %rax
    addq lb_ownership_roots@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_ownership_9mark_gray@PLT
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L28_15
.L28_17:
    movq $0, %rax
    movq %rax, %rbx
.L28_18:
    movq -136(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L28_20
.L28_19:
    movq %fs:0, %rax
    addq lb_ownership_roots@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_73(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_ownership_scan@PLT
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L28_18
.L28_20:
    movq %fs:0, %rax
    addq lb_ownership_11white_count@GOTTPOFF(%rip), %rax
    movq %rax, -216(%rbp)
    movq $0, %rax
    movq -216(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, %r12
.L28_21:
    movq -136(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L28_23
.L28_22:
    movq %fs:0, %rax
    addq lb_ownership_roots@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r12, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    call lb_ownership_gather@PLT
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L28_21
.L28_23:
    leaq lb_ownership_buffered(%rip), %r12
    movq $0, %rax
    movq %rax, %r13
.L28_24:
    movq -136(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L28_26
.L28_25:
    movq %fs:0, %rax
    addq lb_ownership_roots@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_77(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r13, %r14
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r15d
    movq %r12, %r10
    movzbl (%r10), %ebx
    movl $4294967295, %ecx
    xorl %ecx, %ebx
    movzbl %bl, %ebx
    movl %ebx, %ecx
    movl %r15d, %ebx
    andl %ecx, %ebx
    movq %r14, %r10
    movb %bl, (%r10)
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L28_24
.L28_26:
    movq $0, %rax
    movq -136(%rbp), %r10
    movq %rax, (%r10)
    movq lb_ownership_13visit_restore@GOTPCREL(%rip), %rbx
    movq $0, %rax
    movq %rax, %r12
.L28_27:
    movq -216(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L28_29
.L28_28:
    movq %fs:0, %rax
    addq lb_ownership_whites@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_79(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r12, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $16, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $40, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq (%r10), %r13
    movq %r15, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    movq %r14, %r11
    call *%r11
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L28_27
.L28_29:
    leaq .Ltext_27(%rip), %rax
    movq %rax, -224(%rbp)
    leaq -56(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -232(%rbp)
    leaq .Ltext_84(%rip), %rax
    movq %rax, -240(%rbp)
    movq $0, %rax
    movq %rax, -272(%rbp)
.L28_30:
    movq -216(%rbp), %r10
    movq (%r10), %r14
    movq -272(%rbp), %rax
    cmpq %r14, %rax
    jae .L28_32
.L28_31:
    movq %fs:0, %rax
    addq lb_ownership_whites@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -272(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -272(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    addq %r14, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $24, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L28_36
    jmp .L28_34
.L28_36:
.L28_33:
    movq %r13, %r10
    movl (%r10), %r15d
    movl %r15d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_82(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r15d
    movq %r13, %r10
    movl %r15d, (%r10)
    movq %r13, %rdi
    movq %r14, %r11
    call *%r11
    movq %r13, %r10
    movl (%r10), %ebx
    cmpl %r15d, %ebx
    jbe .L28_38
.L28_37:
    movq -224(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $25, %rax
    movq -232(%rbp), %r10
    movq %rax, (%r10)
    movq -240(%rbp), %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L28_39
.L28_38:
.L28_39:
    movq %r13, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_85(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %ebx
    movq %r13, %r10
    movl %ebx, (%r10)
    jmp .L28_35
.L28_34:
.L28_35:
    movq -272(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -272(%rbp)
    jmp .L28_30
.L28_32:
    movq $0, %rax
    movq %rax, %rbx
.L28_40:
    movq -216(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L28_42
.L28_41:
    movq %fs:0, %rax
    addq lb_ownership_whites@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_87(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $16, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $32, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    movq %r13, %r11
    call *%r11
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L28_40
.L28_42:
    leaq lb_ownership_dead(%rip), %rbx
    movq $0, %rax
    movq %rax, %r12
.L28_43:
    movq -216(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L28_45
.L28_44:
    movq %fs:0, %rax
    addq lb_ownership_whites@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r12, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %fs:0, %rax
    addq lb_ownership_live@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_90(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r14, %r10
    movq %r15, (%r10)
    movl $0, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movzbl (%r10), %r15d
    movq %r14, %r10
    movb %r15b, (%r10)
    movq %r13, %rdi
    call lb_ownership_13release_shell@PLT
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L28_43
.L28_45:
    movq $0, %rax
    movq -216(%rbp), %r10
    movq %rax, (%r10)
    movl $0, %eax
    movq -128(%rbp), %r10
    movb %al, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_9weak_make
    .type lb_ownership_9weak_make, @function
lb_ownership_9weak_make:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -72(%rbp), %r10
    movq %rbx, (%r10)
    leaq -88(%rbp), %r10
    movl %r12d, (%r10)
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
    jmp .L29_6
.L29_5:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L29_6:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L29_2
.L29_1:
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_92(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    jmp .L29_3
.L29_2:
.L29_3:
    leaq -56(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq -32(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r13, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L29_4:
    leaq .Ltext_93(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_9weak_copy
    .type lb_ownership_9weak_copy, @function
lb_ownership_9weak_copy:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L30_4
    jmp .L30_2
.L30_4:
.L30_1:
    movq %r12, %rdi
    call lb_ownership_12check_thread@PLT
    leaq lb_ownership_immortal(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq -72(%rbp), %r10
    movq %r12, (%r10)
    leaq -88(%rbp), %r10
    movl %r13d, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq -88(%rbp), %r14
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
    leaq -96(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L30_10
.L30_9:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L30_10:
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L30_6
.L30_5:
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r14d
    movl %r14d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_94(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    jmp .L30_7
.L30_6:
.L30_7:
    jmp .L30_3
.L30_2:
.L30_3:
    leaq -40(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L30_8:
    leaq .Ltext_95(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_9weak_drop
    .type lb_ownership_9weak_drop, @function
lb_ownership_9weak_drop:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq -40(%rbp), %r10
    movq %rdi, 0(%r10)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L31_4
    jmp .L31_2
.L31_4:
.L31_1:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -56(%rbp), %r10
    movq %rbx, (%r10)
    leaq -72(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
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
    jmp .L31_9
.L31_8:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L31_9:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L31_6
.L31_5:
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_96(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    movq %rbx, %rdi
    call lb_ownership_13release_shell@PLT
    jmp .L31_7
.L31_6:
.L31_7:
    jmp .L31_3
.L31_2:
.L31_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_8weak_get
    .type lb_ownership_8weak_get, @function
lb_ownership_8weak_get:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -48(%rbp), %r10
    movq %rdi, 0(%r10)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L32_4
    jmp .L32_2
.L32_4:
.L32_1:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    leaq lb_ownership_dead(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -64(%rbp), %r10
    movq %rbx, (%r10)
    leaq -80(%rbp), %r10
    movl %r12d, (%r10)
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
    jmp .L32_11
.L32_10:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L32_11:
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L32_6
.L32_5:
    leaq -104(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    leaq lb_ownership_immortal(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq -120(%rbp), %r10
    movq %rbx, (%r10)
    leaq -136(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq -136(%rbp), %r14
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
    leaq -144(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L32_18
.L32_17:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L32_18:
    testl %r13d, %r13d
    jne .L32_12
    jmp .L32_13
.L32_12:
    jmp .L32_20
.L32_15:
    jmp .L32_14
.L32_13:
.L32_14:
    movq %rbx, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq lb_ownership_black(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq -160(%rbp), %r10
    movq %rbx, (%r10)
    leaq -176(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_10color_mask(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $4294967295, %ecx
    xorl %ecx, %r14d
    movzbl %r14b, %r14d
    andl %r14d, %r13d
    leaq -176(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
.L32_19:
    jmp .L32_20
.L32_16:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L32_20:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L32_8:
    jmp .L32_7
.L32_6:
.L32_7:
    jmp .L32_3
.L32_2:
.L32_3:
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L32_9:
    leaq .Ltext_97(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_10finish_run
    .type lb_ownership_10finish_run, @function
lb_ownership_10finish_run:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movl %edi, -56(%rbp)
    movq $0, %rdi
    call lb_ownership_drain@PLT
    call lb_ownership_collect@PLT
    movq %fs:0, %rax
    addq lb_ownership_live@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L33_2
.L33_1:
    leaq -152(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    leaq -168(%rbp), %rax
    movq %rax, -432(%rbp)
    leaq -224(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq $96, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -248(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $96, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq .Ltext_98(%rip), %r15
    movq %r13, %rdi
    movq %r15, %rsi
    movq $9, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r15d
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %r15, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %ebx
    leaq .Ltext_99(%rip), %r15
    movq %r13, %rdi
    movq %r15, %rsi
    movq $23, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq -296(%rbp), %r15
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r14
    jbe .L33_7
.L33_6:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_100(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $60, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L33_8
.L33_7:
    movq %r13, %rdi
    call lb_core_13format_finish@PLT
    leaq -312(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -312(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L33_8:
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L33_10
    jmp .L33_9
.L33_10:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -208(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L33_4
.L33_9:
    leaq -184(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L33_5
.L33_4:
    leaq .Ltext_101(%rip), %rbx
    leaq -328(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $31, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -184(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L33_5
.L33_11:
.L33_5:
    leaq -184(%rbp), %rbx
    movq %rbx, %r10
    movq -432(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -344(%rbp), %rbx
    call lb_io_stderr@PLT
    leaq -360(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -360(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rsi
    movq -432(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -424(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -424(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L33_15
    jmp .L33_14
.L33_15:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -384(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L33_12
.L33_14:
    jmp .L33_13
.L33_12:
    jmp .L33_13
.L33_16:
.L33_13:
    movl $3, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L33_17:
    jmp .L33_3
.L33_2:
.L33_3:
    call lb_ownership_15release_buffers@PLT
    movq %fs:0, %rax
    addq lb_ownership_13runtime_depth@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq %fs:0, %rax
    addq lb_ownership_14thread_context@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L33_18:
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_11finish_task
    .type lb_ownership_11finish_task, @function
lb_ownership_11finish_task:
    pushq %rbp
    movq %rsp, %rbp
    subq $416, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq $0, %rdi
    call lb_ownership_drain@PLT
    call lb_ownership_collect@PLT
    movq %fs:0, %rax
    addq lb_ownership_live@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L34_2
.L34_1:
    leaq -136(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    leaq -152(%rbp), %rax
    movq %rax, -416(%rbp)
    leaq -208(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq $96, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -232(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $96, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq .Ltext_98(%rip), %r15
    movq %r13, %rdi
    movq %r15, %rsi
    movq $9, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r15d
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %r15, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %ebx
    leaq .Ltext_103(%rip), %r15
    movq %r13, %rdi
    movq %r15, %rsi
    movq $33, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq -280(%rbp), %r15
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r14
    jbe .L34_7
.L34_6:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_100(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $60, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L34_8
.L34_7:
    movq %r13, %rdi
    call lb_core_13format_finish@PLT
    leaq -296(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -296(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L34_8:
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L34_10
    jmp .L34_9
.L34_10:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -192(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L34_4
.L34_9:
    leaq -168(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L34_5
.L34_4:
    leaq .Ltext_104(%rip), %rbx
    leaq -312(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $41, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -168(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L34_5
.L34_11:
.L34_5:
    leaq -168(%rbp), %rbx
    movq %rbx, %r10
    movq -416(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -328(%rbp), %rbx
    call lb_io_stderr@PLT
    leaq -344(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -344(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rsi
    movq -416(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -408(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -408(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L34_15
    jmp .L34_14
.L34_15:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -368(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L34_12
.L34_14:
    jmp .L34_13
.L34_12:
    jmp .L34_13
.L34_16:
.L34_13:
    movl $3, %edi
    call lb_core_exit@PLT
    jmp .L34_3
.L34_2:
.L34_3:
    call lb_ownership_15release_buffers@PLT
    movq %fs:0, %rax
    addq lb_ownership_13runtime_depth@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq %fs:0, %rax
    addq lb_ownership_14thread_context@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_15release_buffers
    .type lb_ownership_15release_buffers, @function
lb_ownership_15release_buffers:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %fs:0, %rax
    addq lb_ownership_13pending_count@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L35_1
    jmp .L35_22
.L35_22:
    movl %ebx, %r12d
    jmp .L35_2
.L35_1:
    movq %fs:0, %rax
    addq lb_ownership_10root_count@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
.L35_2:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L35_3
    jmp .L35_23
.L35_23:
    movl %ebx, %r12d
    jmp .L35_4
.L35_3:
    movq %fs:0, %rax
    addq lb_ownership_11white_count@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
.L35_4:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L35_5
    jmp .L35_6
.L35_6:
    leaq .Ltext_106(%rip), %rdi
    leaq .Ltext_105(%rip), %rsi
    call lb_core_7trap_at@PLT
.L35_5:
    movq %fs:0, %rax
    addq lb_ownership_pending@GOTTPOFF(%rip), %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L35_8
.L35_7:
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -136(%rbp)
    leaq -56(%rbp), %r14
    movq -128(%rbp), %r10
    movq (%r10), %r15
    movq %r12, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq -136(%rbp), %r10
    movq (%r10), %r13
    movq -136(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L35_11
    jmp .L35_10
.L35_11:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L35_10:
    jmp .L35_9
.L35_8:
.L35_9:
    movq %fs:0, %rax
    addq lb_ownership_roots@GOTTPOFF(%rip), %rax
    movq %rax, -144(%rbp)
    movq -144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L35_13
.L35_12:
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -152(%rbp)
    leaq -72(%rbp), %r15
    movq -144(%rbp), %r10
    movq (%r10), %rbx
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_108(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq -152(%rbp), %r10
    movq (%r10), %rbx
    movq -152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L35_16
    jmp .L35_15
.L35_16:
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq %r15, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L35_15:
    jmp .L35_14
.L35_13:
.L35_14:
    movq %fs:0, %rax
    addq lb_ownership_whites@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L35_18
.L35_17:
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -160(%rbp)
    leaq -88(%rbp), %r15
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq -160(%rbp), %r10
    movq (%r10), %r12
    movq -160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L35_21
    jmp .L35_20
.L35_21:
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %r15, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L35_20:
    jmp .L35_19
.L35_18:
.L35_19:
    leaq -104(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -120(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq -128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq -144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq %rbx, %r11
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

    .section .init_array,"aw"
    .p2align 3
    .quad lb_ownership_0init
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
    .asciz "src/std/ownership/module.lucb:220:5"
.Ltext_37:
    .asciz "src/std/ownership/pool.lucb:13:5"
.Ltext_38:
    .asciz "src/std/ownership/pool.lucb:17:9"
.Ltext_39:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_40:
    .asciz "src/std/ownership/pool.lucb:18:13"
.Ltext_41:
    .asciz "src/std/ownership/pool.lucb:21:13"
.Ltext_42:
    .asciz "src/std/ownership/pool.lucb:22:13"
.Ltext_43:
    .asciz "src/std/ownership/pool.lucb:24:13"
.Ltext_44:
    .asciz "src/std/ownership/pool.lucb:26:5"
.Ltext_45:
    .asciz "src/std/ownership/pool.lucb:27:5"
.Ltext_46:
    .asciz "src/std/ownership/pool.lucb:32:5"
.Ltext_47:
    .asciz "src/std/ownership/pool.lucb:49:9"
.Ltext_48:
    .asciz "src/std/ownership/pool.lucb:55:13"
.Ltext_49:
    .asciz "src/std/ownership/pool.lucb:56:9"
.Ltext_50:
    .asciz "src/std/ownership/cycles.lucb:13:9"
.Ltext_51:
    .asciz "src/std/ownership/cycles.lucb:14:13"
.Ltext_52:
    .asciz "src/std/ownership/cycles.lucb:17:13"
.Ltext_53:
    .asciz "src/std/ownership/cycles.lucb:18:13"
.Ltext_54:
    .asciz "src/std/ownership/cycles.lucb:20:13"
.Ltext_55:
    .asciz "src/std/ownership/cycles.lucb:22:5"
.Ltext_56:
    .asciz "src/std/ownership/cycles.lucb:23:5"
.Ltext_57:
    .asciz "src/std/ownership/cycles.lucb:27:9"
.Ltext_58:
    .asciz "src/std/ownership/cycles.lucb:28:13"
.Ltext_59:
    .asciz "src/std/ownership/cycles.lucb:31:13"
.Ltext_60:
    .asciz "src/std/ownership/cycles.lucb:32:13"
.Ltext_61:
    .asciz "src/std/ownership/cycles.lucb:34:13"
.Ltext_62:
    .asciz "src/std/ownership/cycles.lucb:36:5"
.Ltext_63:
    .asciz "src/std/ownership/cycles.lucb:37:5"
.Ltext_64:
    .asciz "src/std/ownership/cycles.lucb:52:5"
.Ltext_65:
    .asciz "src/std/ownership/cycles.lucb:70:5"
.Ltext_66:
    .asciz "src/std/ownership/cycles.lucb:104:9"
.Ltext_67:
    .asciz "src/std/ownership/cycles.lucb:115:9"
.Ltext_68:
    .asciz "src/std/ownership/cycles.lucb:117:13"
.Ltext_69:
    .asciz "src/std/ownership/cycles.lucb:118:13"
.Ltext_70:
    .asciz "src/std/ownership/cycles.lucb:122:9"
.Ltext_71:
    .asciz "src/std/ownership/cycles.lucb:126:9"
.Ltext_72:
    .asciz "src/std/ownership/cycles.lucb:127:9"
.Ltext_73:
    .asciz "src/std/ownership/cycles.lucb:130:9"
.Ltext_74:
    .asciz "src/std/ownership/cycles.lucb:131:9"
.Ltext_75:
    .asciz "src/std/ownership/cycles.lucb:135:9"
.Ltext_76:
    .asciz "src/std/ownership/cycles.lucb:136:9"
.Ltext_77:
    .asciz "src/std/ownership/cycles.lucb:139:9"
.Ltext_78:
    .asciz "src/std/ownership/cycles.lucb:140:9"
.Ltext_79:
    .asciz "src/std/ownership/cycles.lucb:146:9"
.Ltext_80:
    .asciz "src/std/ownership/cycles.lucb:147:9"
.Ltext_81:
    .asciz "src/std/ownership/cycles.lucb:150:9"
.Ltext_82:
    .asciz "src/std/ownership/cycles.lucb:153:13"
.Ltext_83:
    .asciz "src/std/ownership/cycles.lucb:155:13"
.Ltext_84:
    .asciz "src/std/ownership/cycles.lucb:156:17"
.Ltext_85:
    .asciz "src/std/ownership/cycles.lucb:159:13"
.Ltext_86:
    .asciz "src/std/ownership/cycles.lucb:160:9"
.Ltext_87:
    .asciz "src/std/ownership/cycles.lucb:163:9"
.Ltext_88:
    .asciz "src/std/ownership/cycles.lucb:164:9"
.Ltext_89:
    .asciz "src/std/ownership/cycles.lucb:167:9"
.Ltext_90:
    .asciz "src/std/ownership/cycles.lucb:168:9"
.Ltext_91:
    .asciz "src/std/ownership/cycles.lucb:172:9"
.Ltext_92:
    .asciz "src/std/ownership/weak.lucb:9:9"
.Ltext_93:
    .asciz "src/std/ownership/weak.lucb:10:5"
.Ltext_94:
    .asciz "src/std/ownership/weak.lucb:16:13"
.Ltext_95:
    .asciz "src/std/ownership/weak.lucb:17:5"
.Ltext_96:
    .asciz "src/std/ownership/weak.lucb:23:13"
.Ltext_97:
    .asciz "src/std/ownership/weak.lucb:32:5"
.Ltext_98:
    .asciz "runtime: "
.Ltext_99:
    .asciz " objects alive at exit\n"
.Ltext_100:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
.Ltext_101:
    .asciz "runtime: objects alive at exit\n"
.Ltext_102:
    .asciz "src/std/ownership/lifecycle.lucb:17:5"
.Ltext_103:
    .asciz " objects alive when a task ended\n"
.Ltext_104:
    .asciz "runtime: objects alive when a task ended\n"
.Ltext_105:
    .asciz "assert failed: pending_count == 0 and root_count == 0 and white_count == 0"
.Ltext_106:
    .asciz "src/std/ownership/lifecycle.lucb:39:5"
.Ltext_107:
    .asciz "src/std/ownership/lifecycle.lucb:41:9"
.Ltext_108:
    .asciz "src/std/ownership/lifecycle.lucb:43:9"
.Ltext_109:
    .asciz "src/std/ownership/lifecycle.lucb:45:9"
.Ltext_110:
    .asciz "integer overflow"
.Ltext_111:
    .asciz "index out of bounds"

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

    .section .tbss,"awT",@nobits
    .globl lb_ownership_pending
    .type lb_ownership_pending, @object
    .p2align 3
lb_ownership_pending:
    .zero 16

    .section .tbss,"awT",@nobits
    .globl lb_ownership_13pending_count
    .type lb_ownership_13pending_count, @object
    .p2align 3
lb_ownership_13pending_count:
    .zero 8

    .bss
    .globl lb_ownership_15candidate_limit
    .type lb_ownership_15candidate_limit, @object
    .p2align 3
lb_ownership_15candidate_limit:
    .zero 8

    .section .tbss,"awT",@nobits
    .globl lb_ownership_roots
    .type lb_ownership_roots, @object
    .p2align 3
lb_ownership_roots:
    .zero 16

    .section .tbss,"awT",@nobits
    .globl lb_ownership_10root_count
    .type lb_ownership_10root_count, @object
    .p2align 3
lb_ownership_10root_count:
    .zero 8

    .section .tbss,"awT",@nobits
    .globl lb_ownership_whites
    .type lb_ownership_whites, @object
    .p2align 3
lb_ownership_whites:
    .zero 16

    .section .tbss,"awT",@nobits
    .globl lb_ownership_11white_count
    .type lb_ownership_11white_count, @object
    .p2align 3
lb_ownership_11white_count:
    .zero 8

    .section .tbss,"awT",@nobits
    .globl lb_ownership_17collector_running
    .type lb_ownership_17collector_running, @object
    .p2align 0
lb_ownership_17collector_running:
    .zero 1

    .section .note.GNU-stack,"",@progbits
