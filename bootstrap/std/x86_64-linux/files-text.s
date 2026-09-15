    .text

    .p2align 4
    .globl lb_files_text_0init
    .type lb_files_text_0init, @function
lb_files_text_0init:
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
    movq $17, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq lb_files_Entries_close@GOTPCREL(%rip), %r12
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $33, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq lb_files_12entries_type(%rip), %r12
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
    .globl lb_files_9text_path
    .type lb_files_9text_path, @function
lb_files_9text_path:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -112(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_19
    jmp .L1_4
.L1_19:
    movl %r13d, %r14d
    jmp .L1_5
.L1_4:
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L1_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_1
    jmp .L1_2
.L1_1:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_1(%rip), %r13
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $29, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $48, %rdx
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
.L1_6:
    jmp .L1_3
.L1_2:
.L1_3:
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r14
    movq $0, %rax
    movq %rax, %r15
.L1_7:
    cmpq %r14, %r15
    jae .L1_10
.L1_8:
    movq %r13, %r12
    addq %r15, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movzbl %r12b, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_12
.L1_11:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $25, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $48, %rdx
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
.L1_14:
    jmp .L1_13
.L1_12:
.L1_13:
.L1_9:
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r15
    jmp .L1_7
.L1_10:
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -192(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -192(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_16
    jmp .L1_15
.L1_16:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $48, %rdx
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
.L1_17:
.L1_15:
    leaq -96(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $48, %rdx
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
.L1_18:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_9read_text
    .type lb_files_9read_text, @function
lb_files_9read_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $496, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -120(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -136(%rbp)
    leaq -152(%rbp), %rax
    movq %rax, -496(%rbp)
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -200(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -200(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L2_3:
.L2_1:
    movq %r13, %r10
    movq -496(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -216(%rbp), %r15
    movq -496(%rbp), %r10
    movq (%r10), %rbx
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rsi
    movq %r14, %rdx
    leaq -264(%rbp), %rdi
    call lb_files_10read_limit@PLT
    leaq -264(%rbp), %r14
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_5
    jmp .L2_4
.L2_5:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -496(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L2_6:
.L2_4:
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r15, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_8
.L2_7:
    leaq -104(%rbp), %rax
    movq %rax, -424(%rbp)
    movq -424(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq lb_files_15invalid_options(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_5(%rip), %r14
    leaq -280(%rbp), %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $27, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -424(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -296(%rbp), %r13
    movq %r15, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_11
    jmp .L2_10
.L2_11:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L2_10:
    movq -496(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -424(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
    jmp .L2_9
.L2_8:
.L2_9:
    movq %r15, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -432(%rbp)
    movq -432(%rbp), %r10
    movq (%r10), %r13
    leaq -312(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -368(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -368(%rbp), %r13
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_14
    jmp .L2_13
.L2_14:
    movq $24, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -440(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -448(%rbp)
    movq -448(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -440(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -448(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -456(%rbp)
    movl $1, %eax
    movq -456(%rbp), %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -464(%rbp)
    leaq -384(%rbp), %r12
    movq %r15, %r10
    movq (%r10), %r14
    movq -432(%rbp), %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq -464(%rbp), %r10
    movq (%r10), %rbx
    movq -464(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_16
    jmp .L2_15
.L2_16:
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L2_15:
    movq -496(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -448(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L2_17:
.L2_13:
    leaq -104(%rbp), %rax
    movq %rax, -472(%rbp)
    movq %r13, %r10
    movq -472(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -472(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -480(%rbp)
    movl $0, %eax
    movq -480(%rbp), %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -488(%rbp)
    leaq -400(%rbp), %r14
    movq %r15, %r10
    movq (%r10), %rbx
    movq -432(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -488(%rbp), %r10
    movq (%r10), %rbx
    movq -488(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_19
    jmp .L2_18
.L2_19:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L2_18:
    movq -496(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -472(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L2_20:
    leaq -216(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -416(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_21(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L2_22
    jmp .L2_21
.L2_22:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L2_21:
    leaq -152(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_10write_text
    .type lb_files_10write_text, @function
lb_files_10write_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $992, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -112(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -112(%rbp), %rax
    movq %rax, -968(%rbp)
    movq -968(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_2
.L3_1:
    leaq -80(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_8(%rip), %r12
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $29, %rax
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
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    leaq -144(%rbp), %rax
    movq %rax, -976(%rbp)
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -192(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -192(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_6
    jmp .L3_5
.L3_6:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_7:
.L3_5:
    movq %r14, %r10
    movq -976(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -208(%rbp), %rax
    movq %rax, -984(%rbp)
    movq -976(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -296(%rbp), %rdi
    call lb_files_canonical@PLT
    leaq -296(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_11
    jmp .L3_10
.L3_11:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq -248(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_8
.L3_10:
    leaq -224(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_9
.L3_8:
    movq %r14, %r10
    movl (%r10), %ebx
    leaq lb_files_missing(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_13
.L3_12:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -976(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L3_15:
    jmp .L3_14
.L3_13:
.L3_14:
    movq -976(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -344(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -344(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_17
    jmp .L3_16
.L3_17:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -976(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L3_18:
.L3_16:
    leaq -224(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_9
.L3_19:
.L3_9:
    leaq -224(%rbp), %rbx
    movq %rbx, %r10
    movq -984(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -472(%rbp), %r12
    movq -984(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $1, %edx
    leaq -784(%rbp), %rdi
    call lb_files_metadata@PLT
    leaq -784(%rbp), %r13
    movq $152, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_23
    jmp .L3_22
.L3_23:
    movq $128, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -624(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_20
.L3_22:
    leaq -600(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    jmp .L3_21
.L3_20:
    movq %r14, %r10
    movl (%r10), %ebx
    leaq lb_files_missing(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L3_25
.L3_24:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -984(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -976(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L3_27:
    jmp .L3_26
.L3_25:
.L3_26:
    leaq -912(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movups %xmm8, 96(%r11)
    movups %xmm8, 112(%r11)
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $4, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $420, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq -600(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    jmp .L3_21
.L3_28:
.L3_21:
    leaq -600(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    movq %r12, %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_30
.L3_29:
    leaq -80(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_9(%rip), %r12
    leaq -928(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $36, %rax
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
    movq -984(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -976(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L3_32:
    jmp .L3_31
.L3_30:
.L3_31:
    movq -984(%rbp), %r10
    movq (%r10), %rbx
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    subq $16, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rsi
    movq -968(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movl %r13d, %r8d
    movl $0, %r9d
    leaq -960(%rbp), %rdi
    call lb_files_12write_atomic@PLT
    addq $16, %rsp
    leaq -960(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_34
    jmp .L3_33
.L3_34:
    leaq -80(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -984(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -976(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L3_35:
.L3_33:
    movq -984(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -976(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
    .globl lb_files_13absolute_path
    .type lb_files_13absolute_path, @function
lb_files_13absolute_path:
    pushq %rbp
    movq %rsp, %rbp
    subq $320, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -120(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -136(%rbp), %rax
    movq %rax, -312(%rbp)
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -184(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -184(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_2
    jmp .L4_1
.L4_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L4_3:
.L4_1:
    movq %r13, %r10
    movq -312(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -200(%rbp), %r14
    movq -312(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -248(%rbp), %rdi
    call lb_files_canonical@PLT
    leaq -248(%rbp), %r15
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_5
    jmp .L4_4
.L4_5:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -312(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L4_6:
.L4_4:
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -304(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -304(%rbp), %r13
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_8
    jmp .L4_7
.L4_8:
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -312(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r15, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L4_9:
.L4_7:
    leaq -104(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq -312(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L4_10:
    leaq -200(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_9path_kind
    .type lb_files_9path_kind, @function
lb_files_9path_kind:
    pushq %rbp
    movq %rsp, %rbp
    subq $352, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movl %ecx, -120(%rbp)
    leaq -136(%rbp), %r12
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -184(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -184(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_2
    jmp .L5_1
.L5_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r12
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_3:
.L5_1:
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rbx
    leaq -120(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq %rbx, %rsi
    movl %r14d, %edx
    leaq -344(%rbp), %rdi
    call lb_files_metadata@PLT
    leaq -344(%rbp), %r14
    movq $152, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_5
    jmp .L5_4
.L5_5:
    movq $128, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %rsi
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
.L5_6:
.L5_4:
    movq %r14, %r10
    movzbl (%r10), %ebx
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movb %bl, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %rsi
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
.L5_7:
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_Entries_init
    .type lb_files_Entries_init, @function
lb_files_Entries_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $368, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -360(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -368(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -168(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -168(%rbp), %r14
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_2
    jmp .L6_1
.L6_2:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_3:
.L6_1:
    movq %r14, %r10
    movq -368(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -368(%rbp), %r10
    movq (%r10), %rbx
    leaq -280(%rbp), %r10
    movq %rbx, (%r10)
    leaq -296(%rbp), %rax
    movq %rax, -352(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq -352(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r15
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    leaq -344(%rbp), %rdi
    call lb_files_list@PLT
    leaq -344(%rbp), %r15
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_8
    jmp .L6_7
.L6_8:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -264(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -352(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    leaq -216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    jmp .L6_11
.L6_9:
.L6_7:
    leaq -264(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -352(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    leaq -216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    jmp .L6_11
.L6_10:
    leaq -296(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_11:
    leaq -216(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_5
    jmp .L6_4
.L6_5:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -368(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L6_6:
.L6_4:
    movq %r12, %r10
    movq -360(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -368(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
    .globl lb_files_Entries_count
    .type lb_files_Entries_count, @function
lb_files_Entries_count:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_1:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_Entries_name
    .type lb_files_Entries_name, @function
lb_files_Entries_name:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    movq %rdx, -128(%rbp)
    leaq -112(%rbp), %r10
    movq (%r10), %r13
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    setl %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L8_15
    jmp .L8_4
.L8_15:
    movl %r12d, %r14d
    jmp .L8_5
.L8_4:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    setae %al
    movzbl %al, %r14d
.L8_5:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L8_1
    jmp .L8_2
.L8_1:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_13(%rip), %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $49, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L8_6:
    jmp .L8_3
.L8_2:
.L8_3:
    leaq -160(%rbp), %r12
    movq %r13, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    cmpq %r15, %rbx
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $16, %rcx
    movq %rbx, %r15
    imulq %rcx, %r15
    addq %r15, %r14
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L8_8
.L8_7:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_15(%rip), %r13
    leaq -176(%rbp), %r14
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
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L8_10:
    jmp .L8_9
.L8_8:
.L8_9:
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -232(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -232(%rbp), %r13
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_12
    jmp .L8_11
.L8_12:
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L8_13:
.L8_11:
    leaq -104(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L8_14:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_Entries_close
    .type lb_files_Entries_close, @function
lb_files_Entries_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %r10
    movq (%r10), %r14
    leaq -56(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r13
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_files_12release_list@PLT
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -72(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_16ensure_directory
    .type lb_files_16ensure_directory, @function
lb_files_16ensure_directory:
    pushq %rbp
    movq %rsp, %rbp
    subq $400, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -112(%rbp), %rax
    movq %rax, -400(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -160(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -160(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_2
    jmp .L10_1
.L10_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_3:
.L10_1:
    movq %r13, %r10
    movq -400(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -400(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $493, %edx
    leaq -216(%rbp), %rdi
    call lb_files_16create_directory@PLT
    leaq -216(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_7
    jmp .L10_6
.L10_7:
    leaq -184(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L10_4
.L10_6:
    jmp .L10_5
.L10_4:
    movq %rbx, %r10
    movl (%r10), %r13d
    leaq lb_files_14already_exists(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L10_9
.L10_8:
    leaq -80(%rbp), %r14
    movq %r14, %r10
    movl %r13d, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L10_11:
    jmp .L10_10
.L10_9:
.L10_10:
    movq -400(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $1, %edx
    leaq -376(%rbp), %rdi
    call lb_files_metadata@PLT
    leaq -376(%rbp), %r12
    movq $152, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_16
    jmp .L10_15
.L10_16:
    movq $128, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L10_17:
.L10_15:
    movq %r12, %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L10_13
.L10_12:
    leaq -80(%rbp), %rbx
    leaq lb_files_13not_directory(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_18(%rip), %r12
    leaq -392(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $36, %rax
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
    movq -400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L10_18:
    jmp .L10_14
.L10_13:
.L10_14:
.L10_5:
    movq -400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
    .globl lb_files_14home_directory
    .type lb_files_14home_directory, @function
lb_files_14home_directory:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -112(%rbp), %r12
    leaq -160(%rbp), %rdi
    call lb_io_path_user@PLT
    leaq -160(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_2
    jmp .L11_1
.L11_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_3:
.L11_1:
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L11_5
.L11_4:
    leaq -96(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_19(%rip), %r13
    leaq -176(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $32, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_7:
    jmp .L11_6
.L11_5:
.L11_6:
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -232(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -232(%rbp), %r13
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_9
    jmp .L11_8
.L11_9:
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_10:
.L11_8:
    leaq -96(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_11:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_11create_text
    .type lb_files_11create_text, @function
lb_files_11create_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -112(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -112(%rbp), %rax
    movq %rax, -424(%rbp)
    movq -424(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L12_2
.L12_1:
    leaq -80(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_8(%rip), %r12
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $29, %rax
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
.L12_4:
    jmp .L12_3
.L12_2:
.L12_3:
    leaq -144(%rbp), %rax
    movq %rax, -432(%rbp)
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -192(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -192(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L12_6
    jmp .L12_5
.L12_6:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_7:
.L12_5:
    movq %r14, %r10
    movq -432(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -248(%rbp), %r15
    movq -432(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rsi
    movl $420, %edx
    movl $0, %ecx
    leaq -336(%rbp), %rdi
    call lb_files_Replacement_prepare@PLT
    leaq -336(%rbp), %rbx
    movq $80, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L12_9
    jmp .L12_8
.L12_9:
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq -80(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -432(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L12_10:
.L12_8:
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -352(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq lb_vt_files_TemporaryFile_Writer(%rip), %r12
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -424(%rbp), %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -384(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -384(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L12_12
    jmp .L12_11
.L12_12:
    leaq -80(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r15, %rdi
    call lb_files_Replacement_destroy@PLT
    movq -432(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L12_13:
.L12_11:
    movq -432(%rbp), %r10
    movq (%r10), %rbx
    movq %r15, %rsi
    movq %rbx, %rdx
    movl $0, %ecx
    movq $0, %r8
    leaq -416(%rbp), %rdi
    call lb_files_Replacement_finish@PLT
    leaq -416(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_15
    jmp .L12_14
.L12_15:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r15, %rdi
    call lb_files_Replacement_destroy@PLT
    movq -432(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L12_16:
.L12_14:
    movq %r15, %rdi
    call lb_files_Replacement_destroy@PLT
    movq -432(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
    .globl lb_files_9copy_path
    .type lb_files_9copy_path, @function
lb_files_9copy_path:
    pushq %rbp
    movq %rsp, %rbp
    subq $288, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -112(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -128(%rbp), %r12
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -176(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -176(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_2
    jmp .L13_1
.L13_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_3:
.L13_1:
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -192(%rbp), %r14
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -240(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -240(%rbp), %r15
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_5
    jmp .L13_4
.L13_5:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L13_6:
.L13_4:
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq (%r10), %r13
    subq $16, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rsi
    movq %r13, %rdx
    movq $-1, %rcx
    movl $0, %r8d
    movl $420, %r9d
    leaq -280(%rbp), %rdi
    call lb_files_9copy_file@PLT
    addq $16, %rsp
    leaq -280(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_8
    jmp .L13_7
.L13_8:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r15, %rsi
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
.L13_9:
.L13_7:
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
    .globl lb_files_9move_path
    .type lb_files_9move_path, @function
lb_files_9move_path:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -112(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -128(%rbp), %r12
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -176(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -176(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L14_2
    jmp .L14_1
.L14_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_3:
.L14_1:
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -192(%rbp), %r14
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -240(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -240(%rbp), %r15
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L14_5
    jmp .L14_4
.L14_5:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L14_6:
.L14_4:
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r13, %rdx
    movl $0, %ecx
    leaq -272(%rbp), %rdi
    call lb_files_rename@PLT
    leaq -272(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L14_8
    jmp .L14_7
.L14_8:
    leaq -80(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L14_9:
.L14_7:
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
    .globl lb_files_14make_directory
    .type lb_files_14make_directory, @function
lb_files_14make_directory:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -88(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %r12
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -152(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -152(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L15_2
    jmp .L15_1
.L15_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -72(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
.L15_3:
.L15_1:
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $493, %edx
    leaq -184(%rbp), %rdi
    call lb_files_16create_directory@PLT
    leaq -184(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L15_5
    jmp .L15_4
.L15_5:
    leaq -72(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L15_6:
.L15_4:
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq -72(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
    .globl lb_files_11delete_path
    .type lb_files_11delete_path, @function
lb_files_11delete_path:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -88(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movl %ecx, -104(%rbp)
    leaq -120(%rbp), %r12
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -168(%rbp), %rdi
    call lb_files_9text_path@PLT
    leaq -168(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L16_2
    jmp .L16_1
.L16_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -72(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
.L16_3:
.L16_1:
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L16_4
    jmp .L16_5
.L16_4:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -200(%rbp), %rdi
    call lb_files_11remove_tree@PLT
    leaq -200(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L16_8
    jmp .L16_7
.L16_8:
    leaq -72(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L16_9:
.L16_7:
    jmp .L16_6
.L16_5:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    movl $0, %edx
    leaq -360(%rbp), %rdi
    call lb_files_metadata@PLT
    leaq -360(%rbp), %r13
    movq $152, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L16_14
    jmp .L16_13
.L16_14:
    movq $128, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -72(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r14, %rsi
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
.L16_15:
.L16_13:
    movq %r13, %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L16_11
.L16_10:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -392(%rbp), %rdi
    call lb_files_16remove_directory@PLT
    leaq -392(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L16_17
    jmp .L16_16
.L16_17:
    leaq -72(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L16_18:
.L16_16:
    jmp .L16_12
.L16_11:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -424(%rbp), %rdi
    call lb_files_11remove_file@PLT
    leaq -424(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L16_20
    jmp .L16_19
.L16_20:
    leaq -72(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
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
.L16_21:
.L16_19:
.L16_12:
.L16_6:
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq -72(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_text_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "Directory entries"
.Ltext_1:
    .asciz "a path must be nonempty UTF-8"
.Ltext_2:
    .asciz "a path cannot contain NUL"
.Ltext_3:
    .asciz "unreachable"
.Ltext_4:
    .asciz "src/std/files/text.lucb:12:5"
.Ltext_5:
    .asciz "the file is not valid UTF-8"
.Ltext_6:
    .asciz "src/std/files/text.lucb:21:9"
.Ltext_7:
    .asciz "src/std/files/text.lucb:22:5"
.Ltext_8:
    .asciz "file text must be valid UTF-8"
.Ltext_9:
    .asciz "text can only replace a regular file"
.Ltext_10:
    .asciz "src/std/files/text.lucb:49:5"
.Ltext_11:
    .asciz "src/std/files/text.lucb:54:5"
.Ltext_12:
    .asciz "src/std/files/text.lucb:67:9"
.Ltext_13:
    .asciz "the directory entry index is outside the snapshot"
.Ltext_14:
    .asciz "src/std/files/text.lucb:72:9"
.Ltext_15:
    .asciz "the directory entry is not valid UTF-8"
.Ltext_16:
    .asciz "src/std/files/text.lucb:75:9"
.Ltext_17:
    .asciz "src/std/files/text.lucb:87:9"
.Ltext_18:
    .asciz "the existing path is not a directory"
.Ltext_19:
    .asciz "the user home directory is empty"
.Ltext_20:
    .asciz "src/std/files/text.lucb:105:5"
.Ltext_21:
    .asciz "integer overflow"
.Ltext_22:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3
    .weak lb_vt_files_TemporaryFile_Writer
lb_vt_files_TemporaryFile_Writer:
    .quad lb_files_TemporaryFile_write

    .bss
    .globl lb_files_12entries_type
    .type lb_files_12entries_type, @object
    .p2align 3
lb_files_12entries_type:
    .zero 40

    .section .note.GNU-stack,"",@progbits
