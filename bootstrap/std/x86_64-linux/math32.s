    .text

    .p2align 4
    .globl lb_math32_0init
    .type lb_math32_0init, @function
lb_math32_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movl $1078530011, %eax
    movd %eax, %xmm12
    leaq lb_math32_pi(%rip), %rbx
    movq %rbx, %r10
    movss %xmm12, (%r10)
    movl $1086918619, %eax
    movd %eax, %xmm12
    leaq lb_math32_tau(%rip), %rbx
    movq %rbx, %r10
    movss %xmm12, (%r10)
    movl $1076754516, %eax
    movd %eax, %xmm12
    leaq lb_math32_e(%rip), %rbx
    movq %rbx, %r10
    movss %xmm12, (%r10)
    movl $2139095040, %eax
    movd %eax, %xmm12
    leaq lb_math32_infinity(%rip), %rbx
    movq %rbx, %r10
    movss %xmm12, (%r10)
    movl $2143289344, %eax
    movd %eax, %xmm12
    leaq lb_math32_nan(%rip), %rbx
    movq %rbx, %r10
    movss %xmm12, (%r10)
    leaq lb_math32_9sign_mask(%rip), %rbx
    movl $2147483648, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_math32_14magnitude_mask(%rip), %rbx
    movl $2147483647, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_math32_13exponent_mask(%rip), %rbx
    movl $2139095040, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_math32_floor
    .type lb_math32_floor, @function
lb_math32_floor:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call floorf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_1:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_ceil
    .type lb_math32_ceil, @function
lb_math32_ceil:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call ceilf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_1:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_round
    .type lb_math32_round, @function
lb_math32_round:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call roundf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_1:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_trunc
    .type lb_math32_trunc, @function
lb_math32_trunc:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call truncf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_1:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_sqrt
    .type lb_math32_sqrt, @function
lb_math32_sqrt:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call sqrtf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_1:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_cbrt
    .type lb_math32_cbrt, @function
lb_math32_cbrt:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call cbrtf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_1:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_hypot
    .type lb_math32_hypot, @function
lb_math32_hypot:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    movss %xmm1, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm13
    movaps %xmm12, %xmm0
    movaps %xmm13, %xmm1
    call hypotf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_1:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_mod
    .type lb_math32_mod, @function
lb_math32_mod:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    movss %xmm1, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm13
    movaps %xmm12, %xmm0
    movaps %xmm13, %xmm1
    call fmodf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_1:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_pow
    .type lb_math32_pow, @function
lb_math32_pow:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    movss %xmm1, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm13
    movaps %xmm12, %xmm0
    movaps %xmm13, %xmm1
    call powf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_1:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_exp
    .type lb_math32_exp, @function
lb_math32_exp:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call expf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_1:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_exp2
    .type lb_math32_exp2, @function
lb_math32_exp2:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call exp2f@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_1:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_log
    .type lb_math32_log, @function
lb_math32_log:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call logf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_1:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_log2
    .type lb_math32_log2, @function
lb_math32_log2:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call log2f@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_1:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_log10
    .type lb_math32_log10, @function
lb_math32_log10:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call log10f@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_1:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_log1p
    .type lb_math32_log1p, @function
lb_math32_log1p:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call log1pf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L15_1:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_expm1
    .type lb_math32_expm1, @function
