    .text

    .p2align 4
    .globl lb_io_0init
    .type lb_io_0init, @function
lb_io_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq lb_io_14unexpected_eof(%rip), %rbx
    movl $208273422, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_io_11no_progress(%rip), %rbx
    movl $208273423, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_io_13invalid_count(%rip), %rbx
    movl $208273424, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_io_14invalid_buffer(%rip), %rbx
    movl $208273425, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_io_closed(%rip), %rbx
    movl $208273411, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_io_failed(%rip), %rbx
    movl $208273432, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_io_11would_block(%rip), %rbx
    movl $208273436, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq -20(%rbp), %rbx
    movq %rbx, %r11
    movl $0, 0(%r11)
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_io_8out_file(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    leaq -24(%rbp), %rbx
    movq %rbx, %r11
    movl $0, 0(%r11)
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_io_8err_file(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    leaq -28(%rbp), %rbx
    movq %rbx, %r11
    movl $0, 0(%r11)
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_io_7in_file(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    leaq lb_io_full(%rip), %rbx
    movl $208273412, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_io_14io_path_failed(%rip), %rbx
    movl $208273421, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_io_10read_exact
    .type lb_io_10read_exact, @function
lb_io_10read_exact:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
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
    movq %r9, -128(%rbp)
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -288(%rbp)
    movq -288(%rbp), %rax
    testq %rax, %rax
    jne .L1_4
    jmp .L1_2
.L1_4:
.L1_1:
    movq $0, %rax
    movq -288(%rbp), %r10
    movq %rax, (%r10)
    jmp .L1_3
.L1_2:
.L1_3:
    leaq -112(%rbp), %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -232(%rbp)
    leaq -96(%rbp), %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    leaq -144(%rbp), %rax
    movq %rax, -264(%rbp)
    movq -264(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -272(%rbp)
    leaq -184(%rbp), %rax
    movq %rax, -304(%rbp)
    movq -304(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -280(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L1_5:
    movq -232(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L1_7
.L1_6:
    movq -248(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -256(%rbp)
    movq %r15, %r10
    movq (%r10), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -296(%rbp)
    movq -224(%rbp), %r10
    movq (%r10), %r12
    movq -240(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -240(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -240(%rbp), %rcx
    cmpq %rcx, %rbx
    jbe .L1_8
.L1_9:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_8:
    movq %rbx, %r13
    addq %r12, %r13
    movq -240(%rbp), %rax
    movq %rax, %r14
    subq %rbx, %r14
    movq -264(%rbp), %r10
    movq %r13, (%r10)
    movq -272(%rbp), %r10
    movq %r14, (%r10)
    movq -256(%rbp), %rsi
    movq -264(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -184(%rbp), %rdi
    movq -296(%rbp), %r11
    call *%r11
    movq -280(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_11
    jmp .L1_10
.L1_11:
    movq -304(%rbp), %rax
    movq $8, %rcx
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
.L1_12:
.L1_10:
    movq -304(%rbp), %r10
    movq (%r10), %r12
    cmpq %r14, %r12
    jbe .L1_14
.L1_13:
    leaq -80(%rbp), %rbx
    leaq lb_io_13invalid_count(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq -200(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $45, %rax
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
.L1_16:
    jmp .L1_15
.L1_14:
.L1_15:
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L1_18
.L1_17:
    leaq -80(%rbp), %rbx
    leaq lb_io_14unexpected_eof(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_6(%rip), %r12
    leaq -216(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $45, %rax
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
.L1_20:
    jmp .L1_19
.L1_18:
.L1_19:
    movq %r12, %rax
    movq %rbx, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -288(%rbp), %rax
    testq %rax, %rax
    jne .L1_24
    jmp .L1_22
.L1_24:
.L1_21:
    movq -288(%rbp), %r10
    movq %r13, (%r10)
    jmp .L1_23
.L1_22:
.L1_23:
    movq %r13, %rbx
    jmp .L1_5
.L1_7:
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
    .globl lb_io_9write_all
    .type lb_io_9write_all, @function
lb_io_9write_all:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
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
    movq %r9, -128(%rbp)
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -288(%rbp)
    movq -288(%rbp), %rax
    testq %rax, %rax
    jne .L2_4
    jmp .L2_2
.L2_4:
.L2_1:
    movq $0, %rax
    movq -288(%rbp), %r10
    movq %rax, (%r10)
    jmp .L2_3
.L2_2:
.L2_3:
    leaq -112(%rbp), %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -232(%rbp)
    leaq -96(%rbp), %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    leaq -144(%rbp), %rax
    movq %rax, -264(%rbp)
    movq -264(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -272(%rbp)
    leaq -184(%rbp), %rax
    movq %rax, -304(%rbp)
    movq -304(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -280(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L2_5:
    movq -232(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L2_7
.L2_6:
    movq -248(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -256(%rbp)
    movq %r15, %r10
    movq (%r10), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -296(%rbp)
    movq -224(%rbp), %r10
    movq (%r10), %r12
    movq -240(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -240(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -240(%rbp), %rcx
    cmpq %rcx, %rbx
    jbe .L2_8
.L2_9:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_8:
    movq %rbx, %r13
    addq %r12, %r13
    movq -240(%rbp), %rax
    movq %rax, %r14
    subq %rbx, %r14
    movq -264(%rbp), %r10
    movq %r13, (%r10)
    movq -272(%rbp), %r10
    movq %r14, (%r10)
    movq -256(%rbp), %rsi
    movq -264(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -184(%rbp), %rdi
    movq -296(%rbp), %r11
    call *%r11
    movq -280(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L2_11
    jmp .L2_10
.L2_11:
    movq -304(%rbp), %rax
    movq $8, %rcx
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
.L2_12:
.L2_10:
    movq -304(%rbp), %r10
    movq (%r10), %r12
    cmpq %r14, %r12
    jbe .L2_14
.L2_13:
    leaq -80(%rbp), %rbx
    leaq lb_io_13invalid_count(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_10(%rip), %r12
    leaq -200(%rbp), %r13
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
.L2_16:
    jmp .L2_15
.L2_14:
.L2_15:
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L2_18
.L2_17:
    leaq -80(%rbp), %rbx
    leaq lb_io_11no_progress(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_11(%rip), %r12
    leaq -216(%rbp), %r13
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_20:
    jmp .L2_19
.L2_18:
.L2_19:
    movq %r12, %rax
    movq %rbx, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -288(%rbp), %rax
    testq %rax, %rax
    jne .L2_24
    jmp .L2_22
.L2_24:
.L2_21:
    movq -288(%rbp), %r10
    movq %r13, (%r10)
    jmp .L2_23
.L2_22:
.L2_23:
    movq %r13, %rbx
    jmp .L2_5
.L2_7:
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
    .globl lb_io_10copy_limit
    .type lb_io_10copy_limit, @function
lb_io_10copy_limit:
    pushq %rbp
    movq %rsp, %rbp
    subq $480, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -120(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    movq %r9, -152(%rbp)
    movq 32(%rbp), %rax
    movq %rax, -168(%rbp)
    leaq 16(%rbp), %r10
    leaq -136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -168(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -456(%rbp)
    movq -456(%rbp), %rax
    testq %rax, %rax
    jne .L3_4
    jmp .L3_2
.L3_4:
.L3_1:
    movq $0, %rax
    movq -456(%rbp), %r10
    movq %rax, (%r10)
    jmp .L3_3
.L3_2:
.L3_3:
    leaq -152(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L3_6
.L3_5:
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
.L3_8:
    jmp .L3_7
.L3_6:
.L3_7:
    leaq -136(%rbp), %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L3_10
.L3_9:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_14invalid_buffer(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_13(%rip), %r13
    leaq -184(%rbp), %r14
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
.L3_12:
    jmp .L3_11
.L3_10:
.L3_11:
    leaq -104(%rbp), %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -376(%rbp)
    movq -360(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, -384(%rbp)
    leaq -200(%rbp), %rax
    movq %rax, -392(%rbp)
    movq -392(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -400(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -472(%rbp)
    movq -472(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -408(%rbp)
    leaq -264(%rbp), %rax
    movq %rax, -416(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -424(%rbp)
    leaq -304(%rbp), %rax
    movq %rax, -432(%rbp)
    movq -432(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -440(%rbp)
    leaq -336(%rbp), %rax
    movq %rax, -480(%rbp)
    movq -480(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -448(%rbp)
    movq $0, %rax
    movq %rax, -464(%rbp)
.L3_13:
    movq -464(%rbp), %rax
    movq -344(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L3_15
.L3_14:
    movq -344(%rbp), %rax
    movq -464(%rbp), %rcx
    movq %rax, %rbx
    subq %rcx, %rbx
    movq -360(%rbp), %rax
    cmpq %rbx, %rax
    jae .L3_17
.L3_16:
    movq -360(%rbp), %rax
    movq %rax, %rbx
    jmp .L3_18
.L3_17:
.L3_18:
    movq -368(%rbp), %r10
    movq (%r10), %r15
    movq -376(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %r14
    movq -352(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rax
    movq -384(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -384(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L3_19
.L3_20:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_19:
    movq -392(%rbp), %r10
    movq %r13, (%r10)
    movq -400(%rbp), %r10
    movq %rbx, (%r10)
    movq %r15, %rsi
    movq -392(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -240(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    movq -408(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_22
    jmp .L3_21
.L3_22:
    movq -472(%rbp), %rax
    movq $8, %rcx
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
.L3_23:
.L3_21:
    movq -472(%rbp), %r10
    movq (%r10), %r12
    cmpq %rbx, %r12
    jbe .L3_25
.L3_24:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_13invalid_count(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_5(%rip), %r13
    leaq -256(%rbp), %r14
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
.L3_27:
    jmp .L3_26
.L3_25:
.L3_26:
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L3_29
.L3_28:
    jmp .L3_15
.L3_31:
    jmp .L3_30
.L3_29:
.L3_30:
    movq $0, %rax
    movq -416(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L3_34
.L3_35:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_34:
    movq -432(%rbp), %r10
    movq %r13, (%r10)
    movq -440(%rbp), %r10
    movq %r12, (%r10)
    movq -424(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -432(%rbp), %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq -416(%rbp), %r9
    leaq -336(%rbp), %rdi
    call lb_io_9write_all@PLT
    movq -448(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_37
    jmp .L3_36
.L3_37:
    leaq -288(%rbp), %rbx
    movq -480(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_32
.L3_36:
    jmp .L3_33
.L3_32:
    movq -456(%rbp), %rax
    testq %rax, %rax
    jne .L3_41
    jmp .L3_39
.L3_41:
.L3_38:
    movq -416(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -464(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -456(%rbp), %r10
    movq %r12, (%r10)
    jmp .L3_40
.L3_39:
.L3_40:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
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
.L3_42:
.L3_33:
    movq -416(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -464(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -456(%rbp), %rax
    testq %rax, %rax
    jne .L3_46
    jmp .L3_44
.L3_46:
.L3_43:
    movq -456(%rbp), %r10
    movq %rbx, (%r10)
    jmp .L3_45
.L3_44:
.L3_45:
    movq %rbx, %rax
    movq %rax, -464(%rbp)
    jmp .L3_13
.L3_15:
    leaq -88(%rbp), %rbx
    movq -464(%rbp), %rax
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
.L3_47:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_SliceReader_over
    .type lb_io_SliceReader_over, @function
lb_io_SliceReader_over:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    leaq -64(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -88(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -64(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_1:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_SliceReader_read
    .type lb_io_SliceReader_read, @function
lb_io_SliceReader_read:
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
    movq (%r10), %r15
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $16, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -144(%rbp)
    movq -144(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -152(%rbp)
    movq %rbx, %rax
    movq -152(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    jmp .L5_8
.L5_7:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_8:
    leaq -112(%rbp), %rax
    movq %rax, -136(%rbp)
    movq -136(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r14, %r12
    jae .L5_2
.L5_1:
    movq %r12, %rax
    movq %rax, -160(%rbp)
    jmp .L5_3
.L5_2:
    movq %r14, %rax
    movq %rax, -160(%rbp)
.L5_3:
    movq %r15, %r10
    movq (%r10), %r14
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -152(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -152(%rbp), %rax
    cmpq %rbx, %rax
    jbe .L5_4
.L5_5:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_4:
    movq -152(%rbp), %rax
    movq %rax, %r12
    addq %r14, %r12
    movq -152(%rbp), %rcx
    movq %rbx, %r15
    subq %rcx, %r15
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq -136(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -160(%rbp), %r8
    call lb_memory_move_0g1_u8@PLT
    movq -144(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -160(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -144(%rbp), %r10
    movq %r12, (%r10)
    leaq -88(%rbp), %r12
    movq -160(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
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
.L5_6:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_SliceWriter_over
    .type lb_io_SliceWriter_over, @function
lb_io_SliceWriter_over:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    leaq -64(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -88(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -64(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_1:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_SliceWriter_written
    .type lb_io_SliceWriter_written, @function
lb_io_SliceWriter_written:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $16, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L7_1
.L7_2:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_1:
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq -48(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_3:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_SliceWriter_write
    .type lb_io_SliceWriter_write, @function
lb_io_SliceWriter_write:
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
    leaq -112(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -96(%rbp), %r10
    movq (%r10), %r14
    leaq -112(%rbp), %rax
    movq %rax, -152(%rbp)
    movq -152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L8_2
.L8_1:
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
.L8_4:
    jmp .L8_3
.L8_2:
.L8_3:
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -160(%rbp)
    movq -160(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -168(%rbp)
    movq %r13, %rax
    movq -168(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L8_6
.L8_5:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
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
    movq $30, %rax
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
.L8_8:
    jmp .L8_7
.L8_6:
.L8_7:
    cmpq %rbx, %r12
    jae .L8_10
.L8_9:
    movq %r12, %rax
    movq %rax, -176(%rbp)
    jmp .L8_11
.L8_10:
    movq %rbx, %rax
    movq %rax, -176(%rbp)
.L8_11:
    movq %r14, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq -168(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -168(%rbp), %rax
    cmpq %r13, %rax
    jbe .L8_12
.L8_13:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_12:
    movq -168(%rbp), %rax
    movq %rax, %r12
    addq %r15, %r12
    movq -168(%rbp), %rcx
    movq %r13, %r14
    subq %rcx, %r14
    leaq -144(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -152(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -176(%rbp), %r8
    call lb_memory_move_0g1_u8@PLT
    movq -160(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -176(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -160(%rbp), %r10
    movq %rbx, (%r10)
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
.L8_14:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_BufferedReader_over
    .type lb_io_BufferedReader_over, @function
lb_io_BufferedReader_over:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -136(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -152(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -152(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L9_2
.L9_1:
    leaq -120(%rbp), %rbx
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_14invalid_buffer(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_31(%rip), %r13
    leaq -168(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $40, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $80, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_4:
    jmp .L9_3
.L9_2:
.L9_3:
    leaq -216(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -120(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq $72, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $80, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_5:
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_BufferedReader_read
    .type lb_io_BufferedReader_read, @function
lb_io_BufferedReader_read:
    pushq %rbp
    movq %rsp, %rbp
    subq $256, %rsp
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
    movq (%r10), %rax
    movq %rax, -240(%rbp)
    leaq -112(%rbp), %rax
    movq %rax, -192(%rbp)
    movq -192(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -200(%rbp)
    movq -200(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L10_2
.L10_1:
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
.L10_4:
    jmp .L10_3
.L10_2:
.L10_3:
    movq -240(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -216(%rbp)
    movq -240(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %r10
    movq (%r10), %r12
    movq -216(%rbp), %rax
    cmpq %r12, %rax
    jne .L10_6
.L10_5:
    movq -240(%rbp), %r10
    movq (%r10), %r12
    movq -240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq -240(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r12, %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -152(%rbp), %rdi
    movq %r15, %r11
    call *%r11
    leaq -152(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L10_9
    jmp .L10_8
.L10_9:
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
.L10_10:
.L10_8:
    movq %r15, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jbe .L10_12
.L10_11:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_13invalid_count(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_5(%rip), %r13
    leaq -168(%rbp), %r14
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
.L10_14:
    jmp .L10_13
.L10_12:
.L10_13:
    movq $0, %rax
    movq -208(%rbp), %r10
    movq %rax, (%r10)
    movq -224(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rbx
    movq $0, %rax
    movq %rax, %r14
    jmp .L10_7
.L10_6:
    movq %r12, %rbx
    movq -216(%rbp), %rax
    movq %rax, %r14
.L10_7:
    movq %rbx, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    jmp .L10_22
.L10_21:
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_22:
    movq -200(%rbp), %r10
    movq (%r10), %rbx
    cmpq %r12, %rbx
    jae .L10_16
.L10_15:
    movq %rbx, %rax
    movq %rax, -248(%rbp)
    jmp .L10_17
.L10_16:
    movq %r12, %rax
    movq %rax, -248(%rbp)
.L10_17:
    movq -240(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r14
    jbe .L10_18
.L10_19:
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_18:
    movq %r15, %rbx
    addq %r14, %rbx
    movq %r13, %rax
    subq %r14, %rax
    movq %rax, -232(%rbp)
    leaq -184(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq -232(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -192(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -248(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -208(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -248(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -208(%rbp), %r10
    movq %rbx, (%r10)
    leaq -88(%rbp), %rbx
    movq -248(%rbp), %rax
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
.L10_20:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_BufferedWriter_over
    .type lb_io_BufferedWriter_over, @function
lb_io_BufferedWriter_over:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -128(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -144(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -144(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L11_2
.L11_1:
    leaq -112(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_14invalid_buffer(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_37(%rip), %r13
    leaq -160(%rbp), %r14
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
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_4:
    jmp .L11_3
.L11_2:
.L11_3:
    leaq -200(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -112(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_5:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_BufferedWriter_buffered
    .type lb_io_BufferedWriter_buffered, @function
lb_io_BufferedWriter_buffered:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq $32, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_1:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_BufferedWriter_write
    .type lb_io_BufferedWriter_write, @function
lb_io_BufferedWriter_write:
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
    leaq -96(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -384(%rbp)
    leaq -112(%rbp), %rax
    movq %rax, -296(%rbp)
    movq -296(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -304(%rbp)
    movq -304(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L13_2
.L13_1:
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
.L13_4:
    jmp .L13_3
.L13_2:
.L13_3:
    movq -384(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -312(%rbp)
    movq -312(%rbp), %r10
    movq (%r10), %r15
    movq -384(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -320(%rbp)
    movq -320(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -328(%rbp)
    movq -328(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r15
    jne .L13_6
.L13_5:
    leaq -200(%rbp), %rax
    movq %rax, -344(%rbp)
    movq $0, %rax
    movq -344(%rbp), %r10
    movq %rax, (%r10)
    movq -320(%rbp), %r10
    movq (%r10), %r13
    movq -328(%rbp), %r10
    movq (%r10), %r15
    movq -312(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    addq %rcx, %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L13_19
.L13_20:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_19:
    leaq -240(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq -384(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq -344(%rbp), %r9
    leaq -272(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -272(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L13_22
    jmp .L13_21
.L13_22:
    leaq -224(%rbp), %rax
    movq %rax, -352(%rbp)
    movq %r15, %r10
    movq -352(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L13_17
.L13_21:
    jmp .L13_18
.L13_17:
    movq -312(%rbp), %r10
    movq (%r10), %r13
    movq -344(%rbp), %r10
    movq (%r10), %r14
    movq %r13, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -312(%rbp), %r10
    movq %r13, (%r10)
    movq -320(%rbp), %r10
    movq (%r10), %r14
    movq -328(%rbp), %r10
    movq (%r10), %r15
    movq -344(%rbp), %r10
    movq (%r10), %r12
    movq $1, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r15
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r12
    jbe .L13_23
.L13_24:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_23:
    movq %r14, %r13
    addq %r12, %r13
    movq %r15, %rax
    subq %r12, %rax
    movq %rax, -360(%rbp)
    leaq -288(%rbp), %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %r10
    movq %r13, (%r10)
    movq -368(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -360(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -312(%rbp), %r10
    movq (%r10), %r13
    movq -320(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -368(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r13, %r8
    call lb_memory_move_0g1_u8@PLT
    leaq -192(%rbp), %rax
    movq %rax, -376(%rbp)
    movq -352(%rbp), %r10
    movl (%r10), %r13d
    movq -376(%rbp), %r10
    movl %r13d, (%r10)
    movq -352(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -376(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -376(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -376(%rbp), %r10
    leaq -144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L13_26
.L13_25:
.L13_18:
    movq $0, %rax
    movq -312(%rbp), %r10
    movq %rax, (%r10)
    leaq -192(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L13_26:
    leaq -144(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_9
    jmp .L13_8
.L13_9:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_10:
.L13_8:
    jmp .L13_7
.L13_6:
.L13_7:
    movq -328(%rbp), %r10
    movq (%r10), %rbx
    movq -312(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rax
    movq %r12, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -304(%rbp), %r10
    movq (%r10), %r14
    cmpq %r13, %r14
    jae .L13_12
.L13_11:
    movq %r14, %rax
    movq %rax, -392(%rbp)
    jmp .L13_13
.L13_12:
    movq %r13, %rax
    movq %rax, -392(%rbp)
.L13_13:
    movq -320(%rbp), %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r12
    jbe .L13_14
.L13_15:
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_14:
    movq %r12, %r14
    addq %r15, %r14
    movq %rbx, %rax
    subq %r12, %rax
    movq %rax, -336(%rbp)
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq -336(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -296(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -392(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -312(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq -392(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -312(%rbp), %r10
    movq %r13, (%r10)
    leaq -88(%rbp), %r13
    movq -392(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
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
.L13_16:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_File_stream
    .type lb_io_File_stream, @function
lb_io_File_stream:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $1, %ecx
    cmpl %ecx, %ebx
    jne .L14_2
.L14_1:
    movq stdout@GOTPCREL(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_4:
    jmp .L14_3
.L14_2:
.L14_3:
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L14_6
.L14_5:
    movq stderr@GOTPCREL(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_8:
    jmp .L14_7
.L14_6:
.L14_7:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_47(%rip), %r13
    leaq -104(%rbp), %r14
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
.L14_9:
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_File_flush
    .type lb_io_File_flush, @function
lb_io_File_flush:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -72(%rbp)
    leaq -72(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -112(%rbp), %rdi
    call lb_io_File_stream@PLT
    leaq -112(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L15_2
    jmp .L15_1
.L15_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -64(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L15_3:
.L15_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call fflush@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L15_5
.L15_4:
    leaq -64(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_49(%rip), %r12
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $31, %rax
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
.L15_7:
    jmp .L15_6
.L15_5:
.L15_6:
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
    .globl lb_io_File_write
    .type lb_io_File_write, @function
lb_io_File_write:
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
    movq (%r10), %r14
    leaq -112(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L16_2
.L16_1:
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
.L16_4:
    jmp .L16_3
.L16_2:
.L16_3:
    movq %r14, %rsi
    leaq -152(%rbp), %rdi
    call lb_io_File_stream@PLT
    leaq -152(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L16_6
    jmp .L16_5
.L16_6:
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
.L16_7:
.L16_5:
    movq %r15, %r10
    movq (%r10), %r13
    leaq -184(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %rdi
    call flockfile@PLT
.L16_15:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rdi
    movq $1, %rsi
    movq %r12, %rdx
    movq %r13, %rcx
    call fwrite@PLT
    movq %rax, -216(%rbp)
    movq %r13, %rdi
    call fflush@PLT
    movl %eax, %r15d
    movq -216(%rbp), %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L16_19
    jmp .L16_11
.L16_19:
    movl %r14d, %ebx
    jmp .L16_12
.L16_11:
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L16_12:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L16_8
    jmp .L16_9
.L16_8:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_50(%rip), %r14
    leaq -168(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $28, %rax
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
    leaq -200(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %rdi
    call funlockfile@PLT
.L16_16:
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
.L16_13:
    jmp .L16_10
.L16_9:
.L16_10:
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
    leaq -200(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %rdi
    call funlockfile@PLT
.L16_17:
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
.L16_14:
    leaq -200(%rbp), %r10
    movq %rbx, (%r10)
    leaq -200(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call funlockfile@PLT
.L16_18:
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_StandardInput_read
    .type lb_io_StandardInput_read, @function
lb_io_StandardInput_read:
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
    movq (%r10), %r14
    leaq -112(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L17_2
.L17_1:
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
.L17_2:
.L17_3:
    movq $1073741824, %rcx
    cmpq %rcx, %r12
    jbe .L17_6
.L17_5:
    movq $1073741824, %rax
    movq %rax, %r12
    jmp .L17_7
.L17_6:
.L17_7:
    leaq lb_c_interrupted(%rip), %rax
    movq %rax, -216(%rbp)
.L17_8:
.L17_9:
    movq %r14, %r10
    movslq (%r10), %r15
    movq %rbx, %r10
    movq (%r10), %r13
    leaq -176(%rbp), %r10
    movl %r15d, (%r10)
    leaq -192(%rbp), %r10
    movq %r13, (%r10)
    leaq -208(%rbp), %r10
    movq %r12, (%r10)
    movl %r15d, %edi
    movq %r13, %rsi
    movq %r12, %rdx
    call read@PLT
    movq %rax, %r13
.L17_32:
    movq $0, %rcx
    cmpq %rcx, %r13
    jl .L17_12
.L17_11:
    leaq -88(%rbp), %rbx
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L17_12:
.L17_13:
    call lb_c_errno@PLT
    movl %eax, %r13d
    movq -216(%rbp), %r10
    movslq (%r10), %r15
    cmpl %r15d, %r13d
    jne .L17_16
.L17_15:
    jmp .L17_8
.L17_16:
.L17_17:
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L17_22
    jmp .L17_23
.L17_22:
    movl $35, %eax
    movl %eax, %ebx
    jmp .L17_24
.L17_23:
    movl $11, %eax
    movl %eax, %ebx
.L17_24:
    cmpl %ebx, %r13d
    jne .L17_20
.L17_19:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_11would_block(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_52(%rip), %r13
    leaq -128(%rbp), %r14
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
.L17_20:
.L17_21:
    movl $9, %ecx
    cmpl %ecx, %r13d
    jne .L17_27
.L17_26:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_53(%rip), %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $24, %rax
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
.L17_27:
.L17_28:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_54(%rip), %r13
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

    .p2align 4
    .globl lb_io_stdin
    .type lb_io_stdin, @function
lb_io_stdin:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq lb_io_7in_file(%rip), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq lb_vt_io_StandardInput_Reader(%rip), %rbx
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    leaq -40(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L18_1:
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_stdout
    .type lb_io_stdout, @function
lb_io_stdout:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq lb_io_8out_file(%rip), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq lb_vt_io_File_Writer(%rip), %rbx
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    leaq -40(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L19_1:
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_stderr
    .type lb_io_stderr, @function
lb_io_stderr:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq lb_io_8err_file(%rip), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq lb_vt_io_File_Writer(%rip), %rbx
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    leaq -40(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L20_1:
    leaq .Ltext_58(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_12flush_stdout
    .type lb_io_12flush_stdout, @function
lb_io_12flush_stdout:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    leaq lb_io_8out_file(%rip), %rbx
    movq %rbx, %rsi
    leaq -96(%rbp), %rdi
    call lb_io_File_flush@PLT
    leaq -96(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L21_2
    jmp .L21_1
.L21_2:
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
.L21_3:
.L21_1:
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
    .globl lb_io_12flush_stderr
    .type lb_io_12flush_stderr, @function
lb_io_12flush_stderr:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    leaq lb_io_8err_file(%rip), %rbx
    movq %rbx, %rsi
    leaq -96(%rbp), %rdi
    call lb_io_File_flush@PLT
    leaq -96(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L22_2
    jmp .L22_1
.L22_2:
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
.L22_3:
.L22_1:
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
    .globl lb_io_FormatSink_write
    .type lb_io_FormatSink_write, @function
lb_io_FormatSink_write:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
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
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r13, %rsi
    movq %r12, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L23_2
.L23_1:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_59(%rip), %r13
    leaq -120(%rbp), %r14
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L23_4:
    jmp .L23_3
.L23_2:
.L23_3:
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
.L23_5:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_path_user
    .type lb_io_path_user, @function
lb_io_path_user:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -104(%rbp), %r12
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L24_1
    jmp .L24_2
.L24_1:
    leaq .Ltext_61(%rip), %rbx
    jmp .L24_3
.L24_2:
    leaq .Ltext_62(%rip), %rbx
.L24_3:
    movq %rbx, %rsi
    leaq -128(%rbp), %rdi
    call lb_os_env@PLT
    leaq -128(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L24_4
    jmp .L24_5
.L24_4:
    leaq -144(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L24_6
.L24_5:
    leaq -88(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_14io_path_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_63(%rip), %r13
    leaq -160(%rbp), %r14
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L24_7:
.L24_6:
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -88(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
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
.L24_8:
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_path_home
    .type lb_io_path_home, @function
lb_io_path_home:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -136(%rbp), %rdi
    call lb_io_path_user@PLT
    leaq -136(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L25_2
    jmp .L25_1
.L25_2:
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
.L25_3:
.L25_1:
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
.L25_4:
    leaq .Ltext_65(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_path_temp
    .type lb_io_path_temp, @function
lb_io_path_temp:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq -56(%rbp), %r12
    leaq .Ltext_66(%rip), %rbx
    movq %rbx, %rsi
    leaq -80(%rbp), %rdi
    call lb_os_env@PLT
    leaq -80(%rbp), %r13
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L26_1
    jmp .L26_2
.L26_1:
    leaq -96(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L26_3
.L26_2:
    leaq .Ltext_67(%rip), %rbx
    leaq -112(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $4, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -40(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L26_4:
.L26_3:
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -40(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L26_5:
    leaq .Ltext_68(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_io_path_config
    .type lb_io_path_config, @function
lb_io_path_config:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq .Ltext_69(%rip), %rbx
    movq %rbx, %rsi
    leaq -120(%rbp), %rdi
    call lb_os_env@PLT
    leaq -120(%rbp), %r12
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L27_4
    jmp .L27_2
.L27_4:
    leaq -136(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L27_1:
    leaq -96(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
.L27_5:
    jmp .L27_3
.L27_2:
.L27_3:
    leaq -152(%rbp), %rax
    movq %rax, -408(%rbp)
    leaq -200(%rbp), %rdi
    call lb_io_path_user@PLT
    leaq -200(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L27_7
    jmp .L27_6
.L27_7:
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
.L27_8:
.L27_6:
    movq %r13, %r10
    movq -408(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -216(%rbp), %rax
    movq %rax, -416(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -424(%rbp)
    movq -408(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -384(%rbp)
    movq -384(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -392(%rbp)
    movq -392(%rbp), %rax
    movq $9, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    leaq -264(%rbp), %rax
    movq %rax, -432(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rbx
    jbe .L27_10
.L27_9:
    movq -432(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_71(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -432(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L27_11
.L27_10:
    movq -424(%rbp), %r10
    movq (%r10), %r13
    movq -424(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L27_12
    jmp .L27_13
.L27_13:
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_72(%rip), %rsi
    call lb_core_7trap_at@PLT
.L27_12:
    movq %r14, %r10
    movq (%r10), %r12
    movq %r13, %rsi
    movq %rbx, %rdx
    movq $1, %rcx
    leaq -288(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    leaq -288(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, -400(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl -400(%rbp), %eax
    movl %r12d, %ecx
    movl %eax, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L27_14
    jmp .L27_15
.L27_14:
    movq -432(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_73(%rip), %r12
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
    movq -432(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L27_11
.L27_15:
    movq %r15, %r10
    movq (%r10), %r12
    movq -432(%rbp), %r10
    movq %r12, (%r10)
    movq -432(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq -432(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L27_11:
    movq -432(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L27_17
    jmp .L27_16
.L27_17:
    movq -432(%rbp), %rax
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
.L27_18:
.L27_16:
    movq -432(%rbp), %r10
    movq -416(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -312(%rbp), %rbx
    movq -416(%rbp), %r10
    movq (%r10), %r12
    movq -416(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -408(%rbp), %r10
    movq (%r10), %r14
    movq %rbx, %rdi
    movq %r14, %rsi
    movq -392(%rbp), %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r14d
    leaq .Ltext_74(%rip), %r14
    movq %rbx, %rdi
    movq %r14, %rsi
    movq $8, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r14d
    leaq -360(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jbe .L27_20
.L27_19:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_75(%rip), %r12
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
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L27_21
.L27_20:
    movq %rbx, %rdi
    call lb_core_13format_finish@PLT
    leaq -376(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -376(%rbp), %r12
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L27_21:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L27_23
    jmp .L27_22
.L27_23:
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
.L27_24:
.L27_22:
    leaq -96(%rbp), %rbx
    movq %r14, %r10
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
.L27_25:
    leaq .Ltext_76(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_move_0g1_u8
    .type lb_memory_move_0g1_u8, @function
    .weak lb_memory_move_0g1_u8
lb_memory_move_0g1_u8:
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
    jne .L28_11
    jmp .L28_4
.L28_11:
    movl %r13d, %r14d
    jmp .L28_5
.L28_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L28_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L28_1
    jmp .L28_2
.L28_1:
    leaq .Ltext_3(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_77(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L28_3
.L28_2:
.L28_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L28_7
.L28_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -64(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %rdi
    movq %r14, %rsi
    movq %rbx, %rdx
    call memmove@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L28_9
    jmp .L28_10
.L28_10:
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_79(%rip), %rsi
    call lb_core_7trap_at@PLT
.L28_9:
    jmp .L28_8
.L28_7:
.L28_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
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
    jne .L29_11
    jmp .L29_4
.L29_11:
    movl %r13d, %r14d
    jmp .L29_5
.L29_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L29_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L29_1
    jmp .L29_2
.L29_1:
    leaq .Ltext_3(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_80(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L29_3
.L29_2:
.L29_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L29_7
.L29_6:
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
    jne .L29_9
    jmp .L29_10
.L29_10:
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_79(%rip), %rsi
    call lb_core_7trap_at@PLT
.L29_9:
    jmp .L29_8
.L29_7:
.L29_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_io_0init
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
    .asciz "src/std/io.lucb:18:5"
.Ltext_2:
    .asciz "src/std/io.lucb:46:9"
.Ltext_3:
    .asciz "index out of bounds"
.Ltext_4:
    .asciz "src/std/io.lucb:47:9"
.Ltext_5:
    .asciz "the reader returned more bytes than requested"
.Ltext_6:
    .asciz "the reader ended before the buffer was filled"
.Ltext_7:
    .asciz "src/std/io.lucb:51:9"
.Ltext_8:
    .asciz "src/std/io.lucb:64:9"
.Ltext_9:
    .asciz "src/std/io.lucb:65:9"
.Ltext_10:
    .asciz "the writer returned more bytes than supplied"
.Ltext_11:
    .asciz "the writer accepted no bytes"
.Ltext_12:
    .asciz "src/std/io.lucb:69:9"
.Ltext_13:
    .asciz "copying requires a nonempty scratch buffer"
.Ltext_14:
    .asciz "src/std/io.lucb:87:9"
.Ltext_15:
    .asciz "src/std/io.lucb:89:9"
.Ltext_16:
    .asciz "src/std/io.lucb:99:9"
.Ltext_17:
    .asciz "src/std/io.lucb:97:17"
.Ltext_18:
    .asciz "src/std/io.lucb:102:5"
.Ltext_19:
    .asciz "src/std/io.lucb:111:9"
.Ltext_20:
    .asciz "src/std/io.lucb:114:9"
.Ltext_21:
    .asciz "src/std/io.lucb:120:9"
.Ltext_22:
    .asciz "src/std/io.lucb:121:9"
.Ltext_23:
    .asciz "src/std/io.lucb:122:9"
.Ltext_24:
    .asciz "src/std/io.lucb:131:9"
.Ltext_25:
    .asciz "src/std/io.lucb:135:9"
.Ltext_26:
    .asciz "src/std/io.lucb:140:9"
.Ltext_27:
    .asciz "the destination buffer is full"
.Ltext_28:
    .asciz "src/std/io.lucb:144:9"
.Ltext_29:
    .asciz "src/std/io.lucb:145:9"
.Ltext_30:
    .asciz "src/std/io.lucb:146:9"
.Ltext_31:
    .asciz "buffered input requires nonempty storage"
.Ltext_32:
    .asciz "src/std/io.lucb:161:9"
.Ltext_33:
    .asciz "src/std/io.lucb:165:9"
.Ltext_34:
    .asciz "src/std/io.lucb:180:9"
.Ltext_35:
    .asciz "src/std/io.lucb:181:9"
.Ltext_36:
    .asciz "src/std/io.lucb:182:9"
.Ltext_37:
    .asciz "buffered output requires nonempty storage"
.Ltext_38:
    .asciz "src/std/io.lucb:196:9"
.Ltext_39:
    .asciz "src/std/io.lucb:200:9"
.Ltext_40:
    .asciz "src/std/io.lucb:211:9"
.Ltext_41:
    .asciz "src/std/io.lucb:208:13"
.Ltext_42:
    .asciz "src/std/io.lucb:209:13"
.Ltext_43:
    .asciz "src/std/io.lucb:221:9"
.Ltext_44:
    .asciz "src/std/io.lucb:223:9"
.Ltext_45:
    .asciz "src/std/io.lucb:224:9"
.Ltext_46:
    .asciz "src/std/io.lucb:225:9"
.Ltext_47:
    .asciz "the standard output stream is unavailable"
.Ltext_48:
    .asciz "src/std/io.lucb:251:9"
.Ltext_49:
    .asciz "the stream could not be flushed"
.Ltext_50:
    .asciz "the stream refused the bytes"
.Ltext_51:
    .asciz "src/std/io.lucb:269:9"
.Ltext_52:
    .asciz "standard input would block"
.Ltext_53:
    .asciz "standard input is closed"
.Ltext_54:
    .asciz "standard input could not be read"
.Ltext_55:
    .asciz "src/std/io.lucb:306:13"
.Ltext_56:
    .asciz "src/std/io.lucb:313:5"
.Ltext_57:
    .asciz "src/std/io.lucb:316:5"
.Ltext_58:
    .asciz "src/std/io.lucb:319:5"
.Ltext_59:
    .asciz "the buffer is full"
.Ltext_60:
    .asciz "src/std/io.lucb:339:9"
.Ltext_61:
    .asciz "USERPROFILE"
.Ltext_62:
    .asciz "HOME"
.Ltext_63:
    .asciz "no home directory"
.Ltext_64:
    .asciz "src/std/io.lucb:350:9"
.Ltext_65:
    .asciz "src/std/io.lucb:353:9"
.Ltext_66:
    .asciz "TMPDIR"
.Ltext_67:
    .asciz "/tmp"
.Ltext_68:
    .asciz "src/std/io.lucb:364:9"
.Ltext_69:
    .asciz "XDG_CONFIG_HOME"
.Ltext_70:
    .asciz "src/std/io.lucb:377:9"
.Ltext_71:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_72:
    .asciz "memory.unset"
.Ltext_73:
    .asciz "memory.exhausted"
.Ltext_74:
    .asciz "/.config"
.Ltext_75:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
.Ltext_76:
    .asciz "src/std/io.lucb:378:9"
.Ltext_77:
    .asciz "src/std/memory.lucb:332:9"
.Ltext_78:
    .asciz "src/std/memory.lucb:334:9"
.Ltext_79:
    .asciz "null_foreign"
.Ltext_80:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_81:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_82:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3
    .globl lb_vt_io_File_Writer
    .weak lb_vt_io_File_Writer
lb_vt_io_File_Writer:
    .quad lb_io_File_write
    .globl lb_vt_io_StandardInput_Reader
    .weak lb_vt_io_StandardInput_Reader
lb_vt_io_StandardInput_Reader:
    .quad lb_io_StandardInput_read

    .bss
    .globl lb_io_14unexpected_eof
    .type lb_io_14unexpected_eof, @object
    .p2align 2
lb_io_14unexpected_eof:
    .zero 4

    .bss
    .globl lb_io_11no_progress
    .type lb_io_11no_progress, @object
    .p2align 2
lb_io_11no_progress:
    .zero 4

    .bss
    .globl lb_io_13invalid_count
    .type lb_io_13invalid_count, @object
    .p2align 2
lb_io_13invalid_count:
    .zero 4

    .bss
    .globl lb_io_14invalid_buffer
    .type lb_io_14invalid_buffer, @object
    .p2align 2
lb_io_14invalid_buffer:
    .zero 4

    .bss
    .globl lb_io_closed
    .type lb_io_closed, @object
    .p2align 2
lb_io_closed:
    .zero 4

    .bss
    .globl lb_io_failed
    .type lb_io_failed, @object
    .p2align 2
lb_io_failed:
    .zero 4

    .bss
    .globl lb_io_11would_block
    .type lb_io_11would_block, @object
    .p2align 2
lb_io_11would_block:
    .zero 4

    .bss
    .globl lb_io_8out_file
    .type lb_io_8out_file, @object
    .p2align 2
lb_io_8out_file:
    .zero 4

    .bss
    .globl lb_io_8err_file
    .type lb_io_8err_file, @object
    .p2align 2
lb_io_8err_file:
    .zero 4

    .bss
    .globl lb_io_7in_file
    .type lb_io_7in_file, @object
    .p2align 2
lb_io_7in_file:
    .zero 4

    .bss
    .globl lb_io_full
    .type lb_io_full, @object
    .p2align 2
lb_io_full:
    .zero 4

    .bss
    .globl lb_io_14io_path_failed
    .type lb_io_14io_path_failed, @object
    .p2align 2
lb_io_14io_path_failed:
    .zero 4

    .section .note.GNU-stack,"",@progbits
