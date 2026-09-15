    .text

    .p2align 4
    .globl lb_interop_module_0init
    .type lb_interop_module_0init, @function
lb_interop_module_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_interop_invalid(%rip), %rbx
    movl $208273509, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_interop_12wrong_thread(%rip), %rbx
    movl $208273510, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_interop_expired(%rip), %rbx
    movl $208273511, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_interop_module_0init
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
    .globl lb_interop_invalid
    .type lb_interop_invalid, @object
    .p2align 2
lb_interop_invalid:
    .zero 4

    .bss
    .globl lb_interop_12wrong_thread
    .type lb_interop_12wrong_thread, @object
    .p2align 2
lb_interop_12wrong_thread:
    .zero 4

    .bss
    .globl lb_interop_expired
    .type lb_interop_expired, @object
    .p2align 2
lb_interop_expired:
    .zero 4

    .section .note.GNU-stack,"",@progbits
