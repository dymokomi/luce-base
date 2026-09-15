    .text

    .p2align 4
    .globl lb_window_14windows_cursor_0init
    .type lb_window_14windows_cursor_0init, @function
lb_window_14windows_cursor_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_10win_cursor
    .type lb_window_10win_cursor, @function
lb_window_10win_cursor:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movl %esi, -96(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    leaq -97(%rbp), %r12
    movq %r12, %r10
    movb %bl, (%r10)
    leaq -98(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movzbl 0(%r10), %eax
    movb %al, 0(%r11)
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    je .L1_2
.L1_4:
    jmp .L1_3
.L1_2:
    movq $32513, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_3:
    movl $2, %ecx
    cmpl %ecx, %ebx
    je .L1_5
.L1_7:
    jmp .L1_6
.L1_5:
    movq $32649, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_6:
    movl $3, %ecx
    cmpl %ecx, %ebx
    je .L1_8
.L1_10:
    jmp .L1_9
.L1_8:
    movq $32644, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_9:
    movl $4, %ecx
    cmpl %ecx, %ebx
    je .L1_11
.L1_13:
    jmp .L1_12
.L1_11:
    movq $32645, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_12:
    movl $5, %ecx
    cmpl %ecx, %ebx
    je .L1_14
.L1_16:
    jmp .L1_15
.L1_14:
    movq $32646, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_15:
    movl $6, %ecx
    cmpl %ecx, %ebx
    je .L1_17
.L1_19:
    jmp .L1_18
.L1_17:
    movq $32646, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_18:
    movl $7, %ecx
    cmpl %ecx, %ebx
    je .L1_20
.L1_22:
    jmp .L1_21
.L1_20:
    movq $32648, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_21:
    jmp .L1_23
.L1_25:
    jmp .L1_24
.L1_23:
    movq $32512, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_24:
.L1_1:
    movq $0, %rdi
    movq %rbx, %rsi
    call LoadCursorW@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L1_26
    jmp .L1_27
.L1_26:
    jmp .L1_28
.L1_27:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq -120(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $38, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_29:
.L1_28:
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_30:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_14windows_cursor_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "Windows could not load a system cursor"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/window/windows/cursor.lucb:19:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
