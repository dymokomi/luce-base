    .text

    .p2align 4
    .globl lb_gpu_13metal_drawing_0init
    .type lb_gpu_13metal_drawing_0init, @function
lb_gpu_13metal_drawing_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_10metal_text
    .type lb_gpu_10metal_text, @function
lb_gpu_10metal_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -96(%rbp)
    leaq .Ltext_0(%rip), %rbx
    movq %rbx, %rsi
    leaq -136(%rbp), %rdi
    call lb_gpu_11metal_class@PLT
    leaq -136(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
    movq %r13, %rsi
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
.L1_3:
.L1_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq .Ltext_1(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rdi
    movq %r13, %rsi
    movq %r14, %rdx
    call objc_msgSend@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L1_4
    jmp .L1_5
.L1_4:
    jmp .L1_6
.L1_5:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq -152(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $34, %rax
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
.L1_7:
.L1_6:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
.L1_8:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_gpu_18metal_drawing_open
    .type lb_gpu_18metal_drawing_open, @function
lb_gpu_18metal_drawing_open:
    pushq %rbp
    movq %rsp, %rbp
    subq $688, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    leaq lb_memory_heap(%rip), %rbx
    leaq -120(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -160(%rbp), %r13
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_1
    jmp .L2_2
.L2_2:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_1:
    movq %r12, %r10
    movq (%r10), %r14
    movq %rbx, %rsi
    movq $48, %rdx
    movq $8, %rcx
    leaq -184(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -184(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_3
    jmp .L2_4
.L2_4:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_7(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_5
.L2_3:
    movq %r15, %r10
    movq (%r10), %rbx
    leaq -232(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_5:
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_7
    jmp .L2_6
.L2_7:
    movq $8, %rcx
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
.L2_8:
.L2_6:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -576(%rbp)
    leaq .Ltext_8(%rip), %r12
    movq %r12, %rsi
    leaq -272(%rbp), %rdi
    call lb_gpu_10metal_text@PLT
    leaq -272(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_10
    jmp .L2_9
.L2_10:
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -88(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -576(%rbp), %rdi
    call lb_gpu_21metal_drawing_destroy@PLT
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
.L2_11:
.L2_9:
    movq %r14, %r10
    movq (%r10), %r12
    leaq -280(%rbp), %rax
    movq %rax, -584(%rbp)
    movq $0, %rax
    movq -584(%rbp), %r10
    movq %rax, (%r10)
    leaq -104(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rdi
    call lb_gpu_14metal_required@PLT
    movq %rax, -592(%rbp)
    leaq .Ltext_9(%rip), %rbx
    movq %rbx, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %rbx
    movq -592(%rbp), %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    movq $0, %rcx
    movq -584(%rbp), %r8
    call objc_msgSend@PLT
    movq %rax, -648(%rbp)
    movq -648(%rbp), %rax
    testq %rax, %rax
    jne .L2_12
    jmp .L2_13
.L2_12:
    jmp .L2_14
.L2_13:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_10(%rip), %r13
    leaq -296(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $48, %rax
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
    movq -576(%rbp), %rdi
    call lb_gpu_21metal_drawing_destroy@PLT
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
.L2_15:
.L2_14:
    leaq .Ltext_11(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    leaq .Ltext_12(%rip), %r13
    movq %r13, %rsi
    leaq -336(%rbp), %rdi
    call lb_gpu_10metal_text@PLT
    leaq -336(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L2_17
    jmp .L2_16
.L2_17:
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -88(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq .Ltext_13(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq -648(%rbp), %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq -576(%rbp), %rdi
    call lb_gpu_21metal_drawing_destroy@PLT
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
.L2_18:
.L2_16:
    movq %r15, %r10
    movq (%r10), %r13
    movq -648(%rbp), %rdi
    movq %r14, %rsi
    movq %r13, %rdx
    call objc_msgSend@PLT
    movq %rax, -656(%rbp)
    movq -656(%rbp), %rax
    testq %rax, %rax
    jne .L2_19
    jmp .L2_20
.L2_19:
    jmp .L2_21
.L2_20:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_gpu_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_14(%rip), %r14
    leaq -352(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $31, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq .Ltext_13(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq -648(%rbp), %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq -576(%rbp), %rdi
    call lb_gpu_21metal_drawing_destroy@PLT
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
.L2_22:
.L2_21:
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, -600(%rbp)
    leaq .Ltext_15(%rip), %r15
    movq %r15, %rsi
    leaq -392(%rbp), %rdi
    call lb_gpu_10metal_text@PLT
    leaq -392(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L2_24
    jmp .L2_23
.L2_24:
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -88(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq .Ltext_13(%rip), %rbx
    movq %rbx, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq -656(%rbp), %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq %rbx, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %rbx
    movq -648(%rbp), %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    movq -576(%rbp), %rdi
    call lb_gpu_21metal_drawing_destroy@PLT
    movq %r15, %rsi
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
.L2_25:
.L2_23:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -648(%rbp), %rdi
    movq -600(%rbp), %rsi
    movq %rbx, %rdx
    call objc_msgSend@PLT
    movq %rax, -664(%rbp)
    movq -664(%rbp), %rax
    testq %rax, %rax
    jne .L2_26
    jmp .L2_27
.L2_26:
    jmp .L2_28
.L2_27:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_16(%rip), %r14
    leaq -408(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $33, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq .Ltext_13(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -656(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq -648(%rbp), %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq -576(%rbp), %rdi
    call lb_gpu_21metal_drawing_destroy@PLT
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
.L2_29:
.L2_28:
    leaq .Ltext_17(%rip), %r12
    movq %r12, %rsi
    leaq -448(%rbp), %rdi
    call lb_gpu_11metal_class@PLT
    leaq -448(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_31
    jmp .L2_30
.L2_31:
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -88(%rbp), %r15
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq .Ltext_13(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq -664(%rbp), %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq -656(%rbp), %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq -648(%rbp), %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq -576(%rbp), %rdi
    call lb_gpu_21metal_drawing_destroy@PLT
    movq %r15, %rsi
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
.L2_32:
.L2_30:
    movq %r14, %r10
    movq (%r10), %r12
    leaq .Ltext_18(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r15
    movq %r12, %rdi
    movq %r15, %rsi
    call objc_msgSend@PLT
    movq %rax, -672(%rbp)
    movq -672(%rbp), %rax
    testq %rax, %rax
    jne .L2_33
    jmp .L2_34
.L2_33:
    jmp .L2_35
.L2_34:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_gpu_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_19(%rip), %r14
    leaq -464(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $42, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq .Ltext_13(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -664(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -656(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq -648(%rbp), %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq -576(%rbp), %rdi
    call lb_gpu_21metal_drawing_destroy@PLT
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
.L2_36:
.L2_35:
    leaq .Ltext_20(%rip), %r14
    movq %r14, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -672(%rbp), %rdi
    movq %r14, %rsi
    movq -656(%rbp), %rdx
    call objc_msgSend@PLT
    leaq .Ltext_21(%rip), %r14
    movq %r14, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -672(%rbp), %rdi
    movq %r14, %rsi
    movq -664(%rbp), %rdx
    call objc_msgSend@PLT
    leaq .Ltext_22(%rip), %r14
    movq %r14, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -672(%rbp), %rdi
    movq %r14, %rsi
    movq $252, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_23(%rip), %r14
    movq %r14, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -672(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rax, %r14
    movq %r14, %rdi
    call lb_gpu_14metal_required@PLT
    movq %rax, %r14
    leaq .Ltext_24(%rip), %r15
    movq %r15, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r15
    movq %r14, %rdi
    movq %r15, %rsi
    movq $0, %rdx
    call objc_msgSend@PLT
    movq %rax, %r14
    movq %r14, %rdi
    call lb_gpu_14metal_required@PLT
    movq %rax, %r14
    leaq .Ltext_25(%rip), %r15
    movq %r15, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r15
    movq %r14, %rdi
    movq %r15, %rsi
    movq $81, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_26(%rip), %r15
    movq %r15, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r15
    movq %r14, %rdi
    movq %r15, %rsi
    movl $1, %edx
    call objc_msgSend@PLT
    leaq .Ltext_27(%rip), %r15
    movq %r15, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r15
    movq %r14, %rdi
    movq %r15, %rsi
    movq $4, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_28(%rip), %r15
    movq %r15, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r15
    movq %r14, %rdi
    movq %r15, %rsi
    movq $5, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_29(%rip), %r15
    movq %r15, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r15
    movq %r14, %rdi
    movq %r15, %rsi
    movq $1, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_30(%rip), %r15
    movq %r15, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r15
    movq %r14, %rdi
    movq %r15, %rsi
    movq $5, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_31(%rip), %r14
    movq %r14, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -592(%rbp), %rdi
    movq %r14, %rsi
    movq -672(%rbp), %rdx
    movq -584(%rbp), %rcx
    call objc_msgSend@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L2_37
    jmp .L2_38
.L2_37:
    jmp .L2_39
.L2_38:
    leaq -88(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    leaq lb_gpu_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_32(%rip), %r15
    leaq -480(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $47, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq .Ltext_13(%rip), %rbx
    movq %rbx, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -672(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rbx, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -664(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rbx, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -656(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rbx, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %rbx
    movq -648(%rbp), %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    movq -576(%rbp), %rdi
    call lb_gpu_21metal_drawing_destroy@PLT
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
.L2_40:
.L2_39:
    movq -576(%rbp), %r10
    movq %r14, (%r10)
    leaq .Ltext_33(%rip), %rbx
    movq %rbx, %rsi
    leaq -520(%rbp), %rdi
    call lb_gpu_11metal_class@PLT
    leaq -520(%rbp), %r15
    movq $32, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_42
    jmp .L2_41
.L2_42:
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
    leaq .Ltext_13(%rip), %rbx
    movq %rbx, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -672(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rbx, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -664(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rbx, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -656(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rbx, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %rbx
    movq -648(%rbp), %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    movq -576(%rbp), %rdi
    call lb_gpu_21metal_drawing_destroy@PLT
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
.L2_43:
.L2_41:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq %rbx, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L2_44
    jmp .L2_45
.L2_44:
    jmp .L2_46
.L2_45:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_gpu_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_34(%rip), %r14
    leaq -536(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $39, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq .Ltext_13(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -672(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -664(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -656(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq -648(%rbp), %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq -576(%rbp), %rdi
    call lb_gpu_21metal_drawing_destroy@PLT
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
.L2_47:
.L2_46:
    leaq .Ltext_35(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, -608(%rbp)
    movq %rbx, %rdi
    movq -608(%rbp), %rsi
    movq $1, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_36(%rip), %rax
    movq %rax, -616(%rbp)
    movq -616(%rbp), %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, -624(%rbp)
    movq %rbx, %rdi
    movq -624(%rbp), %rsi
    movl $1, %edx
    call objc_msgSend@PLT
    movq -576(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    leaq .Ltext_37(%rip), %rax
    movq %rax, -632(%rbp)
    movq -632(%rbp), %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r15
    movq -592(%rbp), %rdi
    movq %r15, %rsi
    movq %rbx, %rdx
    call objc_msgSend@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L2_48
    jmp .L2_49
.L2_48:
    jmp .L2_50
.L2_49:
    leaq -88(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    leaq lb_gpu_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_38(%rip), %r15
    leaq -552(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $34, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq .Ltext_13(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq %rbx, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -672(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -664(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -656(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq -648(%rbp), %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq -576(%rbp), %rdi
    call lb_gpu_21metal_drawing_destroy@PLT
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
.L2_51:
.L2_50:
    movq %r14, %r10
    movq %r15, (%r10)
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $7, %rdx
    call objc_msgSend@PLT
    movq -616(%rbp), %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movl $0, %edx
    call objc_msgSend@PLT
    movq -576(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -680(%rbp)
    movq -632(%rbp), %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq -592(%rbp), %rdi
    movq %r12, %rsi
    movq %rbx, %rdx
    call objc_msgSend@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L2_52
    jmp .L2_53
.L2_52:
    jmp .L2_54
.L2_53:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_gpu_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_39(%rip), %r14
    leaq -568(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $34, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq .Ltext_13(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq %rbx, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -672(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -664(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -656(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq -648(%rbp), %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq -576(%rbp), %rdi
    call lb_gpu_21metal_drawing_destroy@PLT
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
.L2_55:
.L2_54:
    movq -680(%rbp), %r10
    movq %r12, (%r10)
    leaq -88(%rbp), %r13
    movq -576(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    leaq .Ltext_13(%rip), %r14
    movq %r14, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r15
    movq %rbx, %rdi
    movq %r15, %rsi
    call objc_msgSend@PLT
    movq %r14, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r15
    movq -672(%rbp), %rdi
    movq %r15, %rsi
    call objc_msgSend@PLT
    movq %r14, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r15
    movq -664(%rbp), %rdi
    movq %r15, %rsi
    call objc_msgSend@PLT
    movq %r14, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r15
    movq -656(%rbp), %rdi
    movq %r15, %rsi
    call objc_msgSend@PLT
    movq %r14, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -648(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
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
.L2_56:
    leaq .Ltext_13(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq %r13, %rbx
    leaq .Ltext_13(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq %r15, %rbx
    leaq .Ltext_13(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq %r14, %rbx
    leaq .Ltext_13(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq -640(%rbp), %rax
    movq %rax, %rbx
    leaq .Ltext_13(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_gpu_11metal_depth
    .type lb_gpu_11metal_depth, @function
lb_gpu_11metal_depth:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    movq %rdx, -120(%rbp)
    movq %rcx, -136(%rbp)
    movq %r8, -152(%rbp)
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -232(%rbp)
    movq -232(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %r10
    movq (%r10), %r13
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_4
    jmp .L3_23
.L3_23:
    movl %r13d, %r15d
    jmp .L3_5
.L3_4:
    movq -232(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -152(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    sete %al
    movzbl %al, %r15d
.L3_5:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L3_1
    jmp .L3_2
.L3_1:
    movq -232(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_gpu_14metal_required@PLT
    movq %rax, %r12
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
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
.L3_6:
    jmp .L3_3
.L3_2:
.L3_3:
    leaq .Ltext_41(%rip), %r13
    movq %r13, %rsi
    leaq -192(%rbp), %rdi
    call lb_gpu_11metal_class@PLT
    leaq -192(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L3_8
    jmp .L3_7
.L3_8:
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
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
.L3_9:
.L3_7:
    movq %r15, %r10
    movq (%r10), %r13
    leaq .Ltext_18(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq %r13, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq %rax, -264(%rbp)
    movq -264(%rbp), %rax
    testq %rax, %rax
    jne .L3_10
    jmp .L3_11
.L3_10:
    jmp .L3_12
.L3_11:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_42(%rip), %r13
    leaq -208(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $47, %rax
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
.L3_13:
.L3_12:
    leaq .Ltext_43(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq -264(%rbp), %rdi
    movq %r13, %rsi
    movq $2, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_25(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq -264(%rbp), %rdi
    movq %r13, %rsi
    movq $252, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_44(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq -264(%rbp), %rdi
    movq %r13, %rsi
    movq %r14, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_45(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    leaq -152(%rbp), %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -256(%rbp)
    movq -264(%rbp), %rdi
    movq %r13, %rsi
    movq -256(%rbp), %rdx
    call objc_msgSend@PLT
    leaq .Ltext_46(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq -264(%rbp), %rdi
    movq %r13, %rsi
    movq $2, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_47(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq -264(%rbp), %rdi
    movq %r13, %rsi
    movq $4, %rdx
    call objc_msgSend@PLT
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    call lb_gpu_14metal_required@PLT
    movq %rax, %r13
    leaq .Ltext_48(%rip), %r15
    movq %r15, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r15
    movq %r13, %rdi
    movq %r15, %rsi
    movq -264(%rbp), %rdx
    call objc_msgSend@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L3_14
    jmp .L3_15
.L3_14:
    jmp .L3_16
.L3_15:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_gpu_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_49(%rip), %r14
    leaq -224(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $36, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq .Ltext_13(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq -264(%rbp), %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
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
.L3_17:
.L3_16:
    movq -232(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L3_21
    jmp .L3_19
.L3_21:
.L3_18:
    leaq .Ltext_13(%rip), %rbx
    movq %rbx, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    jmp .L3_20
.L3_19:
.L3_20:
    movq %r15, %r10
    movq %r13, (%r10)
    movq -240(%rbp), %r10
    movq %r14, (%r10)
    movq -232(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -256(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq .Ltext_13(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq -264(%rbp), %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
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
.L3_22:
    leaq .Ltext_13(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_gpu_21metal_drawing_destroy
    .type lb_gpu_21metal_drawing_destroy, @function
lb_gpu_21metal_drawing_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_4
    jmp .L4_2
.L4_4:
.L4_1:
    leaq .Ltext_13(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq %r12, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    jmp .L4_3
.L4_2:
.L4_3:
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_8
    jmp .L4_6
.L4_8:
.L4_5:
    leaq .Ltext_13(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq %r12, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    jmp .L4_7
.L4_6:
.L4_7:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_12
    jmp .L4_10
.L4_12:
.L4_9:
    leaq .Ltext_13(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq %r12, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    jmp .L4_11
.L4_10:
.L4_11:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_16
    jmp .L4_14
.L4_16:
.L4_13:
    leaq .Ltext_13(%rip), %r13
    movq %r13, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq %r12, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    jmp .L4_15
.L4_14:
.L4_15:
    leaq lb_memory_heap(%rip), %r12
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $48, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_18
    jmp .L4_17
.L4_18:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L4_17:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_12metal_encode
    .type lb_gpu_12metal_encode, @function
lb_gpu_12metal_encode:
    pushq %rbp
    movq %rsp, %rbp
    subq $1008, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movq %rdx, -88(%rbp)
    movq %rcx, -104(%rbp)
    movq %r8, -192(%rbp)
    movq %r9, -208(%rbp)
    leaq 16(%rbp), %r10
    leaq -176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    leaq -56(%rbp), %rax
    movq %rax, -552(%rbp)
    movq -552(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -560(%rbp)
    leaq .Ltext_51(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -568(%rbp)
    movq -568(%rbp), %r10
    movq (%r10), %r14
    movq -560(%rbp), %rdi
    movq %r12, %rsi
    movq %r14, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_52(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    leaq -88(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -560(%rbp), %rdi
    movq %r12, %rsi
    movq %r14, %rdx
    movq $0, %rcx
    movq $0, %r8
    call objc_msgSend@PLT
    leaq .Ltext_53(%rip), %r12
    movq %r12, %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r12
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -560(%rbp), %rdi
    movq %r12, %rsi
    movq %r14, %rdx
    movq $0, %rcx
    movq $0, %r8
    call objc_msgSend@PLT
    leaq -176(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -976(%rbp)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $40, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -984(%rbp)
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_55(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -984(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_55(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -984(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L5_5
.L5_6:
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_55(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_5:
    leaq -224(%rbp), %r12
    movq -976(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq -984(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -336(%rbp), %r12
    movq $16, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -592(%rbp)
    leaq -192(%rbp), %rax
    movq %rax, -616(%rbp)
    movq -592(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -640(%rbp)
    leaq -208(%rbp), %rax
    movq %rax, -664(%rbp)
    movq -592(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -688(%rbp)
    movq -592(%rbp), %rax
    movq $12, %rcx
    addq %rcx, %rax
    movq %rax, -696(%rbp)
    leaq -368(%rbp), %rax
    movq %rax, -1000(%rbp)
    movq $40, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -1008(%rbp)
    movq -1008(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -704(%rbp)
    leaq -432(%rbp), %rax
    movq %rax, -720(%rbp)
    movq -720(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -728(%rbp)
    movq -720(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -736(%rbp)
    leaq -400(%rbp), %rax
    movq %rax, -744(%rbp)
    leaq -400(%rbp), %rax
    movq %rax, -712(%rbp)
    leaq -400(%rbp), %rax
    movq %rax, -752(%rbp)
    leaq .Ltext_58(%rip), %rax
    movq %rax, -760(%rbp)
    leaq -480(%rbp), %rax
    movq %rax, -768(%rbp)
    movq -1000(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -776(%rbp)
    movq -768(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -784(%rbp)
    movq -1000(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -792(%rbp)
    movq -768(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -800(%rbp)
    movq -1000(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -808(%rbp)
    movq -768(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -816(%rbp)
    movq $0, %rax
    movq %rax, %xmm8
    movsd %xmm8, -824(%rbp)
    movq -768(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -832(%rbp)
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm8
    movsd %xmm8, -840(%rbp)
    movq -768(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -848(%rbp)
    leaq .Ltext_59(%rip), %rax
    movq %rax, -856(%rbp)
    leaq -512(%rbp), %rax
    movq %rax, -864(%rbp)
    movq -864(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -872(%rbp)
    movq -864(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -880(%rbp)
    movq -864(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -888(%rbp)
    leaq .Ltext_60(%rip), %rax
    movq %rax, -896(%rbp)
    movq $32, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -904(%rbp)
    movq -568(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -920(%rbp)
    movq -568(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -912(%rbp)
    leaq -544(%rbp), %rax
    movq %rax, -928(%rbp)
    movq $80, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -936(%rbp)
    leaq .Ltext_61(%rip), %rax
    movq %rax, -944(%rbp)
    leaq .Ltext_62(%rip), %rax
    movq %rax, -952(%rbp)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -960(%rbp)
    movq $0, %rax
    movq %rax, -992(%rbp)
.L5_1:
    movq -992(%rbp), %rax
    movq -984(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L5_4
.L5_2:
    movq -992(%rbp), %rax
    movq $112, %rcx
    imulq %rcx, %rax
    movq %rax, -576(%rbp)
    movq -576(%rbp), %rax
    movq -976(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, -584(%rbp)
    movq -584(%rbp), %r10
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
    movq -592(%rbp), %r10
    movl (%r10), %eax
    movl %eax, -600(%rbp)
    movl -600(%rbp), %eax
    movl %eax, %eax
    movq %rax, -608(%rbp)
    movq -616(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -624(%rbp)
    movq -608(%rbp), %rdi
    movq -624(%rbp), %rsi
    call lb_gpu_9metal_min@PLT
    movq %rax, -632(%rbp)
    movq -640(%rbp), %r10
    movl (%r10), %eax
    movl %eax, -648(%rbp)
    movl -648(%rbp), %eax
    movl %eax, %eax
    movq %rax, -656(%rbp)
    movq -664(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -672(%rbp)
    movq -656(%rbp), %rdi
    movq -672(%rbp), %rsi
    call lb_gpu_9metal_min@PLT
    movq %rax, -680(%rbp)
    movq -688(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq -624(%rbp), %rax
    movq -632(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_64(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %rbx, %rdi
    movq %r14, %rsi
    call lb_gpu_9metal_min@PLT
    movq %rax, %rbx
    movq -696(%rbp), %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    movq -672(%rbp), %rax
    movq -680(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_64(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r14, %rdi
    movq %r13, %rsi
    call lb_gpu_9metal_min@PLT
    movq %rax, %r13
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L5_19
    jmp .L5_10
.L5_19:
    movl %r14d, %r15d
    jmp .L5_11
.L5_10:
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r15d
.L5_11:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L5_7
    jmp .L5_8
.L5_7:
    jmp .L5_3
.L5_12:
    jmp .L5_9
.L5_8:
.L5_9:
    movq -704(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L5_13
    jmp .L5_14
.L5_13:
    movq -1008(%rbp), %r10
    movq -712(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L5_15
.L5_14:
    movq -720(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq -624(%rbp), %rax
    movq %rax, %rcx
    testq %rcx, %rcx
    js 1f
    cvtsi2sdq %rcx, %xmm8
    jmp 2f
1:
    movq %rcx, %rax
    shrq $1, %rax
    andl $1, %ecx
    orq %rcx, %rax
    cvtsi2sdq %rax, %xmm8
    addsd %xmm8, %xmm8
2:
    movapd %xmm8, %xmm12
    movq -728(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -672(%rbp), %rax
    movq %rax, %rcx
    testq %rcx, %rcx
    js 1f
    cvtsi2sdq %rcx, %xmm8
    jmp 2f
1:
    movq %rcx, %rax
    shrq $1, %rax
    andl $1, %ecx
    orq %rcx, %rax
    cvtsi2sdq %rax, %xmm8
    addsd %xmm8, %xmm8
2:
    movapd %xmm8, %xmm12
    movq -736(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -720(%rbp), %r10
    movq -744(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L5_15:
    movq -752(%rbp), %r10
    movq -1000(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -760(%rbp), %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -768(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq -1000(%rbp), %r10
    movsd (%r10), %xmm12
    movq -768(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -776(%rbp), %r10
    movsd (%r10), %xmm12
    movq -784(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -792(%rbp), %r10
    movsd (%r10), %xmm12
    movq -800(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -808(%rbp), %r10
    movsd (%r10), %xmm12
    movq -816(%rbp), %r10
    movsd %xmm12, (%r10)
    movsd -824(%rbp), %xmm8
    movq -832(%rbp), %r10
    movsd %xmm8, (%r10)
    movsd -840(%rbp), %xmm8
    movq -848(%rbp), %r10
    movsd %xmm8, (%r10)
    subq $48, %rsp
    movq -768(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq -560(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    addq $48, %rsp
    movq -856(%rbp), %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -864(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq -632(%rbp), %rax
    movq -864(%rbp), %r10
    movq %rax, (%r10)
    movq -680(%rbp), %rax
    movq -872(%rbp), %r10
    movq %rax, (%r10)
    movq -880(%rbp), %r10
    movq %rbx, (%r10)
    movq -888(%rbp), %r10
    movq %r13, (%r10)
    subq $32, %rsp
    movq -864(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -560(%rbp), %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    addq $32, %rsp
    movq -896(%rbp), %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r14
    movq -904(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L5_16
    jmp .L5_17
.L5_16:
    movq -912(%rbp), %r10
    movq (%r10), %rbx
    jmp .L5_18
.L5_17:
    movq -920(%rbp), %r10
    movq (%r10), %rbx
.L5_18:
    movq -560(%rbp), %rdi
    movq %r14, %rsi
    movq %rbx, %rdx
    call objc_msgSend@PLT
    movq -936(%rbp), %r10
    movq -928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -944(%rbp), %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq -560(%rbp), %rdi
    movq %r13, %rsi
    movq -928(%rbp), %rdx
    movq $32, %rcx
    movq $1, %r8
    call objc_msgSend@PLT
    movq -952(%rbp), %rdi
    call lb_gpu_9metal_sel@PLT
    movq %rax, %r13
    movq %r12, %r10
    movq (%r10), %r15
    movq -960(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -968(%rbp)
    movq -560(%rbp), %rdi
    movq %r13, %rsi
    movq $3, %rdx
    movq %r15, %rcx
    movq -968(%rbp), %r8
    call objc_msgSend@PLT
.L5_3:
    movq -992(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -992(%rbp)
    jmp .L5_1
.L5_4:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_9metal_min
    .type lb_gpu_9metal_min, @function
lb_gpu_9metal_min:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L6_2
.L6_1:
    movq %rbx, %r12
    jmp .L6_3
.L6_2:
.L6_3:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_4:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_13metal_drawing_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "NSString"
.Ltext_1:
    .asciz "stringWithUTF8String:"
.Ltext_2:
    .asciz "could not create Metal shader text"
.Ltext_3:
    .asciz "unreachable"
.Ltext_4:
    .asciz "src/std/gpu/metal/drawing.lucb:13:5"
.Ltext_5:
    .asciz "memory.unset"
.Ltext_6:
    .asciz "src/std/gpu/metal/drawing.lucb:16:5"
.Ltext_7:
    .asciz "memory.exhausted"
.Ltext_8:
    .asciz "#include <metal_stdlib>\nusing namespace metal;\nstruct V { float4 position [[position]]; float4 color; };\nstruct Mask { float x,y,width,height; uint columns,rows,offset,reserved; };\nvertex V luce_vertex(const device float* data [[buffer(0)]], uint id [[vertex_id]]) {\n uint i=id*8; V v; v.position=float4(data[i],data[i+1],data[i+2],data[i+3]); v.color=float4(data[i+4],data[i+5],data[i+6],data[i+7]); return v;\n}\nfloat coverage(const device uint* data, constant Mask& m, int2 p) {\n p=clamp(p,int2(0),int2(m.columns-1,m.rows-1)); uint i=m.offset+uint(p.y)*m.columns+uint(p.x);\n return float((data[i/4] >> ((i%4)*8)) & 255u)/255.0;\n}\nfragment float4 luce_fragment(V v [[stage_in]], const device uint* data [[buffer(0)]], constant Mask& m [[buffer(1)]]) {\n if(m.columns==0) return v.color;\n float2 p=(v.position.xy-float2(m.x,m.y))/float2(m.width,m.height)*float2(m.columns,m.rows)-0.5;\n int2 q=int2(floor(p)); float2 f=fract(p);\n float a=mix(mix(coverage(data,m,q),coverage(data,m,q+int2(1,0)),f.x),mix(coverage(data,m,q+int2(0,1)),coverage(data,m,q+int2(1,1)),f.x),f.y);\n return float4(v.color.rgb,v.color.a*a);\n}"
.Ltext_9:
    .asciz "newLibraryWithSource:options:error:"
.Ltext_10:
    .asciz "could not compile the portable triangle pipeline"
.Ltext_11:
    .asciz "newFunctionWithName:"
.Ltext_12:
    .asciz "luce_vertex"
.Ltext_13:
    .asciz "release"
.Ltext_14:
    .asciz "the GPU vertex entry is missing"
.Ltext_15:
    .asciz "luce_fragment"
.Ltext_16:
    .asciz "the GPU fragment entry is missing"
.Ltext_17:
    .asciz "MTLRenderPipelineDescriptor"
.Ltext_18:
    .asciz "new"
.Ltext_19:
    .asciz "could not create a GPU pipeline descriptor"
.Ltext_20:
    .asciz "setVertexFunction:"
.Ltext_21:
    .asciz "setFragmentFunction:"
.Ltext_22:
    .asciz "setDepthAttachmentPixelFormat:"
.Ltext_23:
    .asciz "colorAttachments"
.Ltext_24:
    .asciz "objectAtIndexedSubscript:"
.Ltext_25:
    .asciz "setPixelFormat:"
.Ltext_26:
    .asciz "setBlendingEnabled:"
.Ltext_27:
    .asciz "setSourceRGBBlendFactor:"
.Ltext_28:
    .asciz "setDestinationRGBBlendFactor:"
.Ltext_29:
    .asciz "setSourceAlphaBlendFactor:"
.Ltext_30:
    .asciz "setDestinationAlphaBlendFactor:"
.Ltext_31:
    .asciz "newRenderPipelineStateWithDescriptor:error:"
.Ltext_32:
    .asciz "could not create the portable triangle pipeline"
.Ltext_33:
    .asciz "MTLDepthStencilDescriptor"
.Ltext_34:
    .asciz "could not create a GPU depth descriptor"
.Ltext_35:
    .asciz "setDepthCompareFunction:"
.Ltext_36:
    .asciz "setDepthWriteEnabled:"
.Ltext_37:
    .asciz "newDepthStencilStateWithDescriptor:"
.Ltext_38:
    .asciz "could not create GPU depth testing"
.Ltext_39:
    .asciz "could not create GPU overlay state"
.Ltext_40:
    .asciz "src/std/gpu/metal/drawing.lucb:50:5"
.Ltext_41:
    .asciz "MTLTextureDescriptor"
.Ltext_42:
    .asciz "could not create a GPU depth texture descriptor"
.Ltext_43:
    .asciz "setTextureType:"
.Ltext_44:
    .asciz "setWidth:"
.Ltext_45:
    .asciz "setHeight:"
.Ltext_46:
    .asciz "setStorageMode:"
.Ltext_47:
    .asciz "setUsage:"
.Ltext_48:
    .asciz "newTextureWithDescriptor:"
.Ltext_49:
    .asciz "could not allocate GPU depth storage"
.Ltext_50:
    .asciz "src/std/gpu/metal/drawing.lucb:69:5"
.Ltext_51:
    .asciz "setRenderPipelineState:"
.Ltext_52:
    .asciz "setVertexBuffer:offset:atIndex:"
.Ltext_53:
    .asciz "setFragmentBuffer:offset:atIndex:"
.Ltext_54:
    .asciz "src/std/gpu/metal/drawing.lucb:86:5"
.Ltext_55:
    .asciz "index out of bounds"
.Ltext_56:
    .asciz "src/std/gpu/metal/drawing.lucb:89:9"
.Ltext_57:
    .asciz "src/std/gpu/metal/drawing.lucb:90:9"
.Ltext_58:
    .asciz "setViewport:"
.Ltext_59:
    .asciz "setScissorRect:"
.Ltext_60:
    .asciz "setDepthStencilState:"
.Ltext_61:
    .asciz "setFragmentBytes:length:atIndex:"
.Ltext_62:
    .asciz "drawPrimitives:vertexStart:vertexCount:"
.Ltext_63:
    .asciz "src/std/gpu/metal/drawing.lucb:102:5"
.Ltext_64:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
