    .text

    .p2align 4
    .globl lb_interop_worker_0init
    .type lb_interop_worker_0init, @function
lb_interop_worker_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_interop_13worker_closed(%rip), %rbx
    movl $208273512, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_interop_11worker_busy(%rip), %rbx
    movl $208273513, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_interop_worker_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_interop_13worker_closed
    .type lb_interop_13worker_closed, @object
    .weak lb_interop_13worker_closed
    .p2align 2
lb_interop_13worker_closed:
    .zero 4

    .bss
    .globl lb_interop_11worker_busy
    .type lb_interop_11worker_busy, @object
    .weak lb_interop_11worker_busy
    .p2align 2
lb_interop_11worker_busy:
    .zero 4

    .section .note.GNU-stack,"",@progbits
