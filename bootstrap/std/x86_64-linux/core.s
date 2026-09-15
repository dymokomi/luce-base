    .text

    .p2align 4
    .globl lb_core_0init
    .type lb_core_0init, @function
lb_core_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_17on_initial_thread
    .type lb_core_17on_initial_thread, @function
lb_core_17on_initial_thread:
    pushq %rbp
    movq %rsp, %rbp
    movl $0, %eax
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_1:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_13process_start
    .type lb_core_13process_start, @function
lb_core_13process_start:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_trap
    .type lb_core_trap, @function
lb_core_trap:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    leaq -64(%rbp), %rbx
    leaq .Ltext_3(%rip), %r12
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $6, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $2, %eax
    leaq -128(%rbp), %r10
    movl %eax, (%r10)
    leaq -144(%rbp), %r10
    movq %r12, (%r10)
    movq $6, %rax
    leaq -160(%rbp), %r10
    movq %rax, (%r10)
    movl $2, %edi
    movq %r12, %rsi
    movq $6, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L3_2
.L3_1:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_2:
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    movl $2, %eax
    leaq -128(%rbp), %r10
    movl %eax, (%r10)
    leaq -144(%rbp), %r10
    movq %rbx, (%r10)
    leaq -160(%rbp), %r10
    movq %r12, (%r10)
    movl $2, %edi
    movq %rbx, %rsi
    movq %r12, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L3_4
.L3_3:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_4:
    leaq -96(%rbp), %rbx
    leaq .Ltext_4(%rip), %r12
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $2, %eax
    leaq -128(%rbp), %r10
    movl %eax, (%r10)
    leaq -144(%rbp), %r10
    movq %r12, (%r10)
    movq $1, %rax
    leaq -160(%rbp), %r10
    movq %rax, (%r10)
    movl $2, %edi
    movq %r12, %rsi
    movq $1, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L3_6
.L3_5:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_6:
    movl $1, %edi
    call exit@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_7trap_at
    .type lb_core_7trap_at, @function
lb_core_7trap_at:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    leaq -80(%rbp), %rbx
    leaq .Ltext_3(%rip), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $6, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $2, %eax
    leaq -176(%rbp), %r10
    movl %eax, (%r10)
    leaq -192(%rbp), %r10
    movq %r12, (%r10)
    movq $6, %rax
    leaq -208(%rbp), %r10
    movq %rax, (%r10)
    movl $2, %edi
    movq %r12, %rsi
    movq $6, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L4_2
.L4_1:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_2:
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    movl $2, %eax
    leaq -176(%rbp), %r10
    movl %eax, (%r10)
    leaq -192(%rbp), %r10
    movq %rbx, (%r10)
    leaq -208(%rbp), %r10
    movq %r12, (%r10)
    movl $2, %edi
    movq %rbx, %rsi
    movq %r12, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L4_4
.L4_3:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_4:
    leaq -112(%rbp), %rbx
    leaq .Ltext_5(%rip), %r12
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $2, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $2, %eax
    leaq -176(%rbp), %r10
    movl %eax, (%r10)
    leaq -192(%rbp), %r10
    movq %r12, (%r10)
    movq $2, %rax
    leaq -208(%rbp), %r10
    movq %rax, (%r10)
    movl $2, %edi
    movq %r12, %rsi
    movq $2, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L4_6
.L4_5:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_6:
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    movl $2, %eax
    leaq -176(%rbp), %r10
    movl %eax, (%r10)
    leaq -192(%rbp), %r10
    movq %rbx, (%r10)
    leaq -208(%rbp), %r10
    movq %r12, (%r10)
    movl $2, %edi
    movq %rbx, %rsi
    movq %r12, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L4_8
.L4_7:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_8:
    leaq -144(%rbp), %rbx
    leaq .Ltext_4(%rip), %r12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $2, %eax
    leaq -176(%rbp), %r10
    movl %eax, (%r10)
    leaq -192(%rbp), %r10
    movq %r12, (%r10)
    movq $1, %rax
    leaq -208(%rbp), %r10
    movq %rax, (%r10)
    movl $2, %edi
    movq %r12, %rsi
    movq $1, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L4_10
.L4_9:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_10:
    movl $1, %edi
    call exit@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_11trap_two_at
    .type lb_core_11trap_two_at, @function
lb_core_11trap_two_at:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    movq %rdx, -80(%rbp)
    leaq -96(%rbp), %rbx
    leaq .Ltext_3(%rip), %r12
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $6, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $2, %eax
    leaq -192(%rbp), %r10
    movl %eax, (%r10)
    leaq -208(%rbp), %r10
    movq %r12, (%r10)
    movq $6, %rax
    leaq -224(%rbp), %r10
    movq %rax, (%r10)
    movl $2, %edi
    movq %r12, %rsi
    movq $6, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L5_2
.L5_1:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_2:
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    movl $2, %eax
    leaq -192(%rbp), %r10
    movl %eax, (%r10)
    leaq -208(%rbp), %r10
    movq %rbx, (%r10)
    leaq -224(%rbp), %r10
    movq %r12, (%r10)
    movl $2, %edi
    movq %rbx, %rsi
    movq %r12, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L5_4