lb_math32_expm1:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movss %xmm0, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movd %xmm12, %ebx
    leaq lb_math32_9sign_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    leaq lb_math32_13exponent_mask(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    orl %r13d, %r12d
    cmpl %r12d, %ebx
    jne .L16_2
.L16_1:
    movl $1065353216, %eax
    movd %eax, %xmm12
    movd %xmm12, %eax
    xorl $2147483648, %eax
    movd %eax, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_4:
    jmp .L16_3
.L16_2:
.L16_3:
    movaps %xmm12, %xmm0
    call expm1f@PLT
    movaps %xmm0, %xmm13
    movaps %xmm13, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_5:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_fma
    .type lb_math32_fma, @function
lb_math32_fma:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    movss %xmm1, -40(%rbp)
    movss %xmm2, -56(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm13
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm14
    movaps %xmm12, %xmm0
    movaps %xmm13, %xmm1
    movaps %xmm14, %xmm2
    call fmaf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L17_1:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_nextafter
    .type lb_math32_nextafter, @function
lb_math32_nextafter:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    movss %xmm1, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm13
    movaps %xmm12, %xmm0
    movaps %xmm13, %xmm1
    call nextafterf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L18_1:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_7next_up
    .type lb_math32_7next_up, @function
lb_math32_7next_up:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq lb_math32_infinity(%rip), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm13
    movaps %xmm12, %xmm0
    movaps %xmm13, %xmm1
    call nextafterf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L19_1:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_9next_down
    .type lb_math32_9next_down, @function
lb_math32_9next_down:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movss %xmm0, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq lb_math32_infinity(%rip), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm13
    movl $1065353216, %eax
    movd %eax, %xmm14
    movd %xmm14, %eax
    xorl $2147483648, %eax
    movd %eax, %xmm14
    leaq -56(%rbp), %r10
    movss %xmm13, (%r10)
    leaq -72(%rbp), %r10
    movss %xmm14, (%r10)
    movd %xmm13, %ebx
    leaq lb_math32_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    andl %r12d, %ebx
    movd %xmm14, %r12d
    leaq lb_math32_9sign_mask(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    andl %r13d, %r12d
    orl %r12d, %ebx
    movd %ebx, %xmm13
    leaq -80(%rbp), %r10
    movss %xmm13, (%r10)
    jmp .L20_3
.L20_2:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L20_3:
    movaps %xmm12, %xmm0
    movaps %xmm13, %xmm1
    call nextafterf@PLT
    movaps %xmm0, %xmm14
    movaps %xmm14, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L20_1:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_frexp
    .type lb_math32_frexp, @function
lb_math32_frexp:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movss %xmm0, -48(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movl $0, %eax
    movd %eax, %xmm13
    ucomiss %xmm13, %xmm12
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L21_10
    jmp .L21_4
.L21_10:
    movl %ebx, %r12d
    jmp .L21_5
.L21_4:
    leaq -88(%rbp), %r10
    movss %xmm12, (%r10)
    movd %xmm12, %ebx
    leaq lb_math32_13exponent_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    andl %r12d, %ebx
    cmpl %ebx, %r12d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq -96(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L21_9
.L21_8:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L21_9:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L21_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L21_1
    jmp .L21_2
.L21_1:
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movss %xmm12, (%r10)
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq -32(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L21_6:
    jmp .L21_3
.L21_2:
.L21_3:
    leaq -60(%rbp), %rbx
    movaps %xmm12, %xmm0
    movq %rbx, %rdi
    call frexpf@PLT
    movaps %xmm0, %xmm13
    leaq -68(%rbp), %r12
    movq %r12, %r10
    movss %xmm13, (%r10)
    movq %rbx, %r10
    movslq (%r10), %rbx
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    leaq -32(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L21_7:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_scalbn
    .type lb_math32_scalbn, @function
lb_math32_scalbn:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    movl %edi, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movaps %xmm12, %xmm0
    movl %ebx, %edi
    call scalbnf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L22_1:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_modf
    .type lb_math32_modf, @function
lb_math32_modf:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movss %xmm0, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq -44(%rbp), %rbx
    movaps %xmm12, %xmm0
    movq %rbx, %rdi
    call modff@PLT
    movaps %xmm0, %xmm12
    leaq -52(%rbp), %r12
    movq %r12, %r10
    movss %xmm12, (%r10)
    movq %rbx, %r10
    movss (%r10), %xmm12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movss %xmm12, (%r10)
    leaq -24(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L23_1:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_remainder
    .type lb_math32_remainder, @function
lb_math32_remainder:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movss %xmm0, -40(%rbp)
    movss %xmm1, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm8
    movss %xmm8, -104(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movss -104(%rbp), %xmm0
    movaps %xmm12, %xmm1
    call remainderf@PLT
    movaps %xmm0, %xmm12
    movd %xmm12, %ebx
    leaq lb_math32_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    andl %r12d, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L24_2
.L24_1:
    leaq -72(%rbp), %r10
    movss %xmm12, (%r10)
    movss -104(%rbp), %xmm8
    leaq -88(%rbp), %r10
    movss %xmm8, (%r10)
    movss -104(%rbp), %xmm8
    movd %xmm8, %r12d
    leaq lb_math32_9sign_mask(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    andl %r13d, %r12d
    movl %r12d, %ecx
    movl %ebx, %r12d
    orl %ecx, %r12d
    movd %r12d, %xmm13
    leaq -96(%rbp), %r10
    movss %xmm13, (%r10)
    jmp .L24_6
.L24_5:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L24_6:
    movaps %xmm13, %xmm12
    jmp .L24_3
.L24_2:
.L24_3:
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L24_4:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_sin
    .type lb_math32_sin, @function
lb_math32_sin:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call sinf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L25_1:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_cos
    .type lb_math32_cos, @function
lb_math32_cos:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call cosf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L26_1:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_tan
    .type lb_math32_tan, @function
lb_math32_tan:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call tanf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L27_1:
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_asin
    .type lb_math32_asin, @function
lb_math32_asin:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call asinf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L28_1:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_acos
    .type lb_math32_acos, @function
lb_math32_acos:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call acosf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L29_1:
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_atan
    .type lb_math32_atan, @function
lb_math32_atan:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call atanf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L30_1:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_atan2
    .type lb_math32_atan2, @function
lb_math32_atan2:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    movss %xmm1, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm13
    movaps %xmm12, %xmm0
    movaps %xmm13, %xmm1
    call atan2f@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L31_1:
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_sinh
    .type lb_math32_sinh, @function
lb_math32_sinh:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call sinhf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L32_1:
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_cosh
    .type lb_math32_cosh, @function
lb_math32_cosh:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call coshf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L33_1:
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_tanh
    .type lb_math32_tanh, @function
lb_math32_tanh:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movss %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call tanhf@PLT
    movaps %xmm0, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L34_1:
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_6is_nan
    .type lb_math32_6is_nan, @function
lb_math32_6is_nan:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movss %xmm0, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movd %xmm12, %ebx
    leaq lb_math32_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    andl %r12d, %ebx
    leaq lb_math32_13exponent_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    seta %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L35_1:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_9is_finite
    .type lb_math32_9is_finite, @function
lb_math32_9is_finite:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movss %xmm0, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movd %xmm12, %ebx
    leaq lb_math32_13exponent_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    andl %r12d, %ebx
    cmpl %ebx, %r12d
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
.L36_1:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_11is_infinite
    .type lb_math32_11is_infinite, @function
lb_math32_11is_infinite:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movss %xmm0, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movd %xmm12, %ebx
    leaq lb_math32_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    andl %r12d, %ebx
    leaq lb_math32_13exponent_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L37_1:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_signbit
    .type lb_math32_signbit, @function
lb_math32_signbit:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movss %xmm0, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movd %xmm12, %ebx
    leaq lb_math32_9sign_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
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
.L38_1:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_abs
    .type lb_math32_abs, @function
lb_math32_abs:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movss %xmm0, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movd %xmm12, %ebx
    leaq lb_math32_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    andl %r12d, %ebx
    movd %ebx, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L39_1:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_copysign
    .type lb_math32_copysign, @function
lb_math32_copysign:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movss %xmm0, -40(%rbp)
    movss %xmm1, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    movd %xmm12, %ebx
    leaq lb_math32_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    andl %r12d, %ebx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movss (%r10), %xmm12
    movd %xmm12, %r12d
    leaq lb_math32_9sign_mask(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    andl %r13d, %r12d
    orl %r12d, %ebx
    movd %ebx, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L40_1:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_sign
    .type lb_math32_sign, @function
lb_math32_sign:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movss %xmm0, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq -48(%rbp), %r10
    movss %xmm12, (%r10)
    movd %xmm12, %ebx
    leaq lb_math32_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    andl %r12d, %ebx
    leaq lb_math32_13exponent_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    seta %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq -56(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L41_15
.L41_14:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L41_15:
    testl %ebx, %ebx
    jne .L41_1
    jmp .L41_2
.L41_1:
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_4:
    jmp .L41_3
.L41_2:
.L41_3:
    movl $0, %eax
    movd %eax, %xmm13
    ucomiss %xmm12, %xmm13
    seta %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L41_5
    jmp .L41_6
.L41_5:
    movl $1065353216, %eax
    movd %eax, %xmm12
    movd %xmm12, %eax
    xorl $2147483648, %eax
    movd %eax, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_8:
    jmp .L41_7
.L41_6:
.L41_7:
    ucomiss %xmm13, %xmm12
    seta %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L41_9
    jmp .L41_10
.L41_9:
    movl $1065353216, %eax
    movd %eax, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_12:
    jmp .L41_11
.L41_10:
.L41_11:
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_13:
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_min
    .type lb_math32_min, @function
lb_math32_min:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movss %xmm0, -56(%rbp)
    movss %xmm1, -72(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq -88(%rbp), %r10
    movss %xmm12, (%r10)
    movd %xmm12, %ebx
    leaq lb_math32_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl %ebx, %r13d
    andl %r12d, %r13d
    leaq lb_math32_13exponent_mask(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    cmpl %r14d, %r13d
    seta %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq -96(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L42_20
.L42_19:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L42_20:
    testl %r13d, %r13d
    jne .L42_1
    jmp .L42_2
.L42_1:
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L42_4:
    jmp .L42_3
.L42_2:
.L42_3:
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movss (%r10), %xmm13
    leaq -88(%rbp), %r10
    movss %xmm13, (%r10)
    movd %xmm13, %r13d
    movl %r12d, %r15d
    andl %r13d, %r15d
    cmpl %r14d, %r15d
    seta %al
    movzbl %al, %r15d
    movzbl %r15b, %r15d
    leaq -104(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L42_22
.L42_21:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L42_22:
    testl %r15d, %r15d
    jne .L42_5
    jmp .L42_6
.L42_5:
    movaps %xmm13, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L42_8:
    jmp .L42_7
.L42_6:
.L42_7:
    movl $0, %eax
    movd %eax, %xmm14
    ucomiss %xmm14, %xmm12
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L42_12
    jmp .L42_23
.L42_23:
    movl %r12d, %r14d
    jmp .L42_13
.L42_12:
    ucomiss %xmm14, %xmm13
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r14d
.L42_13:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L42_9
    jmp .L42_10
.L42_9:
    movl %ebx, %r12d
    orl %r13d, %r12d
    movd %r12d, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L42_14:
    jmp .L42_11
.L42_10:
.L42_11:
    ucomiss %xmm12, %xmm13
    seta %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L42_15
    jmp .L42_16
.L42_15:
    movaps %xmm12, %xmm13
    jmp .L42_17
.L42_16:
.L42_17:
    movaps %xmm13, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L42_18:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_max
    .type lb_math32_max, @function
lb_math32_max:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movss %xmm0, -56(%rbp)
    movss %xmm1, -72(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq -88(%rbp), %r10
    movss %xmm12, (%r10)
    movd %xmm12, %ebx
    leaq lb_math32_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl %ebx, %r13d
    andl %r12d, %r13d
    leaq lb_math32_13exponent_mask(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    cmpl %r14d, %r13d
    seta %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq -96(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L43_20
.L43_19:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L43_20:
    testl %r13d, %r13d
    jne .L43_1
    jmp .L43_2
.L43_1:
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L43_4:
    jmp .L43_3
.L43_2:
.L43_3:
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movss (%r10), %xmm13
    leaq -88(%rbp), %r10
    movss %xmm13, (%r10)
    movd %xmm13, %r13d
    movl %r12d, %r15d
    andl %r13d, %r15d
    cmpl %r14d, %r15d
    seta %al
    movzbl %al, %r15d
    movzbl %r15b, %r15d
    leaq -104(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L43_22
.L43_21:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L43_22:
    testl %r15d, %r15d
    jne .L43_5
    jmp .L43_6
.L43_5:
    movaps %xmm13, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L43_8:
    jmp .L43_7
.L43_6:
.L43_7:
    movl $0, %eax
    movd %eax, %xmm14
    ucomiss %xmm14, %xmm12
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L43_12
    jmp .L43_23
.L43_23:
    movl %r12d, %r14d
    jmp .L43_13
.L43_12:
    ucomiss %xmm14, %xmm13
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r14d
.L43_13:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L43_9
    jmp .L43_10
.L43_9:
    movl %ebx, %r12d
    andl %r13d, %r12d
    movd %r12d, %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L43_14:
    jmp .L43_11
.L43_10:
.L43_11:
    ucomiss %xmm13, %xmm12
    seta %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L43_15
    jmp .L43_16
.L43_15:
    movaps %xmm12, %xmm13
    jmp .L43_17
.L43_16:
.L43_17:
    movaps %xmm13, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L43_18:
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math32_clamp
    .type lb_math32_clamp, @function
lb_math32_clamp:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movss %xmm0, -32(%rbp)
    movss %xmm1, -48(%rbp)
    movss %xmm2, -64(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm13
    ucomiss %xmm12, %xmm13
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L44_1
    jmp .L44_2
.L44_2:
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    call lb_core_7trap_at@PLT
.L44_1:
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm14
    leaq -80(%rbp), %r10
    movss %xmm14, (%r10)
    movd %xmm14, %ebx
    leaq lb_math32_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    andl %r12d, %ebx
    leaq lb_math32_13exponent_mask(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    seta %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq -88(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L44_15
.L44_14:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L44_15:
    testl %ebx, %ebx
    jne .L44_3
    jmp .L44_4
.L44_3:
    movaps %xmm14, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L44_6:
    jmp .L44_5
.L44_4:
.L44_5:
    ucomiss %xmm14, %xmm12
    seta %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L44_7
    jmp .L44_8
.L44_7:
    movaps %xmm12, %xmm13
    jmp .L44_9
.L44_8:
    ucomiss %xmm13, %xmm14
    seta %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L44_10
    jmp .L44_11
.L44_10:
    movaps %xmm13, %xmm12
    jmp .L44_12
.L44_11:
    movaps %xmm14, %xmm12
.L44_12:
    movaps %xmm12, %xmm13
.L44_9:
    movaps %xmm13, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L44_13:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_math32_0init
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
    .asciz "src/std/math32.lucb:52:5"
.Ltext_2:
    .asciz "src/std/math32.lucb:54:5"
.Ltext_3:
    .asciz "src/std/math32.lucb:56:5"
.Ltext_4:
    .asciz "src/std/math32.lucb:58:5"
.Ltext_5:
    .asciz "src/std/math32.lucb:61:5"
.Ltext_6:
    .asciz "src/std/math32.lucb:63:5"
.Ltext_7:
    .asciz "src/std/math32.lucb:66:5"
.Ltext_8:
    .asciz "src/std/math32.lucb:69:5"
.Ltext_9:
    .asciz "src/std/math32.lucb:71:5"
.Ltext_10:
    .asciz "src/std/math32.lucb:73:5"
.Ltext_11:
    .asciz "src/std/math32.lucb:75:5"
.Ltext_12:
    .asciz "src/std/math32.lucb:77:5"
.Ltext_13:
    .asciz "src/std/math32.lucb:79:5"
.Ltext_14:
    .asciz "src/std/math32.lucb:81:5"
.Ltext_15:
    .asciz "src/std/math32.lucb:86:5"
.Ltext_16:
    .asciz "src/std/math32.lucb:93:5"
.Ltext_17:
    .asciz "src/std/math32.lucb:98:5"
.Ltext_18:
    .asciz "src/std/math32.lucb:103:5"
.Ltext_19:
    .asciz "src/std/math32.lucb:108:5"
.Ltext_20:
    .asciz "src/std/math32.lucb:113:5"
.Ltext_21:
    .asciz "src/std/math32.lucb:121:5"
.Ltext_22:
    .asciz "src/std/math32.lucb:126:5"
.Ltext_23:
    .asciz "src/std/math32.lucb:131:5"
.Ltext_24:
    .asciz "src/std/math32.lucb:139:5"
.Ltext_25:
    .asciz "src/std/math32.lucb:142:5"
.Ltext_26:
    .asciz "src/std/math32.lucb:144:5"
.Ltext_27:
    .asciz "src/std/math32.lucb:146:5"
.Ltext_28:
    .asciz "src/std/math32.lucb:148:5"
.Ltext_29:
    .asciz "src/std/math32.lucb:150:5"
.Ltext_30:
    .asciz "src/std/math32.lucb:152:5"
.Ltext_31:
    .asciz "src/std/math32.lucb:155:5"
.Ltext_32:
    .asciz "src/std/math32.lucb:157:5"
.Ltext_33:
    .asciz "src/std/math32.lucb:159:5"
.Ltext_34:
    .asciz "src/std/math32.lucb:161:5"
.Ltext_35:
    .asciz "src/std/math32.lucb:165:5"
.Ltext_36:
    .asciz "src/std/math32.lucb:169:5"
.Ltext_37:
    .asciz "src/std/math32.lucb:172:5"
.Ltext_38:
    .asciz "src/std/math32.lucb:175:5"
.Ltext_39:
    .asciz "src/std/math32.lucb:178:5"
.Ltext_40:
    .asciz "src/std/math32.lucb:181:5"
.Ltext_41:
    .asciz "src/std/math32.lucb:190:5"
.Ltext_42:
    .asciz "src/std/math32.lucb:200:5"
.Ltext_43:
    .asciz "src/std/math32.lucb:210:5"
.Ltext_44:
    .asciz "assert failed: low <= high"
.Ltext_45:
    .asciz "src/std/math32.lucb:214:5"
.Ltext_46:
    .asciz "src/std/math32.lucb:217:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_math32_pi
    .type lb_math32_pi, @object
    .weak lb_math32_pi
    .p2align 2
lb_math32_pi:
    .zero 4

    .bss
    .globl lb_math32_tau
    .type lb_math32_tau, @object
    .weak lb_math32_tau
    .p2align 2
lb_math32_tau:
    .zero 4

    .bss
    .globl lb_math32_e
    .type lb_math32_e, @object
    .weak lb_math32_e
    .p2align 2
lb_math32_e:
    .zero 4

    .bss
    .globl lb_math32_infinity
    .type lb_math32_infinity, @object
    .weak lb_math32_infinity
    .p2align 2
lb_math32_infinity:
    .zero 4

    .bss
    .globl lb_math32_nan
    .type lb_math32_nan, @object
    .weak lb_math32_nan
    .p2align 2
lb_math32_nan:
    .zero 4

    .bss
    .globl lb_math32_9sign_mask
    .type lb_math32_9sign_mask, @object
    .weak lb_math32_9sign_mask
    .p2align 2
lb_math32_9sign_mask:
    .zero 4

    .bss
    .globl lb_math32_14magnitude_mask
    .type lb_math32_14magnitude_mask, @object
    .weak lb_math32_14magnitude_mask
    .p2align 2
lb_math32_14magnitude_mask:
    .zero 4

    .bss
    .globl lb_math32_13exponent_mask
    .type lb_math32_13exponent_mask, @object
    .weak lb_math32_13exponent_mask
    .p2align 2
lb_math32_13exponent_mask:
    .zero 4

    .section .note.GNU-stack,"",@progbits
