    .text

    .p2align 4
    .globl lb_ownership_cycles_0init
    .type lb_ownership_cycles_0init, @function
lb_ownership_cycles_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
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
    .globl lb_ownership_13possible_root
    .type lb_ownership_13possible_root, @function
lb_ownership_13possible_root:
    pushq %rbp
    movq %rsp, %rbp
    subq $336, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %rdi
    call lb_ownership_8color_of@PLT
    movl %eax, %r12d
    leaq lb_ownership_purple(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_2
.L1_1:
    movq -240(%rbp), %rdi
    movl %r13d, %esi
    call lb_ownership_9set_color@PLT
    leaq lb_ownership_buffered(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r14d
    movq -240(%rbp), %rdi
    movl %r14d, %esi
    call lb_ownership_has@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L1_5
.L1_4:
    movq -240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r14d
    movq %r12, %r10
    movzbl (%r10), %eax
    movl %eax, -248(%rbp)
    movl -248(%rbp), %ecx
    orl %ecx, %r14d
    movq %r13, %r10
    movb %r14b, (%r10)
    movq -240(%rbp), %rax
    leaq -72(%rbp), %r10
    movq %rax, (%r10)
    movq %fs:0, %rax
    addq lb_ownership_10root_count@GOTTPOFF(%rip), %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %r14
    movq %fs:0, %rax
    addq lb_ownership_roots@GOTTPOFF(%rip), %rax
    movq %rax, -264(%rbp)
    movq -264(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -272(%rbp)
    movq -272(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jne .L1_13
.L1_12:
    leaq -88(%rbp), %rax
    movq %rax, -304(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -312(%rbp)
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L1_18
.L1_17:
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, -320(%rbp)
    jmp .L1_19
.L1_18:
    leaq lb_ownership_15candidate_limit(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq %rax, -320(%rbp)
.L1_19:
    leaq -176(%rbp), %rax
    movq %rax, -328(%rbp)
    movq -320(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L1_21
.L1_20:
    movq -328(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_1(%rip), %r15
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
    movq -328(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L1_22
.L1_21:
    movq -320(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq -312(%rbp), %r10
    movq (%r10), %r14
    movq -312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L1_23
    jmp .L1_24
.L1_24:
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_23:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %r14, %rsi
    movq %r13, %rdx
    movq $8, %rcx
    leaq -200(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -200(%rbp), %r12
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, -280(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl -280(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L1_25
    jmp .L1_26
.L1_25:
    movq -328(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_3(%rip), %r12
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
    movq -328(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_22
.L1_26:
    movq %r12, %r10
    movq (%r10), %rbx
    movq -328(%rbp), %r10
    movq %rbx, (%r10)
    movq -328(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -320(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -328(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L1_22:
    movq -328(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_28
    jmp .L1_27
.L1_28:
    movq -328(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -128(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L1_15
.L1_27:
    leaq -104(%rbp), %rbx
    movq -328(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_16
.L1_15:
    leaq .Ltext_4(%rip), %rbx
    leaq -216(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $13, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_5(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
.L1_16:
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq -304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -304(%rbp), %r10
    movq (%r10), %rbx
    movq -304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rax
    movq %rax, %r13
.L1_29:
    movq -256(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L1_31
.L1_30:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r13, %rax
    imulq %rcx, %rax
    movq %rax, -288(%rbp)
    movq -288(%rbp), %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -296(%rbp)
    movq -264(%rbp), %r10
    movq (%r10), %r15
    movq -272(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -288(%rbp), %rax
    movq %rax, %r14
    addq %r15, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -296(%rbp), %r10
    movq %r14, (%r10)
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r13
    jmp .L1_29
.L1_31:
    movq -272(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L1_33
.L1_32:
    leaq -232(%rbp), %r12
    movq -264(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
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
    movq -312(%rbp), %r10
    movq (%r10), %r13
    movq -312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_36
    jmp .L1_35
.L1_36:
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
.L1_35:
    jmp .L1_34
.L1_33:
.L1_34:
    movq -304(%rbp), %r10
    movq -264(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_14
.L1_13:
.L1_14:
    movq -256(%rbp), %r10
    movq (%r10), %rbx
    movq -264(%rbp), %r10
    movq (%r10), %r12
    movq -272(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq -240(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -256(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -256(%rbp), %r10
    movq %rbx, (%r10)
.L1_37:
    leaq lb_ownership_15candidate_limit(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_10
    jmp .L1_38
.L1_38:
    movl %r12d, %ebx
    jmp .L1_11
.L1_10:
    movq %fs:0, %rax
    addq lb_ownership_17collector_running@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L1_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_7
    jmp .L1_8
.L1_7:
    call lb_ownership_collect@PLT
    jmp .L1_9
.L1_8:
.L1_9:
    jmp .L1_6
.L1_5:
.L1_6:
    jmp .L1_3
.L1_2:
.L1_3:
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
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    movq %rsi, -48(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L2_1
    jmp .L2_2
.L2_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    movq %rbx, %rdi
    call lb_ownership_9mark_gray@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_9mark_gray
    .type lb_ownership_9mark_gray, @function
lb_ownership_9mark_gray:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_8color_of@PLT
    movl %eax, %r12d
    leaq lb_ownership_gray(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_2
.L3_1:
    movq %rbx, %rdi
    movl %r13d, %esi
    call lb_ownership_9set_color@PLT
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $40, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq lb_ownership_15visit_mark_gray@GOTPCREL(%rip), %r14
    movq %rbx, %rdi
    movq %r14, %rsi
    movq %rbx, %rdx
    movq %r12, %r11
    call *%r11
    jmp .L3_3
.L3_2:
.L3_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_10visit_scan
    .type lb_ownership_10visit_scan, @function
lb_ownership_10visit_scan:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    movq %rsi, -48(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L4_1
    jmp .L4_2
.L4_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    movq %rbx, %rdi
    call lb_ownership_scan@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_16visit_scan_black
    .type lb_ownership_16visit_scan_black, @function
lb_ownership_16visit_scan_black:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
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
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L5_1
    jmp .L5_2
.L5_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_4:
    jmp .L5_3
.L5_2:
.L5_3:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    movq %rbx, %rdi
    call lb_ownership_8color_of@PLT
    movl %eax, %r12d
    leaq lb_ownership_black(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L5_6
.L5_5:
    leaq -80(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    movl %r13d, %esi
    call lb_ownership_9set_color@PLT
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $40, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq lb_ownership_16visit_scan_black@GOTPCREL(%rip), %r14
    movq %rbx, %rdi
    movq %r14, %rsi
    movq %rbx, %rdx
    movq %r12, %r11
    call *%r11
.L5_8:
    jmp .L5_7
.L5_6:
.L5_7:
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
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_8color_of@PLT
    movl %eax, %r12d
    leaq lb_ownership_gray(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    cmpl %r13d, %r12d
    jne .L6_2
.L6_1:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jbe .L6_5
.L6_4:
    leaq -56(%rbp), %r10
    movq %rbx, (%r10)
    leaq lb_ownership_black(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_ownership_9set_color@PLT
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
.L6_7:
    jmp .L6_6
.L6_5:
    leaq lb_ownership_white(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_ownership_9set_color@PLT
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
.L6_6:
    jmp .L6_3
.L6_2:
.L6_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_12visit_gather
    .type lb_ownership_12visit_gather, @function
lb_ownership_12visit_gather:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    movq %rsi, -48(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L7_1
    jmp .L7_2
.L7_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_4:
    jmp .L7_3
.L7_2:
.L7_3:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    movq %rbx, %rdi
    call lb_ownership_gather@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_gather
    .type lb_ownership_gather, @function
lb_ownership_gather:
    pushq %rbp
    movq %rsp, %rbp
    subq $336, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %rdi
    call lb_ownership_8color_of@PLT
    movl %eax, %r12d
    leaq lb_ownership_white(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L8_4
    jmp .L8_32
.L8_32:
    movl %r12d, %r13d
    jmp .L8_5
.L8_4:
    leaq lb_ownership_collecting(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq -240(%rbp), %rdi
    movl %r12d, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L8_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L8_1
    jmp .L8_2
.L8_1:
    movq -240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_collecting(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq -240(%rbp), %rax
    leaq -72(%rbp), %r10
    movq %rax, (%r10)
    movq %fs:0, %rax
    addq lb_ownership_11white_count@GOTTPOFF(%rip), %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %r10
    movq (%r10), %r13
    movq %fs:0, %rax
    addq lb_ownership_whites@GOTTPOFF(%rip), %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -264(%rbp)
    movq -264(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    jne .L8_7
.L8_6:
    leaq -88(%rbp), %rax
    movq %rax, -304(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -312(%rbp)
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L8_12
.L8_11:
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rax
    movq %rax, -320(%rbp)
    jmp .L8_13
.L8_12:
    movq $256, %rax
    movq %rax, -320(%rbp)
.L8_13:
    leaq -176(%rbp), %rax
    movq %rax, -328(%rbp)
    movq -320(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L8_15
.L8_14:
    movq -328(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $208273409, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq .Ltext_1(%rip), %r15
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -328(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L8_16
.L8_15:
    movq -320(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq -312(%rbp), %r10
    movq (%r10), %rbx
    movq -312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L8_17
    jmp .L8_18
.L8_18:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_17:
    movq %r15, %r10
    movq (%r10), %r14
    movq %rbx, %rsi
    movq %r12, %rdx
    movq $8, %rcx
    leaq -200(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -200(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, -272(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl -272(%rbp), %eax
    andl %r14d, %eax
    movl %eax, -280(%rbp)
    movl -280(%rbp), %eax
    testl %eax, %eax
    jne .L8_19
    jmp .L8_20
.L8_19:
    movq -328(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_3(%rip), %r12
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
    movq -328(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L8_16
.L8_20:
    movq %r13, %r10
    movq (%r10), %rbx
    movq -328(%rbp), %r10
    movq %rbx, (%r10)
    movq -328(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -320(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -328(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L8_16:
    movq -328(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_22
    jmp .L8_21
.L8_22:
    movq -328(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -128(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L8_9
.L8_21:
    leaq -104(%rbp), %rbx
    movq -328(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L8_10
.L8_9:
    leaq .Ltext_4(%rip), %rbx
    leaq -216(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $13, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_12(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
.L8_10:
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq -304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -304(%rbp), %r10
    movq (%r10), %rbx
    movq -304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rax
    movq %rax, %r13
.L8_23:
    movq -248(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L8_25
.L8_24:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r13, %rax
    imulq %rcx, %rax
    movq %rax, -288(%rbp)
    movq -288(%rbp), %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -296(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %r15
    movq -264(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -288(%rbp), %rax
    movq %rax, %r14
    addq %r15, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -296(%rbp), %r10
    movq %r14, (%r10)
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r13
    jmp .L8_23
.L8_25:
    movq -264(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L8_27
.L8_26:
    leaq -232(%rbp), %r12
    movq -256(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
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
    movq -312(%rbp), %r10
    movq (%r10), %r13
    movq -312(%rbp), %rax
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
.L8_29:
    jmp .L8_28
.L8_27:
.L8_28:
    movq -304(%rbp), %r10
    movq -256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L8_8
.L8_7:
.L8_8:
    movq -248(%rbp), %r10
    movq (%r10), %rbx
    movq -256(%rbp), %r10
    movq (%r10), %r12
    movq -264(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq -240(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -248(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -248(%rbp), %r10
    movq %rbx, (%r10)
.L8_31:
    movq -240(%rbp), %rax
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
    movq -240(%rbp), %rdi
    movq %r12, %rsi
    movq -240(%rbp), %rdx
    movq %rbx, %r11
    call *%r11
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
    .globl lb_ownership_13visit_restore
    .type lb_ownership_13visit_restore, @function
lb_ownership_13visit_restore:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    movq %rsi, -48(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L9_1
    jmp .L9_2
.L9_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_4:
    jmp .L9_3
.L9_2:
.L9_3:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    leaq lb_ownership_collecting(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L9_5
    jmp .L9_6
.L9_5:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    jmp .L9_7
.L9_6:
.L9_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_collect
    .type lb_ownership_collect, @function
lb_ownership_collect:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %fs:0, %rax
    addq lb_ownership_17collector_running@GOTTPOFF(%rip), %rax
    movq %rax, -64(%rbp)
    movq -64(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L10_1
    jmp .L10_2
.L10_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_4:
    jmp .L10_3
.L10_2:
.L10_3:
    movl $1, %eax
    movq -64(%rbp), %r10
    movb %al, (%r10)
    leaq lb_ownership_purple(%rip), %rax
    movq %rax, -96(%rbp)
    leaq lb_ownership_dead(%rip), %rax
    movq %rax, -104(%rbp)
    leaq lb_ownership_buffered(%rip), %rax
    movq %rax, -112(%rbp)
    movq $0, %rax
    movq %rax, -152(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L10_5:
    movq %fs:0, %rax
    addq lb_ownership_10root_count@GOTTPOFF(%rip), %rax
    movq %rax, -72(%rbp)
    movq -72(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r14
    jae .L10_7
.L10_6:
    movq %fs:0, %rax
    addq lb_ownership_roots@GOTTPOFF(%rip), %rax
    movq %rax, -80(%rbp)
    movq -80(%rbp), %r10
    movq (%r10), %r15
    movq -80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -88(%rbp)
    movq -88(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r14, %rbx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_8color_of@PLT
    movl %eax, %r15d
    movq -96(%rbp), %r10
    movzbl (%r10), %r13d
    cmpl %r13d, %r15d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L10_11
    jmp .L10_46
.L10_46:
    movl %r13d, %r15d
    jmp .L10_12
.L10_11:
    movq %rbx, %r10
    movl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    seta %al
    movzbl %al, %r15d
.L10_12:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L10_13
    jmp .L10_47
.L10_47:
    movl %r13d, %r15d
    jmp .L10_14
.L10_13:
    movq -104(%rbp), %r10
    movzbl (%r10), %r13d
    movq %rbx, %rdi
    movl %r13d, %esi
    call lb_ownership_has@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
.L10_14:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L10_8
    jmp .L10_9
.L10_8:
    movq -80(%rbp), %r10
    movq (%r10), %r13
    movq -88(%rbp), %r10
    movq (%r10), %r15
    movq -152(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    addq %r15, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq -152(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    jmp .L10_10
.L10_9:
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r15d
    movq -112(%rbp), %r10
    movzbl (%r10), %r12d
    movl $4294967295, %ecx
    xorl %ecx, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %ecx
    movl %r15d, %r12d
    andl %ecx, %r12d
    movq %r13, %r10
    movb %r12b, (%r10)
    movq %rbx, %rdi
    call lb_ownership_13release_shell@PLT
    movq -152(%rbp), %rax
    movq %rax, %r13
.L10_10:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r13, %rax
    movq %rax, -152(%rbp)
    movq %rbx, %r14
    jmp .L10_5
.L10_7:
    movq -152(%rbp), %rax
    movq -72(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, %rbx
.L10_15:
    movq -72(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L10_17
.L10_16:
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
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
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
    jmp .L10_15
.L10_17:
    movq $0, %rax
    movq %rax, %rbx
.L10_18:
    movq -72(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L10_20
.L10_19:
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
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
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
    jmp .L10_18
.L10_20:
    movq %fs:0, %rax
    addq lb_ownership_11white_count@GOTTPOFF(%rip), %rax
    movq %rax, -120(%rbp)
    movq $0, %rax
    movq -120(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, %r12
.L10_21:
    movq -72(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L10_23
.L10_22:
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
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
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
    jmp .L10_21
.L10_23:
    leaq lb_ownership_buffered(%rip), %r12
    movq $0, %rax
    movq %rax, %r13
.L10_24:
    movq -72(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L10_26
.L10_25:
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
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
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
    jmp .L10_24
.L10_26:
    movq $0, %rax
    movq -72(%rbp), %r10
    movq %rax, (%r10)
    movq lb_ownership_13visit_restore@GOTPCREL(%rip), %rbx
    movq $0, %rax
    movq %rax, %r12
.L10_27:
    movq -120(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L10_29
.L10_28:
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
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
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
    jmp .L10_27
.L10_29:
    leaq .Ltext_38(%rip), %rax
    movq %rax, -128(%rbp)
    leaq -56(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -136(%rbp)
    leaq .Ltext_39(%rip), %rax
    movq %rax, -144(%rbp)
    movq $0, %rax
    movq %rax, -160(%rbp)
.L10_30:
    movq -120(%rbp), %r10
    movq (%r10), %r14
    movq -160(%rbp), %rax
    cmpq %r14, %rax
    jae .L10_32
.L10_31:
    movq %fs:0, %rax
    addq lb_ownership_whites@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -160(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -160(%rbp), %rax
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
    jne .L10_36
    jmp .L10_34
.L10_36:
.L10_33:
    movq %r13, %r10
    movl (%r10), %r15d
    movl %r15d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
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
    jbe .L10_38
.L10_37:
    movq -128(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $25, %rax
    movq -136(%rbp), %r10
    movq %rax, (%r10)
    movq -144(%rbp), %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L10_39
.L10_38:
.L10_39:
    movq %r13, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %ebx
    movq %r13, %r10
    movl %ebx, (%r10)
    jmp .L10_35
.L10_34:
.L10_35:
    movq -160(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -160(%rbp)
    jmp .L10_30
.L10_32:
    movq $0, %rax
    movq %rax, %rbx
.L10_40:
    movq -120(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L10_42
.L10_41:
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
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
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
    jmp .L10_40
.L10_42:
    leaq lb_ownership_dead(%rip), %rbx
    movq $0, %rax
    movq %rax, %r12
.L10_43:
    movq -120(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L10_45
.L10_44:
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
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
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
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
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
    jmp .L10_43
.L10_45:
    movq $0, %rax
    movq -120(%rbp), %r10
    movq %rax, (%r10)
    movl $0, %eax
    movq -64(%rbp), %r10
    movb %al, (%r10)
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
    .quad lb_ownership_cycles_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/ownership/cycles.lucb:13:9"
.Ltext_1:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_2:
    .asciz "memory.unset"
.Ltext_3:
    .asciz "memory.exhausted"
.Ltext_4:
    .asciz "out of memory"
.Ltext_5:
    .asciz "src/std/ownership/cycles.lucb:14:13"
.Ltext_6:
    .asciz "src/std/ownership/cycles.lucb:17:13"
.Ltext_7:
    .asciz "src/std/ownership/cycles.lucb:18:13"
.Ltext_8:
    .asciz "src/std/ownership/cycles.lucb:20:13"
.Ltext_9:
    .asciz "src/std/ownership/cycles.lucb:22:5"
.Ltext_10:
    .asciz "src/std/ownership/cycles.lucb:23:5"
.Ltext_11:
    .asciz "src/std/ownership/cycles.lucb:27:9"
.Ltext_12:
    .asciz "src/std/ownership/cycles.lucb:28:13"
.Ltext_13:
    .asciz "src/std/ownership/cycles.lucb:31:13"
.Ltext_14:
    .asciz "src/std/ownership/cycles.lucb:32:13"
.Ltext_15:
    .asciz "src/std/ownership/cycles.lucb:34:13"
.Ltext_16:
    .asciz "src/std/ownership/cycles.lucb:36:5"
.Ltext_17:
    .asciz "src/std/ownership/cycles.lucb:37:5"
.Ltext_18:
    .asciz "src/std/ownership/cycles.lucb:52:5"
.Ltext_19:
    .asciz "src/std/ownership/cycles.lucb:70:5"
.Ltext_20:
    .asciz "src/std/ownership/cycles.lucb:104:9"
.Ltext_21:
    .asciz "src/std/ownership/cycles.lucb:115:9"
.Ltext_22:
    .asciz "src/std/ownership/cycles.lucb:117:13"
.Ltext_23:
    .asciz "src/std/ownership/cycles.lucb:118:13"
.Ltext_24:
    .asciz "src/std/ownership/cycles.lucb:122:9"
.Ltext_25:
    .asciz "src/std/ownership/cycles.lucb:126:9"
.Ltext_26:
    .asciz "src/std/ownership/cycles.lucb:127:9"
.Ltext_27:
    .asciz "src/std/ownership/cycles.lucb:130:9"
.Ltext_28:
    .asciz "src/std/ownership/cycles.lucb:131:9"
.Ltext_29:
    .asciz "src/std/ownership/cycles.lucb:135:9"
.Ltext_30:
    .asciz "src/std/ownership/cycles.lucb:136:9"
.Ltext_31:
    .asciz "src/std/ownership/cycles.lucb:139:9"
.Ltext_32:
    .asciz "src/std/ownership/cycles.lucb:140:9"
.Ltext_33:
    .asciz "src/std/ownership/cycles.lucb:146:9"
.Ltext_34:
    .asciz "src/std/ownership/cycles.lucb:147:9"
.Ltext_35:
    .asciz "src/std/ownership/cycles.lucb:150:9"
.Ltext_36:
    .asciz "src/std/ownership/cycles.lucb:153:13"
.Ltext_37:
    .asciz "src/std/ownership/cycles.lucb:155:13"
.Ltext_38:
    .asciz "`deinit` published `self`"
.Ltext_39:
    .asciz "src/std/ownership/cycles.lucb:156:17"
.Ltext_40:
    .asciz "src/std/ownership/cycles.lucb:159:13"
.Ltext_41:
    .asciz "src/std/ownership/cycles.lucb:160:9"
.Ltext_42:
    .asciz "src/std/ownership/cycles.lucb:163:9"
.Ltext_43:
    .asciz "src/std/ownership/cycles.lucb:164:9"
.Ltext_44:
    .asciz "src/std/ownership/cycles.lucb:167:9"
.Ltext_45:
    .asciz "src/std/ownership/cycles.lucb:168:9"
.Ltext_46:
    .asciz "src/std/ownership/cycles.lucb:172:9"
.Ltext_47:
    .asciz "integer overflow"
.Ltext_48:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_ownership_15candidate_limit
    .type lb_ownership_15candidate_limit, @object
    .weak lb_ownership_15candidate_limit
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