.L5_3:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_4:
    leaq -128(%rbp), %rbx
    leaq .Ltext_5(%rip), %r12
    leaq -144(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $2, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $2, %eax
    leaq -192(%rbp), %r10
    movl %eax, (%r10)
    leaq -208(%rbp), %r10
    movq %r12, (%r10)
    movq $2, %rax
    leaq -224(%rbp), %r10
    movq %rax, (%r10)
    movl $2, %edi
    movq %r12, %rsi
    movq $2, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L5_6
.L5_5:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_6:
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r13
    movl $2, %eax
    leaq -192(%rbp), %r10
    movl %eax, (%r10)
    leaq -208(%rbp), %r10
    movq %rbx, (%r10)
    leaq -224(%rbp), %r10
    movq %r13, (%r10)
    movl $2, %edi
    movq %rbx, %rsi
    movq %r13, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L5_8
.L5_7:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_8:
    movl $2, %eax
    leaq -192(%rbp), %r10
    movl %eax, (%r10)
    leaq -208(%rbp), %r10
    movq %r12, (%r10)
    movq $2, %rax
    leaq -224(%rbp), %r10
    movq %rax, (%r10)
    movl $2, %edi
    movq %r12, %rsi
    movq $2, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L5_10
.L5_9:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_10:
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    movl $2, %eax
    leaq -192(%rbp), %r10
    movl %eax, (%r10)
    leaq -208(%rbp), %r10
    movq %rbx, (%r10)
    leaq -224(%rbp), %r10
    movq %r12, (%r10)
    movl $2, %edi
    movq %rbx, %rsi
    movq %r12, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L5_12
.L5_11:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_12:
    leaq -160(%rbp), %rbx
    leaq .Ltext_4(%rip), %r12
    leaq -176(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $2, %eax
    leaq -192(%rbp), %r10
    movl %eax, (%r10)
    leaq -208(%rbp), %r10
    movq %r12, (%r10)
    movq $1, %rax
    leaq -224(%rbp), %r10
    movq %rax, (%r10)
    movl $2, %edi
    movq %r12, %rsi
    movq $1, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L5_14
.L5_13:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_14:
    movl $1, %edi
    call exit@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_8trap_two
    .type lb_core_8trap_two, @function
lb_core_8trap_two:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    leaq -80(%rbp), %rbx
    leaq .Ltext_3(%rip), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $6, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $2, %eax
    leaq -176(%rbp), %r10
    movl %eax, (%r10)
    leaq -192(%rbp), %r10
    movq %r12, (%r10)
    movq $6, %rax
    leaq -208(%rbp), %r10
    movq %rax, (%r10)
    movl $2, %edi
    movq %r12, %rsi
    movq $6, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L6_2
.L6_1:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_2:
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    movl $2, %eax
    leaq -176(%rbp), %r10
    movl %eax, (%r10)
    leaq -192(%rbp), %r10
    movq %rbx, (%r10)
    leaq -208(%rbp), %r10
    movq %r12, (%r10)
    movl $2, %edi
    movq %rbx, %rsi
    movq %r12, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L6_4
.L6_3:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_4:
    leaq -112(%rbp), %rbx
    leaq .Ltext_5(%rip), %r12
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $2, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $2, %eax
    leaq -176(%rbp), %r10
    movl %eax, (%r10)
    leaq -192(%rbp), %r10
    movq %r12, (%r10)
    movq $2, %rax
    leaq -208(%rbp), %r10
    movq %rax, (%r10)
    movl $2, %edi
    movq %r12, %rsi
    movq $2, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L6_6
.L6_5:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_6:
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    movl $2, %eax
    leaq -176(%rbp), %r10
    movl %eax, (%r10)
    leaq -192(%rbp), %r10
    movq %rbx, (%r10)
    leaq -208(%rbp), %r10
    movq %r12, (%r10)
    movl $2, %edi
    movq %rbx, %rsi
    movq %r12, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L6_8
.L6_7:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_8:
    leaq -144(%rbp), %rbx
    leaq .Ltext_4(%rip), %r12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $2, %eax
    leaq -176(%rbp), %r10
    movl %eax, (%r10)
    leaq -192(%rbp), %r10
    movq %r12, (%r10)
    movq $1, %rax
    leaq -208(%rbp), %r10
    movq %rax, (%r10)
    movl $2, %edi
    movq %r12, %rsi
    movq $1, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L6_10
.L6_9:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_10:
    movl $1, %edi
    call exit@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_12trap_text_at
    .type lb_core_12trap_text_at, @function
lb_core_12trap_text_at:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    leaq -64(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -96(%rbp), %r10
    movq %rbx, (%r10)
    leaq .Ltext_3(%rip), %r12
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $6, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_16write_diagnostic@PLT
    leaq -128(%rbp), %r12
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_16write_diagnostic@PLT
    leaq .Ltext_5(%rip), %rbx
    leaq -160(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $2, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_16write_diagnostic@PLT
.L7_1:
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_16write_diagnostic@PLT
    leaq .Ltext_4(%rip), %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_16write_diagnostic@PLT
    movl $1, %edi
    call exit@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_14trap_detail_at
    .type lb_core_14trap_detail_at, @function
lb_core_14trap_detail_at:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    leaq -88(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -168(%rbp), %r10
    movq %rbx, (%r10)
    leaq .Ltext_3(%rip), %r12
    leaq -184(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $6, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_16write_diagnostic@PLT
    leaq -200(%rbp), %r12
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r13
    leaq -216(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_16write_diagnostic@PLT
    leaq .Ltext_5(%rip), %rbx
    leaq -232(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $2, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_16write_diagnostic@PLT
.L8_1:
    leaq -104(%rbp), %r12
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    call strlen@PLT
    movq %rax, %r14
    leaq -120(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_16write_diagnostic@PLT
    leaq -136(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $2, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_16write_diagnostic@PLT
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_16write_diagnostic@PLT
    leaq .Ltext_4(%rip), %r12
    leaq -152(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $1, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_16write_diagnostic@PLT
    movl $1, %edi
    call exit@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_16write_diagnostic
    .type lb_core_16write_diagnostic, @function
lb_core_16write_diagnostic:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -56(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -128(%rbp)
    leaq -72(%rbp), %rax
    movq %rax, -144(%rbp)
    movq -144(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -152(%rbp)
    leaq lb_c_interrupted(%rip), %rax
    movq %rax, -160(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L9_1:
    movq -128(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r15
    jae .L9_3
.L9_2:
    movq %r14, %rax
    subq %r15, %rax
    movq %rax, -136(%rbp)
    movq -136(%rbp), %rax
    movq $1073741824, %rcx
    cmpq %rcx, %rax
    jae .L9_5
.L9_4:
    movq -136(%rbp), %rax
    movq %rax, -168(%rbp)
    jmp .L9_6
.L9_5:
    movq $1073741824, %rax
    movq %rax, -168(%rbp)
.L9_6:
    movq %rbx, %r10
    movq (%r10), %r13
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r15
    jbe .L9_7
.L9_8:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_7:
    movq %r15, %r12
    addq %r13, %r12
    movq -144(%rbp), %r10
    movq %r12, (%r10)
    movq -136(%rbp), %rax
    movq -152(%rbp), %r10
    movq %rax, (%r10)
    movl $2, %eax
    leaq -88(%rbp), %r10
    movl %eax, (%r10)
    leaq -104(%rbp), %r10
    movq %r12, (%r10)
    movq -168(%rbp), %rax
    leaq -120(%rbp), %r10
    movq %rax, (%r10)
    movl $2, %edi
    movq %r12, %rsi
    movq -168(%rbp), %rdx
    call write@PLT
    movq %rax, %r12
    jmp .L9_20
.L9_19:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_20:
    movq $0, %rcx
    cmpq %rcx, %r12
    setl %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L9_12
    jmp .L9_21
.L9_21:
    movl %r13d, %r14d
    jmp .L9_13
.L9_12:
    call lb_c_errno@PLT
    movl %eax, %r13d
    movq -160(%rbp), %r10
    movslq (%r10), %r14
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r14d
.L9_13:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L9_9
    jmp .L9_10
.L9_9:
    jmp .L9_1
.L9_14:
    jmp .L9_11
.L9_10:
.L9_11:
    movq $0, %rcx
    cmpq %rcx, %r12
    jg .L9_16
.L9_15:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_18:
    jmp .L9_17
.L9_16:
.L9_17:
    movq %r12, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %r15
    jmp .L9_1
.L9_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_10format_put
    .type lb_core_10format_put, @function
lb_core_10format_put:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movq %rdx, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    cmpq %r14, %rbx
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L10_17
    jmp .L10_4
.L10_17:
    movl %r14d, %r15d
    jmp .L10_5
.L10_4:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq %rbx, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    cmpq %r15, %r14
    seta %al
    movzbl %al, %r15d
.L10_5:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L10_1
    jmp .L10_2
.L10_1:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq (%r10), %r14
    movq $1, %rcx
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, (%r10)
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_6:
    jmp .L10_3
.L10_2:
.L10_3:
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L10_10
    jmp .L10_8
.L10_10:
.L10_7:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L10_12
.L10_11:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r15
    addq %r15, %r14
    movq %r14, %rdi
    movq %r13, %rsi
    movq %rbx, %rdx
    call memcpy@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L10_14
    jmp .L10_15
.L10_15:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_14:
    jmp .L10_13
.L10_12:
.L10_13:
    jmp .L10_9
.L10_8:
.L10_9:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_16:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_10format_u64
    .type lb_core_10format_u64, @function
lb_core_10format_u64:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
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
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L11_2
.L11_1:
    leaq -96(%rbp), %r12
    movq $23, %rcx
    addq %rcx, %r12
    movl $48, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $1, %rax
    movq %rax, %r12
    jmp .L11_3
.L11_2:
    movq $0, %rax
    movq %rax, %r12
.L11_3:
    leaq -96(%rbp), %r13
    movq %r12, %r14
    movq %rbx, %r15
.L11_4:
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L11_6
.L11_5:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq $24, %rax
    movq %rbx, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq $24, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r13, %r12
.L11_8:
    movq $10, %rcx
    movq %r15, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %r14
    movq %r14, %rax
    movq $48, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movzbl %r14b, %r14d
    movq %r12, %r10
    movb %r14b, (%r10)
.L11_10:
    movq $10, %rcx
    movq %r15, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r12
    movq %rbx, %r14
    movq %r12, %r15
    jmp .L11_4
.L11_6:
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $24, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    leaq -96(%rbp), %r13
    movq $25, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r13, %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq %r14, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_10format_i64
    .type lb_core_10format_i64, @function
lb_core_10format_i64:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
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
    movq $0, %rcx
    cmpq %rcx, %rbx
    jge .L12_2
.L12_1:
    leaq -88(%rbp), %r12
    leaq .Ltext_21(%rip), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $1, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    movq %r13, %rsi
    movq $1, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L12_5
.L12_4:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_7:
    jmp .L12_6
.L12_5:
.L12_6:
    movq $0, %rax
    movq %rax, %r13
    subq %rbx, %r13
    movq %r12, %rdi
    movq %r13, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %r13d
    movl %r13d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_8:
    jmp .L12_3
.L12_2:
.L12_3:
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    movq %rbx, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_9:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_10format_f64
    .type lb_core_10format_f64, @function
lb_core_10format_f64:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movsd %xmm0, -64(%rbp)
    leaq -128(%rbp), %rbx
    leaq .Ltext_24(%rip), %r12
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    movq %rbx, %rdi
    movq $64, %rsi
    movq %r12, %rdx
    movl $1, %eax
    call snprintf@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jge .L13_2
.L13_1:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_4:
    jmp .L13_3
.L13_2:
.L13_3:
    leaq -48(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movslq %r12d, %r14
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r14, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r13d
    movl %r13d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_5:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_11format_bool
    .type lb_core_11format_bool, @function
lb_core_11format_bool:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movl %esi, -64(%rbp)
    leaq -80(%rbp), %r12
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L14_1
    jmp .L14_2
.L14_1:
    leaq .Ltext_26(%rip), %rbx
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $4, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq -96(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $4, %rax
    movq %rax, %r13
    jmp .L14_3
.L14_2:
    leaq .Ltext_27(%rip), %rbx
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $5, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq -96(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $5, %rax
    movq %rax, %r13
.L14_3:
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -48(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r14d
    movl %r14d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_4:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_11format_char
    .type lb_core_11format_char, @function
lb_core_11format_char:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movl %esi, -72(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    leaq -76(%rbp), %r12
    movq %r12, %r11
    movl $0, 0(%r11)
    movl $128, %ecx
    cmpl %ecx, %ebx
    jae .L15_2
.L15_1:
    movl %ebx, %r13d
    leaq .Ltext_29(%rip), %r14
    subq $16, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rdi
    movl $32, %esi
    movl $0, %edx
    movl $8, %ecx
    movl $0, %r8d
    movl $0, %r9d
    call lb_core_6conv_u@PLT
    addq $16, %rsp
    movq %rax, %r13
    movzbl %r13b, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq $1, %rax
    movq %rax, -208(%rbp)
    jmp .L15_3
.L15_2:
    movl $2048, %ecx
    cmpl %ecx, %ebx
    jae .L15_5
.L15_4:
.L15_8:
    movl $6, %ecx
    movl %ebx, %r13d
    shrl %cl, %r13d
    movl $192, %ecx
    orl %ecx, %r13d
    movl %r13d, %r13d
    leaq .Ltext_30(%rip), %r14
    subq $16, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rdi
    movl $32, %esi
    movl $0, %edx
    movl $8, %ecx
    movl $0, %r8d
    movl $0, %r9d
    call lb_core_6conv_u@PLT
    addq $16, %rsp
    movq %rax, %r13
    movzbl %r13b, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $63, %ecx
    movl %ebx, %r14d
    andl %ecx, %r14d
    movl $128, %ecx
    orl %ecx, %r14d
    movl %r14d, %r14d
    leaq .Ltext_32(%rip), %r15
    subq $16, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rdi
    movl $32, %esi
    movl $0, %edx
    movl $8, %ecx
    movl $0, %r8d
    movl $0, %r9d
    call lb_core_6conv_u@PLT
    addq $16, %rsp
    movq %rax, %r14
    movzbl %r14b, %r14d
    movq %r13, %r10
    movb %r14b, (%r10)
    movq $2, %rax
    movq %rax, -200(%rbp)
    jmp .L15_6
.L15_5:
    movl $65536, %ecx
    cmpl %ecx, %ebx
    jae .L15_10
.L15_9:
.L15_13:
    movl $12, %ecx
    movl %ebx, %r13d
    shrl %cl, %r13d
    movl $224, %ecx
    orl %ecx, %r13d
    movl %r13d, %r13d
    leaq .Ltext_33(%rip), %r14
    subq $16, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rdi
    movl $32, %esi
    movl $0, %edx
    movl $8, %ecx
    movl $0, %r8d
    movl $0, %r9d
    call lb_core_6conv_u@PLT
    addq $16, %rsp
    movq %rax, %r13
    movzbl %r13b, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
.L15_15:
    movl $6, %ecx
    movl %ebx, %eax
    shrl %cl, %eax
    movl %eax, -88(%rbp)
    movl -88(%rbp), %eax
    movl $63, %ecx
    andl %ecx, %eax
    movl %eax, -96(%rbp)
    movl -96(%rbp), %eax
    movl $128, %ecx
    orl %ecx, %eax
    movl %eax, -104(%rbp)
    movl -104(%rbp), %eax
    movl %eax, %eax
    movq %rax, -112(%rbp)
    leaq .Ltext_34(%rip), %r15
    subq $16, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq -112(%rbp), %rdi
    movl $32, %esi
    movl $0, %edx
    movl $8, %ecx
    movl $0, %r8d
    movl $0, %r9d
    call lb_core_6conv_u@PLT
    addq $16, %rsp
    movq %rax, -120(%rbp)
    movl -120(%rbp), %eax
    movzbl %al, %eax
    movl %eax, -128(%rbp)
    movl -128(%rbp), %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $2, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -136(%rbp)
    movl $63, %ecx
    movl %ebx, %r15d
    andl %ecx, %r15d
    movl $128, %ecx
    orl %ecx, %r15d
    movl %r15d, %r15d
    leaq .Ltext_35(%rip), %r14
    subq $16, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rdi
    movl $32, %esi
    movl $0, %edx
    movl $8, %ecx
    movl $0, %r8d
    movl $0, %r9d
    call lb_core_6conv_u@PLT
    addq $16, %rsp
    movq %rax, %r14
    movzbl %r14b, %r14d
    movq -136(%rbp), %r10
    movb %r14b, (%r10)
    movq $3, %rax
    movq %rax, %r14
    jmp .L15_11
.L15_10:
.L15_17:
    movl $18, %ecx
    movl %ebx, %r13d
    shrl %cl, %r13d
    movl $240, %ecx
    orl %ecx, %r13d
    movl %r13d, %r13d
    leaq .Ltext_36(%rip), %r14
    subq $16, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rdi
    movl $32, %esi
    movl $0, %edx
    movl $8, %ecx
    movl $0, %r8d
    movl $0, %r9d
    call lb_core_6conv_u@PLT
    addq $16, %rsp
    movq %rax, %r13
    movzbl %r13b, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
.L15_19:
    movl $12, %ecx
    movl %ebx, %r14d
    shrl %cl, %r14d
    movl $63, %ecx
    andl %ecx, %r14d
    movl $128, %ecx
    orl %ecx, %r14d
    movl %r14d, %r14d
    leaq .Ltext_37(%rip), %r15
    subq $16, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rdi
    movl $32, %esi
    movl $0, %edx
    movl $8, %ecx
    movl $0, %r8d
    movl $0, %r9d
    call lb_core_6conv_u@PLT
    addq $16, %rsp
    movq %rax, %r14
    movzbl %r14b, %r14d
    movq %r13, %r10
    movb %r14b, (%r10)
    movq $2, %rcx
    movq %r12, %r14
    addq %rcx, %r14
.L15_21:
    movl $6, %ecx
    movl %ebx, %eax
    shrl %cl, %eax
    movl %eax, -144(%rbp)
    movl -144(%rbp), %eax
    movl $63, %ecx
    andl %ecx, %eax
    movl %eax, -152(%rbp)
    movl -152(%rbp), %eax
    movl $128, %ecx
    orl %ecx, %eax
    movl %eax, -160(%rbp)
    movl -160(%rbp), %eax
    movl %eax, %eax
    movq %rax, -168(%rbp)
    leaq .Ltext_38(%rip), %r15
    subq $16, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq -168(%rbp), %rdi
    movl $32, %esi
    movl $0, %edx
    movl $8, %ecx
    movl $0, %r8d
    movl $0, %r9d
    call lb_core_6conv_u@PLT
    addq $16, %rsp
    movq %rax, -176(%rbp)
    movl -176(%rbp), %eax
    movzbl %al, %eax
    movl %eax, -184(%rbp)
    movl -184(%rbp), %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq $3, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -192(%rbp)
    movl $63, %ecx
    movl %ebx, %r15d
    andl %ecx, %r15d
    movl $128, %ecx
    orl %ecx, %r15d
    movl %r15d, %r15d
    leaq .Ltext_39(%rip), %r13
    subq $16, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rdi
    movl $32, %esi
    movl $0, %edx
    movl $8, %ecx
    movl $0, %r8d
    movl $0, %r9d
    call lb_core_6conv_u@PLT
    addq $16, %rsp
    movq %rax, %r13
    movzbl %r13b, %r13d
    movq -192(%rbp), %r10
    movb %r13b, (%r10)
    movq $4, %rax
    movq %rax, %r14
.L15_11:
    movq %r14, %rax
    movq %rax, -200(%rbp)
.L15_6:
    movq -200(%rbp), %rax
    movq %rax, -208(%rbp)
.L15_3:
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    movq %r12, %rsi
    movq -208(%rbp), %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_13format_finish
    .type lb_core_13format_finish, @function
lb_core_13format_finish:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -72(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    jae .L16_2
.L16_1:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    addq %r15, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    jmp .L16_3
.L16_2:
.L16_3:
    movq %r12, %r10
    movq (%r10), %r13
    movq %r14, %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    jbe .L16_5
.L16_4:
    leaq .Ltext_41(%rip), %rbx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -56(%rbp), %rbx
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
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_7:
    jmp .L16_6
.L16_5:
.L16_6:
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r14
    leaq -104(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    leaq -120(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    leaq -56(%rbp), %r13
    movq %r15, %r10
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
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_8:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_9show_take
    .type lb_core_9show_take, @function
lb_core_9show_take:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -72(%rbp)
    movq %rsi, -88(%rbp)
    movq %fs:0, %rax
    addq lb_core_9show_next@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $3, %ecx
    movl %r12d, %r13d
    andl %ecx, %r13d
    movl %r13d, %r13d
    movq $256, %rcx
    imulq %rcx, %r13
    movl $1, %ecx
    addl %ecx, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $255, %rcx
    cmpq %rcx, %rbx
    jbe .L17_2
.L17_1:
    movq $255, %rax
    movq %rax, %rbx
    jmp .L17_3
.L17_2:
.L17_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L17_5
.L17_4:
    movq %fs:0, %rax
    addq lb_core_10show_bytes@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq $1025, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq -72(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movq %rbx, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L17_7
    jmp .L17_8
.L17_8:
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L17_7:
    jmp .L17_6
.L17_5:
.L17_6:
    movq %r13, %rax
    movq %rbx, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %fs:0, %rax
    addq lb_core_10show_bytes@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    movq $1024, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r12, %r15
    addq %r14, %r15
    movl $0, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq $1025, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r13
    jbe .L17_9
.L17_10:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L17_9:
    movq %r13, %rbx
    addq %r14, %rbx
    movq %r12, %rax
    subq %r13, %rax
    movq %rax, -128(%rbp)
    leaq -104(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq -128(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq -120(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq -128(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -56(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L17_11:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_8show_hex
    .type lb_core_8show_hex, @function
lb_core_8show_hex:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -72(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L18_2
.L18_1:
    leaq -88(%rbp), %r12
    movq $15, %rcx
    addq %rcx, %r12
    movl $48, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $1, %rax
    movq %rax, %r12
    jmp .L18_3
.L18_2:
    movq $0, %rax
    movq %rax, %r12
.L18_3:
    leaq -88(%rbp), %r13
    movq %r12, %r14
    movq %rbx, %r15
.L18_4:
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L18_6
.L18_5:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -112(%rbp)
    movq $15, %rcx
    movq %r15, %r12
    andq %rcx, %r12
    movzbl %r12b, %r12d
    movq $16, %rax
    movq -112(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq $16, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rbx, %rax
    addq %r13, %rax
    movq %rax, -120(%rbp)
    movzbl %r12b, %ebx
    movl $10, %ecx
    cmpl %ecx, %ebx
    jae .L18_8
.L18_7:
    movl $48, %ecx
    movl %ebx, %r14d
    addl %ecx, %r14d
    movzbl %r14b, %r12d
    cmpl %r14d, %r12d
    je .L18_10
.L18_11:
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
.L18_10:
    movl %r14d, %ebx
    jmp .L18_9
.L18_8:
    movl $87, %ecx
    movl %ebx, %r14d
    addl %ecx, %r14d
    movzbl %r14b, %r12d
    cmpl %r14d, %r12d
    je .L18_12
.L18_13:
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
.L18_12:
    movl %r14d, %ebx
.L18_9:
    movzbl %bl, %r12d
    movq -120(%rbp), %r10
    movb %r12b, (%r10)
.L18_15:
    movq $4, %rcx
    movq %r15, %rbx
    shrq %cl, %rbx
    movq -112(%rbp), %rax
    movq %rax, %r14
    movq %rbx, %r15
    jmp .L18_4
.L18_6:
    movq $16, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    leaq -88(%rbp), %r12
    movq $17, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r12, %rbx
    movq %rbx, %rdi
    movq %r14, %rsi
    call lb_core_9show_take@PLT
    leaq -104(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %rbx
    leaq -56(%rbp), %r12
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
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_8show_bin
    .type lb_core_8show_bin, @function
lb_core_8show_bin:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -72(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L19_2
.L19_1:
    leaq -136(%rbp), %r12
    movq $63, %rcx
    addq %rcx, %r12
    movl $48, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $1, %rax
    movq %rax, %r12
    jmp .L19_3
.L19_2:
    movq $0, %rax
    movq %rax, %r12
.L19_3:
    leaq -136(%rbp), %r13
    movq %r12, %r14
    movq %rbx, %r15
.L19_4:
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L19_6
.L19_5:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -160(%rbp)
    movq $64, %rax
    movq -160(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq $64, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r12, %rax
    addq %r13, %rax
    movq %rax, -168(%rbp)
    movq $1, %rcx
    movq %r15, %r12
    andq %rcx, %r12
    movzbl %r12b, %r12d
    movl $48, %ecx
    movl %r12d, %ebx
    addl %ecx, %ebx
    movzbl %bl, %r12d
    cmpl %ebx, %r12d
    je .L19_7
.L19_8:
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
.L19_7:
    movq -168(%rbp), %r10
    movb %bl, (%r10)
.L19_10:
    movq $1, %rcx
    movq %r15, %rbx
    shrq %cl, %rbx
    movq -160(%rbp), %rax
    movq %rax, %r14
    movq %rbx, %r15
    jmp .L19_4
.L19_6:
    movq $64, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    leaq -136(%rbp), %r12
    movq $65, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r12, %rbx
    movq %rbx, %rdi
    movq %r14, %rsi
    call lb_core_9show_take@PLT
    leaq -152(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -152(%rbp), %rbx
    leaq -56(%rbp), %r12
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
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_8show_pad
    .type lb_core_8show_pad, @function
lb_core_8show_pad:
    pushq %rbp
    movq %rsp, %rbp
    subq $384, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -72(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movq %rdx, -88(%rbp)
    leaq -72(%rbp), %rax
    movq %rax, -384(%rbp)
    movq -384(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb .L20_2
.L20_1:
    movq -384(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %r12, %rsi
    call lb_core_9show_take@PLT
    leaq -104(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %r13
    leaq -56(%rbp), %r14
    movq %r13, %r10
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
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L20_4:
    jmp .L20_3
.L20_2:
.L20_3:
    movq %r13, %r14
    subq %r12, %r14
    movq $255, %rcx
    cmpq %rcx, %r13
    jbe .L20_6
.L20_5:
    movq $255, %rcx
    cmpq %rcx, %r12
    jbe .L20_9
.L20_8:
    movq $255, %rax
    movq %rax, %r12
    jmp .L20_10
.L20_9:
.L20_10:
    movq $255, %rax
    movq %r12, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r12, %r15
    jmp .L20_7
.L20_6:
    movq %r12, %r15
    movq %r14, %r13
.L20_7:
    leaq -360(%rbp), %r12
    movq $0, %rax
    movq %rax, %r14
.L20_11:
    cmpq %r13, %r14
    jae .L20_14
.L20_12:
    movq $256, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r12, %rbx
    addq %r14, %rbx
    movl $32, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L20_13:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L20_11
.L20_14:
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L20_16
.L20_15:
    leaq -360(%rbp), %rbx
    movq $257, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r13, %rbx
    movq -384(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq %r15, %rdx
    call memcpy@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L20_18
    jmp .L20_19
.L20_19:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L20_18:
    jmp .L20_17
.L20_16:
.L20_17:
    leaq -360(%rbp), %rbx
    movq %r15, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call lb_core_9show_take@PLT
    leaq -376(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -376(%rbp), %rbx
    leaq -56(%rbp), %r12
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
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L20_20:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_arguments
    .type lb_core_arguments, @function
lb_core_arguments:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movl %edi, -72(%rbp)
    movq %rsi, -88(%rbp)
    leaq -104(%rbp), %r15
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -200(%rbp), %r10
    movl %ebx, (%r10)
    leaq -216(%rbp), %r10
    movq %r12, (%r10)
    movslq %ebx, %rax
    movq %rax, -264(%rbp)
    leaq -232(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq -264(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq -184(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    leaq -120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L21_15
.L21_14:
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L21_15:
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -264(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jbe .L21_2
.L21_1:
    movq -264(%rbp), %rax
    movq %rax, %r13
    jmp .L21_3
.L21_2:
    movq $1, %rax
    movq %rax, %r13
.L21_3:
    movq %r13, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r14, %rdi
    call malloc@PLT
    movq %rax, -272(%rbp)
    movq -272(%rbp), %rax
    testq %rax, %rax
    jne .L21_4
    jmp .L21_5
.L21_4:
    jmp .L21_6
.L21_5:
    leaq .Ltext_64(%rip), %rbx
    movq %rbx, %rdi
    call lb_core_trap@PLT
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L21_6:
    leaq -136(%rbp), %rax
    movq %rax, -240(%rbp)
    leaq -152(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -248(%rbp)
    leaq .Ltext_66(%rip), %rax
    movq %rax, -256(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L21_7:
    movq -264(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L21_9
.L21_8:
    movq $8, %rcx
    movq %r13, %r14
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rdi
    call strlen@PLT
    movq %rax, %rbx
    movq %r15, %r10
    movq %r14, (%r10)
    movq -248(%rbp), %r10
    movq %rbx, (%r10)
    movq %r15, %r10
    movq -240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %rdi
    movq %rbx, %rsi
    call lb_core_7utf8_ok@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L21_11
.L21_10:
    movq -256(%rbp), %rdi
    call lb_core_trap@PLT
    jmp .L21_12
.L21_11:
.L21_12:
    movq $16, %rcx
    movq %r13, %rbx
    imulq %rcx, %rbx
    movq -272(%rbp), %rcx
    addq %rcx, %rbx
    movq -240(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L21_7
.L21_9:
    leaq -168(%rbp), %rbx
    movq -272(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -264(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -56(%rbp), %r12
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
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L21_13:
    leaq .Ltext_68(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_13raw_arguments
    .type lb_core_13raw_arguments, @function
lb_core_13raw_arguments:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -56(%rbp)
    movq %rsi, -72(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movslq %r12d, %r12
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -40(%rbp), %rbx
    movq %r13, %r10
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
.L22_1:
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_11main_failed
    .type lb_core_11main_failed, @function
lb_core_11main_failed:
    pushq %rbp
    movq %rsp, %rbp
    subq $1312, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movl %edi, -56(%rbp)
    leaq -72(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -1112(%rbp), %rax
    movq %rax, -1312(%rbp)
    leaq -1096(%rbp), %rbx
    leaq -1168(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $1024, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -1192(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_71(%rip), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movq $6, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r14d
    leaq -56(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movslq %r14d, %r14
    movq %r12, %rdi
    movq %r14, %rsi
    call lb_core_10format_i64@PLT
    movl %eax, %r14d
    leaq .Ltext_5(%rip), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r14d
    leaq -72(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %r15, %rsi
    movq %r14, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r14d
    leaq .Ltext_4(%rip), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movq $1, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r14d
    leaq -1240(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r13
    jbe .L23_4
.L23_3:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_72(%rip), %r12
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
    jmp .L23_5
.L23_4:
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -1256(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -1256(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L23_5:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L23_7
    jmp .L23_6
.L23_7:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -1152(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L23_1
.L23_6:
    leaq -1128(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L23_2
.L23_1:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L23_8:
.L23_2:
    movq %rbx, %r10
    movq -1312(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1312(%rbp), %r10
    movq (%r10), %r12
    movq -1312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl $2, %eax
    leaq -1272(%rbp), %r10
    movl %eax, (%r10)
    leaq -1288(%rbp), %r10
    movq %r12, (%r10)
    leaq -1304(%rbp), %r10
    movq %r13, (%r10)
    movl $2, %edi
    movq %r12, %rsi
    movq %r13, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L23_11
.L23_10:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L23_11:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L23_9:
    leaq .Ltext_73(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_11test_report
    .type lb_core_11test_report, @function
lb_core_11test_report:
    pushq %rbp
    movq %rsp, %rbp
    subq $3488, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movl %edx, -72(%rbp)
    leaq -88(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -1128(%rbp), %rax
    movq %rax, -3480(%rbp)
    leaq -1112(%rbp), %rbx
    leaq -1184(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $1024, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -1208(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -3472(%rbp)
    movq $1024, %rax
    movq -3472(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L24_3
    jmp .L24_4
.L24_3:
    leaq -2248(%rbp), %r13
    leaq -2272(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $1024, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_74(%rip), %r13
    movq %r14, %rdi
    movq %r13, %rsi
    movq $6, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_75(%rip), %rbx
    movq %r14, %rdi
    movq %rbx, %rsi
    movq $14, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r13, %rsi
    movq %rbx, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_4(%rip), %rbx
    movq %r14, %rdi
    movq %rbx, %rsi
    movq $1, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq %r14, %rdi
    call lb_core_13format_finish@PLT
    leaq -2288(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -2288(%rbp), %rbx
    leaq -1224(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L24_5
.L24_4:
    leaq -3312(%rbp), %rbx
    leaq -3336(%rbp), %r13
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
    leaq .Ltext_76(%rip), %rbx
    movq %r13, %rdi
    movq %rbx, %rsi
    movq $6, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r14, %rsi
    movq %rbx, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_4(%rip), %rbx
    movq %r13, %rdi
    movq %rbx, %rsi
    movq $1, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq %r13, %rdi
    call lb_core_13format_finish@PLT
    leaq -3352(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -3352(%rbp), %rbx
    leaq -1224(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L24_5:
    leaq -1224(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r15, %rdi
    movq %r13, %rsi
    movq %rbx, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq -3400(%rbp), %r14
    movq %r12, %r10
    movq (%r10), %rbx
    movq -3472(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jbe .L24_7
.L24_6:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_72(%rip), %r12
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
    jmp .L24_8
.L24_7:
    movq %r15, %rdi
    call lb_core_13format_finish@PLT
    leaq -3416(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -3416(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L24_8:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L24_10
    jmp .L24_9
.L24_10:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -1168(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L24_1
.L24_9:
    leaq -1144(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L24_2
.L24_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L24_11:
.L24_2:
    movq %rbx, %r10
    movq -3480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -3480(%rbp), %r10
    movq (%r10), %r12
    movq -3480(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl $1, %eax
    leaq -3432(%rbp), %r10
    movl %eax, (%r10)
    leaq -3448(%rbp), %r10
    movq %r12, (%r10)
    leaq -3464(%rbp), %r10
    movq %r13, (%r10)
    movl $1, %edi
    movq %r12, %rsi
    movq %r13, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L24_13
.L24_12:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L24_13:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_12test_summary
    .type lb_core_12test_summary, @function
lb_core_12test_summary:
    pushq %rbp
    movq %rsp, %rbp
    subq $352, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movl %edi, -56(%rbp)
    movl %esi, -72(%rbp)
    leaq -152(%rbp), %rax
    movq %rax, -352(%rbp)
    leaq -136(%rbp), %rbx
    leaq -208(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $64, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -232(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $64, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -56(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    leaq -72(%rbp), %r15
    movq %r15, %r10
    movslq (%r10), %r15
    movl %r14d, %eax
    movl %r15d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_77(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    movslq %r14d, %r14
    movq %r12, %rdi
    movq %r14, %rsi
    call lb_core_10format_i64@PLT
    movl %eax, %r14d
    leaq .Ltext_78(%rip), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movq $8, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r14d
    leaq -280(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r13
    jbe .L25_4
.L25_3:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_72(%rip), %r12
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
    jmp .L25_5
.L25_4:
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -296(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -296(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L25_5:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L25_7
    jmp .L25_6
.L25_7:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -192(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L25_1
.L25_6:
    leaq -168(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L25_2
.L25_1:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L25_8:
.L25_2:
    movq %rbx, %r10
    movq -352(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -352(%rbp), %r10
    movq (%r10), %r12
    movq -352(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl $1, %eax
    leaq -312(%rbp), %r10
    movl %eax, (%r10)
    leaq -328(%rbp), %r10
    movq %r12, (%r10)
    leaq -344(%rbp), %r10
    movq %r13, (%r10)
    movl $1, %edi
    movq %r12, %rsi
    movq %r13, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L25_14
.L25_13:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L25_14:
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L25_10
.L25_9:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L25_11
.L25_10:
    movl $1, %eax
    movl %eax, %ebx
.L25_11:
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L25_12:
    leaq .Ltext_79(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_9print_str
    .type lb_core_9print_str, @function
lb_core_9print_str:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -48(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movl $1, %eax
    leaq -96(%rbp), %r10
    movl %eax, (%r10)
    leaq -112(%rbp), %r10
    movq %r12, (%r10)
    leaq -128(%rbp), %r10
    movq %rbx, (%r10)
    movl $1, %edi
    movq %r12, %rsi
    movq %rbx, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L26_2
.L26_1:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L26_2:
    leaq -64(%rbp), %rbx
    leaq .Ltext_4(%rip), %r12
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    leaq -96(%rbp), %r10
    movl %eax, (%r10)
    leaq -112(%rbp), %r10
    movq %r12, (%r10)
    movq $1, %rax
    leaq -128(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %edi
    movq %r12, %rsi
    movq $1, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L26_4
.L26_3:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L26_4:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_9print_i64
    .type lb_core_9print_i64, @function
lb_core_9print_i64:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    leaq -96(%rbp), %rbx
    leaq -80(%rbp), %r12
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $32, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -136(%rbp), %rbx
    leaq -160(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $32, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -48(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq %r13, %rsi
    call lb_core_10format_i64@PLT
    movl %eax, %r13d
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movl $1, %eax
    leaq -208(%rbp), %r10
    movl %eax, (%r10)
    leaq -224(%rbp), %r10
    movq %r12, (%r10)
    leaq -240(%rbp), %r10
    movq %rbx, (%r10)
    movl $1, %edi
    movq %r12, %rsi
    movq %rbx, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L27_2
.L27_1:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L27_2:
    leaq -176(%rbp), %rbx
    leaq .Ltext_4(%rip), %r12
    leaq -192(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    leaq -208(%rbp), %r10
    movl %eax, (%r10)
    leaq -224(%rbp), %r10
    movq %r12, (%r10)
    movq $1, %rax
    leaq -240(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %edi
    movq %r12, %rsi
    movq $1, %rdx
    call write@PLT
    movq %rax, %rbx
    jmp .L27_4
.L27_3:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L27_4:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_11str_compare
    .type lb_core_11str_compare, @function
lb_core_11str_compare:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
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
    leaq -56(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -80(%rbp)
    leaq -72(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -88(%rbp)
    movq -80(%rbp), %rax
    movq -88(%rbp), %rcx
    cmpq %rcx, %rax
    setb %al
    movzbl %al, %eax
    movl %eax, -96(%rbp)
    movl -96(%rbp), %eax
    testl %eax, %eax
    jne .L28_1
    jmp .L28_2
.L28_1:
    movq -80(%rbp), %rax
    movq %rax, %r15
    jmp .L28_3
.L28_2:
    movq -88(%rbp), %rax
    movq %rax, %r15
.L28_3:
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L28_5
.L28_4:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movq %r15, %rdx
    call memcmp@PLT
    movl %eax, %r12d
    jmp .L28_6
.L28_5:
    movl $0, %eax
    movl %eax, %r12d
.L28_6:
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L28_8
.L28_7:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jge .L28_11
.L28_10:
    movl $4294967295, %eax
    movl %eax, %ebx
    jmp .L28_12
.L28_11:
    movl $1, %eax
    movl %eax, %ebx
.L28_12:
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L28_13:
    jmp .L28_9
.L28_8:
.L28_9:
    movl -96(%rbp), %eax
    testl %eax, %eax
    jne .L28_14
    jmp .L28_15
.L28_14:
    movl $4294967295, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L28_17:
    jmp .L28_16
.L28_15:
.L28_16:
    movq -80(%rbp), %rax
    movq -88(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L28_19
.L28_18:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L28_20
.L28_19:
    movl $0, %eax
    movl %eax, %ebx
.L28_20:
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L28_21:
    leaq .Ltext_80(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_11utf8_scalar
    .type lb_core_11utf8_scalar, @function
lb_core_11utf8_scalar:
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
    movq %rdx, -88(%rbp)
    movq %rcx, -104(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movzbl %r13b, %r13d
    movl %r13d, %r14d
    movl $240, %ecx
    cmpl %ecx, %r13d
    jb .L29_2
.L29_1:
    movl $7, %ecx
    movl %r13d, %r14d
    andl %ecx, %r14d
    movl %r14d, %r14d
    movq $4, %rax
    movq %rax, %r15
    jmp .L29_3
.L29_2:
    movl $224, %ecx
    cmpl %ecx, %r13d
    jb .L29_5
.L29_4:
    movl $15, %ecx
    movl %r13d, %r14d
    andl %ecx, %r14d
    movl %r14d, %r14d
    movq $3, %rax
    movq %rax, %r15
    jmp .L29_6
.L29_5:
    movl $192, %ecx
    cmpl %ecx, %r13d
    jb .L29_8
.L29_7:
    movl $31, %ecx
    movl %r13d, %r14d
    andl %ecx, %r14d
    movl %r14d, %r14d
    movq $2, %rax
    movq %rax, %r15
    jmp .L29_9
.L29_8:
    movq $1, %rax
    movq %rax, %r15
.L29_9:
.L29_6:
.L29_3:
    movq %rbx, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jbe .L29_11
.L29_10:
    movq %r12, %rax
    movq %rbx, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_82(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rax
    movq %rax, -120(%rbp)
    jmp .L29_12
.L29_11:
    movq %r15, %rax
    movq %rax, -120(%rbp)
.L29_12:
    movl %r14d, %r12d
    movq $1, %rax
    movq %rax, %r15
.L29_13:
    movq -120(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L29_15
.L29_14:
.L29_17:
    movl $6, %ecx
    movl %r12d, %r14d
    shll %cl, %r14d
    movq %rbx, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_83(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -112(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $63, %ecx
    andl %ecx, %r13d
    movl %r13d, %r13d
    movl %r13d, %ecx
    movl %r14d, %r13d
    orl %ecx, %r13d
    movq $1, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movl %r13d, %r12d
    movq %r14, %r15
    jmp .L29_13
.L29_15:
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -120(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movl %r12d, %ebx
    movl %ebx, %ebx
    leaq .Ltext_85(%rip), %r13
    movq %rbx, %rdi
    movl $0, %esi
    movq %r13, %rdx
    call lb_core_7to_char@PLT
    movq %rax, %rbx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_7utf8_ok
    .type lb_core_7utf8_ok, @function
lb_core_7utf8_ok:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -96(%rbp)
    movq -96(%rbp), %rax
    testq %rax, %rax
    jne .L30_1
    jmp .L30_2
.L30_1:
    jmp .L30_3
.L30_2:
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L30_3:
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -80(%rbp)
    movq $0, %rax
    movq %rax, -104(%rbp)
.L30_5:
    movq -104(%rbp), %rax
    movq -80(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L30_7
.L30_6:
    movq -96(%rbp), %rax
    movq -104(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movzbl %r14b, %r14d
    movl $128, %ecx
    cmpl %ecx, %r14d
    jae .L30_9
.L30_8:
    movl %r14d, %r15d
    movq $1, %rax
    movq %rax, -112(%rbp)
    jmp .L30_10
.L30_9:
    movl $224, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl $192, %ecx
    cmpl %ecx, %ebx
    jne .L30_12
.L30_11:
    movl $31, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl %ebx, %ebx
    movq $2, %rax
    movq %rax, %r15
    movl %ebx, %r12d
    jmp .L30_13
.L30_12:
    movl $240, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl $224, %ecx
    cmpl %ecx, %ebx
    jne .L30_15
.L30_14:
    movl $15, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl %ebx, %ebx
    movq $3, %rax
    movq %rax, %r15
    jmp .L30_16
.L30_15:
    movl $248, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl $240, %ecx
    cmpl %ecx, %ebx
    jne .L30_18
.L30_17:
    movl $7, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl %ebx, %ebx
    jmp .L30_19
.L30_18:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L30_19:
    movq $4, %rax
    movq %rax, %r15
.L30_16:
    movl %ebx, %r12d
.L30_13:
    movq %r15, %rax
    movq %rax, -112(%rbp)
    movl %r12d, %r15d
.L30_10:
    movq -104(%rbp), %rax
    movq -112(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_86(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -88(%rbp)
    movq -88(%rbp), %rax
    movq -80(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L30_22
.L30_21:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L30_22:
.L30_23:
    movl %r15d, %r14d
    movq $1, %rax
    movq %rax, %r12
.L30_25:
    movq -112(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L30_27
.L30_26:
    movq -104(%rbp), %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_87(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -96(%rbp), %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movl $192, %ecx
    movl %r15d, %ebx
    andl %ecx, %ebx
    movl $128, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L30_29
.L30_28:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L30_29:
.L30_30:
.L30_33:
    movl $6, %ecx
    movl %r14d, %ebx
    shll %cl, %ebx
    movl $63, %ecx
    movl %r15d, %r13d
    andl %ecx, %r13d
    movl %r13d, %r13d
    orl %r13d, %ebx
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl %ebx, %r14d
    movq %r13, %r12
    jmp .L30_25
.L30_27:
    movq -112(%rbp), %rax
    movq $2, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L30_37
    jmp .L30_63
.L30_63:
    movl %ebx, %r12d
    jmp .L30_38
.L30_37:
    movl $128, %ecx
    cmpl %ecx, %r14d
    setb %al
    movzbl %al, %r12d
.L30_38:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L30_34
    jmp .L30_35
.L30_34:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L30_35:
.L30_36:
    movq -112(%rbp), %rax
    movq $3, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L30_43
    jmp .L30_64
.L30_64:
    movl %ebx, %r12d
    jmp .L30_44
.L30_43:
    movl $2048, %ecx
    cmpl %ecx, %r14d
    setb %al
    movzbl %al, %r12d
.L30_44:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L30_40
    jmp .L30_41
.L30_40:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L30_41:
.L30_42:
    movq -112(%rbp), %rax
    movq $4, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L30_49
    jmp .L30_65
.L30_65:
    movl %ebx, %r12d
    jmp .L30_50
.L30_49:
    movl $65536, %ecx
    cmpl %ecx, %r14d
    setb %al
    movzbl %al, %r12d
.L30_50:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L30_46
    jmp .L30_47
.L30_46:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L30_47:
.L30_48:
    movl $55296, %ecx
    cmpl %ecx, %r14d
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L30_55
    jmp .L30_66
.L30_66:
    movl %ebx, %r12d
    jmp .L30_56
.L30_55:
    movl $57343, %ecx
    cmpl %ecx, %r14d
    setbe %al
    movzbl %al, %r12d
.L30_56:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L30_52
    jmp .L30_53
.L30_52:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L30_53:
.L30_54:
    movl $1114111, %ecx
    cmpl %ecx, %r14d
    jbe .L30_59
.L30_58:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L30_59:
.L30_60:
    movq -88(%rbp), %rax
    movq %rax, -104(%rbp)
    jmp .L30_5
.L30_7:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_9hash_seed
    .type lb_core_9hash_seed, @function
lb_core_9hash_seed:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq lb_core_11hash_seeded(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L31_2
.L31_1:
    leaq lb_core_15hash_seed_value(%rip), %r12
    movabsq $-7046029254386353131, %rcx
    movq %r12, %r13
    xorq %rcx, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L31_3
.L31_2:
.L31_3:
    leaq lb_core_15hash_seed_value(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L31_4:
    leaq .Ltext_92(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_8hash_mix
    .type lb_core_8hash_mix, @function
lb_core_8hash_mix:
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
    leaq -48(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    xorq %r12, %rbx
    movabsq $-7046029254386353131, %rcx
    imulq %rcx, %rbx
.L32_2:
    movq $32, %rcx
    movq %rbx, %r12
    shrq %cl, %r12
    movq %r12, %rcx
    movq %rbx, %r12
    xorq %rcx, %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_core_10hash_bytes
    .type lb_core_10hash_bytes, @function
lb_core_10hash_bytes:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movq %rdx, -88(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L33_4
    jmp .L33_2
.L33_4:
.L33_1:
    leaq -88(%rbp), %rax
    movq %rax, -96(%rbp)
    movq %rbx, %r14
    movq $0, %rax
    movq %rax, %r15
.L33_5:
    movq -96(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r15
    jae .L33_7
.L33_6:
    movq %r12, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %ebx
    movq %r14, %rdi
    movq %rbx, %rsi
    call lb_core_8hash_mix@PLT
    movq %rax, %rbx
    movq $1, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %rbx, %r14
    movq %r13, %r15
    jmp .L33_5
.L33_7:
    movq %r14, %rbx
    jmp .L33_3
.L33_2:
.L33_3:
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call lb_core_8hash_mix@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L33_8:
    leaq .Ltext_96(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_7mask_of
    .type lb_core_7mask_of, @function
lb_core_7mask_of:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $64, %ecx
    cmpl %ecx, %ebx
    jl .L34_2
.L34_1:
    movq $-1, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L34_4:
    jmp .L34_3
.L34_2:
.L34_3:
    movslq %ebx, %r13
    movq $64, %rcx
    cmpq %rcx, %r13
    jb .L34_6
.L34_5:
    leaq .Ltext_97(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_6:
    movq %r13, %rcx
    movq $1, %rax
    movq %rax, %rbx
    shlq %cl, %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_97(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L34_7:
    leaq .Ltext_97(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_11sign_extend
    .type lb_core_11sign_extend, @function
lb_core_11sign_extend:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movl %esi, -72(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $64, %ecx
    cmpl %ecx, %ebx
    jl .L35_2
.L35_1:
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L35_4:
    jmp .L35_3
.L35_2:
.L35_3:
    movl %ebx, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r12
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rcx
    movq %r12, %r13
    andq %rcx, %r13
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_98(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    movslq %r14d, %r15
    movq $64, %rcx
    cmpq %rcx, %r15
    jb .L35_9
.L35_8:
    leaq .Ltext_98(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    call lb_core_7trap_at@PLT
.L35_9:
    movq %r15, %rcx
    movq $1, %rax
    movq %rax, %rbx
    shlq %cl, %rbx
    movq %rbx, %rcx
    movq %r13, %rbx
    andq %rcx, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L35_6
.L35_5:
    movq $-1, %rcx
    movq %r12, %rbx
    xorq %rcx, %rbx
    movq %rbx, %rcx
    movq %r13, %rbx
    orq %rcx, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L35_10:
    jmp .L35_7
.L35_6:
.L35_7:
    movq %r13, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L35_11:
    leaq .Ltext_99(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_10signed_min
    .type lb_core_10signed_min, @function
lb_core_10signed_min:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $64, %ecx
    cmpl %ecx, %ebx
    jl .L36_2
.L36_1:
    movabsq $-9223372036854775808, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L36_4:
    jmp .L36_3
.L36_2:
.L36_3:
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movslq %r12d, %r13
    movq $64, %rcx
    cmpq %rcx, %r13
    jb .L36_6
.L36_5:
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    call lb_core_7trap_at@PLT
.L36_6:
    movq %r13, %rcx
    movq $1, %rax
    movq %rax, %rbx
    shlq %cl, %rbx
    movq $0, %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    subq %rcx, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L36_7:
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_10signed_max
    .type lb_core_10signed_max, @function
lb_core_10signed_max:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $64, %ecx
    cmpl %ecx, %ebx
    jl .L37_2
.L37_1:
    movabsq $9223372036854775807, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L37_4:
    jmp .L37_3
.L37_2:
.L37_3:
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movslq %r12d, %r13
    movq $64, %rcx
    cmpq %rcx, %r13
    jb .L37_6
.L37_5:
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    call lb_core_7trap_at@PLT
.L37_6:
    movq %r13, %rcx
    movq $1, %rax
    movq %rax, %rbx
    shlq %cl, %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L37_7:
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_11fits_signed
    .type lb_core_11fits_signed, @function
lb_core_11fits_signed:
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
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl %r12d, %edi
    call lb_core_10signed_min@PLT
    movq %rax, %r13
    cmpq %r13, %rbx
    setge %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L38_1
    jmp .L38_4
.L38_4:
    movl %r13d, %ebx
    jmp .L38_2
.L38_1:
    movl %r12d, %edi
    call lb_core_10signed_max@PLT
    movq %rax, %r13
    cmpq %r13, %rbx
    setle %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L38_2:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L38_3:
    leaq .Ltext_104(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_magnitude
    .type lb_core_magnitude, @function
lb_core_magnitude:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -56(%rbp)
    movl %esi, -72(%rbp)
    movl %edx, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L39_2
.L39_1:
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_core_11sign_extend@PLT
    movq %rax, %rbx
    leaq -104(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rcx
    cmpq %rcx, %rbx
    setl %al
    movzbl %al, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
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
.L39_4:
    jmp .L39_3
.L39_2:
.L39_3:
    leaq -120(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -136(%rbp), %r10
    movq %rbx, (%r10)
    leaq -152(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r12
    andq %r12, %rbx
    jmp .L39_7
.L39_6:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L39_7:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
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
.L39_5:
    leaq .Ltext_106(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_12checked_bits
    .type lb_core_12checked_bits, @function
lb_core_12checked_bits:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq -40(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movl %edx, -56(%rbp)
    movl %ecx, -72(%rbp)
    movq %r8, -88(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L40_2
.L40_1:
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L40_4
    jmp .L40_5
.L40_4:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl %r13d, %edi
    call lb_core_10signed_min@PLT
    movq %rax, %r13
    cmpq %r13, %r12
    setl %al
    movzbl %al, %r12d
    jmp .L40_6
.L40_5:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl %r13d, %edi
    call lb_core_10signed_max@PLT
    movq %rax, %r13
    cmpq %r13, %r12
    seta %al
    movzbl %al, %r12d
.L40_6:
    movzbl %r12b, %ebx
    jmp .L40_3
.L40_2:
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L40_15
    jmp .L40_7
.L40_15:
    movl %r12d, %ebx
    jmp .L40_8
.L40_7:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq -104(%rbp), %r10
    movq %r12, (%r10)
    leaq -120(%rbp), %r10
    movl %r13d, (%r10)
    movl %r13d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r13
    cmpq %r13, %r12
    setbe %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq -128(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L40_14
.L40_13:
    leaq .Ltext_105(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L40_14:
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
.L40_8:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L40_3:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L40_9
    jmp .L40_10
.L40_9:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq .Ltext_107(%rip), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call lb_core_7trap_at@PLT
    jmp .L40_11
.L40_10:
.L40_11:
    leaq -40(%rbp), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L40_12:
    leaq .Ltext_108(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6conv_s
    .type lb_core_6conv_s, @function
lb_core_6conv_s:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movl %esi, -64(%rbp)
    movl %edx, -80(%rbp)
    movl %ecx, -96(%rbp)
    movl %r8d, -112(%rbp)
    movl %r9d, -128(%rbp)
    movq 16(%rbp), %rax
    movq %rax, -144(%rbp)
    leaq -160(%rbp), %rbx
    leaq -48(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq -80(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movq %r12, %rdi
    movl %r13d, %esi
    movl %r14d, %edx
    call lb_core_magnitude@PLT
    leaq -176(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -176(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -128(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L41_2
.L41_1:
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl %r12d, %edx
    movl %r13d, %ecx
    movq %r14, %r8
    call lb_core_12checked_bits@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_4:
    jmp .L41_3
.L41_2:
.L41_3:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl %r13d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r14
    andq %r14, %r12
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L41_6
.L41_5:
    movq %r12, %rdi
    movl %r13d, %esi
    call lb_core_11sign_extend@PLT
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_8:
    jmp .L41_7
.L41_6:
.L41_7:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_9:
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6conv_u
    .type lb_core_6conv_u, @function
lb_core_6conv_u:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movl %esi, -64(%rbp)
    movl %edx, -80(%rbp)
    movl %ecx, -96(%rbp)
    movl %r8d, -112(%rbp)
    movl %r9d, -128(%rbp)
    movq 16(%rbp), %rax
    movq %rax, -144(%rbp)
    leaq -160(%rbp), %rbx
    leaq -48(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq -80(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movq %r12, %rdi
    movl %r13d, %esi
    movl %r14d, %edx
    call lb_core_magnitude@PLT
    leaq -176(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -176(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -128(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L42_2
.L42_1:
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl %r12d, %edx
    movl %r13d, %ecx
    movq %r14, %r8
    call lb_core_12checked_bits@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L42_4:
    jmp .L42_3
.L42_2:
.L42_3:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq -192(%rbp), %r10
    movq %r12, (%r10)
    leaq -208(%rbp), %r10
    movl %r13d, (%r10)
    movl %r13d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r13
    andq %r13, %r12
    jmp .L42_7
.L42_6:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L42_7:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L42_5:
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_7to_char
    .type lb_core_7to_char, @function
lb_core_7to_char:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movl %esi, -56(%rbp)
    movq %rdx, -72(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $1114111, %rcx
    cmpq %rcx, %rbx
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L43_11
    jmp .L43_1
.L43_11:
    movl %r12d, %r13d
    jmp .L43_2
.L43_1:
    movq $55296, %rcx
    cmpq %rcx, %rbx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L43_3
    jmp .L43_12
.L43_12:
    movl %r12d, %r13d
    jmp .L43_4
.L43_3:
    movq $57343, %rcx
    cmpq %rcx, %rbx
    setbe %al
    movzbl %al, %r13d
.L43_4:
    movzbl %r13b, %r12d
    movl %r12d, %r13d
.L43_2:
    movzbl %r13b, %r12d
    movzbl %r12b, %r12d
    testl %r12d, %r12d
    jne .L43_8
    jmp .L43_13
.L43_13:
    movl %r12d, %r13d
    jmp .L43_9
.L43_8:
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L43_9:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L43_5
    jmp .L43_6
.L43_5:
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq .Ltext_107(%rip), %r13
    movq %r12, %rdi
    movq %r13, %rsi
    call lb_core_7trap_at@PLT
    jmp .L43_7
.L43_6:
.L43_7:
    movabsq $4294967295, %rcx
    movq %rbx, %r12
    andq %rcx, %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L43_10:
    leaq .Ltext_111(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6f_to_s
    .type lb_core_6f_to_s, @function
lb_core_6f_to_s:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movsd %xmm0, -40(%rbp)
    movl %edi, -56(%rbp)
    movl %esi, -72(%rbp)
    movq %rdx, -88(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -104(%rbp), %r10
    movl %ebx, (%r10)
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movslq %r12d, %r13
    movq $64, %rcx
    cmpq %rcx, %r13
    jb .L44_26
.L44_25:
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    call lb_core_7trap_at@PLT
.L44_26:
    movq %r13, %rcx
    movq $1, %rax
    movq %rax, %r12
    shlq %cl, %r12
    movq %r12, %rcx
    testq %rcx, %rcx
    js 1f
    cvtsi2sdq %rcx, %xmm8
    jmp 2f
1:
    movq %rcx, %rax
    shrq $1, %rax
    andl $1, %ecx
    orq %rcx, %rax
    cvtsi2sdq %rax, %xmm8
    addsd %xmm8, %xmm8
2:
    movapd %xmm8, %xmm12
    jmp .L44_28
.L44_27:
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L44_28:
    movq $0, %rax
    movq %rax, %xmm13
    movaps %xmm13, %xmm8
    subsd %xmm12, %xmm8
    movapd %xmm8, %xmm14
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L44_2
.L44_1:
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -136(%rbp)
    movsd -136(%rbp), %xmm8
    leaq -120(%rbp), %r10
    movsd %xmm8, (%r10)
    movsd -136(%rbp), %xmm8
    movsd -136(%rbp), %xmm9
    subsd %xmm9, %xmm8
    movapd %xmm8, %xmm15
    ucomisd %xmm15, %xmm13
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq -128(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L44_30
.L44_29:
    leaq .Ltext_112(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L44_30:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L44_31
    jmp .L44_7
.L44_31:
    movl %r12d, %ebx
    jmp .L44_8
.L44_7:
    movsd -136(%rbp), %xmm8
    ucomisd %xmm8, %xmm14
    seta %al
    movzbl %al, %ebx
.L44_8:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L44_32
    jmp .L44_9
.L44_32:
    movl %r12d, %ebx
    jmp .L44_10
.L44_9:
    movsd -136(%rbp), %xmm8
    ucomisd %xmm12, %xmm8
    setae %al
    movzbl %al, %ebx
.L44_10:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L44_4
    jmp .L44_5
.L44_4:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq .Ltext_107(%rip), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call lb_core_7trap_at@PLT
    jmp .L44_6
.L44_5:
.L44_6:
    movsd -136(%rbp), %xmm8
    cvttsd2si %xmm8, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L44_11:
    jmp .L44_3
.L44_2:
.L44_3:
    leaq -40(%rbp), %r12
    movq %r12, %r10
    movsd (%r10), %xmm13
    ucomisd %xmm13, %xmm13
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L44_13
.L44_12:
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L44_15:
    jmp .L44_14
.L44_13:
.L44_14:
    ucomisd %xmm13, %xmm14
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L44_16
    jmp .L44_17
.L44_16:
    movl %ebx, %edi
    call lb_core_10signed_min@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L44_19:
    jmp .L44_18
.L44_17:
.L44_18:
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L44_20
    jmp .L44_21
.L44_20:
    movl %ebx, %edi
    call lb_core_10signed_max@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L44_23:
    jmp .L44_22
.L44_21:
.L44_22:
    cvttsd2si %xmm13, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L44_24:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6f_to_u
    .type lb_core_6f_to_u, @function
lb_core_6f_to_u:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movsd %xmm0, -40(%rbp)
    movl %edi, -56(%rbp)
    movl %esi, -72(%rbp)
    movq %rdx, -88(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -104(%rbp), %r10
    movl %ebx, (%r10)
    leaq -120(%rbp), %r10
    movl %ebx, (%r10)
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movslq %r12d, %r13
    movq $64, %rcx
    cmpq %rcx, %r13
    jb .L45_25
.L45_24:
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    call lb_core_7trap_at@PLT
.L45_25:
    movq %r13, %rcx
    movq $1, %rax
    movq %rax, %r12
    shlq %cl, %r12
    movq %r12, %rcx
    testq %rcx, %rcx
    js 1f
    cvtsi2sdq %rcx, %xmm8
    jmp 2f
1:
    movq %rcx, %rax
    shrq $1, %rax
    andl $1, %ecx
    orq %rcx, %rax
    cvtsi2sdq %rax, %xmm8
    addsd %xmm8, %xmm8
2:
    movapd %xmm8, %xmm12
    jmp .L45_27
.L45_26:
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L45_27:
    movabsq $4611686018427387904, %rax
    movq %rax, %xmm13
    movaps %xmm13, %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm13
    jmp .L45_28
.L45_23:
    leaq .Ltext_114(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L45_28:
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L45_2
.L45_1:
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -152(%rbp)
    movsd -152(%rbp), %xmm8
    leaq -136(%rbp), %r10
    movsd %xmm8, (%r10)
    movsd -152(%rbp), %xmm8
    movsd -152(%rbp), %xmm9
    subsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $0, %rax
    movq %rax, %xmm14
    ucomisd %xmm14, %xmm12
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq -144(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L45_30
.L45_29:
    leaq .Ltext_112(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L45_30:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L45_31
    jmp .L45_7
.L45_31:
    movl %r12d, %ebx
    jmp .L45_8
.L45_7:
    movsd -152(%rbp), %xmm8
    ucomisd %xmm8, %xmm14
    seta %al
    movzbl %al, %ebx
.L45_8:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L45_32
    jmp .L45_9
.L45_32:
    movl %r12d, %ebx
    jmp .L45_10
.L45_9:
    movsd -152(%rbp), %xmm8
    ucomisd %xmm13, %xmm8
    setae %al
    movzbl %al, %ebx
.L45_10:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L45_4
    jmp .L45_5
.L45_4:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq .Ltext_107(%rip), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call lb_core_7trap_at@PLT
    jmp .L45_6
.L45_5:
.L45_6:
    movsd -152(%rbp), %xmm8
    movaps %xmm8, %xmm10
    movabsq $4890909195324358656, %rax
    movq %rax, %xmm9
    ucomisd %xmm9, %xmm10
    jae 1f
    cvttsd2si %xmm10, %rbx
    jmp 2f
1:
    subsd %xmm9, %xmm10
    cvttsd2si %xmm10, %rbx
    btcq $63, %rbx
2:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L45_11:
    jmp .L45_3
.L45_2:
.L45_3:
    leaq -40(%rbp), %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    ucomisd %xmm12, %xmm12
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L45_33
    jmp .L45_15
.L45_33:
    movl %r12d, %r13d
    jmp .L45_16
.L45_15:
    movq $0, %rax
    movq %rax, %xmm14
    ucomisd %xmm12, %xmm14
    seta %al
    movzbl %al, %r13d
.L45_16:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L45_12
    jmp .L45_13
.L45_12:
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L45_17:
    jmp .L45_14
.L45_13:
.L45_14:
    ucomisd %xmm13, %xmm12
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L45_18
    jmp .L45_19
.L45_18:
    movl %ebx, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L45_21:
    jmp .L45_20
.L45_19:
.L45_20:
    movaps %xmm12, %xmm10
    movabsq $4890909195324358656, %rax
    movq %rax, %xmm9
    ucomisd %xmm9, %xmm10
    jae 1f
    cvttsd2si %xmm10, %rbx
    jmp 2f
1:
    subsd %xmm9, %xmm10
    cvttsd2si %xmm10, %rbx
    btcq $63, %rbx
2:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L45_22:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_15mul_overflows_s
    .type lb_core_15mul_overflows_s, @function
lb_core_15mul_overflows_s:
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
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L46_20
    jmp .L46_4
.L46_20:
    movl %r12d, %r13d
    jmp .L46_5
.L46_4:
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
.L46_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L46_1
    jmp .L46_2
.L46_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L46_6:
    jmp .L46_3
.L46_2:
.L46_3:
    movq $-1, %rcx
    cmpq %rcx, %rbx
    jne .L46_8
.L46_7:
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movl $64, %edi
    call lb_core_10signed_min@PLT
    movq %rax, %r12
    cmpq %r12, %rbx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L46_10:
    jmp .L46_9
.L46_8:
.L46_9:
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $-1, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L46_11
    jmp .L46_12
.L46_11:
    movl $64, %edi
    call lb_core_10signed_min@PLT
    movq %rax, %r12
    cmpq %r12, %rbx
    sete %al
    movzbl %al, %r12d
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
.L46_14:
    jmp .L46_13
.L46_12:
.L46_13:
    movq %rbx, %r15
    imulq %r12, %r15
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L46_16
.L46_15:
    leaq .Ltext_119(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
.L46_16:
    movabsq $-9223372036854775808, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r14d
    movl %r14d, %ecx
    movl %r13d, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L46_17
    jmp .L46_18
.L46_17:
    leaq .Ltext_119(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    call lb_core_7trap_at@PLT
.L46_18:
    movq %r15, %rax
    cqto
    idivq %r12
    movq %rax, %r13
    cmpq %r13, %rbx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    movl %r13d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L46_19:
    leaq .Ltext_119(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6adds_s
    .type lb_core_6adds_s, @function
lb_core_6adds_s:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movl %edx, -88(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_core_11sign_extend@PLT
    movq %rax, %rbx
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movl %r12d, %esi
    call lb_core_11sign_extend@PLT
    movq %rax, %r13
    movq %rbx, %r14
    addq %r13, %r14
    leaq -104(%rbp), %r10
    movq %rbx, (%r10)
    leaq -120(%rbp), %r10
    movq %r13, (%r10)
    leaq -136(%rbp), %r10
    movq %r14, (%r10)
    movq %rbx, %r15
    xorq %r14, %r15
    xorq %r14, %r13
    movq %r13, %rcx
    movq %r15, %r13
    andq %rcx, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    setl %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq -144(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L47_12
.L47_11:
    leaq .Ltext_117(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L47_12:
    testl %r13d, %r13d
    jne .L47_13
    jmp .L47_4
.L47_13:
    movl %r13d, %r15d
    jmp .L47_5
.L47_4:
    movq %r14, %rdi
    movl %r12d, %esi
    call lb_core_11fits_signed@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
.L47_5:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L47_1
    jmp .L47_2
.L47_1:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jge .L47_7
.L47_6:
    movl %r12d, %edi
    call lb_core_10signed_min@PLT
    movq %rax, %rbx
    jmp .L47_8
.L47_7:
    movl %r12d, %edi
    call lb_core_10signed_max@PLT
    movq %rax, %rbx
.L47_8:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L47_9:
    jmp .L47_3
.L47_2:
.L47_3:
    movq %r14, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L47_10:
    leaq .Ltext_120(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6adds_u
    .type lb_core_6adds_u, @function
lb_core_6adds_u:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movl %edx, -88(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -104(%rbp), %r10
    movq %rbx, (%r10)
    leaq -120(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r13
    andq %r13, %rbx
    jmp .L48_9
.L48_8:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L48_9:
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -104(%rbp), %r10
    movq %r13, (%r10)
    leaq -120(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r14
    andq %r14, %r13
    jmp .L48_11
.L48_10:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L48_11:
    movq %rbx, %r14
    addq %r13, %r14
    cmpq %rbx, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L48_14
    jmp .L48_4
.L48_14:
    movl %r15d, %ebx
    jmp .L48_5
.L48_4:
    leaq -136(%rbp), %r10
    movq %r14, (%r10)
    leaq -152(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %rbx
    cmpq %rbx, %r14
    setbe %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq -160(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L48_13
.L48_12:
    leaq .Ltext_105(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L48_13:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L48_5:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L48_1
    jmp .L48_2
.L48_1:
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
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
.L48_6:
    jmp .L48_3
.L48_2:
.L48_3:
    movq %r14, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L48_7:
    leaq .Ltext_121(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6subs_s
    .type lb_core_6subs_s, @function
lb_core_6subs_s:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movl %edx, -88(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_core_11sign_extend@PLT
    movq %rax, %rbx
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movl %r12d, %esi
    call lb_core_11sign_extend@PLT
    movq %rax, %r13
    movq %rbx, %r14
    subq %r13, %r14
    leaq -104(%rbp), %r10
    movq %rbx, (%r10)
    leaq -120(%rbp), %r10
    movq %r13, (%r10)
    leaq -136(%rbp), %r10
    movq %r14, (%r10)
    movq %r13, %rcx
    movq %rbx, %r13
    xorq %rcx, %r13
    movq %rbx, %r15
    xorq %r14, %r15
    andq %r15, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    setl %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq -144(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L49_12
.L49_11:
    leaq .Ltext_118(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L49_12:
    testl %r13d, %r13d
    jne .L49_13
    jmp .L49_4
.L49_13:
    movl %r13d, %r15d
    jmp .L49_5
.L49_4:
    movq %r14, %rdi
    movl %r12d, %esi
    call lb_core_11fits_signed@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
.L49_5:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L49_1
    jmp .L49_2
.L49_1:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jge .L49_7
.L49_6:
    movl %r12d, %edi
    call lb_core_10signed_min@PLT
    movq %rax, %rbx
    jmp .L49_8
.L49_7:
    movl %r12d, %edi
    call lb_core_10signed_max@PLT
    movq %rax, %rbx
.L49_8:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L49_9:
    jmp .L49_3
.L49_2:
.L49_3:
    movq %r14, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L49_10:
    leaq .Ltext_122(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6subs_u
    .type lb_core_6subs_u, @function
lb_core_6subs_u:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    movl %edx, -80(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -96(%rbp), %r10
    movq %rbx, (%r10)
    leaq -112(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r13
    andq %r13, %rbx
    jmp .L50_7
.L50_6:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L50_7:
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -96(%rbp), %r10
    movq %r13, (%r10)
    leaq -112(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r14
    andq %r14, %r13
    jmp .L50_9
.L50_8:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L50_9:
    cmpq %r13, %rbx
    jae .L50_2
.L50_1:
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L50_4:
    jmp .L50_3
.L50_2:
.L50_3:
    movq %rbx, %r12
    subq %r13, %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L50_5:
    leaq .Ltext_123(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6muls_s
    .type lb_core_6muls_s, @function
lb_core_6muls_s:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movl %edx, -88(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_core_11sign_extend@PLT
    movq %rax, %rbx
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movl %r12d, %esi
    call lb_core_11sign_extend@PLT
    movq %rax, %r13
    movq %rbx, %rdi
    movq %r13, %rsi
    call lb_core_15mul_overflows_s@PLT
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L51_11
    jmp .L51_4
.L51_11:
    movl %r14d, %r15d
    jmp .L51_5
.L51_4:
    movq %rbx, %r14
    imulq %r13, %r14
    movq %r14, %rdi
    movl %r12d, %esi
    call lb_core_11fits_signed@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L51_5:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L51_1
    jmp .L51_2
.L51_1:
    movq $0, %rcx
    cmpq %rcx, %rbx
    setl %al
    movzbl %al, %r14d
    movq $0, %rcx
    cmpq %rcx, %r13
    setl %al
    movzbl %al, %r15d
    cmpl %r15d, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L51_7
.L51_6:
    movl %r12d, %edi
    call lb_core_10signed_min@PLT
    movq %rax, %rbx
    jmp .L51_8
.L51_7:
    movl %r12d, %edi
    call lb_core_10signed_max@PLT
    movq %rax, %rbx
.L51_8:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L51_9:
    jmp .L51_3
.L51_2:
.L51_3:
    movq %rbx, %r12
    imulq %r13, %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L51_10:
    leaq .Ltext_124(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6muls_u
    .type lb_core_6muls_u, @function
lb_core_6muls_u:
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
    movl %edx, -88(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -104(%rbp), %r10
    movq %rbx, (%r10)
    leaq -120(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r13
    andq %r13, %rbx
    jmp .L52_11
.L52_10:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L52_11:
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -104(%rbp), %r10
    movq %r13, (%r10)
    leaq -120(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r14
    andq %r14, %r13
    jmp .L52_13
.L52_12:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L52_13:
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L52_4
    jmp .L52_16
.L52_16:
    movl %r15d, %r14d
    jmp .L52_5
.L52_4:
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r15
    testl %r14d, %r14d
    jne .L52_6
    jmp .L52_7
.L52_6:
    leaq .Ltext_125(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
.L52_7:
    movq %r15, %rax
    xorl %edx, %edx
    divq %r13
    movq %rax, %r14
    cmpq %r14, %rbx
    seta %al
    movzbl %al, %r14d
.L52_5:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L52_1
    jmp .L52_2
.L52_1:
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
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
.L52_8:
    jmp .L52_3
.L52_2:
.L52_3:
    movq %rbx, %r14
    imulq %r13, %r14
    leaq -104(%rbp), %r10
    movq %r14, (%r10)
    leaq -120(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r15
    andq %r15, %r14
    jmp .L52_15
.L52_14:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L52_15:
    movq %r14, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L52_9:
    leaq .Ltext_126(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6qadd_s
    .type lb_core_6qadd_s, @function
lb_core_6qadd_s:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    movl %edx, -80(%rbp)
    movq %rcx, -96(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_core_11sign_extend@PLT
    movq %rax, %rbx
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movl %r12d, %esi
    call lb_core_11sign_extend@PLT
    movq %rax, %r13
    movq %rbx, %r14
    addq %r13, %r14
    leaq -112(%rbp), %r10
    movq %rbx, (%r10)
    leaq -128(%rbp), %r10
    movq %r13, (%r10)
    leaq -144(%rbp), %r10
    movq %r14, (%r10)
    xorq %r14, %rbx
    xorq %r14, %r13
    andq %r13, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    setl %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq -152(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L53_9
.L53_8:
    leaq .Ltext_117(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L53_9:
    testl %ebx, %ebx
    jne .L53_10
    jmp .L53_4
.L53_10:
    movl %ebx, %r12d
    jmp .L53_5
.L53_4:
    movq %r14, %rdi
    movl %r12d, %esi
    call lb_core_11fits_signed@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L53_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L53_1
    jmp .L53_2
.L53_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L53_6:
    jmp .L53_3
.L53_2:
.L53_3:
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L53_7:
    leaq .Ltext_127(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6qadd_u
    .type lb_core_6qadd_u, @function
lb_core_6qadd_u:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movl %edx, -88(%rbp)
    movq %rcx, -104(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -120(%rbp), %r10
    movq %rbx, (%r10)
    leaq -136(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r13
    andq %r13, %rbx
    jmp .L54_9
.L54_8:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_9:
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -120(%rbp), %r10
    movq %r13, (%r10)
    leaq -136(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r14
    andq %r14, %r13
    jmp .L54_11
.L54_10:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_11:
    movq %rbx, %r14
    addq %r13, %r14
    cmpq %rbx, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L54_14
    jmp .L54_4
.L54_14:
    movl %r15d, %ebx
    jmp .L54_5
.L54_4:
    leaq -152(%rbp), %r10
    movq %r14, (%r10)
    leaq -168(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %rbx
    cmpq %rbx, %r14
    setbe %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq -176(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L54_13
.L54_12:
    leaq .Ltext_105(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_13:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L54_5:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L54_1
    jmp .L54_2
.L54_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_6:
    jmp .L54_3
.L54_2:
.L54_3:
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_7:
    leaq .Ltext_128(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6qsub_s
    .type lb_core_6qsub_s, @function
lb_core_6qsub_s:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    movl %edx, -80(%rbp)
    movq %rcx, -96(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_core_11sign_extend@PLT
    movq %rax, %rbx
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movl %r12d, %esi
    call lb_core_11sign_extend@PLT
    movq %rax, %r13
    movq %rbx, %r14
    subq %r13, %r14
    leaq -112(%rbp), %r10
    movq %rbx, (%r10)
    leaq -128(%rbp), %r10
    movq %r13, (%r10)
    leaq -144(%rbp), %r10
    movq %r14, (%r10)
    movq %r13, %rcx
    movq %rbx, %r13
    xorq %rcx, %r13
    xorq %r14, %rbx
    movq %rbx, %rcx
    movq %r13, %rbx
    andq %rcx, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    setl %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq -152(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L55_9
.L55_8:
    leaq .Ltext_118(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_9:
    testl %ebx, %ebx
    jne .L55_10
    jmp .L55_4
.L55_10:
    movl %ebx, %r12d
    jmp .L55_5
.L55_4:
    movq %r14, %rdi
    movl %r12d, %esi
    call lb_core_11fits_signed@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L55_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L55_1
    jmp .L55_2
.L55_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L55_6:
    jmp .L55_3
.L55_2:
.L55_3:
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L55_7:
    leaq .Ltext_129(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6qsub_u
    .type lb_core_6qsub_u, @function
lb_core_6qsub_u:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    movl %edx, -80(%rbp)
    movq %rcx, -96(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -112(%rbp), %r10
    movq %rbx, (%r10)
    leaq -128(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r13
    andq %r13, %rbx
    jmp .L56_7
.L56_6:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L56_7:
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -112(%rbp), %r10
    movq %r13, (%r10)
    leaq -128(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r14
    andq %r14, %r13
    jmp .L56_9
.L56_8:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L56_9:
    cmpq %r13, %rbx
    jae .L56_2
.L56_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L56_4:
    jmp .L56_3
.L56_2:
.L56_3:
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r14
    subq %r13, %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L56_5:
    leaq .Ltext_131(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6qmul_s
    .type lb_core_6qmul_s, @function
lb_core_6qmul_s:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    movl %edx, -80(%rbp)
    movq %rcx, -96(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_core_11sign_extend@PLT
    movq %rax, %rbx
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movl %r12d, %esi
    call lb_core_11sign_extend@PLT
    movq %rax, %r13
    movq %rbx, %rdi
    movq %r13, %rsi
    call lb_core_15mul_overflows_s@PLT
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L57_8
    jmp .L57_4
.L57_8:
    movl %r14d, %r12d
    jmp .L57_5
.L57_4:
    movq %rbx, %r14
    imulq %r13, %r14
    movq %r14, %rdi
    movl %r12d, %esi
    call lb_core_11fits_signed@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L57_5:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L57_1
    jmp .L57_2
.L57_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L57_6:
    jmp .L57_3
.L57_2:
.L57_3:
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r14
    imulq %r13, %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L57_7:
    leaq .Ltext_132(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_6qmul_u
    .type lb_core_6qmul_u, @function
lb_core_6qmul_u:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movl %edx, -88(%rbp)
    movq %rcx, -104(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -120(%rbp), %r10
    movq %rbx, (%r10)
    leaq -136(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r13
    andq %r13, %rbx
    jmp .L58_11
.L58_10:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L58_11:
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -120(%rbp), %r10
    movq %r13, (%r10)
    leaq -136(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r14
    andq %r14, %r13
    jmp .L58_13
.L58_12:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L58_13:
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L58_4
    jmp .L58_14
.L58_14:
    movl %r15d, %r12d
    jmp .L58_5
.L58_4:
    movl %r12d, %edi
    call lb_core_7mask_of@PLT
    movq %rax, %r15
    testl %r14d, %r14d
    jne .L58_6
    jmp .L58_7
.L58_6:
    leaq .Ltext_133(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
.L58_7:
    movq %r15, %rax
    xorl %edx, %edx
    divq %r13
    movq %rax, %r12
    cmpq %r12, %rbx
    seta %al
    movzbl %al, %r12d
.L58_5:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L58_1
    jmp .L58_2
.L58_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L58_8:
    jmp .L58_3
.L58_2:
.L58_3:
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r14
    imulq %r13, %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L58_9:
    leaq .Ltext_134(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_core_exit
    .type lb_core_exit, @function
lb_core_exit:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movl %edi, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call exit@PLT
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_core_0init
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
    .asciz "src/std/core.lucb:11:5"
.Ltext_2:
    .asciz "src/std/core.lucb:27:5"
.Ltext_3:
    .asciz "trap: "
.Ltext_4:
    .asciz "\n"
.Ltext_5:
    .asciz ": "
.Ltext_6:
    .asciz "src/std/core.lucb:113:9"
.Ltext_7:
    .asciz "src/std/core.lucb:115:9"
.Ltext_8:
    .asciz "index out of bounds"
.Ltext_9:
    .asciz "src/std/core.lucb:120:9"
.Ltext_10:
    .asciz "src/std/core.lucb:130:5"
.Ltext_11:
    .asciz "null_foreign"
.Ltext_12:
    .asciz "src/std/core.lucb:135:13"
.Ltext_13:
    .asciz "src/std/core.lucb:136:5"
.Ltext_14:
    .asciz "src/std/core.lucb:137:5"
.Ltext_15:
    .asciz "src/std/core.lucb:144:9"
.Ltext_16:
    .asciz "src/std/core.lucb:147:9"
.Ltext_17:
    .asciz "src/std/core.lucb:148:9"
.Ltext_18:
    .asciz "division by zero"
.Ltext_19:
    .asciz "src/std/core.lucb:149:9"
.Ltext_20:
    .asciz "src/std/core.lucb:150:5"
.Ltext_21:
    .asciz "-"
.Ltext_22:
    .asciz "src/std/core.lucb:158:5"
.Ltext_23:
    .asciz "src/std/core.lucb:163:5"
.Ltext_24:
    .asciz "%g"
.Ltext_25:
    .asciz "src/std/core.lucb:166:5"
.Ltext_26:
    .asciz "true"
.Ltext_27:
    .asciz "false"
.Ltext_28:
    .asciz "src/std/core.lucb:170:5"
.Ltext_29:
    .asciz "src/std/core.lucb:178:9"
.Ltext_30:
    .asciz "src/std/core.lucb:181:9"
.Ltext_31:
    .asciz "shift count out of range"
.Ltext_32:
    .asciz "src/std/core.lucb:182:9"
.Ltext_33:
    .asciz "src/std/core.lucb:185:9"
.Ltext_34:
    .asciz "src/std/core.lucb:186:9"
.Ltext_35:
    .asciz "src/std/core.lucb:187:9"
.Ltext_36:
    .asciz "src/std/core.lucb:190:9"
.Ltext_37:
    .asciz "src/std/core.lucb:191:9"
.Ltext_38:
    .asciz "src/std/core.lucb:192:9"
.Ltext_39:
    .asciz "src/std/core.lucb:193:9"
.Ltext_40:
    .asciz "src/std/core.lucb:195:5"
.Ltext_41:
    .asciz ""
.Ltext_42:
    .asciz "src/std/core.lucb:203:5"
.Ltext_43:
    .asciz "src/std/core.lucb:211:5"
.Ltext_44:
    .asciz "src/std/core.lucb:217:9"
.Ltext_45:
    .asciz "src/std/core.lucb:218:5"
.Ltext_46:
    .asciz "src/std/core.lucb:219:5"
.Ltext_47:
    .asciz "src/std/core.lucb:226:9"
.Ltext_48:
    .asciz "src/std/core.lucb:229:9"
.Ltext_49:
    .asciz "src/std/core.lucb:231:9"
.Ltext_50:
    .asciz "integer overflow"
.Ltext_51:
    .asciz "src/std/core.lucb:232:9"
.Ltext_52:
    .asciz "src/std/core.lucb:233:5"
.Ltext_53:
    .asciz "src/std/core.lucb:240:9"
.Ltext_54:
    .asciz "src/std/core.lucb:243:9"
.Ltext_55:
    .asciz "src/std/core.lucb:244:9"
.Ltext_56:
    .asciz "src/std/core.lucb:245:9"
.Ltext_57:
    .asciz "src/std/core.lucb:246:5"
.Ltext_58:
    .asciz "src/std/core.lucb:253:5"
.Ltext_59:
    .asciz "src/std/core.lucb:257:9"
.Ltext_60:
    .asciz "src/std/core.lucb:259:9"
.Ltext_61:
    .asciz "src/std/core.lucb:261:9"
.Ltext_62:
    .asciz "src/std/core.lucb:262:5"
.Ltext_63:
    .asciz "src/std/core.lucb:268:5"
.Ltext_64:
    .asciz "memory.exhausted"
.Ltext_65:
    .asciz "src/std/core.lucb:272:9"
.Ltext_66:
    .asciz "invalid_utf8"
.Ltext_67:
    .asciz "src/std/core.lucb:276:9"
.Ltext_68:
    .asciz "src/std/core.lucb:277:5"
.Ltext_69:
    .asciz "src/std/core.lucb:282:5"
.Ltext_70:
    .asciz "src/std/core.lucb:317:5"
.Ltext_71:
    .asciz "error "
.Ltext_72:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
.Ltext_73:
    .asciz "src/std/core.lucb:325:5"
.Ltext_74:
    .asciz "FAIL  "
.Ltext_75:
    .asciz "\n      error: "
.Ltext_76:
    .asciz "ok    "
.Ltext_77:
    .asciz "src/std/core.lucb:336:5"
.Ltext_78:
    .asciz " passed\n"
.Ltext_79:
    .asciz "src/std/core.lucb:339:5"
.Ltext_80:
    .asciz "src/std/core.lucb:366:5"
.Ltext_81:
    .asciz "src/std/core.lucb:383:5"
.Ltext_82:
    .asciz "src/std/core.lucb:384:9"
.Ltext_83:
    .asciz "src/std/core.lucb:387:9"
.Ltext_84:
    .asciz "src/std/core.lucb:388:9"
.Ltext_85:
    .asciz "src/std/core.lucb:390:5"
.Ltext_86:
    .asciz "src/std/core.lucb:413:9"
.Ltext_87:
    .asciz "src/std/core.lucb:417:13"
.Ltext_88:
    .asciz "src/std/core.lucb:420:13"
.Ltext_89:
    .asciz "src/std/core.lucb:421:13"
.Ltext_90:
    .asciz "src/std/core.lucb:432:9"
.Ltext_91:
    .asciz "src/std/core.lucb:433:5"
.Ltext_92:
    .asciz "src/std/core.lucb:443:5"
.Ltext_93:
    .asciz "src/std/core.lucb:448:5"
.Ltext_94:
    .asciz "src/std/core.lucb:449:5"
.Ltext_95:
    .asciz "src/std/core.lucb:458:13"
.Ltext_96:
    .asciz "src/std/core.lucb:459:5"
.Ltext_97:
    .asciz "src/std/core.lucb:465:5"
.Ltext_98:
    .asciz "src/std/core.lucb:472:5"
.Ltext_99:
    .asciz "src/std/core.lucb:474:5"
.Ltext_100:
    .asciz "src/std/core.lucb:477:5"
.Ltext_101:
    .asciz "src/std/core.lucb:481:9"
.Ltext_102:
    .asciz "src/std/core.lucb:482:5"
.Ltext_103:
    .asciz "src/std/core.lucb:487:5"
.Ltext_104:
    .asciz "src/std/core.lucb:490:5"
.Ltext_105:
    .asciz "src/std/core.lucb:493:5"
.Ltext_106:
    .asciz "src/std/core.lucb:505:5"
.Ltext_107:
    .asciz "integer conversion out of range"
.Ltext_108:
    .asciz "src/std/core.lucb:517:5"
.Ltext_109:
    .asciz "src/std/core.lucb:527:5"
.Ltext_110:
    .asciz "src/std/core.lucb:533:5"
.Ltext_111:
    .asciz "src/std/core.lucb:540:5"
.Ltext_112:
    .asciz "src/std/core.lucb:543:5"
.Ltext_113:
    .asciz "src/std/core.lucb:547:5"
.Ltext_114:
    .asciz "src/std/core.lucb:550:5"
.Ltext_115:
    .asciz "src/std/core.lucb:566:5"
.Ltext_116:
    .asciz "src/std/core.lucb:578:5"
.Ltext_117:
    .asciz "src/std/core.lucb:582:5"
.Ltext_118:
    .asciz "src/std/core.lucb:585:5"
.Ltext_119:
    .asciz "src/std/core.lucb:594:5"
.Ltext_120:
    .asciz "src/std/core.lucb:602:5"
.Ltext_121:
    .asciz "src/std/core.lucb:610:5"
.Ltext_122:
    .asciz "src/std/core.lucb:618:5"
.Ltext_123:
    .asciz "src/std/core.lucb:625:5"
.Ltext_124:
    .asciz "src/std/core.lucb:632:5"
.Ltext_125:
    .asciz "src/std/core.lucb:637:5"
.Ltext_126:
    .asciz "src/std/core.lucb:639:5"
.Ltext_127:
    .asciz "src/std/core.lucb:649:5"
.Ltext_128:
    .asciz "src/std/core.lucb:658:5"
.Ltext_129:
    .asciz "src/std/core.lucb:667:5"
.Ltext_130:
    .asciz "src/std/core.lucb:674:5"
.Ltext_131:
    .asciz "src/std/core.lucb:675:5"
.Ltext_132:
    .asciz "src/std/core.lucb:683:5"
.Ltext_133:
    .asciz "src/std/core.lucb:688:5"
.Ltext_134:
    .asciz "src/std/core.lucb:691:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .tbss,"awT",@nobits
    .globl lb_core_10show_bytes
    .type lb_core_10show_bytes, @object
    .p2align 0
lb_core_10show_bytes:
    .zero 1024

    .section .tbss,"awT",@nobits
    .globl lb_core_9show_next
    .type lb_core_9show_next, @object
    .p2align 2
lb_core_9show_next:
    .zero 4

    .bss
    .globl lb_core_15hash_seed_value
    .type lb_core_15hash_seed_value, @object
    .p2align 3
lb_core_15hash_seed_value:
    .zero 8

    .bss
    .globl lb_core_11hash_seeded
    .type lb_core_11hash_seeded, @object
    .p2align 0
lb_core_11hash_seeded:
    .zero 1

    .section .note.GNU-stack,"",@progbits
