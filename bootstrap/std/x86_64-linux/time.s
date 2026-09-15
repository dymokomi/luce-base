    .text

    .p2align 4
    .globl lb_time_0init
    .type lb_time_0init, @function
lb_time_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L0_1
    jmp .L0_2
.L0_1:
    movl $6, %eax
    movl %eax, %ebx
    jmp .L0_3
.L0_2:
    movl $1, %eax
    movl %eax, %ebx
.L0_3:
    leaq lb_time_monotonic(%rip), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    leaq lb_time_realtime(%rip), %r12
    movl $0, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_time_now
    .type lb_time_now, @function
lb_time_now:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq -40(%rbp), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_time_monotonic(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl %r12d, %edi
    movq %rbx, %rsi
    call clock_gettime@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1000000000, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rax
    movq %rbx, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_1:
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_time_unix
    .type lb_time_unix, @function
lb_time_unix:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq $0, %rdi
    call time@PLT
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_1:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_time_since
    .type lb_time_since, @function
lb_time_since:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    call lb_time_now@PLT
    movq %rax, %rbx
    leaq -40(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jbe .L3_2
.L3_1:
    movq %rbx, %r13
    subq %r12, %r13
    jmp .L3_3
.L3_2:
    movq $0, %rax
    movq %rax, %r13
.L3_3:
    movq %r13, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_4:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_time_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/time.lucb:19:5"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/time.lucb:23:5"
.Ltext_3:
    .asciz "src/std/time.lucb:28:5"
.Ltext_4:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_time_monotonic
    .type lb_time_monotonic, @object
    .p2align 2
lb_time_monotonic:
    .zero 4

    .bss
    .globl lb_time_realtime
    .type lb_time_realtime, @object
    .p2align 2
lb_time_realtime:
    .zero 4

    .section .note.GNU-stack,"",@progbits
