    .text

    .p2align 4
    .globl lb_utf8_module_0init
    .type lb_utf8_module_0init, @function
lb_utf8_module_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_utf8_16invalid_sequence(%rip), %rbx
    movl $208273462, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_utf8_19incomplete_sequence(%rip), %rbx
    movl $208273463, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_utf8_module_0init
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
    .globl lb_utf8_16invalid_sequence
    .type lb_utf8_16invalid_sequence, @object
    .weak lb_utf8_16invalid_sequence
    .p2align 2
lb_utf8_16invalid_sequence:
    .zero 4

    .bss
    .globl lb_utf8_19incomplete_sequence
    .type lb_utf8_19incomplete_sequence, @object
    .weak lb_utf8_19incomplete_sequence
    .p2align 2
lb_utf8_19incomplete_sequence:
    .zero 4

    .section .note.GNU-stack,"",@progbits
