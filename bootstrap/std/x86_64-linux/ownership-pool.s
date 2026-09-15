    .text

    .p2align 4
    .globl lb_ownership_pool_0init
    .type lb_ownership_pool_0init, @function
lb_ownership_pool_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %fs:0, %rax
    addq lb_ownership_13pending_count@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

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
.L1_1:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_12push_pending
    .type lb_ownership_12push_pending, @function
lb_ownership_12push_pending:
    pushq %rbp
    movq %rsp, %rbp
    subq $320, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq 16(%rbp), %r10
    leaq -72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %fs:0, %rax
    addq lb_ownership_13pending_count@GOTTPOFF(%rip), %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %r10
    movq (%r10), %r12
    movq %fs:0, %rax
    addq lb_ownership_pending@GOTTPOFF(%rip), %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r12
    jne .L2_2
.L2_1:
    leaq -88(%rbp), %rax
    movq %rax, -296(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -304(%rbp)
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L2_7
.L2_6:
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, -312(%rbp)
    jmp .L2_8
.L2_7:
    movq $64, %rax
    movq %rax, -312(%rbp)
.L2_8:
    leaq -176(%rbp), %rax
    movq %rax, -320(%rbp)
    movq -312(%rbp), %rax
    movabsq $144115188075855872, %rcx
    cmpq %rcx, %rax
    jbe .L2_10
.L2_9:
    movq -320(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_3(%rip), %r15
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
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L2_11
.L2_10:
    movq -312(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq -304(%rbp), %r10
    movq (%r10), %r14
    movq -304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_12
    jmp .L2_13
.L2_13:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_12:
    movq %r15, %r10
    movq (%r10), %r13
    movq %r14, %rsi
    movq %rbx, %rdx
    movq $8, %rcx
    leaq -200(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -200(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, -264(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -264(%rbp), %eax
    andl %r13d, %eax
    movl %eax, -272(%rbp)
    movl -272(%rbp), %eax
    testl %eax, %eax
    jne .L2_14
    jmp .L2_15
.L2_14:
    movq -320(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    jmp .L2_11
.L2_15:
    movq %r12, %r10
    movq (%r10), %rbx
    movq -320(%rbp), %r10
    movq %rbx, (%r10)
    movq -320(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -312(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_11:
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_17
    jmp .L2_16
.L2_17:
    movq -320(%rbp), %rax
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
    jmp .L2_4
.L2_16:
    leaq -104(%rbp), %rbx
    movq -320(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_5
.L2_4:
    leaq .Ltext_6(%rip), %rbx
    leaq -216(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $13, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_7(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
.L2_5:
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq -296(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -296(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rax, %r12
.L2_18:
    movq -240(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L2_20
.L2_19:
    movq -296(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -280(%rbp)
    movq %rbx, %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $32, %rcx
    movq %r12, %r14
    imulq %rcx, %r14
    movq -280(%rbp), %rax
    addq %r14, %rax
    movq %rax, -288(%rbp)
    movq -248(%rbp), %r10
    movq (%r10), %r15
    movq -256(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r14, %r13
    addq %r15, %r13
    movq %r13, %r10
    movq -288(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L2_18
.L2_20:
    movq -256(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L2_22
.L2_21:
    leaq -232(%rbp), %r12
    movq -248(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
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
    movq -304(%rbp), %r10
    movq (%r10), %r13
    movq -304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_25
    jmp .L2_24
.L2_25:
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
.L2_24:
    jmp .L2_23
.L2_22:
.L2_23:
    movq -296(%rbp), %r10
    movq -248(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_3
.L2_2:
.L2_3:
    movq -240(%rbp), %r10
    movq (%r10), %rbx
    movq -248(%rbp), %r10
    movq (%r10), %r12
    movq -256(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $32, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -240(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -240(%rbp), %r10
    movq %rbx, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_11pool_object
    .type lb_ownership_11pool_object, @function
lb_ownership_11pool_object:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq -40(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
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
    subq $32, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    call lb_ownership_12push_pending@PLT
    addq $32, %rsp
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_1:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_drain
    .type lb_ownership_drain, @function
lb_ownership_drain:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %fs:0, %rax
    addq lb_ownership_13pending_count@GOTTPOFF(%rip), %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -136(%rbp)
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -144(%rbp)
    movq -136(%rbp), %rax
    movq -144(%rbp), %rcx
    cmpq %rcx, %rax
    ja .L4_2
.L4_1:
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
    leaq -88(%rbp), %rax
    movq %rax, -152(%rbp)
    movq -152(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -160(%rbp)
    movq -152(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -168(%rbp)
    movq -152(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -176(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -184(%rbp)
    movq -184(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -192(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -200(%rbp)
    leaq -120(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -208(%rbp)
    movq -200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -216(%rbp)
    movq -144(%rbp), %rax
    movq %rax, %rbx
.L4_5:
    movq -136(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L4_7
.L4_6:
    movq %fs:0, %rax
    addq lb_ownership_pending@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $32, %rcx
    movq %rbx, %r13
    imulq %rcx, %r13
    addq %r13, %r12
    movq %r12, %r10
    movq -152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -152(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_11
    jmp .L4_9
.L4_11:
.L4_8:
    movq %r12, %rdi
    call lb_ownership_release@PLT
    jmp .L4_10
.L4_9:
    movq -160(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_15
    jmp .L4_13
.L4_15:
.L4_12:
    movq -168(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L4_19
    jmp .L4_17
.L4_19:
.L4_16:
    movq %r12, %rdi
    movq %r13, %r11
    call *%r11
    jmp .L4_18
.L4_17:
.L4_18:
    movq -176(%rbp), %r10
    movq (%r10), %r13
    movq -184(%rbp), %r10
    movq %r12, (%r10)
    movq -192(%rbp), %r10
    movq %r13, (%r10)
    movq %r15, %r10
    movq %r12, (%r10)
    movq -208(%rbp), %r10
    movq %r13, (%r10)
    movq -200(%rbp), %r10
    movq (%r10), %r13
    movq -216(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L4_21
    jmp .L4_20
.L4_21:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %r15, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L4_20:
    jmp .L4_14
.L4_13:
.L4_14:
.L4_10:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L4_5
.L4_7:
    movq -144(%rbp), %rax
    movq -128(%rbp), %r10
    movq %rax, (%r10)
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
    .quad lb_ownership_pool_0init
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
    .asciz "src/std/ownership/pool.lucb:13:5"
.Ltext_2:
    .asciz "src/std/ownership/pool.lucb:17:9"
.Ltext_3:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_4:
    .asciz "memory.unset"
.Ltext_5:
    .asciz "memory.exhausted"
.Ltext_6:
    .asciz "out of memory"
.Ltext_7:
    .asciz "src/std/ownership/pool.lucb:18:13"
.Ltext_8:
    .asciz "src/std/ownership/pool.lucb:21:13"
.Ltext_9:
    .asciz "src/std/ownership/pool.lucb:22:13"
.Ltext_10:
    .asciz "src/std/ownership/pool.lucb:24:13"
.Ltext_11:
    .asciz "src/std/ownership/pool.lucb:26:5"
.Ltext_12:
    .asciz "src/std/ownership/pool.lucb:27:5"
.Ltext_13:
    .asciz "src/std/ownership/pool.lucb:32:5"
.Ltext_14:
    .asciz "src/std/ownership/pool.lucb:49:9"
.Ltext_15:
    .asciz "src/std/ownership/pool.lucb:55:13"
.Ltext_16:
    .asciz "src/std/ownership/pool.lucb:56:9"
.Ltext_17:
    .asciz "integer overflow"
.Ltext_18:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3

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

    .section .note.GNU-stack,"",@progbits
