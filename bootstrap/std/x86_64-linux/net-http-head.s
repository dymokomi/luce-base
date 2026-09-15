    .text

    .p2align 4
    .globl lb_net_9http_head_0init
    .type lb_net_9http_head_0init, @function
lb_net_9http_head_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_18http_parse_request
    .type lb_net_18http_parse_request, @function
lb_net_18http_parse_request:
    pushq %rbp
    movq %rsp, %rbp
    subq $1312, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -192(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -208(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq 16(%rbp), %r10
    leaq -240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -248(%rbp), %rax
    movq %rax, -1200(%rbp)
    movq $0, %rax
    movq -1200(%rbp), %r10
    movq %rax, (%r10)
    leaq -192(%rbp), %rax
    movq %rax, -1208(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -1216(%rbp)
    subq $32, %rsp
    movq -1216(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -1208(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -280(%rbp), %rdi
    call lb_net_15http_check_head@PLT
    addq $32, %rsp
    leaq -280(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_2
    jmp .L1_1
.L1_2:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L1_1:
    leaq -296(%rbp), %r15
    movq -1208(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -1200(%rbp), %rcx
    leaq -344(%rbp), %rdi
    call lb_net_9http_line@PLT
    leaq -344(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_5
    jmp .L1_4
.L1_5:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -176(%rbp), %r12
    movq $96, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $120, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L1_4:
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rbx
    movq -1216(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jbe .L1_8
.L1_7:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq -360(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $35, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L1_10:
    jmp .L1_9
.L1_8:
.L1_9:
    leaq .Ltext_1(%rip), %rax
    movq %rax, -1224(%rbp)
    leaq -376(%rbp), %r12
    movq -1224(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $1, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_strings_find@PLT
    leaq -392(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -392(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_11
    jmp .L1_12
.L1_11:
    movq %r13, %r10
    movq (%r10), %r12
    jmp .L1_13
.L1_12:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq -408(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $27, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L1_13:
    leaq -424(%rbp), %rax
    movq %rax, -1272(%rbp)
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -1280(%rbp)
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -1232(%rbp)
    movq -1232(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L1_15
.L1_16:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_15:
    leaq -440(%rbp), %r13
    movq -1280(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq -456(%rbp), %r13
    movq -1280(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq -1272(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -472(%rbp), %r14
    movq $1, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    cmpq %rbx, %r15
    jb 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1232(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1232(%rbp), %rcx
    cmpq %rcx, %r15
    jbe .L1_17
.L1_18:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_17:
    movq -1280(%rbp), %rax
    movq %rax, %rbx
    addq %r15, %rbx
    movq -1232(%rbp), %rax
    movq %rax, %r12
    subq %r15, %r12
    leaq -488(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq -504(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -520(%rbp), %rbx
    movq -1224(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $1, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_strings_find@PLT
    leaq -536(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -536(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_19
    jmp .L1_20
.L1_19:
    movq %r12, %r10
    movq (%r10), %rbx
    jmp .L1_21
.L1_20:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_6(%rip), %r13
    leaq -552(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L1_22:
.L1_21:
    leaq -568(%rbp), %rax
    movq %rax, -1288(%rbp)
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -1296(%rbp)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L1_23
.L1_24:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_23:
    leaq -584(%rbp), %r14
    movq -1296(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    leaq -600(%rbp), %r14
    movq -1296(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -1240(%rbp)
    movq -1240(%rbp), %r10
    movq %rbx, (%r10)
    movq %r14, %r10
    movq -1288(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -616(%rbp), %rax
    movq %rax, -1304(%rbp)
    movq $1, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    cmpq %r13, %r15
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r15
    jbe .L1_25
.L1_26:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_25:
    movq -1296(%rbp), %rax
    addq %r15, %rax
    movq %rax, -1248(%rbp)
    movq %r12, %rax
    subq %r15, %rax
    movq %rax, -1256(%rbp)
    leaq -632(%rbp), %r14
    movq -1248(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq -1256(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq -648(%rbp), %r14
    movq -1248(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq -1256(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq -1304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1272(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_10http_token@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_73
    jmp .L1_30
.L1_73:
    movl %ebx, %r12d
    jmp .L1_31
.L1_30:
    movq -1272(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1288(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_net_25http_request_target_valid@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L1_31:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_27
    jmp .L1_28
.L1_27:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_9(%rip), %r13
    leaq -664(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L1_32:
    jmp .L1_29
.L1_28:
.L1_29:
    leaq -760(%rbp), %rbx
    leaq -856(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movq -1272(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq -1288(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq -1304(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
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
    leaq -208(%rbp), %r12
    subq $48, %rsp
    movq %r12, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1216(%rbp), %r10
    leaq 16(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %rbx, %rsi
    movq -1208(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -1200(%rbp), %r8
    leaq -888(%rbp), %rdi
    call lb_net_16http_finish_head@PLT
    addq $48, %rsp
    leaq -888(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_34
    jmp .L1_33
.L1_34:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L1_35:
.L1_33:
    leaq .Ltext_10(%rip), %r12
    leaq -904(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq $8, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -1256(%rbp), %rax
    movq $8, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %eax
    movl %eax, -1264(%rbp)
    movl -1264(%rbp), %eax
    testl %eax, %eax
    jne .L1_39
    jmp .L1_74
.L1_74:
    movl -1264(%rbp), %eax
    movl %eax, %r15d
    jmp .L1_40
.L1_39:
    movq -1248(%rbp), %rdi
    movq %r12, %rsi
    movq -1256(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
.L1_40:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L1_41
    jmp .L1_75
.L1_75:
    movl %r13d, %r15d
    jmp .L1_42
.L1_41:
    leaq .Ltext_11(%rip), %r13
    leaq -920(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $4, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %rbx, %rdi
    movq %r15, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_net_HttpHead_11field_count@PLT
    movq %rax, %r13
    movq $1, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
.L1_42:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L1_36
    jmp .L1_37
.L1_36:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_12(%rip), %r13
    leaq -936(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L1_43:
    jmp .L1_38
.L1_37:
.L1_38:
    leaq .Ltext_11(%rip), %r13
    leaq -952(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $4, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %rbx, %rdi
    movq %r15, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_net_HttpHead_11field_count@PLT
    movq %rax, %r14
    movq $1, %rcx
    cmpq %rcx, %r14
    jbe .L1_45
.L1_44:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_13(%rip), %r13
    leaq -968(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $20, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L1_47:
    jmp .L1_46
.L1_45:
.L1_46:
    leaq -984(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $4, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %rbx, %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -1008(%rbp), %rdi
    call lb_net_HttpHead_field@PLT
    leaq -1008(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_51
    jmp .L1_49
.L1_51:
    leaq -1024(%rbp), %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L1_48:
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_15http_host_valid@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L1_53
.L1_52:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_14(%rip), %r13
    leaq -1040(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L1_55:
    jmp .L1_54
.L1_53:
.L1_54:
    jmp .L1_50
.L1_49:
.L1_50:
    leaq .Ltext_15(%rip), %r13
    leaq -1056(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $6, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %rbx, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_net_HttpHead_11field_count@PLT
    movq %rax, %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L1_57
.L1_56:
    leaq -1072(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq $8, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movl -1264(%rbp), %eax
    testl %eax, %eax
    jne .L1_62
    jmp .L1_76
.L1_76:
    movl -1264(%rbp), %eax
    movl %eax, %r12d
    jmp .L1_63
.L1_62:
    movq -1248(%rbp), %rdi
    movq %r12, %rsi
    movq -1256(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L1_63:
    movzbl %r12b, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_77
    jmp .L1_64
.L1_77:
    movl %r14d, %r12d
    jmp .L1_65
.L1_64:
    leaq -1088(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $6, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_net_HttpHead_11field_count@PLT
    movq %rax, %r12
    movq $1, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L1_65:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L1_78
    jmp .L1_66
.L1_78:
    movl %r14d, %r12d
    jmp .L1_67
.L1_66:
    leaq -1104(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $6, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %rbx, %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -1128(%rbp), %rdi
    call lb_net_HttpHead_field@PLT
    leaq -1128(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_68
    jmp .L1_69
.L1_68:
    leaq -1144(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_70
.L1_69:
    leaq .Ltext_16(%rip), %r12
    leaq -1160(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -1144(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L1_70:
    leaq -1144(%rbp), %r12
    leaq .Ltext_17(%rip), %r13
    leaq -1176(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $12, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_net_10http_equal@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L1_67:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L1_59
    jmp .L1_60
.L1_59:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_16http_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_18(%rip), %r13
    leaq -1192(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L1_71:
    jmp .L1_61
.L1_60:
.L1_61:
    movq $89, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L1_58
.L1_57:
.L1_58:
    leaq -176(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
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
    movq $120, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L1_72:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_19http_parse_response
    .type lb_net_19http_parse_response, @function
lb_net_19http_parse_response:
    pushq %rbp
    movq %rsp, %rbp
    subq $880, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -192(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -208(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq 16(%rbp), %r10
    leaq -224(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rbp), %r10
    leaq -256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -264(%rbp), %rax
    movq %rax, -840(%rbp)
    movq $0, %rax
    movq -840(%rbp), %r10
    movq %rax, (%r10)
    leaq -192(%rbp), %rax
    movq %rax, -848(%rbp)
    leaq -256(%rbp), %rax
    movq %rax, -856(%rbp)
    subq $32, %rsp
    movq -856(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -848(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -296(%rbp), %rdi
    call lb_net_15http_check_head@PLT
    addq $32, %rsp
    leaq -296(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_2
    jmp .L2_1
.L2_2:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L2_1:
    leaq -312(%rbp), %r15
    movq -848(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -840(%rbp), %rcx
    leaq -360(%rbp), %rdi
    call lb_net_9http_line@PLT
    leaq -360(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_5
    jmp .L2_4
.L2_5:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -176(%rbp), %r12
    movq $96, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $120, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L2_4:
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -856(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r14
    jbe .L2_8
.L2_7:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_21(%rip), %r13
    leaq -376(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L2_8:
.L2_9:
    movq $13, %rcx
    cmpq %rcx, %r14
    setb %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L2_44
    jmp .L2_14
.L2_44:
    movl %ebx, %r13d
    jmp .L2_15
.L2_14:
    movq %r15, %r10
    movq (%r10), %rbx
    movq $8, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $32, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L2_15:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L2_45
    jmp .L2_16
.L2_45:
    movl %ebx, %r13d
    jmp .L2_17
.L2_16:
    movq %r15, %r10
    movq (%r10), %rbx
    movq $12, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $12, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $32, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L2_17:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L2_11
    jmp .L2_12
.L2_11:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_23(%rip), %r13
    leaq -392(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L2_13:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -880(%rbp)
    movq $1, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -864(%rbp)
    movq $9, %rax
    movq -864(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $12, %rax
    movq -864(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
.L2_19:
    movq -880(%rbp), %rax
    movq $9, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    leaq -408(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $3, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -424(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $3, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -464(%rbp), %rdi
    call lb_net_11http_number@PLT
    leaq -464(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_22
    jmp .L2_21
.L2_22:
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -176(%rbp), %r12
    movq $96, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $120, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -872(%rbp)
    movq -872(%rbp), %rax
    movq $100, %rcx
    cmpq %rcx, %rax
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_46
    jmp .L2_27
.L2_46:
    movl %r13d, %r15d
    jmp .L2_28
.L2_27:
    movq -872(%rbp), %rax
    movq $599, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r15d
.L2_28:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L2_47
    jmp .L2_29
.L2_47:
    movl %r13d, %r14d
    jmp .L2_30
.L2_29:
    leaq -496(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq .Ltext_25(%rip), %r13
    leaq -512(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $6, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $13, %rax
    movq -864(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -864(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $13, %rax
    cmpq %r14, %rax
    jbe .L2_31
.L2_32:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_31:
    movq -880(%rbp), %rax
    movq $13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $13, %rcx
    movq %r14, %r15
    subq %rcx, %r15
    leaq -528(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    leaq -544(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq %r12, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    call lb_net_16http_field_valid@PLT
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r14d
.L2_30:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L2_24
    jmp .L2_25
.L2_24:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_27(%rip), %r13
    leaq -560(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L2_25:
.L2_26:
    leaq -224(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_10http_token@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_35
.L2_34:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_28(%rip), %r13
    leaq -576(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $43, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L2_35:
.L2_36:
    leaq -672(%rbp), %r12
    leaq -768(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq -864(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rax
    movq -864(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
.L2_38:
    leaq -784(%rbp), %rbx
    movq -880(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq $8, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -800(%rbp), %rbx
    movq -880(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $8, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl -872(%rbp), %eax
    movzwl %ax, %ebx
    movq $48, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movw %bx, (%r10)
    movq %r13, %r10
    movq %r12, %r11
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
    leaq -208(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -856(%rbp), %r10
    leaq 16(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r12, %rsi
    movq -848(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -840(%rbp), %r8
    leaq -832(%rbp), %rdi
    call lb_net_16http_finish_head@PLT
    addq $48, %rsp
    leaq -832(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_41
    jmp .L2_40
.L2_41:
    leaq -176(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L2_40:
    leaq -176(%rbp), %rbx
    movq %r12, %r10
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
    movq $120, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
    .globl lb_net_15http_check_head
    .type lb_net_15http_check_head, @function
lb_net_15http_check_head:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -88(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq 16(%rbp), %r10
    leaq -120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    leaq -120(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jbe .L3_2
.L3_1:
    leaq -72(%rbp), %rbx
    leaq lb_net_10http_limit(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_31(%rip), %r12
    leaq -136(%rbp), %r13
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
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq $0, %rdx
    call lb_net_13http_head_end@PLT
    leaq -152(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -152(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L3_5
    jmp .L3_6
.L3_5:
    movq %r14, %r10
    movq (%r10), %rbx
    jmp .L3_7
.L3_6:
    leaq -72(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_32(%rip), %r12
    leaq -168(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $20, %rax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_8:
.L3_7:
    movq %r12, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L3_10
.L3_9:
    leaq -72(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_33(%rip), %r12
    leaq -184(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_12:
    jmp .L3_11
.L3_10:
.L3_11:
    leaq -72(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_16http_finish_head
    .type lb_net_16http_finish_head, @function
lb_net_16http_finish_head:
    pushq %rbp
    movq %rsp, %rbp
    subq $1760, %rsp
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
    movq %r8, -128(%rbp)
    leaq 16(%rbp), %r10
    leaq -144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rbp), %r10
    leaq -176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -96(%rbp), %rax
    movq %rax, -1176(%rbp)
    movq -1176(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1184(%rbp)
    movq -1184(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -1648(%rbp)
    leaq .Ltext_34(%rip), %r12
    leaq -192(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq $8, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -1648(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1192(%rbp)
    movq -1192(%rbp), %r10
    movq (%r10), %r14
    movq $8, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L4_4
    jmp .L4_159
.L4_159:
    movl %r15d, %r12d
    jmp .L4_5
.L4_4:
    movq -1648(%rbp), %r10
    movq (%r10), %r15
    movq %r15, %rdi
    movq %r12, %rsi
    movq %r14, %rdx
    call memcmp@PLT
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %r12d
.L4_5:
    movzbl %r12b, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L4_6
    jmp .L4_160
.L4_160:
    movl %r14d, %r12d
    jmp .L4_7
.L4_6:
    leaq .Ltext_10(%rip), %r12
    leaq -208(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq $8, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -1192(%rbp), %r10
    movq (%r10), %r14
    movq $8, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L4_8
    jmp .L4_161
.L4_161:
    movl %r15d, %r12d
    jmp .L4_9
.L4_8:
    movq -1648(%rbp), %r10
    movq (%r10), %r15
    movq %r15, %rdi
    movq %r12, %rsi
    movq %r14, %rdx
    call memcmp@PLT
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %r12d
.L4_9:
    movzbl %r12b, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L4_7:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L4_1
    jmp .L4_2
.L4_1:
    leaq -80(%rbp), %rbx
    leaq lb_net_16http_unsupported(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_35(%rip), %r12
    leaq -224(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $24, %rax
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
.L4_10:
    jmp .L4_3
.L4_2:
.L4_3:
    leaq -128(%rbp), %rax
    movq %rax, -1200(%rbp)
    leaq -112(%rbp), %rax
    movq %rax, -1208(%rbp)
    movq -1208(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1216(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -1664(%rbp)
    leaq -288(%rbp), %rax
    movq %rax, -1672(%rbp)
    movq -1672(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -1224(%rbp)
    movq -1664(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1232(%rbp)
    leaq -176(%rbp), %rax
    movq %rax, -1240(%rbp)
    movq -1240(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1248(%rbp)
    leaq -144(%rbp), %rax
    movq %rax, -1256(%rbp)
    movq -1256(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1264(%rbp)
    movq -1240(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -1272(%rbp)
    leaq .Ltext_37(%rip), %rax
    movq %rax, -1280(%rbp)
    leaq -320(%rbp), %rax
    movq %rax, -1288(%rbp)
    movq -1288(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1296(%rbp)
    leaq -336(%rbp), %rax
    movq %rax, -1680(%rbp)
    movq -1680(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1304(%rbp)
    leaq -384(%rbp), %rax
    movq %rax, -1688(%rbp)
    leaq -416(%rbp), %rax
    movq %rax, -1696(%rbp)
    leaq -432(%rbp), %rax
    movq %rax, -1312(%rbp)
    movq -1312(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1320(%rbp)
    leaq -448(%rbp), %rax
    movq %rax, -1328(%rbp)
    movq -1328(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1336(%rbp)
    leaq -464(%rbp), %rax
    movq %rax, -1352(%rbp)
    movq -1352(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1360(%rbp)
    leaq -480(%rbp), %rax
    movq %rax, -1368(%rbp)
    movq -1368(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1376(%rbp)
    leaq -496(%rbp), %rax
    movq %rax, -1384(%rbp)
    movq -1696(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -1392(%rbp)
    leaq -144(%rbp), %rax
    movq %rax, -1400(%rbp)
    movq -1400(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1408(%rbp)
    movq $0, %rax
    movq %rax, -1656(%rbp)
.L4_11:
    movq -1200(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    movq -1216(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L4_13
.L4_12:
    movq -1208(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %rcx
    leaq -288(%rbp), %rdi
    call lb_net_9http_line@PLT
    movq -1224(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L4_15
    jmp .L4_14
.L4_15:
    movq -1672(%rbp), %rax
    movq $16, %rcx
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
.L4_16:
.L4_14:
    movq -1672(%rbp), %r10
    movq -1664(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1232(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L4_18
.L4_17:
    jmp .L4_13
.L4_20:
    jmp .L4_19
.L4_18:
.L4_19:
    movq -1248(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L4_162
    jmp .L4_24
.L4_162:
    movl %r13d, %ebx
    jmp .L4_25
.L4_24:
    movq -1264(%rbp), %r10
    movq (%r10), %rbx
    movq -1656(%rbp), %rax
    cmpq %rbx, %rax
    setae %al
    movzbl %al, %ebx
.L4_25:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L4_163
    jmp .L4_26
.L4_163:
    movl %r13d, %ebx
    jmp .L4_27
.L4_26:
    movq -1272(%rbp), %r10
    movq (%r10), %rbx
    movq -1656(%rbp), %rax
    cmpq %rbx, %rax
    setae %al
    movzbl %al, %ebx
.L4_27:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L4_21
    jmp .L4_22
.L4_21:
    leaq -80(%rbp), %rbx
    leaq lb_net_10http_limit(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_36(%rip), %r12
    leaq -304(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $54, %rax
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
.L4_28:
    jmp .L4_23
.L4_22:
.L4_23:
    movq -1280(%rbp), %rax
    movq -1288(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq -1296(%rbp), %r10
    movq %rax, (%r10)
    movq -1664(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1288(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_strings_find@PLT
    leaq -336(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -1304(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_29
    jmp .L4_30
.L4_29:
    movq -1680(%rbp), %r10
    movq (%r10), %rbx
    jmp .L4_31
.L4_30:
    leaq -80(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_38(%rip), %r12
    leaq -352(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $24, %rax
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
.L4_32:
.L4_31:
    movq -1696(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq -1664(%rbp), %r10
    movq (%r10), %r15
    movq -1232(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L4_33
.L4_34:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_33:
    movq -1312(%rbp), %r10
    movq %r15, (%r10)
    movq -1320(%rbp), %r10
    movq %rbx, (%r10)
    movq -1328(%rbp), %r10
    movq %r15, (%r10)
    movq -1336(%rbp), %r10
    movq %rbx, (%r10)
    movq -1328(%rbp), %r10
    movq -1696(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r12
    jbe .L4_35
.L4_36:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_35:
    movq %r15, %rbx
    addq %r12, %rbx
    movq %r13, %r14
    subq %r12, %r14
    movq -1352(%rbp), %r10
    movq %rbx, (%r10)
    movq -1360(%rbp), %r10
    movq %r14, (%r10)
    movq -1368(%rbp), %r10
    movq %rbx, (%r10)
    movq -1376(%rbp), %r10
    movq %r14, (%r10)
    movq -1368(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_8http_ows@PLT
    leaq -496(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -1384(%rbp), %r10
    movq -1392(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1696(%rbp), %r10
    movq -1688(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    subq $32, %rsp
    movq -1688(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    call lb_net_16http_field_valid@PLT
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L4_38
.L4_37:
    leaq -80(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_40(%rip), %r12
    leaq -512(%rbp), %r13
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
.L4_40:
    jmp .L4_39
.L4_38:
.L4_39:
    movq -1400(%rbp), %r10
    movq (%r10), %rbx
    movq -1408(%rbp), %r10
    movq (%r10), %r12
    movq -1656(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1656(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    addq %r12, %rbx
    movq -1688(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -1656(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -1656(%rbp)
    jmp .L4_11
.L4_13:
    movq -1184(%rbp), %rax
    movq $56, %rcx
    addq %rcx, %rax
    movq %rax, -1704(%rbp)
    leaq -144(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1656(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -1656(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L4_41
.L4_42:
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_41:
    leaq -528(%rbp), %rax
    movq %rax, -1416(%rbp)
    movq -1416(%rbp), %r10
    movq %r13, (%r10)
    movq -1416(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq -1656(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -1416(%rbp), %r10
    movq -1704(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1184(%rbp), %rax
    movq $90, %rcx
    addq %rcx, %rax
    movq %rax, -1712(%rbp)
    leaq .Ltext_44(%rip), %rax
    movq %rax, -1424(%rbp)
    leaq -544(%rbp), %r14
    movq -1424(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $10, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_45(%rip), %r15
    leaq -560(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $7, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq -1184(%rbp), %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r10
    movq 0(%r10), %r8
    movq 8(%r10), %r9
    leaq -600(%rbp), %rdi
    call lb_net_HttpHead_9has_token@PLT
    leaq -600(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_44
    jmp .L4_43
.L4_44:
    movq $8, %rcx
    movq %r14, %rbx
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
.L4_45:
.L4_43:
    movq %r14, %r10
    movzbl (%r10), %ebx
    movq -1712(%rbp), %r10
    movb %bl, (%r10)
    leaq -616(%rbp), %rbx
    movq -1424(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $10, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_46(%rip), %r13
    leaq -632(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $5, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -1184(%rbp), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r15, %r10
    movq 0(%r10), %r8
    movq 8(%r10), %r9
    leaq -672(%rbp), %rdi
    call lb_net_HttpHead_9has_token@PLT
    leaq -672(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_47
    jmp .L4_46
.L4_47:
    movq $8, %rcx
    movq %r13, %rbx
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
.L4_48:
.L4_46:
    movq %r13, %r10
    movzbl (%r10), %ebx
    movq -1184(%rbp), %rax
    movq $88, %rcx
    addq %rcx, %rax
    movq %rax, -1720(%rbp)
    movzbl %bl, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L4_49
    jmp .L4_164
.L4_164:
    movl %ebx, %r13d
    jmp .L4_50
.L4_49:
    leaq .Ltext_10(%rip), %rbx
    leaq -688(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq $8, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -1192(%rbp), %r10
    movq (%r10), %r13
    movq $8, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L4_51
    jmp .L4_165
.L4_165:
    movl %r15d, %ebx
    jmp .L4_52
.L4_51:
    movq -1648(%rbp), %r10
    movq (%r10), %r15
    movq %r15, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call memcmp@PLT
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %ebx
.L4_52:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L4_166
    jmp .L4_53
.L4_166:
    movl %r13d, %ebx
    jmp .L4_54
.L4_53:
    leaq -704(%rbp), %rbx
    movq -1424(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $10, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_47(%rip), %r13
    leaq -720(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $10, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -1184(%rbp), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r15, %r10
    movq 0(%r10), %r8
    movq 8(%r10), %r9
    leaq -760(%rbp), %rdi
    call lb_net_HttpHead_9has_token@PLT
    leaq -760(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_56
    jmp .L4_55
.L4_56:
    movq $8, %rcx
    movq %r13, %rbx
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
.L4_57:
.L4_55:
    movq %r13, %r10
    movzbl (%r10), %ebx
.L4_54:
    movzbl %bl, %r13d
.L4_50:
    movzbl %r13b, %ebx
    movq -1720(%rbp), %r10
    movb %bl, (%r10)
    leaq .Ltext_48(%rip), %rbx
    leaq -776(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -1432(%rbp)
    movq $7, %rax
    movq -1432(%rbp), %r10
    movq %rax, (%r10)
    movq -1184(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1440(%rbp)
    movq -1440(%rbp), %r10
    movq (%r10), %r15
    movq $7, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_61
    jmp .L4_167
.L4_167:
    movl %r12d, %ebx
    jmp .L4_62
.L4_61:
    movq -1184(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L4_62:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L4_63
    jmp .L4_168
.L4_168:
    movl %r12d, %ebx
    jmp .L4_64
.L4_63:
    movq -1184(%rbp), %rax
    movq $48, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl $200, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %ebx
.L4_64:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L4_65
    jmp .L4_169
.L4_169:
    movl %r12d, %ebx
    jmp .L4_66
.L4_65:
    movq -1184(%rbp), %rax
    movq $48, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl $300, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %ebx
.L4_66:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L4_58
    jmp .L4_59
.L4_58:
    movq -1184(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $4, %eax
    movq %rbx, %r10
    movb %al, (%r10)
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
.L4_67:
    jmp .L4_60
.L4_59:
.L4_60:
    leaq -792(%rbp), %rax
    movq %rax, -1448(%rbp)
    leaq -808(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq -1448(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1704(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1456(%rbp)
    movq -1704(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -1464(%rbp)
    leaq -840(%rbp), %r15
    leaq .Ltext_49(%rip), %rax
    movq %rax, -1472(%rbp)
    leaq -856(%rbp), %rax
    movq %rax, -1480(%rbp)
    movq -1480(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1488(%rbp)
    leaq -864(%rbp), %rax
    movq %rax, -1496(%rbp)
    movq $16, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -1504(%rbp)
    leaq -888(%rbp), %rax
    movq %rax, -1736(%rbp)
    movq -1736(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -1512(%rbp)
    leaq -904(%rbp), %rax
    movq %rax, -1520(%rbp)
    leaq -944(%rbp), %rax
    movq %rax, -1744(%rbp)
    movq -1744(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -1528(%rbp)
    movq -1448(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1536(%rbp)
    leaq -976(%rbp), %rax
    movq %rax, -1544(%rbp)
    movq -1544(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1552(%rbp)
    leaq .Ltext_51(%rip), %rax
    movq %rax, -1560(%rbp)
    leaq -992(%rbp), %rax
    movq %rax, -1568(%rbp)
    movq -1568(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1576(%rbp)
    leaq -1000(%rbp), %rax
    movq %rax, -1584(%rbp)
    movq $16, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -1592(%rbp)
    leaq -1024(%rbp), %rax
    movq %rax, -1752(%rbp)
    movq -1752(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -1600(%rbp)
    leaq -1040(%rbp), %rax
    movq %rax, -1608(%rbp)
    movq -1608(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1616(%rbp)
    leaq .Ltext_52(%rip), %rax
    movq %rax, -1624(%rbp)
    leaq -1056(%rbp), %rax
    movq %rax, -1632(%rbp)
    movq -1632(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1640(%rbp)
    movq $0, %rax
    movq %rax, -1728(%rbp)
    movq $0, %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rax, -1760(%rbp)
.L4_68:
    movq -1464(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L4_71
.L4_69:
    movq $32, %rcx
    movq %rbx, %r14
    imulq %rcx, %r14
    movq -1456(%rbp), %rax
    movq %r14, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -1472(%rbp), %rax
    movq -1480(%rbp), %r10
    movq %rax, (%r10)
    movq $14, %rax
    movq -1488(%rbp), %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1480(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_net_10http_equal@PLT
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L4_72
    jmp .L4_73
.L4_72:
    movq $0, %rax
    movq -1496(%rbp), %r10
    movq %rax, (%r10)
    movq -1760(%rbp), %rax
    movq %rax, %r14
.L4_75:
    movq -1504(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -1496(%rbp), %rcx
    leaq -888(%rbp), %rdi
    call lb_net_14http_list_next@PLT
    movq -1512(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_78
    jmp .L4_77
.L4_78:
    movq -1736(%rbp), %r10
    movq -1520(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L4_76:
    movq -1520(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -944(%rbp), %rdi
    call lb_net_11http_number@PLT
    movq -1528(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_80
    jmp .L4_79
.L4_80:
    movq -1744(%rbp), %rax
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
.L4_81:
.L4_79:
    movq -1744(%rbp), %r10
    movq (%r10), %r12
    movq -1536(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L4_85
    jmp .L4_83
.L4_85:
.L4_82:
    cmpq %r14, %r12
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L4_87
.L4_86:
    leaq -80(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_50(%rip), %r12
    leaq -960(%rbp), %r13
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
.L4_89:
    jmp .L4_88
.L4_87:
.L4_88:
    jmp .L4_84
.L4_83:
.L4_84:
    movq -1544(%rbp), %r10
    movq %r12, (%r10)
    movl $1, %eax
    movq -1552(%rbp), %r10
    movb %al, (%r10)
    movq -1544(%rbp), %r10
    movq -1448(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r14
    jmp .L4_75
.L4_77:
    movq %r14, %r12
    jmp .L4_74
.L4_73:
    movq -1760(%rbp), %rax
    movq %rax, %r12
.L4_74:
    movq -1560(%rbp), %rax
    movq -1568(%rbp), %r10
    movq %rax, (%r10)
    movq $17, %rax
    movq -1576(%rbp), %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1568(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_net_10http_equal@PLT
    movl %eax, %r13d
    testl %r13d, %r13d
    jne .L4_90
    jmp .L4_91
.L4_90:
    movq $0, %rax
    movq -1584(%rbp), %r10
    movq %rax, (%r10)
    movq -1728(%rbp), %rax
    movq %rax, %r13
.L4_93:
    movq -1592(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -1584(%rbp), %rcx
    leaq -1024(%rbp), %rdi
    call lb_net_14http_list_next@PLT
    movq -1600(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L4_96
    jmp .L4_95
.L4_96:
    movq -1752(%rbp), %r10
    movq -1608(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L4_94:
    movq -1616(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L4_98
.L4_97:
    jmp .L4_93
.L4_100:
    jmp .L4_99
.L4_98:
.L4_99:
    movq -1624(%rbp), %rax
    movq -1632(%rbp), %r10
    movq %rax, (%r10)
    movq $7, %rax
    movq -1640(%rbp), %r10
    movq %rax, (%r10)
    movq -1608(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1632(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_net_10http_equal@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L4_102
.L4_101:
    leaq -80(%rbp), %rbx
    leaq lb_net_16http_unsupported(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_53(%rip), %r12
    leaq -1072(%rbp), %r13
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
.L4_104:
    jmp .L4_103
.L4_102:
.L4_103:
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_59(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r14, %r13
    jmp .L4_93
.L4_95:
    movq %r13, %r14
    jmp .L4_92
.L4_91:
    movq -1728(%rbp), %rax
    movq %rax, %r14
.L4_92:
.L4_70:
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %rax
    movq %rax, -1728(%rbp)
    movq %r13, %rbx
    movq %r12, %rax
    movq %rax, -1760(%rbp)
    jmp .L4_68
.L4_71:
    leaq .Ltext_51(%rip), %rbx
    leaq -1088(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $17, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1184(%rbp), %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_net_HttpHead_11field_count@PLT
    movq %rax, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L4_106
.L4_105:
    movq -1728(%rbp), %rax
    movq $1, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L4_170
    jmp .L4_111
.L4_170:
    movl %ebx, %r12d
    jmp .L4_112
.L4_111:
    movq -1448(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L4_112:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L4_171
    jmp .L4_113
.L4_171:
    movl %ebx, %r12d
    jmp .L4_114
.L4_113:
    leaq .Ltext_10(%rip), %rbx
    leaq -1104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $8, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -1192(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L4_115
    jmp .L4_172
.L4_172:
    movl %r13d, %ebx
    jmp .L4_116
.L4_115:
    movq -1648(%rbp), %r10
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
.L4_116:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L4_114:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L4_108
    jmp .L4_109
.L4_108:
    leaq -80(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_55(%rip), %r12
    leaq -1120(%rbp), %r13
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_117:
    jmp .L4_110
.L4_109:
.L4_110:
    jmp .L4_107
.L4_106:
.L4_107:
    movq -1184(%rbp), %rax
    movq $48, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_121
    jmp .L4_173
.L4_173:
    movl %r12d, %r13d
    jmp .L4_122
.L4_121:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $200, %ecx
    cmpl %ecx, %r12d
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_174
    jmp .L4_123
.L4_174:
    movl %r12d, %r13d
    jmp .L4_124
.L4_123:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $204, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L4_124:
    movzbl %r13b, %r12d
    movl %r12d, %r13d
.L4_122:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L4_118
    jmp .L4_119
.L4_118:
    movq -1448(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_175
    jmp .L4_128
.L4_175:
    movl %r12d, %r13d
    jmp .L4_129
.L4_128:
    movq -1728(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L4_129:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L4_125
    jmp .L4_126
.L4_125:
    leaq -80(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_56(%rip), %r12
    leaq -1136(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $50, %rax
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
.L4_130:
    jmp .L4_127
.L4_126:
.L4_127:
    jmp .L4_120
.L4_119:
.L4_120:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_134
    jmp .L4_176
.L4_176:
    movl %r12d, %r13d
    jmp .L4_135
.L4_134:
    leaq .Ltext_57(%rip), %r12
    leaq -1152(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq $4, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -1440(%rbp), %r10
    movq (%r10), %r13
    movq $4, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L4_136
    jmp .L4_177
.L4_177:
    movl %r14d, %r12d
    jmp .L4_137
.L4_136:
    movq -1184(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rdi
    movq %r12, %rsi
    movq %r13, %rdx
    call memcmp@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L4_137:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L4_178
    jmp .L4_138
.L4_178:
    movl %r13d, %r12d
    jmp .L4_139
.L4_138:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $200, %ecx
    cmpl %ecx, %r12d
    setb %al
    movzbl %al, %r12d
.L4_139:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L4_179
    jmp .L4_140
.L4_179:
    movl %r13d, %r12d
    jmp .L4_141
.L4_140:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $204, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L4_141:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L4_180
    jmp .L4_142
.L4_180:
    movl %r13d, %r12d
    jmp .L4_143
.L4_142:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $304, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L4_143:
    movzbl %r12b, %r13d
.L4_135:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L4_131
    jmp .L4_132
.L4_131:
    movq -1184(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
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
.L4_144:
    jmp .L4_133
.L4_132:
.L4_133:
    movq -1728(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L4_146
.L4_145:
    movq -1184(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $2, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L4_147
.L4_146:
    movq -1448(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_151
    jmp .L4_149
.L4_151:
.L4_148:
    leaq -176(%rbp), %rbx
    movq $24, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -1760(%rbp), %rax
    cmpq %rbx, %rax
    jbe .L4_153
.L4_152:
    leaq -80(%rbp), %rbx
    leaq lb_net_10http_limit(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_58(%rip), %r12
    leaq -1168(%rbp), %r13
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
.L4_155:
    jmp .L4_154
.L4_153:
.L4_154:
    movq -1184(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -1184(%rbp), %rax
    movq $80, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -1760(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    jmp .L4_150
.L4_149:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jbe .L4_157
.L4_156:
    movq -1184(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $3, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movl $0, %eax
    movq -1720(%rbp), %r10
    movb %al, (%r10)
    jmp .L4_158
.L4_157:
    movq -1184(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L4_158:
.L4_150:
.L4_147:
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
    .quad lb_net_9http_head_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "HTTP request line exceeds its limit"
.Ltext_1:
    .asciz " "
.Ltext_2:
    .asciz "request line needs a method"
.Ltext_3:
    .asciz "src/std/net/http/head.lucb:10:5"
.Ltext_4:
    .asciz "index out of bounds"
.Ltext_5:
    .asciz "src/std/net/http/head.lucb:11:5"
.Ltext_6:
    .asciz "request line needs a version"
.Ltext_7:
    .asciz "src/std/net/http/head.lucb:13:5"
.Ltext_8:
    .asciz "src/std/net/http/head.lucb:14:5"
.Ltext_9:
    .asciz "invalid request method or target"
.Ltext_10:
    .asciz "HTTP/1.1"
.Ltext_11:
    .asciz "host"
.Ltext_12:
    .asciz "HTTP/1.1 requires exactly one Host field"
.Ltext_13:
    .asciz "duplicate Host field"
.Ltext_14:
    .asciz "invalid Host field"
.Ltext_15:
    .asciz "expect"
.Ltext_16:
    .asciz ""
.Ltext_17:
    .asciz "100-continue"
.Ltext_18:
    .asciz "unsupported HTTP expectation"
.Ltext_19:
    .asciz "unreachable"
.Ltext_20:
    .asciz "src/std/net/http/head.lucb:30:5"
.Ltext_21:
    .asciz "HTTP status line exceeds its limit"
.Ltext_22:
    .asciz "src/std/net/http/head.lucb:40:5"
.Ltext_23:
    .asciz "invalid HTTP status line"
.Ltext_24:
    .asciz "src/std/net/http/head.lucb:42:5"
.Ltext_25:
    .asciz "reason"
.Ltext_26:
    .asciz "src/std/net/http/head.lucb:43:5"
.Ltext_27:
    .asciz "invalid HTTP status or reason"
.Ltext_28:
    .asciz "invalid request method for response framing"
.Ltext_29:
    .asciz "src/std/net/http/head.lucb:47:5"
.Ltext_30:
    .asciz "src/std/net/http/head.lucb:49:5"
.Ltext_31:
    .asciz "HTTP head exceeds its byte limit"
.Ltext_32:
    .asciz "incomplete HTTP head"
.Ltext_33:
    .asciz "HTTP head parser does not consume body bytes"
.Ltext_34:
    .asciz "HTTP/1.0"
.Ltext_35:
    .asciz "unsupported HTTP version"
.Ltext_36:
    .asciz "HTTP fields exceed caller storage or configured limits"
.Ltext_37:
    .asciz ":"
.Ltext_38:
    .asciz "HTTP field needs a colon"
.Ltext_39:
    .asciz "src/std/net/http/head.lucb:69:9"
.Ltext_40:
    .asciz "invalid HTTP field name or value"
.Ltext_41:
    .asciz "src/std/net/http/head.lucb:72:9"
.Ltext_42:
    .asciz "src/std/net/http/head.lucb:73:9"
.Ltext_43:
    .asciz "src/std/net/http/head.lucb:74:5"
.Ltext_44:
    .asciz "connection"
.Ltext_45:
    .asciz "upgrade"
.Ltext_46:
    .asciz "close"
.Ltext_47:
    .asciz "keep-alive"
.Ltext_48:
    .asciz "CONNECT"
.Ltext_49:
    .asciz "content-length"
.Ltext_50:
    .asciz "conflicting Content-Length fields"
.Ltext_51:
    .asciz "transfer-encoding"
.Ltext_52:
    .asciz "chunked"
.Ltext_53:
    .asciz "unsupported HTTP transfer coding"
.Ltext_54:
    .asciz "src/std/net/http/head.lucb:101:17"
.Ltext_55:
    .asciz "ambiguous HTTP transfer framing"
.Ltext_56:
    .asciz "body framing is forbidden for this response status"
.Ltext_57:
    .asciz "HEAD"
.Ltext_58:
    .asciz "HTTP body exceeds its byte limit"
.Ltext_59:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
