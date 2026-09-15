    .text

    .p2align 4
    .globl lb_net_module_0init
    .type lb_net_module_0init, @function
lb_net_module_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq lb_net_inet(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L0_1
    jmp .L0_2
.L0_1:
    movl $23, %eax
    movl %eax, %r12d
    jmp .L0_3
.L0_2:
    leaq lb_platform_macos(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L0_4
    jmp .L0_5
.L0_4:
    movl $30, %eax
    movl %eax, %r12d
    jmp .L0_6
.L0_5:
    movl $10, %eax
    movl %eax, %r12d
.L0_6:
.L0_3:
    leaq lb_net_inet6(%rip), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    leaq lb_net_stream(%rip), %r13
    movl $1, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq lb_net_datagram(%rip), %r13
    movl $2, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq lb_net_20socket_close_on_exec(%rip), %r13
    movl $524288, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq lb_net_20get_descriptor_flags(%rip), %r13
    movl $1, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq lb_net_20set_descriptor_flags(%rip), %r13
    movl $2, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq lb_net_24descriptor_close_on_exec(%rip), %r13
    movl $1, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq lb_platform_macos(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L0_30
    jmp .L0_10
.L0_30:
    movl %r14d, %r12d
    jmp .L0_11
.L0_10:
    movq %rbx, %r10
    movzbl (%r10), %r12d
.L0_11:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L0_7
    jmp .L0_8
.L0_7:
    movl $65535, %eax
    movl %eax, %r12d
    jmp .L0_9
.L0_8:
    movl $1, %eax
    movl %eax, %r12d
.L0_9:
    leaq lb_net_12socket_level(%rip), %r14
    movq %r14, %r10
    movl %r12d, (%r10)
    movq %r13, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L0_31
    jmp .L0_15
.L0_31:
    movl %r14d, %r12d
    jmp .L0_16
.L0_15:
    movq %rbx, %r10
    movzbl (%r10), %r12d
.L0_16:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L0_12
    jmp .L0_13
.L0_12:
    movl $4, %eax
    movl %eax, %r12d
    jmp .L0_14
.L0_13:
    movl $2, %eax
    movl %eax, %r12d
.L0_14:
    leaq lb_net_20reuse_address_option(%rip), %r14
    movq %r14, %r10
    movl %r12d, (%r10)
    leaq lb_net_10ipv6_level(%rip), %r14
    movl $41, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq %r13, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L0_32
    jmp .L0_20
.L0_32:
    movl %r14d, %r12d
    jmp .L0_21
.L0_20:
    movq %rbx, %r10
    movzbl (%r10), %r12d
.L0_21:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L0_17
    jmp .L0_18
.L0_17:
    movl $27, %eax
    movl %eax, %r12d
    jmp .L0_19
.L0_18:
    movl $26, %eax
    movl %eax, %r12d
.L0_19:
    leaq lb_net_16ipv6_only_option(%rip), %r14
    movq %r14, %r10
    movl %r12d, (%r10)
    leaq lb_net_17no_sigpipe_option(%rip), %r14
    movl $4130, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq %r13, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L0_33
    jmp .L0_25
.L0_33:
    movl %r14d, %r12d
    jmp .L0_26
.L0_25:
    movq %rbx, %r10
    movzbl (%r10), %r12d
.L0_26:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L0_22
    jmp .L0_23
.L0_22:
    movl $0, %eax
    movl %eax, %r12d
    jmp .L0_24
.L0_23:
    movl $16384, %eax
    movl %eax, %r12d
.L0_24:
    leaq lb_net_10send_flags(%rip), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L0_27
    jmp .L0_28
.L0_27:
    movl $10004, %eax
    movl %eax, %ebx
    jmp .L0_29
.L0_28:
    leaq lb_c_interrupted(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
.L0_29:
    leaq lb_net_18socket_interrupted(%rip), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_11family_word
    .type lb_net_11family_word, @function
lb_net_11family_word:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movl %edi, -24(%rbp)
    movl %esi, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movslq %ebx, %rbx
    movzwl %bx, %ebx
    movzwl %bx, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_1:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_12info_address
    .type lb_net_12info_address, @function
lb_net_12info_address:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_7
    jmp .L2_4
.L2_7:
    movl %ebx, %r12d
    jmp .L2_5
.L2_4:
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
.L2_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $32, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    jmp .L2_3
.L2_2:
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $24, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
.L2_3:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_6:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_12socket_errno
    .type lb_net_12socket_errno, @function
lb_net_12socket_errno:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    call lb_c_errno@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_1:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_close
    .type lb_net_close, @function
lb_net_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movl %edi, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_1:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_send
    .type lb_net_send, @function
lb_net_send:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movl %edi, -48(%rbp)
    movq %rsi, -64(%rbp)
    movq %rdx, -80(%rbp)
    movl %ecx, -96(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -64(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movl %ebx, %edi
    movq %r12, %rsi
    movq %r13, %rdx
    movl %r14d, %ecx
    call send@PLT
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_1:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_recv
    .type lb_net_recv, @function
lb_net_recv:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movl %edi, -48(%rbp)
    movq %rsi, -64(%rbp)
    movq %rdx, -80(%rbp)
    movl %ecx, -96(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -64(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movl %ebx, %edi
    movq %r12, %rsi
    movq %r13, %rdx
    movl %r14d, %ecx
    call recv@PLT
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_1:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_sendto
    .type lb_net_sendto, @function
lb_net_sendto:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movl %edi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movq %rdx, -88(%rbp)
    movl %ecx, -104(%rbp)
    movq %r8, -120(%rbp)
    movl %r9d, -136(%rbp)
    leaq -56(%rbp), %rax
    movq %rax, -144(%rbp)
    movq -144(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -152(%rbp)
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    leaq -120(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl -152(%rbp), %edi
    movq %r12, %rsi
    movq %r13, %rdx
    movl %r14d, %ecx
    movq %r15, %r8
    movl %ebx, %r9d
    call sendto@PLT
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_1:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_module_0init
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
    .asciz "src/std/net/module.lucb:89:5"
.Ltext_2:
    .asciz "src/std/net/module.lucb:103:5"
.Ltext_3:
    .asciz "src/std/net/module.lucb:129:5"
.Ltext_4:
    .asciz "src/std/net/module.lucb:134:5"
.Ltext_5:
    .asciz "src/std/net/module.lucb:139:5"
.Ltext_6:
    .asciz "src/std/net/module.lucb:144:5"
.Ltext_7:
    .asciz "src/std/net/module.lucb:149:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_net_inet
    .type lb_net_inet, @object
    .weak lb_net_inet
    .p2align 2
lb_net_inet:
    .zero 4

    .bss
    .globl lb_net_inet6
    .type lb_net_inet6, @object
    .weak lb_net_inet6
    .p2align 2
lb_net_inet6:
    .zero 4

    .bss
    .globl lb_net_stream
    .type lb_net_stream, @object
    .weak lb_net_stream
    .p2align 2
lb_net_stream:
    .zero 4

    .bss
    .globl lb_net_datagram
    .type lb_net_datagram, @object
    .weak lb_net_datagram
    .p2align 2
lb_net_datagram:
    .zero 4

    .bss
    .globl lb_net_20socket_close_on_exec
    .type lb_net_20socket_close_on_exec, @object
    .weak lb_net_20socket_close_on_exec
    .p2align 2
lb_net_20socket_close_on_exec:
    .zero 4

    .bss
    .globl lb_net_20get_descriptor_flags
    .type lb_net_20get_descriptor_flags, @object
    .weak lb_net_20get_descriptor_flags
    .p2align 2
lb_net_20get_descriptor_flags:
    .zero 4

    .bss
    .globl lb_net_20set_descriptor_flags
    .type lb_net_20set_descriptor_flags, @object
    .weak lb_net_20set_descriptor_flags
    .p2align 2
lb_net_20set_descriptor_flags:
    .zero 4

    .bss
    .globl lb_net_24descriptor_close_on_exec
    .type lb_net_24descriptor_close_on_exec, @object
    .weak lb_net_24descriptor_close_on_exec
    .p2align 2
lb_net_24descriptor_close_on_exec:
    .zero 4

    .bss
    .globl lb_net_12socket_level
    .type lb_net_12socket_level, @object
    .weak lb_net_12socket_level
    .p2align 2
lb_net_12socket_level:
    .zero 4

    .bss
    .globl lb_net_20reuse_address_option
    .type lb_net_20reuse_address_option, @object
    .weak lb_net_20reuse_address_option
    .p2align 2
lb_net_20reuse_address_option:
    .zero 4

    .bss
    .globl lb_net_10ipv6_level
    .type lb_net_10ipv6_level, @object
    .weak lb_net_10ipv6_level
    .p2align 2
lb_net_10ipv6_level:
    .zero 4

    .bss
    .globl lb_net_16ipv6_only_option
    .type lb_net_16ipv6_only_option, @object
    .weak lb_net_16ipv6_only_option
    .p2align 2
lb_net_16ipv6_only_option:
    .zero 4

    .bss
    .globl lb_net_17no_sigpipe_option
    .type lb_net_17no_sigpipe_option, @object
    .weak lb_net_17no_sigpipe_option
    .p2align 2
lb_net_17no_sigpipe_option:
    .zero 4

    .bss
    .globl lb_net_10send_flags
    .type lb_net_10send_flags, @object
    .weak lb_net_10send_flags
    .p2align 2
lb_net_10send_flags:
    .zero 4

    .bss
    .globl lb_net_18socket_interrupted
    .type lb_net_18socket_interrupted, @object
    .weak lb_net_18socket_interrupted
    .p2align 2
lb_net_18socket_interrupted:
    .zero 4

    .section .note.GNU-stack,"",@progbits
