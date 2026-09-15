    .text

    .p2align 4
    .globl lb_interop_12worker_entry_0init
    .type lb_interop_12worker_entry_0init, @function
lb_interop_12worker_entry_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %fs:0, %rax
    addq lb_interop_26active_worker_cancellation@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_19worker_cancellation
    .type lb_interop_19worker_cancellation, @function
lb_interop_19worker_cancellation:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %fs:0, %rax
    addq lb_interop_26active_worker_cancellation@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_1
    jmp .L1_2
.L1_1:
    jmp .L1_3
.L1_2:
    leaq .Ltext_0(%rip), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $45, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_1(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_3:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_4:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_interop_12worker_entry_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "this operation requires an application worker"
.Ltext_1:
    .asciz "src/std/interop/worker_entry.lucb:24:5"
.Ltext_2:
    .asciz "unreachable"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .tbss,"awT",@nobits
    .globl lb_interop_26active_worker_cancellation
    .type lb_interop_26active_worker_cancellation, @object
    .p2align 3
lb_interop_26active_worker_cancellation:
    .zero 8

    .section .note.GNU-stack,"",@progbits
