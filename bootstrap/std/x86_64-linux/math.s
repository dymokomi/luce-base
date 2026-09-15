    .text

    .p2align 4
    .globl lb_math_0init
    .type lb_math_0init, @function
lb_math_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movabsq $4614256656552045848, %rax
    movq %rax, %xmm12
    leaq lb_math_pi(%rip), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movabsq $4618760256179416344, %rax
    movq %rax, %xmm12
    leaq lb_math_tau(%rip), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movabsq $4613303445314885481, %rax
    movq %rax, %xmm12
    leaq lb_math_e(%rip), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movabsq $9218868437227405312, %rax
    movq %rax, %xmm12
    leaq lb_math_infinity(%rip), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movabsq $9221120237041090560, %rax
    movq %rax, %xmm12
    leaq lb_math_nan(%rip), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    leaq lb_math_9sign_mask(%rip), %rbx
    movabsq $-9223372036854775808, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_math_14magnitude_mask(%rip), %rbx
    movabsq $9223372036854775807, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_math_13exponent_mask(%rip), %rbx
    movabsq $9218868437227405312, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_math_floor
    .type lb_math_floor, @function
lb_math_floor:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call floor@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_1:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_ceil
    .type lb_math_ceil, @function
lb_math_ceil:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call ceil@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_1:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_round
    .type lb_math_round, @function
lb_math_round:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call round@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_1:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_trunc
    .type lb_math_trunc, @function
lb_math_trunc:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call trunc@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_1:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_sqrt
    .type lb_math_sqrt, @function
lb_math_sqrt:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call sqrt@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_1:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_cbrt
    .type lb_math_cbrt, @function
lb_math_cbrt:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call cbrt@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_1:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_hypot
    .type lb_math_hypot, @function
lb_math_hypot:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    movsd %xmm1, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call hypot@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_1:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_mod
    .type lb_math_mod, @function
lb_math_mod:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    movsd %xmm1, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call fmod@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_1:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_pow
    .type lb_math_pow, @function
lb_math_pow:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    movsd %xmm1, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call pow@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_1:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_exp
    .type lb_math_exp, @function
lb_math_exp:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call exp@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_1:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_exp2
    .type lb_math_exp2, @function
lb_math_exp2:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call exp2@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_1:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_log
    .type lb_math_log, @function
lb_math_log:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call log@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_1:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_log2
    .type lb_math_log2, @function
lb_math_log2:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call log2@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_1:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_log10
    .type lb_math_log10, @function
lb_math_log10:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call log10@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_1:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_log1p
    .type lb_math_log1p, @function
lb_math_log1p:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call log1p@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L15_1:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_expm1
    .type lb_math_expm1, @function
lb_math_expm1:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movsd %xmm0, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movq %xmm12, %rbx
    leaq lb_math_9sign_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq lb_math_13exponent_mask(%rip), %r13
    movq %r13, %r10
    movq (%r10), %r13
    orq %r13, %r12
    cmpq %r12, %rbx
    jne .L16_2
.L16_1:
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm12
    movq %xmm12, %rax
    btcq $63, %rax
    movq %rax, %xmm12
    movapd %xmm12, %xmm0
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
    movapd %xmm12, %xmm0
    call expm1@PLT
    movapd %xmm0, %xmm13
    movapd %xmm13, %xmm0
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
    .globl lb_math_fma
    .type lb_math_fma, @function
