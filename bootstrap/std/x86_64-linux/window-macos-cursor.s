    .text

    .p2align 4
    .globl lb_window_12macos_cursor_0init
    .type lb_window_12macos_cursor_0init, @function
lb_window_12macos_cursor_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_10mac_cursor
    .type lb_window_10mac_cursor, @function
lb_window_10mac_cursor:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movl %esi, -96(%rbp)
    leaq .Ltext_0(%rip), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -97(%rbp), %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    leaq -98(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movzbl 0(%r10), %eax
    movb %al, 0(%r11)
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $1, %ecx
    cmpl %ecx, %r12d
    je .L1_2
.L1_4:
    jmp .L1_3
.L1_2:
    leaq .Ltext_1(%rip), %rbx
    jmp .L1_1
.L1_3:
    movl $2, %ecx
    cmpl %ecx, %r12d
    je .L1_5
.L1_7:
    jmp .L1_6
.L1_5:
    leaq .Ltext_2(%rip), %rbx
    jmp .L1_1
.L1_6:
    movl $3, %ecx
    cmpl %ecx, %r12d
    je .L1_8
.L1_10:
    jmp .L1_9
.L1_8:
    leaq .Ltext_3(%rip), %rbx
    jmp .L1_1
.L1_9:
    movl $4, %ecx
    cmpl %ecx, %r12d
    je .L1_11
.L1_13:
    jmp .L1_12
.L1_11:
    leaq .Ltext_4(%rip), %rbx
    jmp .L1_1
.L1_12:
    movl $5, %ecx
    cmpl %ecx, %r12d
    je .L1_14
.L1_16:
    jmp .L1_15
.L1_14:
    leaq .Ltext_5(%rip), %rbx
    jmp .L1_1
.L1_15:
    movl $6, %ecx
    cmpl %ecx, %r12d
    je .L1_17
.L1_19:
    jmp .L1_18
.L1_17:
    leaq .Ltext_6(%rip), %rbx
    jmp .L1_1
.L1_18:
    movl $7, %ecx
    cmpl %ecx, %r12d
    je .L1_20
.L1_22:
    jmp .L1_21
.L1_20:
    leaq .Ltext_7(%rip), %rbx
    jmp .L1_1
.L1_21:
    jmp .L1_23
.L1_25:
    jmp .L1_24
.L1_23:
    jmp .L1_1
.L1_24:
.L1_1:
    leaq .Ltext_8(%rip), %r12
    movq %r12, %rsi
    leaq -144(%rbp), %rdi
    call lb_window_12native_class@PLT
    leaq -144(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_27
    jmp .L1_26
.L1_27:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
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
.L1_28:
.L1_26:
    movq %r13, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    call lb_window_sel@PLT
    movq %rax, %r14
    movq %r12, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L1_29
    jmp .L1_30
.L1_29:
    jmp .L1_31
.L1_30:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_9(%rip), %r13
    leaq -160(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $37, %rax
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
.L1_32:
.L1_31:
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
.L1_33:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_15cursor_callback
    .type lb_window_15cursor_callback, @function
lb_window_15cursor_callback:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    movq %rsi, -48(%rbp)
    movq %rdx, -64(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L2_1
    jmp .L2_2
.L2_1:
    jmp .L2_3
.L2_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_4:
.L2_3:
    movq $14392, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_5
    jmp .L2_6
.L2_5:
    jmp .L2_7
.L2_6:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_8:
.L2_7:
    leaq .Ltext_15(%rip), %rbx
    movq %rbx, %rdi
    call lb_window_sel@PLT
    movq %rax, %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_12macos_cursor_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "arrowCursor"
.Ltext_1:
    .asciz "IBeamCursor"
.Ltext_2:
    .asciz "pointingHandCursor"
.Ltext_3:
    .asciz "resizeLeftRightCursor"
.Ltext_4:
    .asciz "resizeUpDownCursor"
.Ltext_5:
    .asciz "openHandCursor"
.Ltext_6:
    .asciz "closedHandCursor"
.Ltext_7:
    .asciz "operationNotAllowedCursor"
.Ltext_8:
    .asciz "NSCursor"
.Ltext_9:
    .asciz "AppKit could not load a system cursor"
.Ltext_10:
    .asciz "unreachable"
.Ltext_11:
    .asciz "src/std/window/macos/cursor.lucb:14:5"
.Ltext_12:
    .asciz "null_foreign"
.Ltext_13:
    .asciz "src/std/window/macos/cursor.lucb:18:5"
.Ltext_14:
    .asciz "isKeyWindow"
.Ltext_15:
    .asciz "set"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
