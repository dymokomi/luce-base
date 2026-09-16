    .text

    .p2align 4
    .globl lb_net_module_0init
    .type lb_net_module_0init, @function
lb_net_module_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_net_inet(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_inet6(%rip), %rbx
    movl $10, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_stream(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_datagram(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_20socket_close_on_exec(%rip), %rbx
    movl $524288, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_20get_descriptor_flags(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_20set_descriptor_flags(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_24descriptor_close_on_exec(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_12socket_level(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_20reuse_address_option(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_10ipv6_level(%rip), %rbx
    movl $41, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_16ipv6_only_option(%rip), %rbx
    movl $26, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_17no_sigpipe_option(%rip), %rbx
    movl $4130, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_10send_flags(%rip), %rbx
    movl $16384, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_18socket_interrupted(%rip), %rbx
    movl $4, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
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
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $24, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_1:
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
    .asciz "src/std/net/module.lucb:88:5"
.Ltext_2:
    .asciz "src/std/net/module.lucb:102:5"
.Ltext_3:
    .asciz "src/std/net/module.lucb:128:5"
.Ltext_4:
    .asciz "src/std/net/module.lucb:133:5"
.Ltext_5:
    .asciz "src/std/net/module.lucb:138:5"
.Ltext_6:
    .asciz "src/std/net/module.lucb:143:5"
.Ltext_7:
    .asciz "src/std/net/module.lucb:148:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_net_inet
    .type lb_net_inet, @object
    .p2align 2
lb_net_inet:
    .zero 4

    .bss
    .globl lb_net_inet6
    .type lb_net_inet6, @object
    .p2align 2
lb_net_inet6:
    .zero 4

    .bss
    .globl lb_net_stream
    .type lb_net_stream, @object
    .p2align 2
lb_net_stream:
    .zero 4

    .bss
    .globl lb_net_datagram
    .type lb_net_datagram, @object
    .p2align 2
lb_net_datagram:
    .zero 4

    .bss
    .globl lb_net_20socket_close_on_exec
    .type lb_net_20socket_close_on_exec, @object
    .p2align 2
lb_net_20socket_close_on_exec:
    .zero 4

    .bss
    .globl lb_net_20get_descriptor_flags
    .type lb_net_20get_descriptor_flags, @object
    .p2align 2
lb_net_20get_descriptor_flags:
    .zero 4

    .bss
    .globl lb_net_20set_descriptor_flags
    .type lb_net_20set_descriptor_flags, @object
    .p2align 2
lb_net_20set_descriptor_flags:
    .zero 4

    .bss
    .globl lb_net_24descriptor_close_on_exec
    .type lb_net_24descriptor_close_on_exec, @object
    .p2align 2
lb_net_24descriptor_close_on_exec:
    .zero 4

    .bss
    .globl lb_net_12socket_level
    .type lb_net_12socket_level, @object
    .p2align 2
lb_net_12socket_level:
    .zero 4

    .bss
    .globl lb_net_20reuse_address_option
    .type lb_net_20reuse_address_option, @object
    .p2align 2
lb_net_20reuse_address_option:
    .zero 4

    .bss
    .globl lb_net_10ipv6_level
    .type lb_net_10ipv6_level, @object
    .p2align 2
lb_net_10ipv6_level:
    .zero 4

    .bss
    .globl lb_net_16ipv6_only_option
    .type lb_net_16ipv6_only_option, @object
    .p2align 2
lb_net_16ipv6_only_option:
    .zero 4

    .bss
    .globl lb_net_17no_sigpipe_option
    .type lb_net_17no_sigpipe_option, @object
    .p2align 2
lb_net_17no_sigpipe_option:
    .zero 4

    .bss
    .globl lb_net_10send_flags
    .type lb_net_10send_flags, @object
    .p2align 2
lb_net_10send_flags:
    .zero 4

    .bss
    .globl lb_net_18socket_interrupted
    .type lb_net_18socket_interrupted, @object
    .p2align 2
lb_net_18socket_interrupted:
    .zero 4

    .section .note.GNU-stack,"",@progbits
