    .text

    .p2align 4
    .globl lb_strings_module_0init
lb_strings_module_0init:
    .seh_proc lb_strings_module_0init
    pushq %rbp
    .seh_pushreg %rbp
    subq $192, %rsp
    .seh_stackalloc 192
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 184(%rbp)
    .seh_savereg %rdi, 184
    movq %rsi, 176(%rbp)
    .seh_savereg %rsi, 176
    movdqu %xmm6, 160(%rbp)
    .seh_savexmm %xmm6, 160
    movdqu %xmm7, 144(%rbp)
    .seh_savexmm %xmm7, 144
    movdqu %xmm8, 128(%rbp)
    .seh_savexmm %xmm8, 128
    movdqu %xmm9, 112(%rbp)
    .seh_savexmm %xmm9, 112
    movdqu %xmm10, 96(%rbp)
    .seh_savexmm %xmm10, 96
    movdqu %xmm11, 80(%rbp)
    .seh_savexmm %xmm11, 80
    movdqu %xmm12, 64(%rbp)
    .seh_savexmm %xmm12, 64
    movdqu %xmm13, 48(%rbp)
    .seh_savexmm %xmm13, 48
    movdqu %xmm14, 32(%rbp)
    .seh_savexmm %xmm14, 32
    movdqu %xmm15, 16(%rbp)
    .seh_savexmm %xmm15, 16
    movq %rbx, 8(%rbp)
    .seh_savereg %rbx, 8
    .seh_endprologue
    movq %rcx, 208(%rbp)
    movq %rdx, 216(%rbp)
    movq %r8, 224(%rbp)
    movq %r9, 232(%rbp)
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
    movq 184(%rbp), %rdi
    movq 176(%rbp), %rsi
    movdqu 160(%rbp), %xmm6
    movdqu 144(%rbp), %xmm7
    movdqu 128(%rbp), %xmm8
    movdqu 112(%rbp), %xmm9
    movdqu 96(%rbp), %xmm10
    movdqu 80(%rbp), %xmm11
    movdqu 64(%rbp), %xmm12
    movdqu 48(%rbp), %xmm13
    movdqu 32(%rbp), %xmm14
    movdqu 16(%rbp), %xmm15
    movq 8(%rbp), %rbx
    leaq 192(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_strings_module_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_strings_17invalid_separator
    .p2align 2
lb_strings_17invalid_separator:
    .zero 4

    .bss
    .globl lb_strings_16output_too_large
    .p2align 2
lb_strings_16output_too_large:
    .zero 4

    .bss
    .globl lb_strings_13invalid_radix
    .p2align 2
lb_strings_13invalid_radix:
    .zero 4

    .bss
    .globl lb_strings_14invalid_number
    .p2align 2
lb_strings_14invalid_number:
    .zero 4

    .bss
    .globl lb_strings_19number_out_of_range
    .p2align 2
lb_strings_19number_out_of_range:
    .zero 4

    .bss
    .globl lb_strings_17conversion_failed
    .p2align 2
lb_strings_17conversion_failed:
    .zero 4
