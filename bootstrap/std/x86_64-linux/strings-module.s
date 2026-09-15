    .text

    .p2align 4
    .globl lb_strings_module_0init
    .type lb_strings_module_0init, @function
lb_strings_module_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_strings_17invalid_separator(%rip), %rbx
    movl $208273456, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_strings_16output_too_large(%rip), %rbx
    movl $208273457, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_strings_13invalid_radix(%rip), %rbx
    movl $208273458, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_strings_14invalid_number(%rip), %rbx
    movl $208273459, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_strings_19number_out_of_range(%rip), %rbx
    movl $208273460, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_strings_17conversion_failed(%rip), %rbx
    movl $208273461, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_strings_module_0init
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
    .globl lb_strings_17invalid_separator
    .type lb_strings_17invalid_separator, @object
    .p2align 2
lb_strings_17invalid_separator:
    .zero 4

    .bss
    .globl lb_strings_16output_too_large
    .type lb_strings_16output_too_large, @object
    .p2align 2
lb_strings_16output_too_large:
    .zero 4

    .bss
    .globl lb_strings_13invalid_radix
    .type lb_strings_13invalid_radix, @object
    .p2align 2
lb_strings_13invalid_radix:
    .zero 4

    .bss
    .globl lb_strings_14invalid_number
    .type lb_strings_14invalid_number, @object
    .p2align 2
lb_strings_14invalid_number:
    .zero 4

    .bss
    .globl lb_strings_19number_out_of_range
    .type lb_strings_19number_out_of_range, @object
    .p2align 2
lb_strings_19number_out_of_range:
    .zero 4

    .bss
    .globl lb_strings_17conversion_failed
    .type lb_strings_17conversion_failed, @object
    .p2align 2
lb_strings_17conversion_failed:
    .zero 4

    .section .note.GNU-stack,"",@progbits
