    .text

    .p2align 4
    .globl lb_interop_connection_0init
    .type lb_interop_connection_0init, @function
lb_interop_connection_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq -64(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq .Ltext_0(%rip), %r12
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $10, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq lb_interop_Connection_destroy@GOTPCREL(%rip), %r12
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq lb_interop_Connection_trace@GOTPCREL(%rip), %r12
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $33, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq lb_interop_15connection_type(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Connection_init
    .type lb_interop_Connection_init, @function
lb_interop_Connection_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    movq %rdx, -72(%rbp)
    movq %rcx, -88(%rbp)
    movq %r8, -104(%rbp)
    leaq -40(%rbp), %r10
    movq (%r10), %r14
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq %rbx, %rdi
    call lb_ownership_retain@PLT
    movq %rax, %rbx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Connection_disconnect
    .type lb_interop_Connection_disconnect, @function
lb_interop_Connection_disconnect:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_1
    jmp .L2_2
.L2_1:
    jmp .L2_3
.L2_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_4:
.L2_3:
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movq %r13, %r11
    call *%r11
    movq %r12, %rdi
    call lb_ownership_release@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Connection_12is_connected
    .type lb_interop_Connection_12is_connected, @function
lb_interop_Connection_12is_connected:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L3_1
    jmp .L3_2
.L3_1:
    jmp .L3_3
.L3_2:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_4:
.L3_3:
    movq %r12, %rdi
    call lb_ownership_11check_alive@PLT
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movq %r13, %r11
    call *%r11
    movl %eax, %r13d
    movzbl %r13b, %r13d
    movl %r13d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_5:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_interop_Connection_destroy
    .type lb_interop_Connection_destroy, @function
lb_interop_Connection_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_interop_Connection_disconnect@PLT
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Connection_trace
    .type lb_interop_Connection_trace, @function
lb_interop_Connection_trace:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -32(%rbp)
    movq %rsi, -48(%rbp)
    movq %rdx, -64(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L5_4
    jmp .L5_2
.L5_4:
.L5_1:
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    leaq -48(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq %r13, %rsi
    movq %r12, %r11
    call *%r11
    jmp .L5_3
.L5_2:
.L5_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_interop_connection_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "Connection"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/interop/connection.lucb:27:9"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_interop_15connection_type
    .type lb_interop_15connection_type, @object
    .p2align 3
lb_interop_15connection_type:
    .zero 40

    .section .note.GNU-stack,"",@progbits
