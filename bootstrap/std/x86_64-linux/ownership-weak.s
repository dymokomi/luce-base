    .text

    .p2align 4
    .globl lb_ownership_weak_0init
    .type lb_ownership_weak_0init, @function
lb_ownership_weak_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_9weak_make
    .type lb_ownership_9weak_make, @function
lb_ownership_9weak_make:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
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
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_2
.L1_1:
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    jmp .L1_3
.L1_2:
.L1_3:
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
.L1_4:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_9weak_copy
    .type lb_ownership_9weak_copy, @function
lb_ownership_9weak_copy:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
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
    jne .L2_4
    jmp .L2_2
.L2_4:
.L2_1:
    movq %r12, %rdi
    call lb_ownership_12check_thread@PLT
    leaq lb_ownership_immortal(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq %r12, %rdi
    movl %r13d, %esi
    call lb_ownership_has@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L2_6
.L2_5:
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r14d
    movl %r14d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    jmp .L2_7
.L2_6:
.L2_7:
    jmp .L2_3
.L2_2:
.L2_3:
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
.L2_8:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_9weak_drop
    .type lb_ownership_9weak_drop, @function
lb_ownership_9weak_drop:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq -40(%rbp), %r10
    movq %rdi, 0(%r10)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L3_4
    jmp .L3_2
.L3_4:
.L3_1:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_6
.L3_5:
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    movq %rbx, %rdi
    call lb_ownership_13release_shell@PLT
    jmp .L3_7
.L3_6:
.L3_7:
    jmp .L3_3
.L3_2:
.L3_3:
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
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq -32(%rbp), %r10
    movq %rdi, 0(%r10)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L4_4
    jmp .L4_2
.L4_4:
.L4_1:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    leaq lb_ownership_dead(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %rbx, %rdi
    movl %r12d, %esi
    call lb_ownership_has@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L4_6
.L4_5:
    movq %rbx, %rdi
    call lb_ownership_retain@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_8:
    jmp .L4_7
.L4_6:
.L4_7:
    jmp .L4_3
.L4_2:
.L4_3:
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_9:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_ownership_weak_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/ownership/weak.lucb:9:9"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/ownership/weak.lucb:10:5"
.Ltext_3:
    .asciz "src/std/ownership/weak.lucb:16:13"
.Ltext_4:
    .asciz "src/std/ownership/weak.lucb:17:5"
.Ltext_5:
    .asciz "src/std/ownership/weak.lucb:23:13"
.Ltext_6:
    .asciz "src/std/ownership/weak.lucb:32:5"
.Ltext_7:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
