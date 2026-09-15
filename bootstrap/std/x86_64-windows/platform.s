    .text

    .p2align 4
    .globl lb_platform_0init
lb_platform_0init:
    .seh_proc lb_platform_0init
    pushq %rbp
    .seh_pushreg %rbp
    subq $208, %rsp
    .seh_stackalloc 208
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 200(%rbp)
    .seh_savereg %rdi, 200
    movq %rsi, 192(%rbp)
    .seh_savereg %rsi, 192
    movdqu %xmm6, 176(%rbp)
    .seh_savexmm %xmm6, 176
    movdqu %xmm7, 160(%rbp)
    .seh_savexmm %xmm7, 160
    movdqu %xmm8, 144(%rbp)
    .seh_savexmm %xmm8, 144
    movdqu %xmm9, 128(%rbp)
    .seh_savexmm %xmm9, 128
    movdqu %xmm10, 112(%rbp)
    .seh_savexmm %xmm10, 112
    movdqu %xmm11, 96(%rbp)
    .seh_savexmm %xmm11, 96
    movdqu %xmm12, 80(%rbp)
    .seh_savexmm %xmm12, 80
    movdqu %xmm13, 64(%rbp)
    .seh_savexmm %xmm13, 64
    movdqu %xmm14, 48(%rbp)
    .seh_savexmm %xmm14, 48
    movdqu %xmm15, 32(%rbp)
    .seh_savexmm %xmm15, 32
    movq %rbx, 24(%rbp)
    .seh_savereg %rbx, 24
    movq %r12, 16(%rbp)
    .seh_savereg %r12, 16
    .seh_endprologue
    movq %rcx, 224(%rbp)
    movq %rdx, 232(%rbp)
    movq %r8, 240(%rbp)
    movq %r9, 248(%rbp)
    leaq .Ltext_0(%rip), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $14, %rax
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
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_platform_windows(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_platform_posix(%rip), %rbx
    movl $0, %eax
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
    leaq lb_platform_12pointer_bits(%rip), %rbx
    movl $64, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_platform_9cpu_level(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq 200(%rbp), %rdi
    movq 192(%rbp), %rsi
    movdqu 176(%rbp), %xmm6
    movdqu 160(%rbp), %xmm7
    movdqu 144(%rbp), %xmm8
    movdqu 128(%rbp), %xmm9
    movdqu 112(%rbp), %xmm10
    movdqu 96(%rbp), %xmm11
    movdqu 80(%rbp), %xmm12
    movdqu 64(%rbp), %xmm13
    movdqu 48(%rbp), %xmm14
    movdqu 32(%rbp), %xmm15
    movq 24(%rbp), %rbx
    movq 16(%rbp), %r12
    leaq 208(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_platform_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "x86_64-windows"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_platform_name
    .p2align 3
lb_platform_name:
    .zero 16

    .bss
    .globl lb_platform_macos
    .p2align 0
lb_platform_macos:
    .zero 1

    .bss
    .globl lb_platform_linux
    .p2align 0
lb_platform_linux:
    .zero 1

    .bss
    .globl lb_platform_windows
    .p2align 0
lb_platform_windows:
    .zero 1

    .bss
    .globl lb_platform_posix
    .p2align 0
lb_platform_posix:
    .zero 1

    .bss
    .globl lb_platform_arm64
    .p2align 0
lb_platform_arm64:
    .zero 1

    .bss
    .globl lb_platform_6x86_64
    .p2align 0
lb_platform_6x86_64:
    .zero 1

    .bss
    .globl lb_platform_12pointer_bits
    .p2align 2
lb_platform_12pointer_bits:
    .zero 4

    .bss
    .globl lb_platform_9cpu_level
    .p2align 2
lb_platform_9cpu_level:
    .zero 4
