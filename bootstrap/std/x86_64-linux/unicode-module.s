    .text

    .p2align 4
    .globl lb_unicode_module_0init
    .type lb_unicode_module_0init, @function
lb_unicode_module_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq .Ltext_0(%rip), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $6, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_unicode_version(%rip), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_unicode_release
    .type lb_unicode_release, @function
lb_unicode_release:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    leaq -24(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_unicode_13is_whitespace
    .type lb_unicode_13is_whitespace, @function
lb_unicode_13is_whitespace:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movl %edi, -32(%rbp)
    leaq lb_unicode_17whitespace_ranges(%rip), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl %r12d, %edx
    call lb_unicode_11range_value@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_1:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_unicode_15combining_class
    .type lb_unicode_15combining_class, @function
lb_unicode_15combining_class:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movl %edi, -32(%rbp)
    leaq lb_unicode_16combining_ranges(%rip), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl %r12d, %edx
    call lb_unicode_11range_value@PLT
    movl %eax, %ebx
    movl %ebx, %ebx
    movzbl %bl, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_1:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_unicode_module_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "17.0.0"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/unicode/module.lucb:19:5"
.Ltext_3:
    .asciz "src/std/unicode/module.lucb:23:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_unicode_version
    .type lb_unicode_version, @object
    .p2align 3
lb_unicode_version:
    .zero 16

    .section .note.GNU-stack,"",@progbits
