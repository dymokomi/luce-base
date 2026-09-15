    .text

    .p2align 4
    .globl lb_sync_0init
    .type lb_sync_0init, @function
lb_sync_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq lb_sync_16compare_and_wait(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_sync_8wake_all(%rip), %rbx
    movl $256, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_platform_arm64(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L0_1
    jmp .L0_2
.L0_1:
    movq $98, %rax
    movq %rax, %rbx
    jmp .L0_3
.L0_2:
    movq $202, %rax
    movq %rax, %rbx
.L0_3:
    leaq lb_sync_12futex_number(%rip), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq lb_sync_18futex_wait_private(%rip), %r12
    movl $128, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_sync_18futex_wake_private(%rip), %r12
    movl $129, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_sync_Mutex_lock
    .type lb_sync_Mutex_lock, @function
lb_sync_Mutex_lock:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r14
    leaq -56(%rbp), %rbx
    movl $0, %eax
    movl $1, %ecx
    movq %r14, %r10
    lock cmpxchgl %ecx, (%r10)
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    movq %rbx, %r10
    movb %r13b, (%r10)
    movq $4, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    testl %ebx, %ebx
    jne .L1_1
    jmp .L1_2
.L1_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    movl $2, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_6
.L1_5:
    movl $2, %ecx
    movq %r14, %r10
    xchgl %ecx, (%r10)
    movl %ecx, %ebx
    jmp .L1_7
.L1_6:
    movl %r12d, %ebx
.L1_7:
    leaq lb_sync_12futex_number(%rip), %r12
    leaq lb_sync_18futex_wait_private(%rip), %r13
    movl %ebx, %r15d
.L1_8:
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_10
.L1_9:
    leaq -72(%rbp), %r10
    movq %r14, (%r10)
    movl $2, %eax
    leaq -88(%rbp), %r10
    movl %eax, (%r10)
    movq %r12, %r10
    movq (%r10), %rbx
    movq %r13, %r10
    movslq (%r10), %r15
    movq %rbx, %rdi
    movq %r14, %rsi
    movl %r15d, %edx
    movl $2, %ecx
    movq $0, %r8
    movl $0, %eax
    call syscall@PLT
    movq %rax, %rbx
.L1_11:
    movl $2, %ecx
    movq %r14, %r10
    xchgl %ecx, (%r10)
    movl %ecx, %r15d
    jmp .L1_8
.L1_10:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_sync_Mutex_unlock
    .type lb_sync_Mutex_unlock, @function
lb_sync_Mutex_unlock:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %r12
    movl $0, %ecx
    movq %r12, %r10
    xchgl %ecx, (%r10)
    movl %ecx, %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L2_2
.L2_1:
    leaq -48(%rbp), %r10
    movq %r12, (%r10)
    leaq lb_sync_12futex_number(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_sync_18futex_wake_private(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movq %rbx, %rdi
    movq %r12, %rsi
    movl %r13d, %edx
    movl $1, %ecx
    movl $0, %eax
    call syscall@PLT
    movq %rax, %rbx
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_sync_Mutex_8try_lock
    .type lb_sync_Mutex_8try_lock, @function
lb_sync_Mutex_8try_lock:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %r12
    leaq -40(%rbp), %rbx
    movl $0, %eax
    movl $1, %ecx
    movq %r12, %r10
    lock cmpxchgl %ecx, (%r10)
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    movq %rbx, %r10
    movb %r13b, (%r10)
    movq $4, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_1:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_sync_Condition_wait
    .type lb_sync_Condition_wait, @function
lb_sync_Condition_wait:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r15
    movq %r15, %r10
    movl (%r10), %eax
    movl %eax, %ebx
    leaq -64(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_sync_Mutex_unlock@PLT
    leaq -80(%rbp), %r10
    movq %r15, (%r10)
    leaq -96(%rbp), %r10
    movl %ebx, (%r10)
    leaq lb_sync_12futex_number(%rip), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq lb_sync_18futex_wait_private(%rip), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movq %r13, %rdi
    movq %r15, %rsi
    movl %r14d, %edx
    movl %ebx, %ecx
    movq $0, %r8
    movl $0, %eax
    call syscall@PLT
    movq %rax, %rbx
.L4_1:
    movq %r12, %rdi
    call lb_sync_Mutex_lock@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_sync_Condition_signal
    .type lb_sync_Condition_signal, @function
lb_sync_Condition_signal:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %r13
    movl $1, %ecx
    movq %r13, %r10
    lock xaddl %ecx, (%r10)
    movl %ecx, %ebx
    leaq -48(%rbp), %r10
    movq %r13, (%r10)
    leaq lb_sync_12futex_number(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_sync_18futex_wake_private(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq %rbx, %rdi
    movq %r13, %rsi
    movl %r12d, %edx
    movl $1, %ecx
    movl $0, %eax
    call syscall@PLT
    movq %rax, %rbx
.L5_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_sync_Condition_broadcast
    .type lb_sync_Condition_broadcast, @function
lb_sync_Condition_broadcast:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %r13
    movl $1, %ecx
    movq %r13, %r10
    lock xaddl %ecx, (%r10)
    movl %ecx, %ebx
    leaq -48(%rbp), %r10
    movq %r13, (%r10)
    leaq lb_sync_12futex_number(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_sync_18futex_wake_private(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq %rbx, %rdi
    movq %r13, %rsi
    movl %r12d, %edx
    movl $2147483647, %ecx
    movl $0, %eax
    call syscall@PLT
    movq %rax, %rbx
.L6_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_sync_Once_run
    .type lb_sync_Once_run, @function
lb_sync_Once_run:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r14
    leaq -72(%rbp), %rbx
    movl $0, %eax
    movl $1, %ecx
    movq %r14, %r10
    lock cmpxchgl %ecx, (%r10)
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    movq %rbx, %r10
    movb %r13b, (%r10)
    movq $4, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    testl %ebx, %ebx
    jne .L7_1
    jmp .L7_2
.L7_1:
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r11
    call *%r11
    movl $2, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    leaq -88(%rbp), %r10
    movq %r14, (%r10)
    leaq lb_sync_12futex_number(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_sync_18futex_wake_private(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq %rbx, %rdi
    movq %r14, %rsi
    movl %r12d, %edx
    movl $2147483647, %ecx
    movl $0, %eax
    call syscall@PLT
    movq %rax, %rbx
.L7_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_4:
    jmp .L7_3
.L7_2:
.L7_3:
    leaq lb_sync_12futex_number(%rip), %rbx
    leaq lb_sync_18futex_wait_private(%rip), %r12
.L7_5:
    movq %r14, %r10
    movl (%r10), %eax
    movl %eax, %r13d
    movl $2, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L7_7
.L7_6:
    leaq -104(%rbp), %r10
    movq %r14, (%r10)
    movl $1, %eax
    leaq -120(%rbp), %r10
    movl %eax, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movslq (%r10), %r15
    movq %r13, %rdi
    movq %r14, %rsi
    movl %r15d, %edx
    movl $1, %ecx
    movq $0, %r8
    movl $0, %eax
    call syscall@PLT
    movq %rax, %r13
.L7_9:
    jmp .L7_5
.L7_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_sync_Semaphore_acquire
    .type lb_sync_Semaphore_acquire, @function
lb_sync_Semaphore_acquire:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r15
    leaq lb_sync_12futex_number(%rip), %rax
    movq %rax, -104(%rbp)
    leaq lb_sync_18futex_wait_private(%rip), %rax
    movq %rax, -112(%rbp)
    leaq -56(%rbp), %rbx
    movq $4, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -96(%rbp)
.L8_1:
.L8_2:
    movq %r15, %r10
    movl (%r10), %eax
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jbe .L8_5
.L8_4:
    movl %r14d, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movl %r14d, %eax
    movl %r13d, %ecx
    movq %r15, %r10
    lock cmpxchgl %ecx, (%r10)
    movl %eax, %r13d
    cmpl %r13d, %r14d
    sete %al
    movzbl %al, %r12d
    movq %rbx, %r10
    movb %r12b, (%r10)
    movq -96(%rbp), %r10
    movl %r13d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movzbl %r12b, %r12d
    testl %r12d, %r12d
    jne .L8_7
    jmp .L8_8
.L8_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_8:
.L8_9:
    jmp .L8_6
.L8_5:
    leaq -72(%rbp), %r10
    movq %r15, (%r10)
    movl $0, %eax
    leaq -88(%rbp), %r10
    movl %eax, (%r10)
    movq -104(%rbp), %r10
    movq (%r10), %r12
    movq -112(%rbp), %r10
    movslq (%r10), %r13
    movq %r12, %rdi
    movq %r15, %rsi
    movl %r13d, %edx
    movl $0, %ecx
    movq $0, %r8
    movl $0, %eax
    call syscall@PLT
    movq %rax, %r12
.L8_11:
.L8_6:
    jmp .L8_1

    .p2align 4
    .globl lb_sync_Semaphore_release
    .type lb_sync_Semaphore_release, @function
lb_sync_Semaphore_release:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %r13
    movl $1, %ecx
    movq %r13, %r10
    lock xaddl %ecx, (%r10)
    movl %ecx, %ebx
    leaq -48(%rbp), %r10
    movq %r13, (%r10)
    leaq lb_sync_12futex_number(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_sync_18futex_wake_private(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq %rbx, %rdi
    movq %r13, %rsi
    movl %r12d, %edx
    movl $1, %ecx
    movl $0, %eax
    call syscall@PLT
    movq %rax, %rbx
.L9_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_sync_0init
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
    .asciz "src/std/sync.lucb:69:9"
.Ltext_2:
    .asciz "src/std/sync.lucb:112:17"
.Ltext_3:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_sync_16compare_and_wait
    .type lb_sync_16compare_and_wait, @object
    .p2align 2
lb_sync_16compare_and_wait:
    .zero 4

    .bss
    .globl lb_sync_8wake_all
    .type lb_sync_8wake_all, @object
    .p2align 2
lb_sync_8wake_all:
    .zero 4

    .bss
    .globl lb_sync_12futex_number
    .type lb_sync_12futex_number, @object
    .p2align 3
lb_sync_12futex_number:
    .zero 8

    .bss
    .globl lb_sync_18futex_wait_private
    .type lb_sync_18futex_wait_private, @object
    .p2align 2
lb_sync_18futex_wait_private:
    .zero 4

    .bss
    .globl lb_sync_18futex_wake_private
    .type lb_sync_18futex_wake_private, @object
    .p2align 2
lb_sync_18futex_wake_private:
    .zero 4

    .section .note.GNU-stack,"",@progbits