lb_math_fma:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    movsd %xmm1, -40(%rbp)
    movsd %xmm2, -56(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm14
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    movapd %xmm14, %xmm2
    call fma@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L17_1:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_nextafter
    .type lb_math_nextafter, @function
lb_math_nextafter:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    movsd %xmm1, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call nextafter@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L18_1:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_7next_up
    .type lb_math_7next_up, @function
lb_math_7next_up:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq lb_math_infinity(%rip), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call nextafter@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L19_1:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_9next_down
    .type lb_math_9next_down, @function
lb_math_9next_down:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movsd %xmm0, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq lb_math_infinity(%rip), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm14
    movq %xmm14, %rax
    btcq $63, %rax
    movq %rax, %xmm14
    leaq -56(%rbp), %r10
    movsd %xmm13, (%r10)
    leaq -72(%rbp), %r10
    movsd %xmm14, (%r10)
    movq %xmm13, %rbx
    leaq lb_math_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    andq %r12, %rbx
    movq %xmm14, %r12
    leaq lb_math_9sign_mask(%rip), %r13
    movq %r13, %r10
    movq (%r10), %r13
    andq %r13, %r12
    orq %r12, %rbx
    movq %rbx, %xmm13
    jmp .L20_3
.L20_2:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L20_3:
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call nextafter@PLT
    movapd %xmm0, %xmm14
    movapd %xmm14, %xmm0
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
    .globl lb_math_frexp
    .type lb_math_frexp, @function
lb_math_frexp:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movsd %xmm0, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movq $0, %rax
    movq %rax, %xmm13
    ucomisd %xmm13, %xmm12
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
    leaq -112(%rbp), %r10
    movsd %xmm12, (%r10)
    movq %xmm12, %rbx
    leaq lb_math_13exponent_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    andq %r12, %rbx
    cmpq %rbx, %r12
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq -120(%rbp), %r10
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
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq -40(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %xmm0
    movq 8(%r10), %rax
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
    leaq -76(%rbp), %rbx
    movapd %xmm12, %xmm0
    movq %rbx, %rdi
    call frexp@PLT
    movapd %xmm0, %xmm13
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movsd %xmm13, (%r10)
    movq %rbx, %r10
    movslq (%r10), %rbx
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    leaq -40(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %xmm0
    movq 8(%r10), %rax
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
    .globl lb_math_scalbn
    .type lb_math_scalbn, @function
lb_math_scalbn:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    movl %edi, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movapd %xmm12, %xmm0
    movl %ebx, %edi
    call scalbn@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L22_1:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_modf
    .type lb_math_modf, @function
lb_math_modf:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movsd %xmm0, -48(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq -56(%rbp), %rbx
    movapd %xmm12, %xmm0
    movq %rbx, %rdi
    call modf@PLT
    movapd %xmm0, %xmm12
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movsd %xmm12, (%r10)
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    leaq -32(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %xmm0
    movq 8(%r10), %xmm1
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
    .globl lb_math_remainder
    .type lb_math_remainder, @function
lb_math_remainder:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movsd %xmm0, -40(%rbp)
    movsd %xmm1, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -96(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movsd -96(%rbp), %xmm0
    movapd %xmm12, %xmm1
    call remainder@PLT
    movapd %xmm0, %xmm12
    movq %xmm12, %rbx
    leaq lb_math_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    andq %r12, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L24_2
.L24_1:
    leaq -72(%rbp), %r10
    movsd %xmm12, (%r10)
    movsd -96(%rbp), %xmm8
    leaq -88(%rbp), %r10
    movsd %xmm8, (%r10)
    movsd -96(%rbp), %xmm8
    movq %xmm8, %r12
    leaq lb_math_9sign_mask(%rip), %r13
    movq %r13, %r10
    movq (%r10), %r13
    andq %r13, %r12
    movq %r12, %rcx
    movq %rbx, %r12
    orq %rcx, %r12
    movq %r12, %xmm13
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
    movapd %xmm12, %xmm0
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
    .globl lb_math_sin
    .type lb_math_sin, @function
lb_math_sin:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call sin@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L25_1:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_cos
    .type lb_math_cos, @function
lb_math_cos:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call cos@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L26_1:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_tan
    .type lb_math_tan, @function
lb_math_tan:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call tan@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L27_1:
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_asin
    .type lb_math_asin, @function
lb_math_asin:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call asin@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L28_1:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_acos
    .type lb_math_acos, @function
lb_math_acos:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call acos@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L29_1:
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_atan
    .type lb_math_atan, @function
lb_math_atan:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call atan@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L30_1:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_atan2
    .type lb_math_atan2, @function
lb_math_atan2:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    movsd %xmm1, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call atan2@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L31_1:
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_sinh
    .type lb_math_sinh, @function
lb_math_sinh:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call sinh@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L32_1:
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_cosh
    .type lb_math_cosh, @function
lb_math_cosh:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call cosh@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L33_1:
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_tanh
    .type lb_math_tanh, @function
lb_math_tanh:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    call tanh@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L34_1:
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_6is_nan
    .type lb_math_6is_nan, @function
lb_math_6is_nan:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movsd %xmm0, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movq %xmm12, %rbx
    leaq lb_math_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    andq %r12, %rbx
    leaq lb_math_13exponent_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
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
    .globl lb_math_9is_finite
    .type lb_math_9is_finite, @function
lb_math_9is_finite:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movsd %xmm0, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movq %xmm12, %rbx
    leaq lb_math_13exponent_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    andq %r12, %rbx
    cmpq %rbx, %r12
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
    .globl lb_math_11is_infinite
    .type lb_math_11is_infinite, @function
lb_math_11is_infinite:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movsd %xmm0, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movq %xmm12, %rbx
    leaq lb_math_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    andq %r12, %rbx
    leaq lb_math_13exponent_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
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
    .globl lb_math_signbit
    .type lb_math_signbit, @function
lb_math_signbit:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movsd %xmm0, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movq %xmm12, %rbx
    leaq lb_math_9sign_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    andq %r12, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
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
    .globl lb_math_abs
    .type lb_math_abs, @function
lb_math_abs:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movsd %xmm0, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movq %xmm12, %rbx
    leaq lb_math_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    andq %r12, %rbx
    movq %rbx, %xmm12
    movapd %xmm12, %xmm0
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
    .globl lb_math_copysign
    .type lb_math_copysign, @function
lb_math_copysign:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movsd %xmm0, -40(%rbp)
    movsd %xmm1, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movq %xmm12, %rbx
    leaq lb_math_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    andq %r12, %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    movq %xmm12, %r12
    leaq lb_math_9sign_mask(%rip), %r13
    movq %r13, %r10
    movq (%r10), %r13
    andq %r13, %r12
    orq %r12, %rbx
    movq %rbx, %xmm12
    movapd %xmm12, %xmm0
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
    .globl lb_math_sign
    .type lb_math_sign, @function
lb_math_sign:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movsd %xmm0, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq -48(%rbp), %r10
    movsd %xmm12, (%r10)
    movq %xmm12, %rbx
    leaq lb_math_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    andq %r12, %rbx
    leaq lb_math_13exponent_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
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
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_4:
    jmp .L41_3
.L41_2:
.L41_3:
    movq $0, %rax
    movq %rax, %xmm13
    ucomisd %xmm12, %xmm13
    seta %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L41_5
    jmp .L41_6
.L41_5:
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm12
    movq %xmm12, %rax
    btcq $63, %rax
    movq %rax, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_8:
    jmp .L41_7
.L41_6:
.L41_7:
    ucomisd %xmm13, %xmm12
    seta %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L41_9
    jmp .L41_10
.L41_9:
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_12:
    jmp .L41_11
.L41_10:
.L41_11:
    movapd %xmm12, %xmm0
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
    .globl lb_math_min
    .type lb_math_min, @function
lb_math_min:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movsd %xmm0, -56(%rbp)
    movsd %xmm1, -72(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq -88(%rbp), %r10
    movsd %xmm12, (%r10)
    movq %xmm12, %rbx
    leaq lb_math_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r13
    andq %r12, %r13
    leaq lb_math_13exponent_mask(%rip), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
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
    movapd %xmm12, %xmm0
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
    movsd (%r10), %xmm13
    leaq -88(%rbp), %r10
    movsd %xmm13, (%r10)
    movq %xmm13, %r13
    movq %r12, %r15
    andq %r13, %r15
    cmpq %r14, %r15
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
    movapd %xmm13, %xmm0
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
    movq $0, %rax
    movq %rax, %xmm14
    ucomisd %xmm14, %xmm12
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
    ucomisd %xmm14, %xmm13
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
    movq %rbx, %r12
    orq %r13, %r12
    movq %r12, %xmm12
    movapd %xmm12, %xmm0
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
    ucomisd %xmm12, %xmm13
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
    movapd %xmm13, %xmm0
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
    .globl lb_math_max
    .type lb_math_max, @function
lb_math_max:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movsd %xmm0, -56(%rbp)
    movsd %xmm1, -72(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq -88(%rbp), %r10
    movsd %xmm12, (%r10)
    movq %xmm12, %rbx
    leaq lb_math_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r13
    andq %r12, %r13
    leaq lb_math_13exponent_mask(%rip), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
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
    movapd %xmm12, %xmm0
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
    movsd (%r10), %xmm13
    leaq -88(%rbp), %r10
    movsd %xmm13, (%r10)
    movq %xmm13, %r13
    movq %r12, %r15
    andq %r13, %r15
    cmpq %r14, %r15
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
    movapd %xmm13, %xmm0
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
    movq $0, %rax
    movq %rax, %xmm14
    ucomisd %xmm14, %xmm12
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
    ucomisd %xmm14, %xmm13
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
    movq %rbx, %r12
    andq %r13, %r12
    movq %r12, %xmm12
    movapd %xmm12, %xmm0
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
    ucomisd %xmm13, %xmm12
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
    movapd %xmm13, %xmm0
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
    .globl lb_math_clamp
    .type lb_math_clamp, @function
lb_math_clamp:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movsd %xmm0, -32(%rbp)
    movsd %xmm1, -48(%rbp)
    movsd %xmm2, -64(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    ucomisd %xmm12, %xmm13
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
    movsd (%r10), %xmm14
    leaq -80(%rbp), %r10
    movsd %xmm14, (%r10)
    movq %xmm14, %rbx
    leaq lb_math_14magnitude_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    andq %r12, %rbx
    leaq lb_math_13exponent_mask(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
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
    movapd %xmm14, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L44_6:
    jmp .L44_5
.L44_4:
.L44_5:
    ucomisd %xmm14, %xmm12
    seta %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L44_7
    jmp .L44_8
.L44_7:
    movaps %xmm12, %xmm13
    jmp .L44_9
.L44_8:
    ucomisd %xmm13, %xmm14
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
    movapd %xmm13, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L44_13:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_9div_floor
    .type lb_math_9div_floor, @function
lb_math_9div_floor:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L45_1
    jmp .L45_2
.L45_1:
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    call lb_core_7trap_at@PLT
.L45_2:
    movabsq $-9223372036854775808, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r14d
    movq $-1, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r15d
    andl %r15d, %r14d
    testl %r14d, %r14d
    jne .L45_3
    jmp .L45_4
.L45_3:
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
.L45_4:
    movq %r12, %rax
    cqto
    idivq %r13
    movq %rax, %r15
    testl %ebx, %ebx
    jne .L45_8
    jmp .L45_9
.L45_8:
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    call lb_core_7trap_at@PLT
.L45_9:
    testl %r14d, %r14d
    jne .L45_10
    jmp .L45_11
.L45_10:
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
.L45_11:
    movq %r12, %rax
    cqto
    idivq %r13
    movq %rdx, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L45_12
    jmp .L45_16
.L45_16:
    movl %ebx, %r12d
    jmp .L45_13
.L45_12:
    movq $0, %rcx
    cmpq %rcx, %r12
    setl %al
    movzbl %al, %ebx
    movq $0, %rcx
    cmpq %rcx, %r13
    setl %al
    movzbl %al, %r14d
    cmpl %r14d, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L45_13:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L45_5
    jmp .L45_6
.L45_5:
    movq %r15, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L45_14:
    jmp .L45_7
.L45_6:
.L45_7:
    movq %r15, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L45_15:
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_9mod_floor
    .type lb_math_9mod_floor, @function
lb_math_9mod_floor:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $-1, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L46_1
    jmp .L46_2
.L46_1:
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L46_4:
    jmp .L46_3
.L46_2:
.L46_3:
    leaq -48(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L46_6
.L46_5:
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    call lb_core_7trap_at@PLT
.L46_6:
    movabsq $-9223372036854775808, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ecx
    movl %r12d, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L46_7
    jmp .L46_8
.L46_7:
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
.L46_8:
    movq %r14, %rax
    cqto
    idivq %rbx
    movq %rdx, %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L46_12
    jmp .L46_16
.L46_16:
    movl %r13d, %r14d
    jmp .L46_13
.L46_12:
    movq $0, %rcx
    cmpq %rcx, %r12
    setl %al
    movzbl %al, %r13d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setl %al
    movzbl %al, %r14d
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L46_13:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L46_9
    jmp .L46_10
.L46_9:
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L46_14:
    jmp .L46_11
.L46_10:
.L46_11:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L46_15:
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_iabs
    .type lb_math_iabs, @function
lb_math_iabs:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jge .L47_2
.L47_1:
    movq $0, %rax
    movq %rbx, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    jmp .L47_3
.L47_2:
    movq %rbx, %r12
.L47_3:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L47_4:
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_12checked_iabs
    .type lb_math_12checked_iabs, @function
lb_math_12checked_iabs:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -64(%rbp)
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jge .L48_2
.L48_1:
    leaq -72(%rbp), %r12
    movq $0, %rdi
    movq %rbx, %rsi
    movl $64, %edx
    movq %r12, %rcx
    call lb_core_6qsub_s@PLT
    movl %eax, %r13d
    leaq -88(%rbp), %r14
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movb %r13b, (%r10)
    leaq -48(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L48_4:
    jmp .L48_3
.L48_2:
.L48_3:
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -48(%rbp), %r13
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
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L48_5:
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_17checked_div_floor
    .type lb_math_17checked_div_floor, @function
lb_math_17checked_div_floor:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L49_10
    jmp .L49_4
.L49_10:
    movl %r12d, %r13d
    jmp .L49_5
.L49_4:
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movabsq $-9223372036854775808, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L49_6
    jmp .L49_11
.L49_11:
    movl %r12d, %r13d
    jmp .L49_7
.L49_6:
    movq $-1, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r13d
.L49_7:
    movzbl %r13b, %r12d
    movl %r12d, %r13d
.L49_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L49_1
    jmp .L49_2
.L49_1:
    leaq -88(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -40(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L49_8:
    jmp .L49_3
.L49_2:
.L49_3:
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    movq %rbx, %rsi
    call lb_math_9div_floor@PLT
    movq %rax, %r12
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -40(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L49_9:
    leaq .Ltext_58(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_17checked_mod_floor
    .type lb_math_17checked_mod_floor, @function
lb_math_17checked_mod_floor:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L50_2
.L50_1:
    leaq -88(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -40(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L50_4:
    jmp .L50_3
.L50_2:
.L50_3:
    movq $-1, %rcx
    cmpq %rcx, %rbx
    jne .L50_6
.L50_5:
    leaq -104(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -40(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L50_8:
    jmp .L50_7
.L50_6:
.L50_7:
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    movq %rbx, %rsi
    call lb_math_9mod_floor@PLT
    movq %rax, %r12
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -40(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L50_9:
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_imin
    .type lb_math_imin, @function
lb_math_imin:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
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
    cmpq %r12, %rbx
    jge .L51_2
.L51_1:
    movq %rbx, %r12
    jmp .L51_3
.L51_2:
.L51_3:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L51_4:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_imax
    .type lb_math_imax, @function
lb_math_imax:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
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
    cmpq %r12, %rbx
    jle .L52_2
.L52_1:
    movq %rbx, %r12
    jmp .L52_3
.L52_2:
.L52_3:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L52_4:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_math_iclamp
    .type lb_math_iclamp, @function
lb_math_iclamp:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    movq %rdx, -80(%rbp)
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jle .L53_1
.L53_2:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    call lb_core_7trap_at@PLT
.L53_1:
    leaq -48(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %rbx, %r13
    jge .L53_4
.L53_3:
    movq %rbx, %r12
    jmp .L53_5
.L53_4:
    cmpq %r12, %r13
    jle .L53_7
.L53_6:
    movq %r12, %rbx
    jmp .L53_8
.L53_7:
    movq %r13, %rbx
.L53_8:
    movq %rbx, %r12
.L53_5:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L53_9:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_math_0init
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
    .asciz "src/std/math.lucb:51:5"
.Ltext_2:
    .asciz "src/std/math.lucb:53:5"
.Ltext_3:
    .asciz "src/std/math.lucb:55:5"
.Ltext_4:
    .asciz "src/std/math.lucb:57:5"
.Ltext_5:
    .asciz "src/std/math.lucb:60:5"
.Ltext_6:
    .asciz "src/std/math.lucb:62:5"
.Ltext_7:
    .asciz "src/std/math.lucb:65:5"
.Ltext_8:
    .asciz "src/std/math.lucb:68:5"
.Ltext_9:
    .asciz "src/std/math.lucb:70:5"
.Ltext_10:
    .asciz "src/std/math.lucb:72:5"
.Ltext_11:
    .asciz "src/std/math.lucb:74:5"
.Ltext_12:
    .asciz "src/std/math.lucb:76:5"
.Ltext_13:
    .asciz "src/std/math.lucb:78:5"
.Ltext_14:
    .asciz "src/std/math.lucb:80:5"
.Ltext_15:
    .asciz "src/std/math.lucb:85:5"
.Ltext_16:
    .asciz "src/std/math.lucb:93:5"
.Ltext_17:
    .asciz "src/std/math.lucb:98:5"
.Ltext_18:
    .asciz "src/std/math.lucb:103:5"
.Ltext_19:
    .asciz "src/std/math.lucb:108:5"
.Ltext_20:
    .asciz "src/std/math.lucb:113:5"
.Ltext_21:
    .asciz "src/std/math.lucb:121:5"
.Ltext_22:
    .asciz "src/std/math.lucb:126:5"
.Ltext_23:
    .asciz "src/std/math.lucb:131:5"
.Ltext_24:
    .asciz "src/std/math.lucb:140:5"
.Ltext_25:
    .asciz "src/std/math.lucb:143:5"
.Ltext_26:
    .asciz "src/std/math.lucb:145:5"
.Ltext_27:
    .asciz "src/std/math.lucb:147:5"
.Ltext_28:
    .asciz "src/std/math.lucb:149:5"
.Ltext_29:
    .asciz "src/std/math.lucb:151:5"
.Ltext_30:
    .asciz "src/std/math.lucb:153:5"
.Ltext_31:
    .asciz "src/std/math.lucb:156:5"
.Ltext_32:
    .asciz "src/std/math.lucb:158:5"
.Ltext_33:
    .asciz "src/std/math.lucb:160:5"
.Ltext_34:
    .asciz "src/std/math.lucb:162:5"
.Ltext_35:
    .asciz "src/std/math.lucb:166:5"
.Ltext_36:
    .asciz "src/std/math.lucb:170:5"
.Ltext_37:
    .asciz "src/std/math.lucb:173:5"
.Ltext_38:
    .asciz "src/std/math.lucb:176:5"
.Ltext_39:
    .asciz "src/std/math.lucb:179:5"
.Ltext_40:
    .asciz "src/std/math.lucb:182:5"
.Ltext_41:
    .asciz "src/std/math.lucb:191:5"
.Ltext_42:
    .asciz "src/std/math.lucb:201:5"
.Ltext_43:
    .asciz "src/std/math.lucb:211:5"
.Ltext_44:
    .asciz "assert failed: low <= high"
.Ltext_45:
    .asciz "src/std/math.lucb:215:5"
.Ltext_46:
    .asciz "src/std/math.lucb:218:5"
.Ltext_47:
    .asciz "division by zero"
.Ltext_48:
    .asciz "src/std/math.lucb:223:5"
.Ltext_49:
    .asciz "integer overflow"
.Ltext_50:
    .asciz "src/std/math.lucb:224:5"
.Ltext_51:
    .asciz "src/std/math.lucb:225:9"
.Ltext_52:
    .asciz "src/std/math.lucb:226:5"
.Ltext_53:
    .asciz "src/std/math.lucb:230:5"
.Ltext_54:
    .asciz "src/std/math.lucb:232:9"
.Ltext_55:
    .asciz "src/std/math.lucb:233:5"
.Ltext_56:
    .asciz "src/std/math.lucb:235:5"
.Ltext_57:
    .asciz "src/std/math.lucb:240:5"
.Ltext_58:
    .asciz "src/std/math.lucb:245:5"
.Ltext_59:
    .asciz "src/std/math.lucb:253:5"
.Ltext_60:
    .asciz "src/std/math.lucb:255:5"
.Ltext_61:
    .asciz "src/std/math.lucb:257:5"
.Ltext_62:
    .asciz "src/std/math.lucb:260:5"
.Ltext_63:
    .asciz "src/std/math.lucb:261:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_math_pi
    .type lb_math_pi, @object
    .p2align 3
lb_math_pi:
    .zero 8

    .bss
    .globl lb_math_tau
    .type lb_math_tau, @object
    .p2align 3
lb_math_tau:
    .zero 8

    .bss
    .globl lb_math_e
    .type lb_math_e, @object
    .p2align 3
lb_math_e:
    .zero 8

    .bss
    .globl lb_math_infinity
    .type lb_math_infinity, @object
    .p2align 3
lb_math_infinity:
    .zero 8

    .bss
    .globl lb_math_nan
    .type lb_math_nan, @object
    .p2align 3
lb_math_nan:
    .zero 8

    .bss
    .globl lb_math_9sign_mask
    .type lb_math_9sign_mask, @object
    .p2align 3
lb_math_9sign_mask:
    .zero 8

    .bss
    .globl lb_math_14magnitude_mask
    .type lb_math_14magnitude_mask, @object
    .p2align 3
lb_math_14magnitude_mask:
    .zero 8

    .bss
    .globl lb_math_13exponent_mask
    .type lb_math_13exponent_mask, @object
    .p2align 3
lb_math_13exponent_mask:
    .zero 8

    .section .note.GNU-stack,"",@progbits
