    .text

    .p2align 4
    .globl lb_platform_0init
    .type lb_platform_0init, @function
lb_platform_0init:
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
    movq $12, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_platform_name(%rip), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_platform_macos(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_platform_linux(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_platform_windows(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_platform_posix(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_platform_arm64(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_platform_6x86_64(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_platform_wasm32(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_platform_12pointer_bits(%rip), %rbx
    movl $64, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_platform_9cpu_level(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_platform_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "x86_64-linux"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_platform_name
    .type lb_platform_name, @object
    .p2align 3
lb_platform_name:
    .zero 16

    .bss
    .globl lb_platform_macos
    .type lb_platform_macos, @object
    .p2align 0
lb_platform_macos:
    .zero 1

    .bss
    .globl lb_platform_linux
    .type lb_platform_linux, @object
    .p2align 0
lb_platform_linux:
    .zero 1

    .bss
    .globl lb_platform_windows
    .type lb_platform_windows, @object
    .p2align 0
lb_platform_windows:
    .zero 1

    .bss
    .globl lb_platform_posix
    .type lb_platform_posix, @object
    .p2align 0
lb_platform_posix:
    .zero 1

    .bss
    .globl lb_platform_arm64
    .type lb_platform_arm64, @object
    .p2align 0
lb_platform_arm64:
    .zero 1

    .bss
    .globl lb_platform_6x86_64
    .type lb_platform_6x86_64, @object
    .p2align 0
lb_platform_6x86_64:
    .zero 1

    .bss
    .globl lb_platform_wasm32
    .type lb_platform_wasm32, @object
    .p2align 0
lb_platform_wasm32:
    .zero 1

    .bss
    .globl lb_platform_12pointer_bits
    .type lb_platform_12pointer_bits, @object
    .p2align 2
lb_platform_12pointer_bits:
    .zero 4

    .bss
    .globl lb_platform_9cpu_level
    .type lb_platform_9cpu_level, @object
    .p2align 2
lb_platform_9cpu_level:
    .zero 4

    .section .note.GNU-stack,"",@progbits
