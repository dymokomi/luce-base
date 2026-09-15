    .text

    .p2align 4
    .globl lb_c_0init
    .type lb_c_0init, @function
lb_c_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq lb_platform_wasm32(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L0_1
    jmp .L0_2
.L0_1:
    movl $27, %eax
    movl %eax, %ebx
    jmp .L0_3
.L0_2:
    movl $4, %eax
    movl %eax, %ebx
.L0_3:
    leaq lb_c_interrupted(%rip), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_c_errno
    .type lb_c_errno, @function
lb_c_errno:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    call __errno_location@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L1_1
    jmp .L1_2
.L1_2:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_1:
    movq %rbx, %r10
    movslq (%r10), %r12
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_3:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_c_9set_errno
    .type lb_c_9set_errno, @function
lb_c_9set_errno:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movl %edi, -32(%rbp)
    call __errno_location@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L2_1
    jmp .L2_2
.L2_2:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_1:
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq %rbx, %r10
    movl %r12d, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_c_stdin
    .type lb_c_stdin, @function
lb_c_stdin:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq .Ltext_4(%rip), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $23, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_5(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_c_stdout
    .type lb_c_stdout, @function
lb_c_stdout:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq .Ltext_4(%rip), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $23, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_6(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_c_stderr
    .type lb_c_stderr, @function
lb_c_stderr:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq .Ltext_4(%rip), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $23, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_7(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_c_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "null_foreign"
.Ltext_1:
    .asciz "src/std/c.lucb:16:5"
.Ltext_2:
    .asciz "unreachable"
.Ltext_3:
    .asciz "src/std/c.lucb:26:9"
.Ltext_4:
    .asciz "supplied by the backend"
.Ltext_5:
    .asciz "src/std/c.lucb:34:5"
.Ltext_6:
    .asciz "src/std/c.lucb:37:5"
.Ltext_7:
    .asciz "src/std/c.lucb:40:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_c_interrupted
    .type lb_c_interrupted, @object
    .p2align 2
lb_c_interrupted:
    .zero 4

    .section .note.GNU-stack,"",@progbits
