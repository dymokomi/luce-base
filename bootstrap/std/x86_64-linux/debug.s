    .text

    .p2align 4
    .globl lb_debug_0init
    .type lb_debug_0init, @function
lb_debug_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_debug_enter
    .type lb_debug_enter, @function
lb_debug_enter:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq lb_debug_depth(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $512, %rcx
    cmpq %rcx, %r12
    jae .L1_2
.L1_1:
    leaq lb_debug_activations(%rip), %r13
    movq $24, %rcx
    movq %r12, %r14
    imulq %rcx, %r14
    addq %r14, %r13
    leaq -80(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -56(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $0, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movl $0, %eax
    movq %r15, %r10
    movl %eax, (%r10)
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L1_3
.L1_2:
.L1_3:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_debug_leave
    .type lb_debug_leave, @function
lb_debug_leave:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq lb_debug_depth(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L2_2
.L2_1:
    movq %r12, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r13, (%r10)
    jmp .L2_3
.L2_2:
.L2_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_debug_at
    .type lb_debug_at, @function
lb_debug_at:
    pushq %rbp
    movq %rsp, %rbp
    subq $1360, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movl %esi, -72(%rbp)
    movq %rdx, -88(%rbp)
    leaq lb_debug_checked(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_2
.L3_1:
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_debug_active(%rip), %r12
    leaq .Ltext_3(%rip), %r13
    movq %r13, %rdi
    call getenv@PLT
    movq %rax, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    jmp .L3_3
.L3_2:
.L3_3:
    leaq lb_debug_active(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L3_45
    jmp .L3_7
.L3_45:
    movl %ebx, %r12d
    jmp .L3_8
.L3_7:
    leaq lb_debug_depth(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
.L3_8:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_46
    jmp .L3_9
.L3_46:
    movl %ebx, %r12d
    jmp .L3_10
.L3_9:
    leaq lb_debug_depth(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $512, %rcx
    cmpq %rcx, %rbx
    seta %al
    movzbl %al, %r12d
.L3_10:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_4
    jmp .L3_5
.L3_4:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_11:
    jmp .L3_6
.L3_5:
.L3_6:
    leaq lb_debug_depth(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -1248(%rbp)
    movq -1248(%rbp), %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -1256(%rbp)
    leaq -56(%rbp), %rax
    movq %rax, -1264(%rbp)
    movq -1264(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1272(%rbp)
    leaq lb_debug_activations(%rip), %r14
    movq -1256(%rbp), %rax
    movq $512, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1256(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    addq %r15, %r14
    leaq -112(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq -1272(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %eax
    movl %eax, -1280(%rbp)
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movl -1280(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq lb_debug_started(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L3_13
.L3_12:
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movl $1, %eax
    movl %eax, -1352(%rbp)
    jmp .L3_14
.L3_13:
    leaq lb_debug_stepping(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L3_15
    jmp .L3_16
.L3_15:
    movl $1, %eax
    movl %eax, -1344(%rbp)
    jmp .L3_17
.L3_16:
    leaq lb_debug_9step_over(%rip), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L3_21
    jmp .L3_47
.L3_47:
    movl %r14d, %ebx
    jmp .L3_22
.L3_21:
    movq %rbx, %r10
    movq (%r10), %r14
    cmpq %r13, %r14
    setbe %al
    movzbl %al, %r14d
    movl %r14d, %ebx
.L3_22:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L3_18
    jmp .L3_19
.L3_18:
    movl $1, %eax
    movl %eax, -1336(%rbp)
    jmp .L3_20
.L3_19:
    movq -1272(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    leaq -1192(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl -1280(%rbp), %eax
    leaq -1208(%rbp), %r10
    movl %eax, (%r10)
    leaq lb_debug_11break_count(%rip), %rax
    movq %rax, -1288(%rbp)
    leaq -1232(%rbp), %r13
    leaq lb_debug_breaks(%rip), %rax
    movq %rax, -1296(%rbp)
    movq $16, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -1304(%rbp)
    leaq -1192(%rbp), %rax
    movq %rax, -1328(%rbp)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -1312(%rbp)
    movq -1328(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1320(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L3_30:
    movq -1288(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r15
    jae .L3_32
.L3_31:
    movq $32, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $24, %rcx
    movq %r15, %r14
    imulq %rcx, %r14
    movq -1296(%rbp), %rax
    movq %r14, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -1304(%rbp), %r10
    movl (%r10), %r14d
    movl -1280(%rbp), %eax
    cmpl %r14d, %eax
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L3_36
    jmp .L3_48
.L3_48:
    movl %r14d, %ebx
    jmp .L3_37
.L3_36:
    movq -1312(%rbp), %r10
    movq (%r10), %rbx
    movq -1320(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %rbx
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L3_38
    jmp .L3_49
.L3_49:
    movl %r14d, %ebx
    jmp .L3_39
.L3_38:
    movq %r13, %r10
    movq (%r10), %r14
    movq -1328(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %r12, %rsi
    movq %rbx, %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L3_39:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L3_50
    jmp .L3_40
.L3_50:
    movl %r12d, %ebx
    jmp .L3_41
.L3_40:
    movq -1328(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_debug_9ends_with@PLT
    movl %eax, %ebx
.L3_41:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L3_37:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L3_33
    jmp .L3_34
.L3_33:
    movl $1, %eax
    leaq -1240(%rbp), %r10
    movl %eax, (%r10)
    movl $1, %eax
    movl %eax, %ebx
    jmp .L3_44
.L3_42:
    jmp .L3_35
.L3_34:
.L3_35:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L3_30
.L3_32:
    movl $0, %eax
    leaq -1240(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %ebx
    jmp .L3_44
.L3_43:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_44:
    testl %ebx, %ebx
    jne .L3_23
    jmp .L3_24
.L3_23:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L3_25
.L3_24:
    movl $0, %eax
    movl %eax, %ebx
.L3_25:
    movl %ebx, %eax
    movl %eax, -1336(%rbp)
.L3_20:
    movl -1336(%rbp), %eax
    movl %eax, -1344(%rbp)
.L3_17:
    movl -1344(%rbp), %eax
    movl %eax, -1352(%rbp)
.L3_14:
    movl -1352(%rbp), %eax
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_27
.L3_26:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_29:
    jmp .L3_28
.L3_27:
.L3_28:
    leaq lb_debug_stepping(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_debug_9step_over(%rip), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -1136(%rbp), %rbx
    leaq -1160(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_6(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $11, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -1272(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rdi
    movq %r13, %rsi
    movq %rbx, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_7(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $1, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movl -1280(%rbp), %eax
    movl %eax, %ebx
    movq %r12, %rdi
    movq %rbx, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %ebx
    leaq .Ltext_8(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $4, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -1272(%rbp), %r10
    movq (%r10), %rbx
    movq -1272(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -1176(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -1176(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    movq -1256(%rbp), %rdi
    call lb_debug_prompt@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_debug_9ends_with
    .type lb_debug_9ends_with, @function
lb_debug_9ends_with:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
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
    leaq -72(%rbp), %rax
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -120(%rbp)
    leaq -56(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -120(%rbp), %rax
    cmpq %r14, %rax
    jbe .L4_2
.L4_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -128(%rbp)
    movq -120(%rbp), %rcx
    movq %r14, %rbx
    subq %rcx, %rbx
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    cmpq %r15, %rbx
    jb 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %rbx
    jbe .L4_5
.L4_6:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_5:
    movq -128(%rbp), %rax
    movq %rax, %r13
    addq %rbx, %r13
    movq %r14, %r15
    subq %rbx, %r15
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq -120(%rbp), %rax
    cmpq %r15, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_7
    jmp .L4_10
.L4_10:
    movl %r12d, %ebx
    jmp .L4_8
.L4_7:
    movq -112(%rbp), %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call memcmp@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L4_8:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_9:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_debug_prompt
    .type lb_debug_prompt, @function
lb_debug_prompt:
    pushq %rbp
    movq %rsp, %rbp
    subq $5168, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -72(%rbp), %rax
    movq %rax, -4968(%rbp)
    leaq -1585(%rbp), %rax
    movq %rax, -4560(%rbp)
    leaq lb_debug_10line_bytes(%rip), %rax
    movq %rax, -4584(%rbp)
    leaq lb_debug_10line_bytes(%rip), %rax
    movq %rax, -4976(%rbp)
    leaq -1632(%rbp), %rax
    movq %rax, -4592(%rbp)
    movq -4592(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4600(%rbp)
    leaq -1648(%rbp), %rax
    movq %rax, -4608(%rbp)
    movq -4608(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4616(%rbp)
    leaq -1672(%rbp), %rax
    movq %rax, -4624(%rbp)
    movq -4624(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4632(%rbp)
    leaq -1584(%rbp), %rax
    movq %rax, -4640(%rbp)
    leaq -1616(%rbp), %rax
    movq %rax, -4568(%rbp)
    leaq -1584(%rbp), %rax
    movq %rax, -4576(%rbp)
    leaq -96(%rbp), %rax
    movq %rax, -4984(%rbp)
    movq -4984(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4120(%rbp)
    leaq -112(%rbp), %rax
    movq %rax, -4128(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -4992(%rbp)
    leaq -1704(%rbp), %rbx
    leaq -1720(%rbp), %rax
    movq %rax, -4648(%rbp)
    movq -4648(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4656(%rbp)
    leaq -1736(%rbp), %rax
    movq %rax, -4664(%rbp)
    movq -4664(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4672(%rbp)
    leaq -1688(%rbp), %rax
    movq %rax, -4680(%rbp)
    leaq -144(%rbp), %rax
    movq %rax, -4136(%rbp)
    leaq -160(%rbp), %rax
    movq %rax, -5008(%rbp)
    leaq -176(%rbp), %rax
    movq %rax, -4152(%rbp)
    movq -4152(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4160(%rbp)
    leaq -192(%rbp), %rax
    movq %rax, -4168(%rbp)
    movq -4168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4176(%rbp)
    leaq -1768(%rbp), %rbx
    leaq -1784(%rbp), %rax
    movq %rax, -4688(%rbp)
    movq -4688(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4696(%rbp)
    leaq -1800(%rbp), %rax
    movq %rax, -4704(%rbp)
    movq -4704(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4712(%rbp)
    leaq -1752(%rbp), %rax
    movq %rax, -4720(%rbp)
    leaq -208(%rbp), %rax
    movq %rax, -4184(%rbp)
    leaq .Ltext_16(%rip), %rax
    movq %rax, -4192(%rbp)
    leaq -224(%rbp), %rax
    movq %rax, -5016(%rbp)
    movq -5016(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4200(%rbp)
    leaq .Ltext_17(%rip), %rax
    movq %rax, -4208(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -5024(%rbp)
    movq -5024(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4216(%rbp)
    leaq .Ltext_18(%rip), %rax
    movq %rax, -4224(%rbp)
    leaq -256(%rbp), %rax
    movq %rax, -5032(%rbp)
    movq -5032(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4232(%rbp)
    leaq .Ltext_19(%rip), %rax
    movq %rax, -4240(%rbp)
    leaq -272(%rbp), %rax
    movq %rax, -5040(%rbp)
    movq -5040(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4248(%rbp)
    leaq .Ltext_20(%rip), %rax
    movq %rax, -4256(%rbp)
    leaq -288(%rbp), %rax
    movq %rax, -5048(%rbp)
    movq -5048(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4264(%rbp)
    leaq .Ltext_21(%rip), %rax
    movq %rax, -4272(%rbp)
    leaq -304(%rbp), %rax
    movq %rax, -5056(%rbp)
    movq -5056(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4280(%rbp)
    leaq .Ltext_22(%rip), %rax
    movq %rax, -4288(%rbp)
    leaq -320(%rbp), %rax
    movq %rax, -5064(%rbp)
    movq -5064(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4296(%rbp)
    leaq .Ltext_23(%rip), %rax
    movq %rax, -4304(%rbp)
    leaq -336(%rbp), %rax
    movq %rax, -5072(%rbp)
    movq -5072(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4312(%rbp)
    leaq .Ltext_24(%rip), %rax
    movq %rax, -4320(%rbp)
    leaq -352(%rbp), %rax
    movq %rax, -5080(%rbp)
    movq -5080(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4328(%rbp)
    leaq .Ltext_25(%rip), %rax
    movq %rax, -4336(%rbp)
    leaq -368(%rbp), %rax
    movq %rax, -5088(%rbp)
    movq -5088(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4344(%rbp)
    leaq .Ltext_25(%rip), %rax
    movq %rax, -4352(%rbp)
    leaq -384(%rbp), %rax
    movq %rax, -4360(%rbp)
    movq -4360(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4368(%rbp)
    leaq .Ltext_26(%rip), %rax
    movq %rax, -4376(%rbp)
    leaq -400(%rbp), %rax
    movq %rax, -5096(%rbp)
    movq -5096(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4384(%rbp)
    leaq .Ltext_27(%rip), %rax
    movq %rax, -4392(%rbp)
    leaq -416(%rbp), %rax
    movq %rax, -5104(%rbp)
    movq -5104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4400(%rbp)
    leaq .Ltext_28(%rip), %rax
    movq %rax, -4408(%rbp)
    leaq -432(%rbp), %rax
    movq %rax, -5112(%rbp)
    movq -5112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4416(%rbp)
    leaq .Ltext_29(%rip), %rax
    movq %rax, -4424(%rbp)
    leaq -448(%rbp), %rax
    movq %rax, -5120(%rbp)
    movq -5120(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4432(%rbp)
    leaq .Ltext_30(%rip), %rax
    movq %rax, -4448(%rbp)
    leaq -464(%rbp), %rax
    movq %rax, -5128(%rbp)
    movq -5128(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4456(%rbp)
    leaq .Ltext_31(%rip), %rax
    movq %rax, -4472(%rbp)
    leaq -480(%rbp), %rax
    movq %rax, -5136(%rbp)
    movq -5136(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4480(%rbp)
    leaq .Ltext_32(%rip), %rax
    movq %rax, -4488(%rbp)
    leaq -496(%rbp), %rax
    movq %rax, -5144(%rbp)
    movq -5144(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4496(%rbp)
    leaq -1520(%rbp), %rax
    movq %rax, -4504(%rbp)
    leaq -1544(%rbp), %rax
    movq %rax, -4512(%rbp)
    movq -4512(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4520(%rbp)
    movq -4512(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4528(%rbp)
    leaq .Ltext_33(%rip), %rax
    movq %rax, -4536(%rbp)
    leaq .Ltext_34(%rip), %rax
    movq %rax, -4544(%rbp)
    leaq -1560(%rbp), %rax
    movq %rax, -4552(%rbp)
    leaq lb_debug_depth(%rip), %rax
    movq %rax, -4864(%rbp)
    leaq -3048(%rbp), %rax
    movq %rax, -4872(%rbp)
    leaq lb_debug_activations(%rip), %rax
    movq %rax, -4880(%rbp)
    leaq -4072(%rbp), %rax
    movq %rax, -4888(%rbp)
    leaq -4096(%rbp), %rax
    movq %rax, -4896(%rbp)
    movq -4896(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4904(%rbp)
    movq -4896(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4912(%rbp)
    leaq .Ltext_54(%rip), %rax
    movq %rax, -4920(%rbp)
    leaq .Ltext_55(%rip), %rax
    movq %rax, -4928(%rbp)
    leaq .Ltext_48(%rip), %rax
    movq %rax, -4936(%rbp)
    leaq .Ltext_7(%rip), %rax
    movq %rax, -4944(%rbp)
    movq -4872(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4952(%rbp)
    leaq -4112(%rbp), %rax
    movq %rax, -4960(%rbp)
    leaq -56(%rbp), %rax
    movq %rax, -4464(%rbp)
    leaq -2992(%rbp), %rax
    movq %rax, -4840(%rbp)
    leaq lb_debug_activations(%rip), %rax
    movq %rax, -4848(%rbp)
    movq -4840(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4856(%rbp)
    leaq -56(%rbp), %rax
    movq %rax, -4440(%rbp)
    leaq -1856(%rbp), %rax
    movq %rax, -4728(%rbp)
    leaq lb_debug_activations(%rip), %rax
    movq %rax, -4736(%rbp)
    leaq -1832(%rbp), %rax
    movq %rax, -5160(%rbp)
    movq -5160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4752(%rbp)
    leaq -2880(%rbp), %rax
    movq %rax, -4768(%rbp)
    leaq -2904(%rbp), %rax
    movq %rax, -4776(%rbp)
    movq -4776(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4784(%rbp)
    movq -4776(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -4792(%rbp)
    leaq .Ltext_61(%rip), %rax
    movq %rax, -4800(%rbp)
    leaq -1832(%rbp), %rax
    movq %rax, -4808(%rbp)
    movq -4808(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4816(%rbp)
    leaq .Ltext_62(%rip), %rax
    movq %rax, -4824(%rbp)
    leaq -2920(%rbp), %rax
    movq %rax, -4832(%rbp)
    movq -4728(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4760(%rbp)
.L5_1:
.L5_2:
    movq $0, %rax
    movq %rax, %r12
.L5_93:
    movq $512, %rcx
    cmpq %rcx, %r12
    jae .L5_95
.L5_94:
    movq -4560(%rbp), %r11
    movb $0, 0(%r11)
    movl $0, %edi
    movq -4560(%rbp), %rsi
    movq $1, %rdx
    call read@PLT
    movq %rax, %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    jg .L5_97
.L5_96:
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L5_100
.L5_99:
    movq -4568(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq -4568(%rbp), %r10
    movq -4576(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -4576(%rbp), %r10
    leaq -96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $0, %rax
    movq %rax, %r12
    movq $0, %rax
    movq %rax, -5168(%rbp)
    jmp .L5_111
.L5_100:
.L5_101:
    jmp .L5_95
.L5_97:
.L5_98:
    movq -4560(%rbp), %r10
    movzbl (%r10), %r15d
    movl $10, %ecx
    cmpl %ecx, %r15d
    jne .L5_105
.L5_104:
    jmp .L5_95
.L5_105:
.L5_106:
    movq -4584(%rbp), %rax
    movq %rax, %rbx
    addq %r12, %rbx
    movq %rbx, %r10
    movb %r15b, (%r10)
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r12
    jmp .L5_93
.L5_95:
    movq $513, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_111(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L5_108
.L5_109:
    leaq .Ltext_111(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_108:
    movq -4976(%rbp), %rax
    movq -4592(%rbp), %r10
    movq %rax, (%r10)
    movq -4600(%rbp), %r10
    movq %r12, (%r10)
    movq -4976(%rbp), %rax
    movq -4608(%rbp), %r10
    movq %rax, (%r10)
    movq -4616(%rbp), %r10
    movq %r12, (%r10)
    movq -4608(%rbp), %r10
    movq -4624(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    movq -4632(%rbp), %r10
    movb %al, (%r10)
    movq -4624(%rbp), %r10
    movq -4640(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -4640(%rbp), %r10
    leaq -96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -4976(%rbp), %rax
    movq %rax, -5168(%rbp)
.L5_111:
    movq -4120(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_4
    jmp .L5_5
.L5_4:
    movq -4984(%rbp), %r10
    movq -4128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L5_6
.L5_5:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_6:
    movq -4128(%rbp), %r10
    movq -4968(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -4968(%rbp), %r10
    leaq -1704(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, -5000(%rbp)
.L5_112:
    movq -5000(%rbp), %rax
    cmpq %r12, %rax
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L5_115
    jmp .L5_171
.L5_171:
    movl %r14d, %r13d
    jmp .L5_116
.L5_115:
    movq -5000(%rbp), %rax
    movq -5168(%rbp), %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $32, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L5_116:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L5_113
    jmp .L5_114
.L5_113:
    movq -5000(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rax
    movq %rax, -5000(%rbp)
    jmp .L5_112
.L5_114:
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_101(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -5000(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_101(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -5000(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L5_117
.L5_118:
    leaq .Ltext_101(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_117:
    movq -5168(%rbp), %rax
    movq -4648(%rbp), %r10
    movq %rax, (%r10)
    movq -5000(%rbp), %rax
    movq -4656(%rbp), %r10
    movq %rax, (%r10)
    movq -5168(%rbp), %rax
    movq -4664(%rbp), %r10
    movq %rax, (%r10)
    movq -5000(%rbp), %rax
    movq -4672(%rbp), %r10
    movq %rax, (%r10)
    movq -4664(%rbp), %r10
    movq -4680(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -4680(%rbp), %r10
    leaq -144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L5_120:
    movq -4136(%rbp), %r10
    movq -4992(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -5000(%rbp), %rax
    cmpq %r12, %rax
    jbe .L5_8
.L5_9:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_8:
    movq -5000(%rbp), %rax
    movq -5168(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, -4144(%rbp)
    movq -5000(%rbp), %rcx
    movq %r12, %r14
    subq %rcx, %r14
    movq -4144(%rbp), %rax
    movq -4152(%rbp), %r10
    movq %rax, (%r10)
    movq -4160(%rbp), %r10
    movq %r14, (%r10)
    movq -4144(%rbp), %rax
    movq -4168(%rbp), %r10
    movq %rax, (%r10)
    movq -4176(%rbp), %r10
    movq %r14, (%r10)
    movq -4168(%rbp), %r10
    leaq -1768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, %r13
.L5_121:
    cmpq %r14, %r13
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_124
    jmp .L5_172
.L5_172:
    movl %r12d, %r15d
    jmp .L5_125
.L5_124:
    movq -4144(%rbp), %rax
    movq %rax, %r12
    addq %r13, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $32, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r15d
.L5_125:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L5_122
    jmp .L5_123
.L5_122:
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r13
    jmp .L5_121
.L5_123:
    movq %r14, %r12
.L5_126:
    cmpq %r13, %r12
    seta %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L5_129
    jmp .L5_173
.L5_173:
    movl %r15d, %ebx
    jmp .L5_130
.L5_129:
    movq %r12, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_104(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_104(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -4144(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r15d
    movl $32, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L5_174
    jmp .L5_131
.L5_174:
    movl %r15d, %ebx
    jmp .L5_132
.L5_131:
    movq %rbx, %r10
    movzbl (%r10), %r15d
    movl $13, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %ebx
.L5_132:
    movzbl %bl, %r15d
    movl %r15d, %ebx
.L5_130:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L5_127
    jmp .L5_128
.L5_127:
    movq %r12, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_105(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %r12
    jmp .L5_126
.L5_128:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_106(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_106(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r13
    jbe .L5_133
.L5_134:
    leaq .Ltext_106(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_133:
    movq -4144(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq %r12, %r14
    subq %r13, %r14
    movq -4688(%rbp), %r10
    movq %rbx, (%r10)
    movq -4696(%rbp), %r10
    movq %r14, (%r10)
    movq -4704(%rbp), %r10
    movq %rbx, (%r10)
    movq -4712(%rbp), %r10
    movq %r14, (%r10)
    movq -4704(%rbp), %r10
    movq -4720(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -4720(%rbp), %r10
    leaq -208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L5_136:
    movq -4184(%rbp), %r10
    movq -5008(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -4192(%rbp), %rax
    movq -5016(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq -4200(%rbp), %r10
    movq %rax, (%r10)
    movq -5000(%rbp), %rax
    movq $1, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L5_13
    jmp .L5_175
.L5_175:
    movl %ebx, %r12d
    jmp .L5_14
.L5_13:
    movq -5168(%rbp), %rdi
    movq -4192(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L5_14:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L5_176
    jmp .L5_15
.L5_176:
    movl %r13d, %r12d
    jmp .L5_16
.L5_15:
    movq -4208(%rbp), %rax
    movq -5024(%rbp), %r10
    movq %rax, (%r10)
    movq $3, %rax
    movq -4216(%rbp), %r10
    movq %rax, (%r10)
    movq -5000(%rbp), %rax
    movq $3, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_17
    jmp .L5_177
.L5_177:
    movl %r12d, %r13d
    jmp .L5_18
.L5_17:
    movq -5168(%rbp), %rdi
    movq -4208(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L5_18:
    movzbl %r13b, %r12d
.L5_16:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L5_178
    jmp .L5_19
.L5_178:
    movl %r13d, %r12d
    jmp .L5_20
.L5_19:
    movq -4224(%rbp), %rax
    movq -5032(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq -4232(%rbp), %r10
    movq %rax, (%r10)
    testl %ebx, %ebx
    jne .L5_21
    jmp .L5_179
.L5_179:
    movl %ebx, %r12d
    jmp .L5_22
.L5_21:
    movq -5168(%rbp), %rdi
    movq -4224(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L5_22:
    movzbl %r12b, %r13d
    movl %r13d, %r12d
.L5_20:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L5_180
    jmp .L5_23
.L5_180:
    movl %r13d, %r12d
    jmp .L5_24
.L5_23:
    movq -4240(%rbp), %rax
    movq -5040(%rbp), %r10
    movq %rax, (%r10)
    movq $8, %rax
    movq -4248(%rbp), %r10
    movq %rax, (%r10)
    movq -5000(%rbp), %rax
    movq $8, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_25
    jmp .L5_181
.L5_181:
    movl %r12d, %r13d
    jmp .L5_26
.L5_25:
    movq -5168(%rbp), %rdi
    movq -4240(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L5_26:
    movzbl %r13b, %r12d
.L5_24:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L5_10
    jmp .L5_11
.L5_10:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_11:
.L5_12:
    movq -4256(%rbp), %rax
    movq -5048(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq -4264(%rbp), %r10
    movq %rax, (%r10)
    testl %ebx, %ebx
    jne .L5_31
    jmp .L5_182
.L5_182:
    movl %ebx, %r12d
    jmp .L5_32
.L5_31:
    movq -5168(%rbp), %rdi
    movq -4256(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L5_32:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L5_183
    jmp .L5_33
.L5_183:
    movl %r13d, %r12d
    jmp .L5_34
.L5_33:
    movq -4272(%rbp), %rax
    movq -5056(%rbp), %r10
    movq %rax, (%r10)
    movq $4, %rax
    movq -4280(%rbp), %r10
    movq %rax, (%r10)
    movq -5000(%rbp), %rax
    movq $4, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_35
    jmp .L5_184
.L5_184:
    movl %r12d, %r13d
    jmp .L5_36
.L5_35:
    movq -5168(%rbp), %rdi
    movq -4272(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L5_36:
    movzbl %r13b, %r12d
.L5_34:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L5_28
    jmp .L5_29
.L5_28:
    leaq lb_debug_stepping(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_29:
.L5_30:
    movq -4288(%rbp), %rax
    movq -5064(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq -4296(%rbp), %r10
    movq %rax, (%r10)
    testl %ebx, %ebx
    jne .L5_41
    jmp .L5_185
.L5_185:
    movl %ebx, %r12d
    jmp .L5_42
.L5_41:
    movq -5168(%rbp), %rdi
    movq -4288(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L5_42:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L5_186
    jmp .L5_43
.L5_186:
    movl %r13d, %r12d
    jmp .L5_44
.L5_43:
    movq -4304(%rbp), %rax
    movq -5072(%rbp), %r10
    movq %rax, (%r10)
    movq $4, %rax
    movq -4312(%rbp), %r10
    movq %rax, (%r10)
    movq -5000(%rbp), %rax
    movq $4, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_45
    jmp .L5_187
.L5_187:
    movl %r12d, %r13d
    jmp .L5_46
.L5_45:
    movq -5168(%rbp), %rdi
    movq -4304(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L5_46:
    movzbl %r13b, %r12d
.L5_44:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L5_38
    jmp .L5_39
.L5_38:
    leaq lb_debug_9step_over(%rip), %rbx
    leaq lb_debug_depth(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_39:
.L5_40:
    movq -4320(%rbp), %rax
    movq -5080(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq -4328(%rbp), %r10
    movq %rax, (%r10)
    testl %ebx, %ebx
    jne .L5_51
    jmp .L5_188
.L5_188:
    movl %ebx, %r12d
    jmp .L5_52
.L5_51:
    movq -5168(%rbp), %rdi
    movq -4320(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L5_52:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L5_189
    jmp .L5_53
.L5_189:
    movl %r13d, %r12d
    jmp .L5_54
.L5_53:
    movq -4336(%rbp), %rax
    movq -5088(%rbp), %r10
    movq %rax, (%r10)
    movq $4, %rax
    movq -4344(%rbp), %r10
    movq %rax, (%r10)
    movq -5000(%rbp), %rax
    movq $4, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_55
    jmp .L5_190
.L5_190:
    movl %r12d, %r13d
    jmp .L5_56
.L5_55:
    movq -5168(%rbp), %rdi
    movq -4336(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L5_56:
    movzbl %r13b, %r12d
.L5_54:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L5_48
    jmp .L5_49
.L5_48:
    movq -4352(%rbp), %rax
    movq -4360(%rbp), %r10
    movq %rax, (%r10)
    movq $4, %rax
    movq -4368(%rbp), %r10
    movq %rax, (%r10)
    movq -4360(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    movl $0, %edi
    call exit@PLT
    jmp .L5_50
.L5_49:
.L5_50:
    movq -4376(%rbp), %rax
    movq -5096(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq -4384(%rbp), %r10
    movq %rax, (%r10)
    testl %ebx, %ebx
    jne .L5_60
    jmp .L5_191
.L5_191:
    movl %ebx, %r12d
    jmp .L5_61
.L5_60:
    movq -5168(%rbp), %rdi
    movq -4376(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L5_61:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L5_192
    jmp .L5_62
.L5_192:
    movl %r13d, %r12d
    jmp .L5_63
.L5_62:
    movq -4392(%rbp), %rax
    movq -5104(%rbp), %r10
    movq %rax, (%r10)
    movq $5, %rax
    movq -4400(%rbp), %r10
    movq %rax, (%r10)
    movq -5000(%rbp), %rax
    movq $5, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_64
    jmp .L5_193
.L5_193:
    movl %r12d, %r13d
    jmp .L5_65
.L5_64:
    movq -5168(%rbp), %rdi
    movq -4392(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L5_65:
    movzbl %r13b, %r12d
.L5_63:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L5_57
    jmp .L5_58
.L5_57:
    movq -5008(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_debug_9add_break@PLT
    jmp .L5_59
.L5_58:
    movq -4408(%rbp), %rax
    movq -5112(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq -4416(%rbp), %r10
    movq %rax, (%r10)
    testl %ebx, %ebx
    jne .L5_69
    jmp .L5_194
.L5_194:
    movl %ebx, %r12d
    jmp .L5_70
.L5_69:
    movq -5168(%rbp), %rdi
    movq -4408(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L5_70:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_195
    jmp .L5_71
.L5_195:
    movl %ebx, %r12d
    jmp .L5_72
.L5_71:
    movq -4424(%rbp), %rax
    movq -5120(%rbp), %r10
    movq %rax, (%r10)
    movq $5, %rax
    movq -4432(%rbp), %r10
    movq %rax, (%r10)
    movq -5000(%rbp), %rax
    movq $5, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L5_73
    jmp .L5_196
.L5_196:
    movl %ebx, %r12d
    jmp .L5_74
.L5_73:
    movq -5168(%rbp), %rdi
    movq -4424(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L5_74:
    movzbl %r12b, %ebx
    movl %ebx, %r12d
.L5_72:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_66
    jmp .L5_67
.L5_66:
    movq -4440(%rbp), %r10
    movq (%r10), %rbx
    leaq -1816(%rbp), %r10
    movq %rbx, (%r10)
    movq -5008(%rbp), %r10
    leaq -1832(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $512, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $24, %rcx
    imulq %rcx, %rbx
    movq -4736(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq -4728(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -4728(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -5152(%rbp)
    movq -5152(%rbp), %rax
    testq %rax, %rax
    jne .L5_137
    jmp .L5_138
.L5_137:
    jmp .L5_139
.L5_138:
    jmp .L5_152
.L5_139:
    movq -5152(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -4744(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L5_141:
    movq -4744(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L5_143
.L5_142:
    movq -5152(%rbp), %rax
    leaq -2936(%rbp), %r10
    movq %rax, (%r10)
    leaq -2952(%rbp), %r10
    movq %r13, (%r10)
    movq -5152(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r13, %rax
    movq $48, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r14, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
.L5_151:
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq -4752(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r15
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L5_147
    jmp .L5_197
.L5_197:
    movl %ebx, %r15d
    jmp .L5_148
.L5_147:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -5160(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq %r15, %rdx
    call memcmp@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r15d
.L5_148:
    movzbl %r15b, %ebx
    testl %ebx, %ebx
    jne .L5_144
    jmp .L5_145
.L5_144:
    movq -4760(%rbp), %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %rbx, %rsi
    call lb_debug_show@PLT
    jmp .L5_152
.L5_145:
.L5_146:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L5_141
.L5_143:
    movq -4768(%rbp), %rax
    movq -4776(%rbp), %r10
    movq %rax, (%r10)
    movq $1024, %rax
    movq -4784(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq -4792(%rbp), %r10
    movq %rax, (%r10)
    movq -4776(%rbp), %rdi
    movq -4800(%rbp), %rsi
    movq $16, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -4808(%rbp), %r10
    movq (%r10), %rbx
    movq -4816(%rbp), %r10
    movq (%r10), %r12
    movq -4776(%rbp), %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -4776(%rbp), %rdi
    movq -4824(%rbp), %rsi
    movq $1, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -4776(%rbp), %rdi
    call lb_core_13format_finish@PLT
    leaq -2920(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -4832(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
.L5_152:
    jmp .L5_68
.L5_67:
    movq -4448(%rbp), %rax
    movq -5128(%rbp), %r10
    movq %rax, (%r10)
    movq $6, %rax
    movq -4456(%rbp), %r10
    movq %rax, (%r10)
    movq -5000(%rbp), %rax
    movq $6, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L5_78
    jmp .L5_198
.L5_198:
    movl %ebx, %r12d
    jmp .L5_79
.L5_78:
    movq -5168(%rbp), %rdi
    movq -4448(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L5_79:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_75
    jmp .L5_76
.L5_75:
    movq -4464(%rbp), %r10
    movq (%r10), %rbx
    leaq -2968(%rbp), %r10
    movq %rbx, (%r10)
    movq $512, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $24, %rcx
    imulq %rcx, %rbx
    movq -4848(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq -4840(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -4840(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L5_153
    jmp .L5_154
.L5_153:
    jmp .L5_155
.L5_154:
    jmp .L5_162
.L5_155:
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %rax, %r13
.L5_157:
    movq %r12, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L5_159
.L5_158:
    leaq -3008(%rbp), %r10
    movq %rbx, (%r10)
    leaq -3024(%rbp), %r10
    movq %r13, (%r10)
    movq %rbx, %rax
    movq $40, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r13, %rax
    movq $48, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r14, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
.L5_161:
    movq -4856(%rbp), %r10
    movq (%r10), %r15
    movq %r14, %rdi
    movq %r15, %rsi
    call lb_debug_show@PLT
    movq $1, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r13
    jmp .L5_157
.L5_159:
.L5_162:
    jmp .L5_77
.L5_76:
    movq -4472(%rbp), %rax
    movq -5136(%rbp), %r10
    movq %rax, (%r10)
    movq $2, %rax
    movq -4480(%rbp), %r10
    movq %rax, (%r10)
    movq -5000(%rbp), %rax
    movq $2, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L5_83
    jmp .L5_199
.L5_199:
    movl %ebx, %r12d
    jmp .L5_84
.L5_83:
    movq -5168(%rbp), %rdi
    movq -4472(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L5_84:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_200
    jmp .L5_85
.L5_200:
    movl %ebx, %r12d
    jmp .L5_86
.L5_85:
    movq -4488(%rbp), %rax
    movq -5144(%rbp), %r10
    movq %rax, (%r10)
    movq $9, %rax
    movq -4496(%rbp), %r10
    movq %rax, (%r10)
    movq -5000(%rbp), %rax
    movq $9, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L5_87
    jmp .L5_201
.L5_201:
    movl %ebx, %r12d
    jmp .L5_88
.L5_87:
    movq -5168(%rbp), %rdi
    movq -4488(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L5_88:
    movzbl %r12b, %ebx
    movl %ebx, %r12d
.L5_86:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_80
    jmp .L5_81
.L5_80:
    movq -4864(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rax
    movq %rax, %r12
.L5_163:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L5_165
.L5_164:
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq $512, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $24, %rcx
    movq %r13, %r14
    imulq %rcx, %r14
    movq -4880(%rbp), %rax
    movq %r14, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq -4872(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -4872(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L5_169
    jmp .L5_167
.L5_169:
.L5_166:
    movq -4888(%rbp), %rax
    movq -4896(%rbp), %r10
    movq %rax, (%r10)
    movq $1024, %rax
    movq -4904(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq -4912(%rbp), %r10
    movq %rax, (%r10)
    movq -4896(%rbp), %rdi
    movq -4920(%rbp), %rsi
    movq $1, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -4896(%rbp), %rdi
    movq %r12, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %ebx
    movq -4896(%rbp), %rdi
    movq -4928(%rbp), %rsi
    movq $1, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq %r14, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq -4896(%rbp), %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -4896(%rbp), %rdi
    movq -4936(%rbp), %rsi
    movq $4, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -4896(%rbp), %rdi
    movq %r15, %rsi
    movq %rbx, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -4896(%rbp), %rdi
    movq -4944(%rbp), %rsi
    movq $1, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -4952(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq -4896(%rbp), %rdi
    movq %rbx, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %ebx
    movq -4896(%rbp), %rdi
    call lb_core_13format_finish@PLT
    leaq -4112(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -4960(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    jmp .L5_168
.L5_167:
.L5_168:
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r13, %rbx
    movq %r14, %r12
    jmp .L5_163
.L5_165:
.L5_170:
    jmp .L5_82
.L5_81:
    movq -5000(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L5_90
.L5_89:
    jmp .L5_1
.L5_90:
    movq -4504(%rbp), %rax
    movq -4512(%rbp), %r10
    movq %rax, (%r10)
    movq $1024, %rax
    movq -4520(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq -4528(%rbp), %r10
    movq %rax, (%r10)
    movq -4512(%rbp), %rdi
    movq -4536(%rbp), %rsi
    movq $17, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -4512(%rbp), %rdi
    movq -5168(%rbp), %rsi
    movq -5000(%rbp), %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -4512(%rbp), %rdi
    movq -4544(%rbp), %rsi
    movq $82, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -4512(%rbp), %rdi
    call lb_core_13format_finish@PLT
    leaq -1560(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -4552(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
.L5_91:
.L5_82:
.L5_77:
.L5_68:
.L5_59:
    jmp .L5_1

    .p2align 4
    .globl lb_debug_9add_break
    .type lb_debug_9add_break, @function
lb_debug_9add_break:
    pushq %rbp
    movq %rsp, %rbp
    subq $1520, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -56(%rbp), %rax
    movq %rax, -1352(%rbp)
    movq -1352(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -1360(%rbp)
    movq -1352(%rbp), %r10
    movq (%r10), %r13
    movq -1360(%rbp), %rax
    movq %rax, %r14
.L6_1:
    movq $0, %rcx
    cmpq %rcx, %r14
    ja .L6_2
.L6_42:
    movq -1360(%rbp), %rax
    movq %rax, -1480(%rbp)
    jmp .L6_3
.L6_2:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -1360(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r15, %rbx
    addq %r13, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $58, %ecx
    cmpl %ecx, %ebx
    jne .L6_5
.L6_4:
    movq %r15, %rax
    movq %rax, -1480(%rbp)
    jmp .L6_3
.L6_7:
    jmp .L6_6
.L6_5:
.L6_6:
    movq %r15, %r14
    jmp .L6_1
.L6_3:
    movq -1360(%rbp), %rax
    movq -1480(%rbp), %rcx
    cmpq %rcx, %rax
    jne .L6_9
.L6_8:
    leaq .Ltext_37(%rip), %rbx
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $21, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_11:
    jmp .L6_10
.L6_9:
.L6_10:
    leaq -88(%rbp), %rax
    movq %rax, -1488(%rbp)
    movq -1352(%rbp), %r10
    movq (%r10), %r15
    movq -1360(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1480(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -1480(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L6_12
.L6_13:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_12:
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq -1480(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq -120(%rbp), %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq -1480(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq -1488(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1480(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1360(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1360(%rbp), %rcx
    cmpq %rcx, %r14
    jbe .L6_14
.L6_15:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_14:
    movq %r15, %rax
    addq %r14, %rax
    movq %rax, -1368(%rbp)
    movq -1360(%rbp), %rax
    subq %r14, %rax
    movq %rax, -1376(%rbp)
    leaq -136(%rbp), %r13
    movq -1368(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq -1376(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -152(%rbp), %r13
    movq -1368(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq -1376(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    leaq -1336(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -1336(%rbp), %rbx
    movl $0, %eax
    movl %eax, %ebx
    movq $0, %rax
    movq %rax, -1496(%rbp)
.L6_28:
    movq -1496(%rbp), %rax
    movq -1376(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L6_31
.L6_29:
    movq -1368(%rbp), %rax
    movq -1496(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movzbl %r14b, %r14d
    movl $48, %ecx
    cmpl %ecx, %r14d
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L6_43
    jmp .L6_35
.L6_43:
    movl %r15d, %r12d
    jmp .L6_36
.L6_35:
    movl $57, %ecx
    cmpl %ecx, %r14d
    seta %al
    movzbl %al, %r12d
.L6_36:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L6_32
    jmp .L6_33
.L6_32:
    movl $0, %eax
    leaq -1344(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, -1512(%rbp)
    jmp .L6_41
.L6_37:
    jmp .L6_34
.L6_33:
.L6_34:
    movl %ebx, %eax
    movl $10, %ecx
    mull %ecx
    jnc 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r15d
    movl $48, %ecx
    movl %r14d, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L6_38
.L6_39:
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_38:
    movl %r13d, %ebx
    movl %ebx, %eax
    movl %r15d, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %ebx
.L6_30:
    movq -1496(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %rax
    movq %rax, -1496(%rbp)
    jmp .L6_28
.L6_31:
    leaq -1344(%rbp), %r10
    movl %ebx, (%r10)
    movl %ebx, %eax
    movl %eax, -1512(%rbp)
    jmp .L6_41
.L6_40:
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_41:
    movl -1512(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_44
    jmp .L6_19
.L6_44:
    movl %r12d, %r13d
    jmp .L6_20
.L6_19:
    leaq lb_debug_11break_count(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $32, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
.L6_20:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L6_45
    jmp .L6_21
.L6_45:
    movl %r12d, %r13d
    jmp .L6_22
.L6_21:
    leaq lb_debug_10names_used(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -1480(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq $4096, %rcx
    cmpq %rcx, %r12
    seta %al
    movzbl %al, %r13d
.L6_22:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L6_16
    jmp .L6_17
.L6_16:
    leaq .Ltext_41(%rip), %rbx
    leaq -168(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $26, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_23:
    jmp .L6_18
.L6_17:
.L6_18:
    leaq lb_debug_names(%rip), %r14
    leaq lb_debug_10names_used(%rip), %rax
    movq %rax, -1384(%rbp)
    movq -1384(%rbp), %r10
    movq (%r10), %r15
    movq $4097, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $4096, %rcx
    cmpq %rcx, %r15
    jbe .L6_24
.L6_25:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_24:
    movq %r14, %rax
    addq %r15, %rax
    movq %rax, -1392(%rbp)
    movq $4096, %rax
    subq %r15, %rax
    movq %rax, -1400(%rbp)
    leaq -184(%rbp), %r12
    movq -1392(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -1408(%rbp)
    movq -1400(%rbp), %rax
    movq -1408(%rbp), %r10
    movq %rax, (%r10)
    movq -1488(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1416(%rbp)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1488(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -1480(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    leaq -200(%rbp), %rax
    movq %rax, -1504(%rbp)
    movq -1384(%rbp), %r10
    movq (%r10), %r13
    movq -1416(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq $4097, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $4097, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r13
    jbe .L6_26
.L6_27:
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_26:
    movq %r14, %rax
    addq %r13, %rax
    movq %rax, -1424(%rbp)
    movq %rbx, %rax
    subq %r13, %rax
    movq %rax, -1432(%rbp)
    leaq -216(%rbp), %r15
    movq -1424(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq -1432(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq -232(%rbp), %r15
    movq -1424(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -1440(%rbp)
    movq -1432(%rbp), %rax
    movq -1440(%rbp), %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq -1504(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1384(%rbp), %r10
    movq %rbx, (%r10)
    leaq lb_debug_11break_count(%rip), %rax
    movq %rax, -1448(%rbp)
    movq -1448(%rbp), %r10
    movq (%r10), %r15
    leaq lb_debug_breaks(%rip), %rax
    movq %rax, -1456(%rbp)
    movq $32, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $24, %rcx
    imulq %rcx, %r15
    movq -1456(%rbp), %rax
    addq %r15, %rax
    movq %rax, -1464(%rbp)
    leaq -256(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq -1504(%rbp), %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movl -1512(%rbp), %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq %r15, %r10
    movq -1464(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -1448(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -1448(%rbp), %r10
    movq %r12, (%r10)
    leaq -1280(%rbp), %r12
    leaq -1304(%rbp), %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq $1024, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq .Ltext_47(%rip), %r12
    movq %r15, %rdi
    movq %r12, %rsi
    movq $11, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -1448(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %rdi
    movq %r12, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %ebx
    leaq .Ltext_48(%rip), %r12
    movq %r15, %rdi
    movq %r12, %rsi
    movq $4, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -1488(%rbp), %r10
    movq (%r10), %r12
    movq -1416(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1472(%rbp)
    movq %r15, %rdi
    movq %r12, %rsi
    movq -1472(%rbp), %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_7(%rip), %r12
    movq %r15, %rdi
    movq %r12, %rsi
    movq $1, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movl -1512(%rbp), %eax
    movl %eax, %r12d
    movq %r15, %rdi
    movq %r12, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %ebx
    movq %r15, %rdi
    call lb_core_13format_finish@PLT
    leaq -1320(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -1320(%rbp), %r12
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_debug_show
    .type lb_debug_show, @function
lb_debug_show:
    pushq %rbp
    movq %rsp, %rbp
    subq $17200, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L7_1
    jmp .L7_2
.L7_1:
    jmp .L7_3
.L7_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_3:
    leaq -56(%rbp), %rax
    movq %rax, -17064(%rbp)
    movq -17064(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -17072(%rbp)
    movq -17072(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -17080(%rbp)
    movq -17080(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -17088(%rbp)
    movq %rbx, %rax
    movq -17088(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_65(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -17096(%rbp)
    leaq -88(%rbp), %rax
    movq %rax, -17104(%rbp)
    movq -17072(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq -17104(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_66(%rip), %r15
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -17112(%rbp)
    movq $3, %rax
    movq -17112(%rbp), %r10
    movq %rax, (%r10)
    movq -17104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -17120(%rbp)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $3, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_8
    jmp .L7_157
.L7_157:
    movl %r13d, %ebx
    jmp .L7_9
.L7_8:
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    movq %r15, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L7_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_158
    jmp .L7_10
.L7_158:
    movl %r12d, %ebx
    jmp .L7_11
.L7_10:
    leaq .Ltext_67(%rip), %rbx
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $5, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $5, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_12
    jmp .L7_159
.L7_159:
    movl %r13d, %ebx
    jmp .L7_13
.L7_12:
    movq -17104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_13:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L7_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_5
    jmp .L7_6
.L7_5:
    leaq -1144(%rbp), %rbx
    leaq -1168(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17072(%rbp), %r10
    movq (%r10), %rbx
    movq -17072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_68(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq -17120(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_69(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $3, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17096(%rbp), %rax
    leaq -16640(%rbp), %r10
    movq %rax, (%r10)
    leaq -16648(%rbp), %rbx
    movq %rbx, %rdi
    movq -17096(%rbp), %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_97
    jmp .L7_98
.L7_98:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_97:
    movq %rbx, %r10
    movq (%r10), %r13
.L7_100:
    movq %r12, %rdi
    movq %r13, %rsi
    call lb_core_10format_i64@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -1184(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -1184(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    jmp .L7_7
.L7_6:
    leaq .Ltext_70(%rip), %rbx
    leaq -1200(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $3, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $3, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_17
    jmp .L7_160
.L7_160:
    movl %r13d, %ebx
    jmp .L7_18
.L7_17:
    movq -17104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_18:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_14
    jmp .L7_15
.L7_14:
    leaq -2224(%rbp), %rbx
    leaq -2248(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17072(%rbp), %r10
    movq (%r10), %rbx
    movq -17072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_68(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq -17120(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_69(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $3, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17096(%rbp), %rax
    leaq -16664(%rbp), %r10
    movq %rax, (%r10)
    leaq -16668(%rbp), %rbx
    movq %rbx, %rdi
    movq -17096(%rbp), %rsi
    movq $4, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_101
    jmp .L7_102
.L7_102:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_101:
    movq %rbx, %r10
    movslq (%r10), %r13
    leaq -16680(%rbp), %r10
    movl %r13d, (%r10)
.L7_104:
    movslq %r13d, %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    call lb_core_10format_i64@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -2264(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -2264(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    jmp .L7_16
.L7_15:
    leaq .Ltext_71(%rip), %rbx
    leaq -2280(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $3, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $3, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_22
    jmp .L7_161
.L7_161:
    movl %r13d, %ebx
    jmp .L7_23
.L7_22:
    movq -17104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_23:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_19
    jmp .L7_20
.L7_19:
    leaq -3304(%rbp), %rbx
    leaq -3328(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17072(%rbp), %r10
    movq (%r10), %rbx
    movq -17072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_68(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq -17120(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_69(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $3, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17096(%rbp), %rax
    leaq -16696(%rbp), %r10
    movq %rax, (%r10)
    leaq -16698(%rbp), %rbx
    movq %rbx, %rdi
    movq -17096(%rbp), %rsi
    movq $2, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_105
    jmp .L7_106
.L7_106:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_105:
    movq %rbx, %r10
    movswl (%r10), %r13d
    movswl %r13w, %r13d
    leaq -16712(%rbp), %r10
    movl %r13d, (%r10)
.L7_108:
    movslq %r13d, %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    call lb_core_10format_i64@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -3344(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -3344(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    jmp .L7_21
.L7_20:
    leaq .Ltext_72(%rip), %rbx
    leaq -3360(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $2, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $2, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_27
    jmp .L7_162
.L7_162:
    movl %r13d, %ebx
    jmp .L7_28
.L7_27:
    movq -17104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_28:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_24
    jmp .L7_25
.L7_24:
    leaq -4384(%rbp), %rbx
    leaq -4408(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17072(%rbp), %r10
    movq (%r10), %rbx
    movq -17072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_68(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq -17120(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_69(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $3, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17096(%rbp), %rax
    leaq -16728(%rbp), %r10
    movq %rax, (%r10)
    leaq -16729(%rbp), %rbx
    movq %rbx, %rdi
    movq -17096(%rbp), %rsi
    movq $1, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_109
    jmp .L7_110
.L7_110:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_109:
    movq %rbx, %r10
    movsbl (%r10), %r13d
    movsbl %r13b, %r13d
    leaq -16744(%rbp), %r10
    movl %r13d, (%r10)
.L7_112:
    movslq %r13d, %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    call lb_core_10format_i64@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -4424(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -4424(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    jmp .L7_26
.L7_25:
    leaq .Ltext_73(%rip), %rbx
    leaq -4440(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $3, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $3, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_32
    jmp .L7_163
.L7_163:
    movl %r13d, %ebx
    jmp .L7_33
.L7_32:
    movq -17104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_33:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_164
    jmp .L7_34
.L7_164:
    movl %r12d, %ebx
    jmp .L7_35
.L7_34:
    leaq .Ltext_74(%rip), %rbx
    leaq -4456(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $5, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $5, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_36
    jmp .L7_165
.L7_165:
    movl %r13d, %ebx
    jmp .L7_37
.L7_36:
    movq -17104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_37:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L7_35:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_29
    jmp .L7_30
.L7_29:
    leaq -5480(%rbp), %rbx
    leaq -5504(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17072(%rbp), %r10
    movq (%r10), %rbx
    movq -17072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_68(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq -17120(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_69(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $3, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17096(%rbp), %rax
    leaq -16760(%rbp), %r10
    movq %rax, (%r10)
    leaq -16768(%rbp), %rbx
    movq %rbx, %rdi
    movq -17096(%rbp), %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_113
    jmp .L7_114
.L7_114:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_113:
    movq %rbx, %r10
    movq (%r10), %r13
.L7_116:
    movq %r12, %rdi
    movq %r13, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -5520(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -5520(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    jmp .L7_31
.L7_30:
    leaq .Ltext_75(%rip), %rbx
    leaq -5536(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $3, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $3, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_41
    jmp .L7_166
.L7_166:
    movl %r13d, %ebx
    jmp .L7_42
.L7_41:
    movq -17104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_42:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_167
    jmp .L7_43
.L7_167:
    movl %r12d, %ebx
    jmp .L7_44
.L7_43:
    leaq .Ltext_76(%rip), %rbx
    leaq -5552(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $4, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_45
    jmp .L7_168
.L7_168:
    movl %r13d, %ebx
    jmp .L7_46
.L7_45:
    movq -17104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_46:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L7_44:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_38
    jmp .L7_39
.L7_38:
    leaq -6576(%rbp), %rbx
    leaq -6600(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17072(%rbp), %r10
    movq (%r10), %rbx
    movq -17072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_68(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq -17120(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_69(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $3, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17096(%rbp), %rax
    leaq -16784(%rbp), %r10
    movq %rax, (%r10)
    leaq -16788(%rbp), %rbx
    movq %rbx, %rdi
    movq -17096(%rbp), %rsi
    movq $4, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_117
    jmp .L7_118
.L7_118:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_117:
    movq %rbx, %r10
    movl (%r10), %r13d
    leaq -16800(%rbp), %r10
    movl %r13d, (%r10)
.L7_120:
    movl %r13d, %ebx
    movq %r12, %rdi
    movq %rbx, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -6616(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -6616(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    jmp .L7_40
.L7_39:
    leaq .Ltext_77(%rip), %rbx
    leaq -6632(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $3, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $3, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_50
    jmp .L7_169
.L7_169:
    movl %r13d, %ebx
    jmp .L7_51
.L7_50:
    movq -17104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_51:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_47
    jmp .L7_48
.L7_47:
    leaq -7656(%rbp), %rbx
    leaq -7680(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17072(%rbp), %r10
    movq (%r10), %rbx
    movq -17072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_68(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq -17120(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_69(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $3, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17096(%rbp), %rax
    leaq -16816(%rbp), %r10
    movq %rax, (%r10)
    leaq -16818(%rbp), %rbx
    movq %rbx, %rdi
    movq -17096(%rbp), %rsi
    movq $2, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_121
    jmp .L7_122
.L7_122:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_121:
    movq %rbx, %r10
    movzwl (%r10), %r13d
    movzwl %r13w, %r13d
    leaq -16832(%rbp), %r10
    movl %r13d, (%r10)
.L7_124:
    movl %r13d, %ebx
    movq %r12, %rdi
    movq %rbx, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -7696(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -7696(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    jmp .L7_49
.L7_48:
    leaq .Ltext_78(%rip), %rbx
    leaq -7712(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $2, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $2, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_55
    jmp .L7_170
.L7_170:
    movl %r13d, %ebx
    jmp .L7_56
.L7_55:
    movq -17104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_56:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_52
    jmp .L7_53
.L7_52:
    leaq -8736(%rbp), %rbx
    leaq -8760(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17072(%rbp), %r10
    movq (%r10), %rbx
    movq -17072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_68(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq -17120(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_69(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $3, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17096(%rbp), %rax
    leaq -16848(%rbp), %r10
    movq %rax, (%r10)
    leaq -16849(%rbp), %rbx
    movq %rbx, %rdi
    movq -17096(%rbp), %rsi
    movq $1, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_125
    jmp .L7_126
.L7_126:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_125:
    movq %rbx, %r10
    movzbl (%r10), %r13d
    movzbl %r13b, %r13d
    leaq -16864(%rbp), %r10
    movl %r13d, (%r10)
.L7_128:
    movl %r13d, %ebx
    movq %r12, %rdi
    movq %rbx, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -8776(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -8776(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    jmp .L7_54
.L7_53:
    leaq .Ltext_79(%rip), %rbx
    leaq -8792(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $4, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_60
    jmp .L7_171
.L7_171:
    movl %r13d, %ebx
    jmp .L7_61
.L7_60:
    movq -17104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_61:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_57
    jmp .L7_58
.L7_57:
    leaq -9816(%rbp), %rbx
    leaq -9840(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17072(%rbp), %r10
    movq (%r10), %rbx
    movq -17072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_68(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq -17120(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_69(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $3, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17096(%rbp), %rax
    leaq -16880(%rbp), %r10
    movq %rax, (%r10)
    leaq -16881(%rbp), %rbx
    movq %rbx, %rdi
    movq -17096(%rbp), %rsi
    movq $1, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_129
    jmp .L7_130
.L7_130:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_129:
    movq %rbx, %r10
    movzbl (%r10), %r13d
    movzbl %r13b, %r13d
    leaq -16896(%rbp), %r10
    movl %r13d, (%r10)
.L7_132:
    movq %r12, %rdi
    movl %r13d, %esi
    call lb_core_11format_bool@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -9856(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -9856(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    jmp .L7_59
.L7_58:
    leaq .Ltext_80(%rip), %rbx
    leaq -9872(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $3, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $3, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_65
    jmp .L7_172
.L7_172:
    movl %r13d, %ebx
    jmp .L7_66
.L7_65:
    movq -17104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_66:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_62
    jmp .L7_63
.L7_62:
    leaq -10896(%rbp), %rbx
    leaq -10920(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17072(%rbp), %r10
    movq (%r10), %rbx
    movq -17072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_68(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq -17120(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_69(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $3, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17096(%rbp), %rax
    leaq -16912(%rbp), %r10
    movq %rax, (%r10)
    leaq -16920(%rbp), %rbx
    movq %rbx, %rdi
    movq -17096(%rbp), %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_133
    jmp .L7_134
.L7_134:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_133:
    movq %rbx, %r10
    movsd (%r10), %xmm12
.L7_136:
    movapd %xmm12, %xmm0
    movq %r12, %rdi
    call lb_core_10format_f64@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -10936(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -10936(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    jmp .L7_64
.L7_63:
    leaq .Ltext_81(%rip), %rbx
    leaq -10952(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $3, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $3, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_70
    jmp .L7_173
.L7_173:
    movl %r13d, %ebx
    jmp .L7_71
.L7_70:
    movq -17104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_71:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_67
    jmp .L7_68
.L7_67:
    leaq -11976(%rbp), %rbx
    leaq -12000(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17072(%rbp), %r10
    movq (%r10), %rbx
    movq -17072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_68(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq -17120(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_69(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $3, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17096(%rbp), %rax
    leaq -16936(%rbp), %r10
    movq %rax, (%r10)
    leaq -16940(%rbp), %rbx
    movq %rbx, %rdi
    movq -17096(%rbp), %rsi
    movq $4, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_137
    jmp .L7_138
.L7_138:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_137:
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq -16952(%rbp), %r10
    movss %xmm12, (%r10)
.L7_140:
    cvtss2sd %xmm12, %xmm8
    movapd %xmm8, %xmm13
    movapd %xmm13, %xmm0
    movq %r12, %rdi
    call lb_core_10format_f64@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -12016(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -12016(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    jmp .L7_69
.L7_68:
    leaq .Ltext_82(%rip), %rbx
    leaq -12032(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $3, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $3, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_75
    jmp .L7_174
.L7_174:
    movl %r13d, %ebx
    jmp .L7_76
.L7_75:
    movq -17104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_76:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_72
    jmp .L7_73
.L7_72:
    leaq -12048(%rbp), %r13
    movq -17096(%rbp), %rax
    leaq -16984(%rbp), %r10
    movq %rax, (%r10)
    leaq -17000(%rbp), %rbx
    movq %rbx, %rdi
    movq -17096(%rbp), %rsi
    movq $16, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L7_141
    jmp .L7_142
.L7_142:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_141:
    leaq -16968(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq -12064(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L7_144:
    leaq -12064(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -13088(%rbp), %rbx
    leaq -13112(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17072(%rbp), %r10
    movq (%r10), %rbx
    movq -17072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_68(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq -17120(%rbp), %r10
    movq (%r10), %r15
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_83(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $4, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_84(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $1, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -13128(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -13128(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    jmp .L7_74
.L7_73:
    leaq .Ltext_85(%rip), %rbx
    leaq -13144(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $5, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -17120(%rbp), %r10
    movq (%r10), %r12
    movq $5, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_80
    jmp .L7_175
.L7_175:
    movl %r13d, %ebx
    jmp .L7_81
.L7_80:
    movq -17104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_81:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_77
    jmp .L7_78
.L7_77:
    movq -17096(%rbp), %rax
    leaq -17016(%rbp), %r10
    movq %rax, (%r10)
    leaq -17024(%rbp), %rbx
    movq %rbx, %rdi
    movq -17096(%rbp), %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L7_145
    jmp .L7_146
.L7_146:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_145:
    movq %rbx, %r10
    movq (%r10), %r12
.L7_148:
    leaq -14168(%rbp), %rbx
    leaq -14192(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17072(%rbp), %r10
    movq (%r10), %rbx
    movq -17072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_68(%rip), %rbx
    movq %r13, %rdi
    movq %rbx, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq -17120(%rbp), %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_83(%rip), %rbx
    movq %r13, %rdi
    movq %rbx, %rsi
    movq $4, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call strlen@PLT
    movq %rax, %rbx
    leaq -14208(%rbp), %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq %r13, %rdi
    movq %r12, %rsi
    movq %rbx, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_84(%rip), %rbx
    movq %r13, %rdi
    movq %rbx, %rsi
    movq $1, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq %r13, %rdi
    call lb_core_13format_finish@PLT
    leaq -14224(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -14224(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    jmp .L7_79
.L7_78:
    leaq .Ltext_86(%rip), %rbx
    leaq -14240(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17104(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_debug_9ends_with@PLT
    movl %eax, %ebx
    testl %ebx, %ebx
    jne .L7_176
    jmp .L7_85
.L7_176:
    movl %ebx, %r12d
    jmp .L7_86
.L7_85:
    leaq .Ltext_87(%rip), %rbx
    leaq -14256(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $2, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17104(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_debug_9ends_with@PLT
    movl %eax, %r12d
.L7_86:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L7_82
    jmp .L7_83
.L7_82:
    leaq -15280(%rbp), %rbx
    leaq -15304(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17072(%rbp), %r10
    movq (%r10), %rbx
    movq -17072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_68(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq -17120(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_88(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $5, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17096(%rbp), %rax
    leaq -17040(%rbp), %r10
    movq %rax, (%r10)
    leaq -17048(%rbp), %rbx
    movq %rbx, %rdi
    movq -17096(%rbp), %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_149
    jmp .L7_150
.L7_150:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_149:
    movq %rbx, %r10
    movq (%r10), %r13
.L7_152:
    movq %r13, %rdi
    call lb_core_8show_hex@PLT
    leaq -15320(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -15320(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rdi
    movq %r14, %rsi
    movq %rbx, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -15336(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -15336(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    jmp .L7_84
.L7_83:
    movq -17072(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -17128(%rbp)
    movq -17128(%rbp), %r10
    movq (%r10), %r12
    movq $32, %rcx
    cmpq %rcx, %r12
    jbe .L7_88
.L7_87:
    movq $32, %rax
    movq %rax, -17184(%rbp)
    jmp .L7_89
.L7_88:
    movq %r12, %rax
    movq %rax, -17184(%rbp)
.L7_89:
    leaq -15496(%rbp), %rax
    movq %rax, -17136(%rbp)
    movq -17136(%rbp), %rdi
    xorl %esi, %esi
    movq $160, %rdx
    call memset@PLT
    leaq -16849(%rbp), %rax
    movq %rax, -17176(%rbp)
    leaq -15512(%rbp), %rax
    movq %rax, -17144(%rbp)
    leaq .Ltext_90(%rip), %rax
    movq %rax, -17152(%rbp)
    leaq -15528(%rbp), %rax
    movq %rax, -17160(%rbp)
    movq -17160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -17168(%rbp)
    movq $0, %rax
    movq %rax, -17192(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L7_90:
    movq -17184(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L7_92
.L7_91:
    movq -17096(%rbp), %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    leaq -16848(%rbp), %r10
    movq %rbx, (%r10)
    movq -17176(%rbp), %rdi
    movq %rbx, %rsi
    movq $1, %rdx
    call memcpy@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L7_153
    jmp .L7_154
.L7_154:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_153:
    movq -17176(%rbp), %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    leaq -17056(%rbp), %r10
    movl %ebx, (%r10)
.L7_156:
    movq -17152(%rbp), %rax
    movq -17160(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -17168(%rbp), %r10
    movq %rax, (%r10)
    movq -17160(%rbp), %r10
    movq -17144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -17192(%rbp), %rax
    movq $160, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_91(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -17136(%rbp), %rax
    movq -17192(%rbp), %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movzbl %bl, %r15d
.L7_94:
    movl $4, %ecx
    movl %r15d, %ebx
    shrl %cl, %ebx
    movzbl %bl, %ebx
    movl %ebx, %ebx
    movq $16, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_91(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -17152(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq %r12, %r10
    movb %bl, (%r10)
    movq -17192(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $160, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_93(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -17136(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $15, %ecx
    movl %r15d, %r14d
    andl %ecx, %r14d
    movl %r14d, %r14d
    movq -17152(%rbp), %rax
    movq %r14, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq %rbx, %r10
    movb %r14b, (%r10)
    movq -17192(%rbp), %rax
    movq $2, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $160, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_94(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -17136(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $32, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -17192(%rbp), %rax
    movq $3, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %rax
    movq %rax, -17192(%rbp)
    movq %r14, %r13
    jmp .L7_90
.L7_92:
    leaq -16552(%rbp), %rbx
    leaq -16576(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -17072(%rbp), %r10
    movq (%r10), %rbx
    movq -17072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_68(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17104(%rbp), %r10
    movq (%r10), %rbx
    movq -17120(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_69(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $3, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17128(%rbp), %r10
    movq (%r10), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %ebx
    leaq .Ltext_97(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $7, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq -17192(%rbp), %rax
    movq $161, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_98(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -17192(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L7_95
.L7_96:
    leaq .Ltext_98(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_95:
    leaq -16592(%rbp), %rbx
    movq -17136(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq -17192(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -16608(%rbp), %rbx
    movq -17136(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq -17192(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    movq -17136(%rbp), %rsi
    movq -17192(%rbp), %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -16624(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -16624(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
.L7_84:
.L7_79:
.L7_74:
.L7_69:
.L7_64:
.L7_59:
.L7_54:
.L7_49:
.L7_40:
.L7_31:
.L7_26:
.L7_21:
.L7_16:
.L7_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
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
    jne .L8_11
    jmp .L8_4
.L8_11:
    movl %r13d, %r14d
    jmp .L8_5
.L8_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L8_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L8_1
    jmp .L8_2
.L8_1:
    leaq .Ltext_14(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_112(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L8_3
.L8_2:
.L8_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L8_7
.L8_6:
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
    jne .L8_9
    jmp .L8_10
.L8_10:
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_9:
    jmp .L8_8
.L8_7:
.L8_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_read_0g1_i64
    .type lb_memory_read_0g1_i64, @function
    .weak lb_memory_read_0g1_i64
lb_memory_read_0g1_i64:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -40(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L9_1
    jmp .L9_2
.L9_2:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_1:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_3:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_i32
    .type lb_memory_read_0g1_i32, @function
    .weak lb_memory_read_0g1_i32
lb_memory_read_0g1_i32:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -36(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $4, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L10_1
    jmp .L10_2
.L10_2:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_1:
    movq %rbx, %r10
    movslq (%r10), %r12
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_3:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_i16
    .type lb_memory_read_0g1_i16, @function
    .weak lb_memory_read_0g1_i16
lb_memory_read_0g1_i16:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -34(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $2, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L11_1
    jmp .L11_2
.L11_2:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_1:
    movq %rbx, %r10
    movswl (%r10), %r12d
    movswl %r12w, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_3:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_i8
    .type lb_memory_read_0g1_i8, @function
    .weak lb_memory_read_0g1_i8
lb_memory_read_0g1_i8:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -33(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $1, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L12_1
    jmp .L12_2
.L12_2:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_1:
    movq %rbx, %r10
    movsbl (%r10), %r12d
    movsbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_3:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_u64
    .type lb_memory_read_0g1_u64, @function
    .weak lb_memory_read_0g1_u64
lb_memory_read_0g1_u64:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -40(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L13_1
    jmp .L13_2
.L13_2:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_1:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_3:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_u32
    .type lb_memory_read_0g1_u32, @function
    .weak lb_memory_read_0g1_u32
lb_memory_read_0g1_u32:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -36(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $4, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L14_1
    jmp .L14_2
.L14_2:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L14_1:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_3:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_u16
    .type lb_memory_read_0g1_u16, @function
    .weak lb_memory_read_0g1_u16
lb_memory_read_0g1_u16:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -34(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $2, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L15_1
    jmp .L15_2
.L15_2:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L15_1:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movzwl %r12w, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L15_3:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_u8
    .type lb_memory_read_0g1_u8, @function
    .weak lb_memory_read_0g1_u8
lb_memory_read_0g1_u8:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -33(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $1, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L16_1
    jmp .L16_2
.L16_2:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L16_1:
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_3:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_bool
    .type lb_memory_read_0g1_bool, @function
    .weak lb_memory_read_0g1_bool
lb_memory_read_0g1_bool:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -33(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $1, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L17_1
    jmp .L17_2
.L17_2:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L17_1:
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L17_3:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_f64
    .type lb_memory_read_0g1_f64, @function
    .weak lb_memory_read_0g1_f64
lb_memory_read_0g1_f64:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -40(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L18_1
    jmp .L18_2
.L18_2:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L18_1:
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L18_3:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_f32
    .type lb_memory_read_0g1_f32, @function
    .weak lb_memory_read_0g1_f32
lb_memory_read_0g1_f32:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -36(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $4, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L19_1
    jmp .L19_2
.L19_2:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L19_1:
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L19_3:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_str
    .type lb_memory_read_0g1_str, @function
    .weak lb_memory_read_0g1_str
lb_memory_read_0g1_str:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -48(%rbp)
    leaq -64(%rbp), %rbx
    leaq -48(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $16, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L20_1
    jmp .L20_2
.L20_2:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L20_1:
    leaq -32(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L20_3:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_5c_str
    .type lb_memory_read_0g1_5c_str, @function
    .weak lb_memory_read_0g1_5c_str
lb_memory_read_0g1_5c_str:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -40(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L21_1
    jmp .L21_2
.L21_2:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L21_1:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L21_3:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_usize
    .type lb_memory_read_0g1_usize, @function
    .weak lb_memory_read_0g1_usize
lb_memory_read_0g1_usize:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -40(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L22_1
    jmp .L22_2
.L22_2:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_114(%rip), %rsi
    call lb_core_7trap_at@PLT
.L22_1:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L22_3:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_debug_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/debug.lucb:46:9"
.Ltext_1:
    .asciz "src/std/debug.lucb:47:5"
.Ltext_2:
    .asciz "src/std/debug.lucb:51:9"
.Ltext_3:
    .asciz "LUCE_DEBUG"
.Ltext_4:
    .asciz "src/std/debug.lucb:60:5"
.Ltext_5:
    .asciz "src/std/debug.lucb:62:5"
.Ltext_6:
    .asciz "stopped at "
.Ltext_7:
    .asciz ":"
.Ltext_8:
    .asciz " in "
.Ltext_9:
    .asciz "src/std/debug.lucb:83:9"
.Ltext_10:
    .asciz "src/std/debug.lucb:86:9"
.Ltext_11:
    .asciz "unreachable"
.Ltext_12:
    .asciz "src/std/debug.lucb:87:5"
.Ltext_13:
    .asciz "src/std/debug.lucb:92:5"
.Ltext_14:
    .asciz "index out of bounds"
.Ltext_15:
    .asciz "src/std/debug.lucb:99:9"
.Ltext_16:
    .asciz "r"
.Ltext_17:
    .asciz "run"
.Ltext_18:
    .asciz "c"
.Ltext_19:
    .asciz "continue"
.Ltext_20:
    .asciz "s"
.Ltext_21:
    .asciz "step"
.Ltext_22:
    .asciz "n"
.Ltext_23:
    .asciz "next"
.Ltext_24:
    .asciz "q"
.Ltext_25:
    .asciz "quit"
.Ltext_26:
    .asciz "b"
.Ltext_27:
    .asciz "break"
.Ltext_28:
    .asciz "p"
.Ltext_29:
    .asciz "print"
.Ltext_30:
    .asciz "locals"
.Ltext_31:
    .asciz "bt"
.Ltext_32:
    .asciz "backtrace"
.Ltext_33:
    .asciz "unknown command `"
.Ltext_34:
    .asciz "`; commands: break FILE:LINE, run, step, next, print NAME, locals, backtrace, quit"
.Ltext_35:
    .asciz "src/std/debug.lucb:128:9"
.Ltext_36:
    .asciz "src/std/debug.lucb:129:9"
.Ltext_37:
    .asciz "break needs FILE:LINE"
.Ltext_38:
    .asciz "src/std/debug.lucb:135:5"
.Ltext_39:
    .asciz "src/std/debug.lucb:136:5"
.Ltext_40:
    .asciz "src/std/debug.lucb:137:5"
.Ltext_41:
    .asciz "cannot set that breakpoint"
.Ltext_42:
    .asciz "src/std/debug.lucb:140:5"
.Ltext_43:
    .asciz "src/std/debug.lucb:141:5"
.Ltext_44:
    .asciz "src/std/debug.lucb:142:5"
.Ltext_45:
    .asciz "src/std/debug.lucb:143:5"
.Ltext_46:
    .asciz "src/std/debug.lucb:144:5"
.Ltext_47:
    .asciz "breakpoint "
.Ltext_48:
    .asciz " at "
.Ltext_49:
    .asciz "src/std/debug.lucb:152:9"
.Ltext_50:
    .asciz "integer overflow"
.Ltext_51:
    .asciz "src/std/debug.lucb:153:5"
.Ltext_52:
    .asciz "src/std/debug.lucb:159:9"
.Ltext_53:
    .asciz "src/std/debug.lucb:160:9"
.Ltext_54:
    .asciz "#"
.Ltext_55:
    .asciz " "
.Ltext_56:
    .asciz "src/std/debug.lucb:163:9"
.Ltext_57:
    .asciz "src/std/debug.lucb:166:5"
.Ltext_58:
    .asciz "src/std/debug.lucb:171:9"
.Ltext_59:
    .asciz "src/std/debug.lucb:174:5"
.Ltext_60:
    .asciz "src/std/debug.lucb:182:9"
.Ltext_61:
    .asciz "no local named `"
.Ltext_62:
    .asciz "`"
.Ltext_63:
    .asciz "src/std/debug.lucb:187:5"
.Ltext_64:
    .asciz "src/std/debug.lucb:188:5"
.Ltext_65:
    .asciz "src/std/debug.lucb:193:5"
.Ltext_66:
    .asciz "i64"
.Ltext_67:
    .asciz "isize"
.Ltext_68:
    .asciz ": "
.Ltext_69:
    .asciz " = "
.Ltext_70:
    .asciz "i32"
.Ltext_71:
    .asciz "i16"
.Ltext_72:
    .asciz "i8"
.Ltext_73:
    .asciz "u64"
.Ltext_74:
    .asciz "usize"
.Ltext_75:
    .asciz "u32"
.Ltext_76:
    .asciz "char"
.Ltext_77:
    .asciz "u16"
.Ltext_78:
    .asciz "u8"
.Ltext_79:
    .asciz "bool"
.Ltext_80:
    .asciz "f64"
.Ltext_81:
    .asciz "f32"
.Ltext_82:
    .asciz "str"
.Ltext_83:
    .asciz " = \""
.Ltext_84:
    .asciz "\""
.Ltext_85:
    .asciz "c.str"
.Ltext_86:
    .asciz "*"
.Ltext_87:
    .asciz "*?"
.Ltext_88:
    .asciz " = 0x"
.Ltext_89:
    .asciz "src/std/debug.lucb:233:13"
.Ltext_90:
    .asciz "0123456789abcdef"
.Ltext_91:
    .asciz "src/std/debug.lucb:235:13"
.Ltext_92:
    .asciz "shift count out of range"
.Ltext_93:
    .asciz "src/std/debug.lucb:236:13"
.Ltext_94:
    .asciz "src/std/debug.lucb:237:13"
.Ltext_95:
    .asciz "src/std/debug.lucb:238:13"
.Ltext_96:
    .asciz "src/std/debug.lucb:239:13"
.Ltext_97:
    .asciz " bytes "
.Ltext_98:
    .asciz "src/std/debug.lucb:240:9"
.Ltext_99:
    .asciz "src/std/debug.lucb:244:5"
.Ltext_100:
    .asciz "src/std/debug.lucb:245:9"
.Ltext_101:
    .asciz "src/std/debug.lucb:246:5"
.Ltext_102:
    .asciz "src/std/debug.lucb:251:5"
.Ltext_103:
    .asciz "src/std/debug.lucb:252:9"
.Ltext_104:
    .asciz "src/std/debug.lucb:253:5"
.Ltext_105:
    .asciz "src/std/debug.lucb:254:9"
.Ltext_106:
    .asciz "src/std/debug.lucb:255:5"
.Ltext_107:
    .asciz "src/std/debug.lucb:262:9"
.Ltext_108:
    .asciz "src/std/debug.lucb:267:9"
.Ltext_109:
    .asciz "src/std/debug.lucb:269:9"
.Ltext_110:
    .asciz "src/std/debug.lucb:270:9"
.Ltext_111:
    .asciz "src/std/debug.lucb:271:5"
.Ltext_112:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_113:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_114:
    .asciz "null_foreign"
.Ltext_115:
    .asciz "src/std/memory.lucb:342:5"
.Ltext_116:
    .asciz "src/std/memory.lucb:343:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_debug_activations
    .type lb_debug_activations, @object
    .p2align 3
lb_debug_activations:
    .zero 12288

    .bss
    .globl lb_debug_depth
    .type lb_debug_depth, @object
    .p2align 3
lb_debug_depth:
    .zero 8

    .bss
    .globl lb_debug_checked
    .type lb_debug_checked, @object
    .p2align 0
lb_debug_checked:
    .zero 1

    .bss
    .globl lb_debug_active
    .type lb_debug_active, @object
    .p2align 0
lb_debug_active:
    .zero 1

    .bss
    .globl lb_debug_started
    .type lb_debug_started, @object
    .p2align 0
lb_debug_started:
    .zero 1

    .bss
    .globl lb_debug_stepping
    .type lb_debug_stepping, @object
    .p2align 0
lb_debug_stepping:
    .zero 1

    .bss
    .globl lb_debug_9step_over
    .type lb_debug_9step_over, @object
    .p2align 3
lb_debug_9step_over:
    .zero 8

    .bss
    .globl lb_debug_breaks
    .type lb_debug_breaks, @object
    .p2align 3
lb_debug_breaks:
    .zero 768

    .bss
    .globl lb_debug_11break_count
    .type lb_debug_11break_count, @object
    .p2align 3
lb_debug_11break_count:
    .zero 8

    .bss
    .globl lb_debug_names
    .type lb_debug_names, @object
    .p2align 0
lb_debug_names:
    .zero 4096

    .bss
    .globl lb_debug_10names_used
    .type lb_debug_10names_used, @object
    .p2align 3
lb_debug_10names_used:
    .zero 8

    .bss
    .globl lb_debug_10line_bytes
    .type lb_debug_10line_bytes, @object
    .p2align 0
lb_debug_10line_bytes:
    .zero 512

    .section .note.GNU-stack,"",@progbits
