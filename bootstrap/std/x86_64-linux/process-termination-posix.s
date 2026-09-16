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
    leaq lb_process_18previous_interrupt(%rip), %rbx
    movq lb_process_20termination_received@GOTPCREL(%rip), %r12
    movl $2, %edi
    movq %r12, %rsi
    call signal@PLT
    movq %rax, %r13
    movq %rbx, %r10
    movq %r13, (%r10)
    leaq -120(%rbp), %r10
    movq %r13, (%r10)
    testq %r13, %r13
    jne .L2_12
    jmp .L2_10
.L2_12:
.L2_9:
    movq $-1, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r14d
    movzbl %r14b, %r14d
    leaq -128(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L2_15
.L2_13:
    jmp .L2_11
.L2_10:
.L2_11:
    movl $0, %eax
    leaq -128(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %r14d
    jmp .L2_15
.L2_14:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_15:
    testl %r14d, %r14d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq -72(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_2(%rip), %r12
    leaq -88(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq lb_process_18previous_terminate(%rip), %r13
    movl $15, %edi
    movq %r12, %rsi
    call signal@PLT
    movq %rax, %r14
    movq %r13, %r10
    movq %r14, (%r10)
    leaq -120(%rbp), %r10
    movq %r14, (%r10)
    testq %r14, %r14
    jne .L2_19
    jmp .L2_17
.L2_19:
.L2_16:
    movq $-1, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq -136(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L2_22
.L2_20:
    jmp .L2_18
.L2_17:
.L2_18:
    movl $0, %eax
    leaq -136(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %r12d
    jmp .L2_22
.L2_21:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_22:
    testl %r12d, %r12d
    jne .L2_5
    jmp .L2_6
.L2_5:
    movq %rbx, %r10
    movq (%r10), %r12
    movl $2, %edi
    movq %r12, %rsi
    call signal@PLT
    movq %rax, %rbx
    leaq -72(%rbp), %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $38, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_8:
    jmp .L2_7
.L2_6:
.L2_7:
    leaq -72(%rbp), %rbx
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
    leaq lb_process_18previous_interrupt(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movl $2, %edi
    movq %rbx, %rsi
    call signal@PLT
    movq %rax, %rbx
    leaq lb_process_18previous_terminate(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movl $15, %edi
    movq %rbx, %rsi
    call signal@PLT
    movq %rax, %rbx
    movq -8(%rbp), %rbx
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
