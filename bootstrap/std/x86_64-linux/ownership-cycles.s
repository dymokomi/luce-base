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
    movl $3, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_2
.L1_1:
    movq -240(%rbp), %rdi
    movl $3, %esi
    call lb_ownership_9set_color@PLT
    movq -240(%rbp), %rdi
    movl $4, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_5
.L1_4:
    movq -240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl $4, %ecx
    orl %ecx, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq -240(%rbp), %rax
    leaq -72(%rbp), %r10
    movq %rax, (%r10)
    movq %fs:0, %rax
    addq lb_ownership_10root_count@GOTTPOFF(%rip), %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %r10
    movq (%r10), %r13
    movq %fs:0, %rax
    addq lb_ownership_roots@GOTTPOFF(%rip), %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -264(%rbp)
    movq -264(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
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
    movq %rax, %r13
    movq %r13, %rax
    movq %rax, -320(%rbp)
    jmp .L1_19
.L1_18:
    movq $1024, %rax
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
    jmp .L1_22
.L1_21:
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
    jne .L1_23
    jmp .L1_24
.L1_24:
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_23:
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
    movq -248(%rbp), %r10
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
    movq -256(%rbp), %r10
    movq (%r10), %r15
    movq -264(%rbp), %r10
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
    movq -264(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L1_33
.L1_32:
    leaq -232(%rbp), %r12
    movq -256(%rbp), %r10
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
    movq -256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_14
.L1_13:
.L1_14:
    movq -248(%rbp), %r10
    movq (%r10), %rbx
    movq -256(%rbp), %r10
    movq (%r10), %r12
    movq -264(%rbp), %r10
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
    movq -248(%rbp), %r10
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
    movq -248(%rbp), %r10
    movq %rbx, (%r10)
.L1_37:
    movq $1024, %rcx
    cmpq %rcx, %rbx
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
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    movl $32, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L2_1
    jmp .L2_2
.L2_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
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
    leaq -72(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call lb_ownership_8color_of@PLT
    movl %eax, %r12d
    movl $1, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_6
.L2_5:
    movq %rbx, %rdi
    movl $1, %esi
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
    movq lb_ownership_15visit_mark_gray@GOTPCREL(%rip), %r13
    movq %rbx, %rdi
    movq %r13, %rsi
    movq %rbx, %rdx
    movq %r12, %r11
    call *%r11
    jmp .L2_7
.L2_6:
.L2_7:
.L2_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
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
    movq %rbx, %rdi
    movl $32, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L3_1
    jmp .L3_2
.L3_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
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
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    movl $32, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L4_1
    jmp .L4_2
.L4_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
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
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L4_6
.L4_5:
    leaq -72(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    movl $0, %esi
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
.L4_8:
    jmp .L4_7
.L4_6:
.L4_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
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
    movl $1, %ecx
    cmpl %ecx, %r12d
    jne .L5_2
.L5_1:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jbe .L5_5
.L5_4:
    leaq -56(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    movl $0, %esi
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
.L5_7:
    jmp .L5_6
.L5_5:
    movq %rbx, %rdi
    movl $2, %esi
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
.L5_6:
    jmp .L5_3
.L5_2:
.L5_3:
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
    movq %rbx, %rdi
    movl $32, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L6_1
    jmp .L6_2
.L6_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_4:
    jmp .L6_3
.L6_2:
.L6_3:
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
    movl $2, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L7_4
    jmp .L7_32
.L7_32:
    movl %r12d, %r13d
    jmp .L7_5
.L7_4:
    movq -240(%rbp), %rdi
    movl $16, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L7_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L7_1
    jmp .L7_2
.L7_1:
    movq -240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl $16, %ecx
    orl %ecx, %r13d
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
    jne .L7_7
.L7_6:
    leaq -88(%rbp), %rax
    movq %rax, -304(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -312(%rbp)
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L7_12
.L7_11:
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
    jmp .L7_13
.L7_12:
    movq $256, %rax
    movq %rax, -320(%rbp)
.L7_13:
    leaq -176(%rbp), %rax
    movq %rax, -328(%rbp)
    movq -320(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L7_15
.L7_14:
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
    jmp .L7_16
.L7_15:
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
    jne .L7_17
    jmp .L7_18
.L7_18:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_17:
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
    jne .L7_19
    jmp .L7_20
.L7_19:
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
    jmp .L7_16
.L7_20:
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
.L7_16:
    movq -328(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_22
    jmp .L7_21
.L7_22:
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
    jmp .L7_9
.L7_21:
    leaq -104(%rbp), %rbx
    movq -328(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L7_10
.L7_9:
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
.L7_10:
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
.L7_23:
    movq -248(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L7_25
.L7_24:
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
    jmp .L7_23
.L7_25:
    movq -264(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L7_27
.L7_26:
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
    jne .L7_30
    jmp .L7_29
.L7_30:
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
.L7_29:
    jmp .L7_28
.L7_27:
.L7_28:
    movq -304(%rbp), %r10
    movq -256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L7_8
.L7_7:
.L7_8:
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
.L7_31:
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
    jmp .L7_3
.L7_2:
.L7_3:
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
    movq %rbx, %rdi
    movl $32, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L8_1
    jmp .L8_2
.L8_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_4:
    jmp .L8_3
.L8_2:
.L8_3:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    movq %rbx, %rdi
    movl $16, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L8_5
    jmp .L8_6
.L8_5:
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
    jmp .L8_7
.L8_6:
.L8_7:
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
    subq $144, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %fs:0, %rax
    addq lb_ownership_17collector_running@GOTTPOFF(%rip), %rax
    movq %rax, -80(%rbp)
    movq -80(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L9_1
    jmp .L9_2
.L9_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_4:
    jmp .L9_3
.L9_2:
.L9_3:
    movl $1, %eax
    movq -80(%rbp), %r10
    movb %al, (%r10)
    movq $0, %rax
    movq %rax, -120(%rbp)
    movq $0, %rax
    movq %rax, -128(%rbp)
.L9_5:
    movq %fs:0, %rax
    addq lb_ownership_10root_count@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq -128(%rbp), %rax
    cmpq %r15, %rax
    jae .L9_7
.L9_6:
    movq %fs:0, %rax
    addq lb_ownership_roots@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq -128(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -128(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_ownership_8color_of@PLT
    movl %eax, %r15d
    movl $3, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L9_11
    jmp .L9_50
.L9_50:
    movl %r15d, %r13d
    jmp .L9_12
.L9_11:
    movq %r12, %r10
    movl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    seta %al
    movzbl %al, %r13d
.L9_12:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L9_13
    jmp .L9_51
.L9_51:
    movl %r15d, %r13d
    jmp .L9_14
.L9_13:
    movq %r12, %rdi
    movl $8, %esi
    call lb_ownership_has@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L9_14:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L9_8
    jmp .L9_9
.L9_8:
    movq %r14, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    movq -120(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -120(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    addq %r15, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq -120(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    jmp .L9_10
.L9_9:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r13d
    movl $251, %ecx
    andl %ecx, %r13d
    movq %rbx, %r10
    movb %r13b, (%r10)
    movq %r12, %rdi
    call lb_ownership_13release_shell@PLT
    movq -120(%rbp), %rax
    movq %rax, %r13
.L9_10:
    movq -128(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r13, %rax
    movq %rax, -120(%rbp)
    movq %rbx, %rax
    movq %rax, -128(%rbp)
    jmp .L9_5
.L9_7:
    movq -120(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq lb_ownership_15visit_mark_gray@GOTPCREL(%rip), %rbx
    movq $0, %rax
    movq %rax, %r12
.L9_15:
    movq %r14, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L9_17
.L9_16:
    movq %fs:0, %rax
    addq lb_ownership_roots@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r12, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -72(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %rdi
    call lb_ownership_8color_of@PLT
    movl %eax, %r15d
    movl $1, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L9_47
.L9_46:
    movq %r13, %rdi
    movl $1, %esi
    call lb_ownership_9set_color@PLT
    movq $16, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $40, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    movq %r15, %r11
    call *%r11
    jmp .L9_48
.L9_47:
.L9_48:
.L9_49:
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L9_15
.L9_17:
    movq $0, %rax
    movq %rax, %rbx
.L9_18:
    movq %r14, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L9_20
.L9_19:
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
    jmp .L9_18
.L9_20:
    movq %fs:0, %rax
    addq lb_ownership_11white_count@GOTTPOFF(%rip), %rax
    movq %rax, -88(%rbp)
    movq $0, %rax
    movq -88(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, %r12
.L9_21:
    movq %r14, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L9_23
.L9_22:
    movq %fs:0, %rax
    addq lb_ownership_roots@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r15
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
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    call lb_ownership_gather@PLT
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L9_21
.L9_23:
    movq $0, %rax
    movq %rax, %r12
.L9_24:
    movq %r14, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L9_26
.L9_25:
    movq %fs:0, %rax
    addq lb_ownership_roots@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r12, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r15d
    movl $251, %ecx
    andl %ecx, %r15d
    movq %r13, %r10
    movb %r15b, (%r10)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L9_24
.L9_26:
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq lb_ownership_13visit_restore@GOTPCREL(%rip), %r12
    movq $0, %rax
    movq %rax, %r13
.L9_27:
    movq -88(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L9_29
.L9_28:
    movq %fs:0, %rax
    addq lb_ownership_whites@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_33(%rip), %rdi
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
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $40, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rdi
    movq %r12, %rsi
    movq %r14, %rdx
    movq %r15, %r11
    call *%r11
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L9_27
.L9_29:
    leaq .Ltext_38(%rip), %rax
    movq %rax, -96(%rbp)
    leaq -56(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -104(%rbp)
    leaq .Ltext_39(%rip), %rax
    movq %rax, -112(%rbp)
    movq $0, %rax
    movq %rax, -136(%rbp)
.L9_30:
    movq -88(%rbp), %r10
    movq (%r10), %r14
    movq -136(%rbp), %rax
    cmpq %r14, %rax
    jae .L9_32
.L9_31:
    movq %fs:0, %rax
    addq lb_ownership_whites@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -136(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -136(%rbp), %rax
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
    jne .L9_36
    jmp .L9_34
.L9_36:
.L9_33:
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
    jbe .L9_38
.L9_37:
    movq -96(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $25, %rax
    movq -104(%rbp), %r10
    movq %rax, (%r10)
    movq -112(%rbp), %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L9_39
.L9_38:
.L9_39:
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
    jmp .L9_35
.L9_34:
.L9_35:
    movq -136(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -136(%rbp)
    jmp .L9_30
.L9_32:
    movq $0, %rax
    movq %rax, %rbx
.L9_40:
    movq -88(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L9_42
.L9_41:
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
    jmp .L9_40
.L9_42:
    movq $0, %rax
    movq %rax, %rbx
.L9_43:
    movq -88(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L9_45
.L9_44:
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
    leaq .Ltext_44(%rip), %rdi
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
    movq %fs:0, %rax
    addq lb_ownership_live@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movl $0, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $8, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rdi
    call lb_ownership_13release_shell@PLT
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L9_43
.L9_45:
    movq $0, %rax
    movq -88(%rbp), %r10
    movq %rax, (%r10)
    movl $0, %eax
    movq -80(%rbp), %r10
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
    .asciz "src/std/ownership/cycles.lucb:11:9"
.Ltext_1:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_2:
    .asciz "memory.unset"
.Ltext_3:
    .asciz "memory.exhausted"
.Ltext_4:
    .asciz "out of memory"
.Ltext_5:
    .asciz "src/std/ownership/cycles.lucb:12:13"
.Ltext_6:
    .asciz "src/std/ownership/cycles.lucb:15:13"
.Ltext_7:
    .asciz "src/std/ownership/cycles.lucb:16:13"
.Ltext_8:
    .asciz "src/std/ownership/cycles.lucb:18:13"
.Ltext_9:
    .asciz "src/std/ownership/cycles.lucb:20:5"
.Ltext_10:
    .asciz "src/std/ownership/cycles.lucb:21:5"
.Ltext_11:
    .asciz "src/std/ownership/cycles.lucb:25:9"
.Ltext_12:
    .asciz "src/std/ownership/cycles.lucb:26:13"
.Ltext_13:
    .asciz "src/std/ownership/cycles.lucb:29:13"
.Ltext_14:
    .asciz "src/std/ownership/cycles.lucb:30:13"
.Ltext_15:
    .asciz "src/std/ownership/cycles.lucb:32:13"
.Ltext_16:
    .asciz "src/std/ownership/cycles.lucb:34:5"
.Ltext_17:
    .asciz "src/std/ownership/cycles.lucb:35:5"
.Ltext_18:
    .asciz "src/std/ownership/cycles.lucb:50:5"
.Ltext_19:
    .asciz "src/std/ownership/cycles.lucb:68:5"
.Ltext_20:
    .asciz "src/std/ownership/cycles.lucb:102:9"
.Ltext_21:
    .asciz "src/std/ownership/cycles.lucb:113:9"
.Ltext_22:
    .asciz "src/std/ownership/cycles.lucb:115:13"
.Ltext_23:
    .asciz "src/std/ownership/cycles.lucb:116:13"
.Ltext_24:
    .asciz "src/std/ownership/cycles.lucb:120:9"
.Ltext_25:
    .asciz "src/std/ownership/cycles.lucb:124:9"
.Ltext_26:
    .asciz "src/std/ownership/cycles.lucb:125:9"
.Ltext_27:
    .asciz "src/std/ownership/cycles.lucb:128:9"
.Ltext_28:
    .asciz "src/std/ownership/cycles.lucb:129:9"
.Ltext_29:
    .asciz "src/std/ownership/cycles.lucb:133:9"
.Ltext_30:
    .asciz "src/std/ownership/cycles.lucb:134:9"
.Ltext_31:
    .asciz "src/std/ownership/cycles.lucb:137:9"
.Ltext_32:
    .asciz "src/std/ownership/cycles.lucb:138:9"
.Ltext_33:
    .asciz "src/std/ownership/cycles.lucb:144:9"
.Ltext_34:
    .asciz "src/std/ownership/cycles.lucb:145:9"
.Ltext_35:
    .asciz "src/std/ownership/cycles.lucb:148:9"
.Ltext_36:
    .asciz "src/std/ownership/cycles.lucb:151:13"
.Ltext_37:
    .asciz "src/std/ownership/cycles.lucb:153:13"
.Ltext_38:
    .asciz "`deinit` published `self`"
.Ltext_39:
    .asciz "src/std/ownership/cycles.lucb:154:17"
.Ltext_40:
    .asciz "src/std/ownership/cycles.lucb:157:13"
.Ltext_41:
    .asciz "src/std/ownership/cycles.lucb:158:9"
.Ltext_42:
    .asciz "src/std/ownership/cycles.lucb:161:9"
.Ltext_43:
    .asciz "src/std/ownership/cycles.lucb:162:9"
.Ltext_44:
    .asciz "src/std/ownership/cycles.lucb:165:9"
.Ltext_45:
    .asciz "src/std/ownership/cycles.lucb:166:9"
.Ltext_46:
    .asciz "src/std/ownership/cycles.lucb:170:9"
.Ltext_47:
    .asciz "integer overflow"
.Ltext_48:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3

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
