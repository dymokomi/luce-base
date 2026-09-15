    .text

    .p2align 4
    .globl lb_process_17termination_posix_0init
    .type lb_process_17termination_posix_0init, @function
lb_process_17termination_posix_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_process_16interrupt_signal(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_process_16terminate_signal(%rip), %rbx
    movl $15, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_20termination_received
    .type lb_process_20termination_received, @function
lb_process_20termination_received:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movl %edi, -24(%rbp)
    leaq lb_process_22termination_generation(%rip), %rbx
    movq $1, %rcx
    movq %rbx, %r10
    lock xaddq %rcx, (%r10)
    movq %rcx, %rbx
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_25termination_posix_install
    .type lb_process_25termination_posix_install, @function
lb_process_25termination_posix_install:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq lb_process_18previous_interrupt(%rip), %rbx
    leaq lb_process_16interrupt_signal(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r13
    movq lb_process_20termination_received@GOTPCREL(%rip), %r14
    movl %r13d, %edi
    movq %r14, %rsi
    call signal@PLT
    movq %rax, %r13
    movq %rbx, %r10
    movq %r13, (%r10)
    leaq -128(%rbp), %r10
    movq %r13, (%r10)
    testq %r13, %r13
    jne .L2_12
    jmp .L2_10
.L2_12:
.L2_9:
    movq $-1, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r15d
    movzbl %r15b, %r15d
    leaq -136(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L2_15
.L2_13:
    jmp .L2_11
.L2_10:
.L2_11:
    movl $0, %eax
    leaq -136(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %r15d
    jmp .L2_15
.L2_14:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_15:
    testl %r15d, %r15d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_2(%rip), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $37, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq lb_process_18previous_terminate(%rip), %r13
    leaq lb_process_16terminate_signal(%rip), %r15
    movq %r15, %r10
    movslq (%r10), %r15
    movl %r15d, %edi
    movq %r14, %rsi
    call signal@PLT
    movq %rax, %r15
    movq %r13, %r10
    movq %r15, (%r10)
    leaq -128(%rbp), %r10
    movq %r15, (%r10)
    testq %r15, %r15
    jne .L2_19
    jmp .L2_17
.L2_19:
.L2_16:
    movq $-1, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq -144(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L2_22
.L2_20:
    jmp .L2_18
.L2_17:
.L2_18:
    movl $0, %eax
    leaq -144(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %r13d
    jmp .L2_22
.L2_21:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_22:
    testl %r13d, %r13d
    jne .L2_5
    jmp .L2_6
.L2_5:
    movq %r12, %r10
    movslq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movl %r13d, %edi
    movq %r14, %rsi
    call signal@PLT
    movq %rax, %rbx
    leaq -80(%rbp), %r13
    leaq lb_process_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_3(%rip), %r14
    leaq -112(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $38, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_8:
    jmp .L2_7
.L2_6:
.L2_7:
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_25termination_posix_restore
    .type lb_process_25termination_posix_restore, @function
lb_process_25termination_posix_restore:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq lb_process_16interrupt_signal(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_process_18previous_interrupt(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movl %ebx, %edi
    movq %r12, %rsi
    call signal@PLT
    movq %rax, %rbx
    leaq lb_process_16terminate_signal(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_process_18previous_terminate(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movl %ebx, %edi
    movq %r12, %rsi
    call signal@PLT
    movq %rax, %rbx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_process_17termination_posix_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/process/termination/posix.lucb:16:5"
.Ltext_2:
    .asciz "SIGINT handler could not be installed"
.Ltext_3:
    .asciz "SIGTERM handler could not be installed"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_process_18previous_interrupt
    .type lb_process_18previous_interrupt, @object
    .p2align 3
lb_process_18previous_interrupt:
    .zero 8

    .bss
    .globl lb_process_18previous_terminate
    .type lb_process_18previous_terminate, @object
    .p2align 3
lb_process_18previous_terminate:
    .zero 8

    .bss
    .globl lb_process_16interrupt_signal
    .type lb_process_16interrupt_signal, @object
    .p2align 2
lb_process_16interrupt_signal:
    .zero 4

    .bss
    .globl lb_process_16terminate_signal
    .type lb_process_16terminate_signal, @object
    .p2align 2
lb_process_16terminate_signal:
    .zero 4

    .section .note.GNU-stack,"",@progbits
