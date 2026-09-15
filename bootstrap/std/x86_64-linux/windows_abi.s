    .text

    .p2align 4
    .globl lb_11windows_abi_0init
    .type lb_11windows_abi_0init, @function
lb_11windows_abi_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_11windows_abi_9utf8_page(%rip), %rbx
    movl $65001, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_11windows_abi_19reject_invalid_utf8(%rip), %rbx
    movl $8, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_11windows_abi_20reject_invalid_utf16(%rip), %rbx
    movl $128, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_11windows_abi_0init
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
    .globl lb_11windows_abi_9utf8_page
    .type lb_11windows_abi_9utf8_page, @object
    .p2align 2
lb_11windows_abi_9utf8_page:
    .zero 4

    .bss
    .globl lb_11windows_abi_19reject_invalid_utf8
    .type lb_11windows_abi_19reject_invalid_utf8, @object
    .p2align 2
lb_11windows_abi_19reject_invalid_utf8:
    .zero 4

    .bss
    .globl lb_11windows_abi_20reject_invalid_utf16
    .type lb_11windows_abi_20reject_invalid_utf16, @object
    .p2align 2
lb_11windows_abi_20reject_invalid_utf16:
    .zero 4

    .section .note.GNU-stack,"",@progbits
