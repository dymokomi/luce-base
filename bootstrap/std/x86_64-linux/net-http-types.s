    .text

    .p2align 4
    .globl lb_net_10http_types_0init
    .type lb_net_10http_types_0init, @function
lb_net_10http_types_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_net_12http_invalid(%rip), %rbx
    movl $208273488, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_10http_limit(%rip), %rbx
    movl $208273489, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_16http_unsupported(%rip), %rbx
    movl $208273490, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_HttpHead_field
    .type lb_net_HttpHead_field, @function
lb_net_HttpHead_field:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -80(%rbp)
    leaq -96(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -80(%rbp), %r10
    movq (%r10), %rbx
    movq $56, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -128(%rbp), %r13
    leaq -96(%rbp), %rax
    movq %rax, -184(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L1_1:
    cmpq %rbx, %r15
    jae .L1_4
.L1_2:
    movq $32, %rcx
    movq %r15, %r14
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -184(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_net_10http_equal@PLT
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L1_5
    jmp .L1_6
.L1_5:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -152(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -72(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
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
.L1_8:
    jmp .L1_7
.L1_6:
.L1_7:
.L1_3:
    movq $1, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r15
    jmp .L1_1
.L1_4:
    leaq -176(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -72(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
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
.L1_9:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_HttpHead_11field_count
    .type lb_net_HttpHead_11field_count, @function
lb_net_HttpHead_11field_count:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -64(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -48(%rbp), %r10
    movq (%r10), %rbx
    movq $56, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -104(%rbp)
    leaq -96(%rbp), %r13
    leaq -64(%rbp), %rax
    movq %rax, -112(%rbp)
    movq $0, %rax
    movq %rax, -120(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L2_1:
    movq -104(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L2_4
.L2_2:
    movq $32, %rcx
    movq %r15, %r14
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -112(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_net_10http_equal@PLT
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L2_5
    jmp .L2_6
.L2_5:
    movq -120(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    jmp .L2_7
.L2_6:
    movq -120(%rbp), %rax
    movq %rax, %r14
.L2_7:
.L2_3:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r14, %rax
    movq %rax, -120(%rbp)
    movq %rbx, %r15
    jmp .L2_1
.L2_4:
    movq -120(%rbp), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_8:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_HttpHead_9has_token
    .type lb_net_HttpHead_9has_token, @function
lb_net_HttpHead_9has_token:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    leaq -112(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -128(%rbp), %r10
    movq %r8, 0(%r10)
    movq %r9, 8(%r10)
    leaq -96(%rbp), %r10
    movq (%r10), %rbx
    movq $56, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -232(%rbp)
    leaq -160(%rbp), %r13
    leaq -112(%rbp), %rax
    movq %rax, -240(%rbp)
    leaq -168(%rbp), %rax
    movq %rax, -248(%rbp)
    movq $16, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -256(%rbp)
    leaq -192(%rbp), %rax
    movq %rax, -304(%rbp)
    movq -304(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -264(%rbp)
    leaq -208(%rbp), %rax
    movq %rax, -272(%rbp)
    movq -272(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -280(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -288(%rbp)
    movl $0, %eax
    movl %eax, -296(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L3_1:
    movq -232(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L3_4
.L3_2:
    movq $32, %rcx
    movq %r15, %r14
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -240(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_net_10http_equal@PLT
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L3_5
    jmp .L3_6
.L3_5:
    movq $0, %rax
    movq -248(%rbp), %r10
    movq %rax, (%r10)
    movl -296(%rbp), %eax
    movl %eax, %r14d
.L3_8:
    movq -256(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -248(%rbp), %rcx
    leaq -192(%rbp), %rdi
    call lb_net_14http_list_next@PLT
    movq -264(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_11
    jmp .L3_10
.L3_11:
    movq -304(%rbp), %r10
    movq -272(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L3_9:
    movq -280(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L3_13
.L3_12:
    jmp .L3_8
.L3_15:
    jmp .L3_14
.L3_13:
.L3_14:
    movq -272(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_10http_token@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_17
.L3_16:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
    leaq -224(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $23, %rax
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_19:
    jmp .L3_18
.L3_17:
.L3_18:
    movq -272(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -288(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_net_10http_equal@PLT
    movl %eax, %ebx
    testl %ebx, %ebx
    jne .L3_20
    jmp .L3_21
.L3_20:
    movl $1, %eax
    movl %eax, %r14d
    jmp .L3_22
.L3_21:
.L3_22:
    jmp .L3_8
.L3_10:
    movl %r14d, %ebx
    jmp .L3_7
.L3_6:
    movl -296(%rbp), %eax
    movl %eax, %ebx
.L3_7:
.L3_3:
    movq $1, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movl %ebx, %eax
    movl %eax, -296(%rbp)
    movq %r14, %r15
    jmp .L3_1
.L3_4:
    movl -296(%rbp), %eax
    movzbl %al, %ebx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movb %bl, (%r10)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_23:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_10http_types_0init
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
    .asciz "src/std/net/http/types.lucb:47:9"
.Ltext_2:
    .asciz "src/std/net/http/types.lucb:53:17"
.Ltext_3:
    .asciz "src/std/net/http/types.lucb:54:9"
.Ltext_4:
    .asciz "invalid HTTP token list"
.Ltext_5:
    .asciz "src/std/net/http/types.lucb:69:9"
.Ltext_6:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_net_12http_invalid
    .type lb_net_12http_invalid, @object
    .weak lb_net_12http_invalid
    .p2align 2
lb_net_12http_invalid:
    .zero 4

    .bss
    .globl lb_net_10http_limit
    .type lb_net_10http_limit, @object
    .weak lb_net_10http_limit
    .p2align 2
lb_net_10http_limit:
    .zero 4

    .bss
    .globl lb_net_16http_unsupported
    .type lb_net_16http_unsupported, @object
    .weak lb_net_16http_unsupported
    .p2align 2
lb_net_16http_unsupported:
    .zero 4

    .section .note.GNU-stack,"",@progbits
