    .text

    .p2align 4
    .globl lb_process_18termination_module_0init
    .type lb_process_18termination_module_0init, @function
lb_process_18termination_module_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_TerminationStatus_requested
    .type lb_process_TerminationStatus_requested, @function
lb_process_TerminationStatus_requested:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %r10
    movq (%r10), %r12
    leaq lb_process_22termination_generation(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, %rbx
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
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
.L1_1:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Termination_init
    .type lb_process_Termination_init, @function
lb_process_Termination_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $256, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -248(%rbp)
    leaq lb_process_16termination_lock(%rip), %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %rdi
    call lb_sync_Mutex_lock@PLT
    leaq lb_process_19termination_closing(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %eax
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq -80(%rbp), %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $30, %rax
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
    movq -240(%rbp), %rdi
    call lb_sync_Mutex_unlock@PLT
    movq %r12, %rsi
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
    leaq -112(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    leaq lb_process_22termination_generation(%rip), %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movq %r12, %r10
    movq -248(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq lb_process_18termination_owners(%rip), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, %r14
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r15, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L2_6
.L2_5:
    leaq -232(%rbp), %rdi
    call lb_process_25termination_posix_install@PLT
    leaq -232(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_14
    jmp .L2_13
.L2_14:
    leaq -200(%rbp), %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r14, %r10
    leaq -168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L2_16
.L2_15:
.L2_13:
    leaq -200(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r13, %r10
    leaq -168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L2_16:
    leaq -168(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L2_11
    jmp .L2_10
.L2_11:
    leaq -136(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L2_8
.L2_10:
    jmp .L2_9
.L2_8:
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -80(%rbp), %r14
    movq %r13, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -240(%rbp), %rdi
    call lb_sync_Mutex_unlock@PLT
    movq %r14, %rsi
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
.L2_12:
.L2_9:
    jmp .L2_7
.L2_6:
.L2_7:
    movq -248(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -240(%rbp), %rdi
    call lb_sync_Mutex_unlock@PLT
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
    .globl lb_process_Termination_status
    .type lb_process_Termination_status, @function
lb_process_Termination_status:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %r12
    leaq -24(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_1:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Termination_close
    .type lb_process_Termination_close, @function
lb_process_Termination_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L4_2
.L4_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    leaq lb_process_16termination_lock(%rip), %r12
    movq %r12, %rdi
    call lb_sync_Mutex_lock@PLT
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_process_18termination_owners(%rip), %r13
    movq $1, %rcx
    movq %r13, %r10
    negq %rcx
    lock xaddq %rcx, (%r10)
    movq %rcx, %r13
    movq $1, %rcx
    cmpq %rcx, %r13
    jne .L4_6
.L4_5:
    call lb_process_25termination_posix_restore@PLT
.L4_8:
    jmp .L4_7
.L4_6:
.L4_7:
    movq %r12, %rdi
    call lb_sync_Mutex_unlock@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_process_18termination_module_0init
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
    .asciz "src/std/process/termination/module.lucb:14:9"
.Ltext_2:
    .asciz "the process is already closing"
.Ltext_3:
    .asciz "src/std/process/termination/module.lucb:33:9"
.Ltext_4:
    .asciz "src/std/process/termination/module.lucb:41:9"
.Ltext_5:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_process_16termination_lock
    .type lb_process_16termination_lock, @object
    .p2align 2
lb_process_16termination_lock:
    .zero 4

    .bss
    .globl lb_process_18termination_owners
    .type lb_process_18termination_owners, @object
    .p2align 3
lb_process_18termination_owners:
    .zero 8

    .bss
    .globl lb_process_22termination_generation
    .type lb_process_22termination_generation, @object
    .p2align 3
lb_process_22termination_generation:
    .zero 8

    .bss
    .globl lb_process_19termination_closing
    .type lb_process_19termination_closing, @object
    .p2align 0
lb_process_19termination_closing:
    .zero 1

    .section .note.GNU-stack,"",@progbits
