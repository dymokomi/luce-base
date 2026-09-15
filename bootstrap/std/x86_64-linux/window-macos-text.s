    .text

    .p2align 4
    .globl lb_window_10macos_text_0init
    .type lb_window_10macos_text_0init, @function
lb_window_10macos_text_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_window_13mac_not_found(%rip), %rbx
    movabsq $9223372036854775807, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_23mac_register_text_input
    .type lb_window_23mac_register_text_input, @function
lb_window_23mac_register_text_input:
    pushq %rbp
    movq %rsp, %rbp
    subq $480, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq .Ltext_0(%rip), %rbx
    movq %rbx, %rdi
    call objc_getProtocol@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L1_1
    jmp .L1_2
.L1_1:
    jmp .L1_3
.L1_2:
    leaq -72(%rbp), %rbx
    leaq lb_window_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_1(%rip), %r12
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $32, %rax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_4:
.L1_3:
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    movq %rbx, %rsi
    call class_addProtocol@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L1_6
.L1_5:
    leaq -72(%rbp), %rbx
    leaq lb_window_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_2(%rip), %r12
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $47, %rax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_8:
    jmp .L1_7
.L1_6:
.L1_7:
    leaq .Ltext_3(%rip), %rbx
    movq lb_window_15mac_insert_text@GOTPCREL(%rip), %r13
    leaq .Ltext_4(%rip), %r14
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -152(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -152(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_10
    jmp .L1_9
.L1_10:
    leaq -72(%rbp), %rbx
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
.L1_11:
.L1_9:
    leaq .Ltext_5(%rip), %rbx
    movq lb_window_14mac_set_marked@GOTPCREL(%rip), %r13
    leaq .Ltext_6(%rip), %r14
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -184(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -184(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_13
    jmp .L1_12
.L1_13:
    leaq -72(%rbp), %rbx
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
.L1_14:
.L1_12:
    leaq .Ltext_7(%rip), %rbx
    movq lb_window_10mac_unmark@GOTPCREL(%rip), %r13
    leaq .Ltext_8(%rip), %r14
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -216(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -216(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_16
    jmp .L1_15
.L1_16:
    leaq -72(%rbp), %rbx
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
.L1_17:
.L1_15:
    leaq .Ltext_9(%rip), %rbx
    movq lb_window_14mac_has_marked@GOTPCREL(%rip), %r13
    leaq .Ltext_10(%rip), %r14
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -248(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -248(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_19
    jmp .L1_18
.L1_19:
    leaq -72(%rbp), %rbx
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
.L1_20:
.L1_18:
    leaq .Ltext_11(%rip), %rbx
    movq lb_window_16mac_marked_range@GOTPCREL(%rip), %r13
    leaq .Ltext_12(%rip), %r14
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -280(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -280(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_22
    jmp .L1_21
.L1_22:
    leaq -72(%rbp), %rbx
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
.L1_23:
.L1_21:
    leaq .Ltext_13(%rip), %rbx
    movq lb_window_18mac_selected_range@GOTPCREL(%rip), %r13
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -312(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -312(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_25
    jmp .L1_24
.L1_25:
    leaq -72(%rbp), %rbx
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
.L1_26:
.L1_24:
    leaq .Ltext_14(%rip), %rbx
    movq lb_window_21mac_marked_attributes@GOTPCREL(%rip), %r13
    leaq .Ltext_15(%rip), %r14
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -344(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -344(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_28
    jmp .L1_27
.L1_28:
    leaq -72(%rbp), %rbx
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
.L1_29:
.L1_27:
    leaq .Ltext_16(%rip), %rbx
    movq lb_window_18mac_text_substring@GOTPCREL(%rip), %r13
    leaq .Ltext_17(%rip), %r14
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -376(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -376(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_31
    jmp .L1_30
.L1_31:
    leaq -72(%rbp), %rbx
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
.L1_32:
.L1_30:
    leaq .Ltext_18(%rip), %rbx
    movq lb_window_14mac_text_index@GOTPCREL(%rip), %r13
    leaq .Ltext_19(%rip), %r14
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -408(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -408(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_34
    jmp .L1_33
.L1_34:
    leaq -72(%rbp), %rbx
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
.L1_35:
.L1_33:
    leaq .Ltext_20(%rip), %rbx
    movq lb_window_13mac_text_rect@GOTPCREL(%rip), %r13
    leaq .Ltext_21(%rip), %r14
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -440(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -440(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_37
    jmp .L1_36
.L1_37:
    leaq -72(%rbp), %rbx
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
.L1_38:
.L1_36:
    leaq .Ltext_22(%rip), %rbx
    movq lb_window_16mac_text_command@GOTPCREL(%rip), %r13
    leaq .Ltext_23(%rip), %r14
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -472(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -472(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_40
    jmp .L1_39
.L1_40:
    leaq -72(%rbp), %rbx
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
.L1_41:
.L1_39:
    leaq -72(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_14mac_plain_text
    .type lb_window_14mac_plain_text, @function
lb_window_14mac_plain_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq .Ltext_24(%rip), %rbx
    movq %rbx, %rdi
    call objc_getClass@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L2_1
    jmp .L2_2
.L2_1:
    jmp .L2_3
.L2_2:
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_4:
.L2_3:
    leaq -40(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq .Ltext_25(%rip), %r13
    movq %r13, %rdi
    call lb_window_sel@PLT
    movq %rax, %r13
    movq %r12, %rdi
    movq %r13, %rsi
    movq %rbx, %rdx
    call objc_msgSend@PLT
    movl %eax, %r13d
    testl %r13d, %r13d
    jne .L2_5
    jmp .L2_6
.L2_5:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_8:
    jmp .L2_7
.L2_6:
.L2_7:
    leaq .Ltext_26(%rip), %rbx
    movq %rbx, %rdi
    call lb_window_sel@PLT
    movq %rax, %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_9:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_16mac_clear_marked
    .type lb_window_16mac_clear_marked, @function
lb_window_16mac_clear_marked:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $14408, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_4
    jmp .L3_2
.L3_4:
.L3_1:
    leaq .Ltext_29(%rip), %r14
    movq %r14, %rdi
    call lb_window_sel@PLT
    movq %rax, %r14
    movq %r13, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    jmp .L3_3
.L3_2:
.L3_3:
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $14416, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $14424, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_15mac_insert_text
    .type lb_window_15mac_insert_text, @function
lb_window_15mac_insert_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movq %rdx, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    testq %rax, %rax
    jne .L4_1
    jmp .L4_2
.L4_1:
    jmp .L4_3
.L4_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_4:
.L4_3:
    movq -112(%rbp), %rdi
    call lb_window_16mac_clear_marked@PLT
    movq -112(%rbp), %rax
    movq $14380, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L4_6
.L4_5:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_8:
    jmp .L4_7
.L4_6:
.L4_7:
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_window_14mac_plain_text@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L4_9
    jmp .L4_10
.L4_9:
    jmp .L4_11
.L4_10:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_12:
.L4_11:
    leaq .Ltext_30(%rip), %r13
    movq %r13, %rdi
    call lb_window_sel@PLT
    movq %rax, %r13
    movq %r12, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq %rax, %r13
    movq -112(%rbp), %rax
    movq $14368, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $256, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    cmpq %r14, %r13
    jbe .L4_14
.L4_13:
    movq -112(%rbp), %rax
    movq $14376, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_16:
    jmp .L4_15
.L4_14:
.L4_15:
    leaq .Ltext_32(%rip), %r14
    movq $0, %rax
    movq %rax, %r15
.L4_17:
    cmpq %r13, %r15
    jae .L4_20
.L4_18:
    movq %r14, %rdi
    call lb_window_sel@PLT
    movq %rax, %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call objc_msgSend@PLT
    movl %eax, %ebx
    movq -112(%rbp), %rdi
    movl %ebx, %esi
    call lb_window_10push_utf16@PLT
.L4_19:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L4_17
.L4_20:
    movq -112(%rbp), %rax
    movq $14382, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L4_22
.L4_21:
    movl $0, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    movq -112(%rbp), %rdi
    movl $65533, %esi
    call lb_window_11push_scalar@PLT
    jmp .L4_23
.L4_22:
.L4_23:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_14mac_set_marked
    .type lb_window_14mac_set_marked, @function
lb_window_14mac_set_marked:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movq %rdx, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq 16(%rbp), %r10
    leaq -120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L5_1
    jmp .L5_2
.L5_1:
    jmp .L5_3
.L5_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_4:
.L5_3:
    movq %rbx, %rdi
    call lb_window_16mac_clear_marked@PLT
    movq $14380, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L5_6
.L5_5:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_8:
    jmp .L5_7
.L5_6:
.L5_7:
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_window_14mac_plain_text@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L5_9
    jmp .L5_10
.L5_9:
    jmp .L5_11
.L5_10:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_12:
.L5_11:
    leaq .Ltext_30(%rip), %r13
    movq %r13, %rdi
    call lb_window_sel@PLT
    movq %rax, %r13
    movq %r12, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq %rax, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L5_14
.L5_13:
    movq $14408, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq .Ltext_33(%rip), %r14
    movq %r14, %rdi
    call lb_window_sel@PLT
    movq %rax, %r14
    movq %r12, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rax, %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movq $14416, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq %r15, (%r10)
    movq $14424, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq %r14, (%r10)
    jmp .L5_15
.L5_14:
.L5_15:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_10mac_unmark
    .type lb_window_10mac_unmark, @function
lb_window_10mac_unmark:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -24(%rbp)
    movq %rsi, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L6_4
    jmp .L6_2
.L6_4:
.L6_1:
    movq %rbx, %rdi
    call lb_window_16mac_clear_marked@PLT
    jmp .L6_3
.L6_2:
.L6_3:
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_14mac_has_marked
    .type lb_window_14mac_has_marked, @function
lb_window_14mac_has_marked:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    movq %rsi, -48(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L7_1
    jmp .L7_2
.L7_1:
    jmp .L7_3
.L7_2:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_4:
.L7_3:
    movq $14408, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_5:
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_16mac_marked_range
    .type lb_window_16mac_marked_range, @function
lb_window_16mac_marked_range:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -64(%rbp)
    movq %rsi, -80(%rbp)
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L8_1
    jmp .L8_2
.L8_1:
    jmp .L8_3
.L8_2:
    leaq -96(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_window_13mac_not_found(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_4:
.L8_3:
    movq $14408, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L8_5
    jmp .L8_6
.L8_5:
    jmp .L8_7
.L8_6:
    leaq -112(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_window_13mac_not_found(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_8:
.L8_7:
    leaq -128(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_30(%rip), %r13
    movq %r13, %rdi
    call lb_window_sel@PLT
    movq %rax, %r13
    movq %r12, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq %rax, %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    leaq -48(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_9:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_18mac_selected_range
    .type lb_window_18mac_selected_range, @function
lb_window_18mac_selected_range:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -64(%rbp)
    movq %rsi, -80(%rbp)
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L9_1
    jmp .L9_2
.L9_1:
    jmp .L9_3
.L9_2:
    leaq -96(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_4:
.L9_3:
    leaq -112(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $14416, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $14424, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    leaq -48(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_5:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_21mac_marked_attributes
    .type lb_window_21mac_marked_attributes, @function
lb_window_21mac_marked_attributes:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    movq %rsi, -48(%rbp)
    leaq .Ltext_37(%rip), %rbx
    movq %rbx, %rdi
    call objc_getClass@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L10_1
    jmp .L10_2
.L10_1:
    jmp .L10_3
.L10_2:
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_4:
.L10_3:
    leaq .Ltext_38(%rip), %r12
    movq %r12, %rdi
    call lb_window_sel@PLT
    movq %rax, %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_5:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_18mac_text_substring
    .type lb_window_18mac_text_substring, @function
lb_window_18mac_text_substring:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq -72(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L11_4
    jmp .L11_2
.L11_4:
.L11_1:
    leaq -104(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_window_13mac_not_found(%rip), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L11_3
.L11_2:
.L11_3:
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_5:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_14mac_text_index
    .type lb_window_14mac_text_index, @function
lb_window_14mac_text_index:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -24(%rbp)
    movq %rsi, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %xmm0, 0(%r10)
    movq %xmm1, 8(%r10)
    leaq lb_window_13mac_not_found(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_1:
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_13mac_text_rect
    .type lb_window_13mac_text_rect, @function
lb_window_13mac_text_rect:
    pushq %rbp
    movq %rsp, %rbp
    subq $288, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movq %rdx, -112(%rbp)
    leaq -128(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    movq %r9, -144(%rbp)
    leaq -144(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L13_4
    jmp .L13_2
.L13_4:
.L13_1:
    leaq -128(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L13_3
.L13_2:
.L13_3:
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L13_5
    jmp .L13_6
.L13_5:
    jmp .L13_7
.L13_6:
    leaq -176(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
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
.L13_8:
.L13_7:
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L13_9
    jmp .L13_10
.L13_9:
    jmp .L13_11
.L13_10:
    leaq -208(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
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
.L13_12:
.L13_11:
    leaq .Ltext_42(%rip), %rbx
    movq %rbx, %rdi
    call lb_window_sel@PLT
    movq %rax, %rbx
    leaq -240(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq -256(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm12
    movq %r14, %r10
    movsd %xmm12, (%r10)
    movabsq $4625759767262920704, %rax
    movq %rax, %xmm12
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd %xmm12, (%r10)
    movq $16, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq %r13, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r12, %rsi
    movq %rbx, %rdx
    leaq -288(%rbp), %rdi
    call objc_msgSend@PLT
    addq $32, %rsp
    leaq -288(%rbp), %rbx
    leaq -80(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
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
.L13_13:
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_16mac_text_command
    .type lb_window_16mac_text_command, @function
lb_window_16mac_text_command:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -24(%rbp)
    movq %rsi, -40(%rbp)
    movq %rdx, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_10macos_text_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "NSTextInputClient"
.Ltext_1:
    .asciz "AppKit text input is unavailable"
.Ltext_2:
    .asciz "could not register the native text input client"
.Ltext_3:
    .asciz "insertText:replacementRange:"
.Ltext_4:
    .asciz "v@:@{_NSRange=QQ}"
.Ltext_5:
    .asciz "setMarkedText:selectedRange:replacementRange:"
.Ltext_6:
    .asciz "v@:@{_NSRange=QQ}{_NSRange=QQ}"
.Ltext_7:
    .asciz "unmarkText"
.Ltext_8:
    .asciz "v@:"
.Ltext_9:
    .asciz "hasMarkedText"
.Ltext_10:
    .asciz "B@:"
.Ltext_11:
    .asciz "markedRange"
.Ltext_12:
    .asciz "{_NSRange=QQ}@:"
.Ltext_13:
    .asciz "selectedRange"
.Ltext_14:
    .asciz "validAttributesForMarkedText"
.Ltext_15:
    .asciz "@@:"
.Ltext_16:
    .asciz "attributedSubstringForProposedRange:actualRange:"
.Ltext_17:
    .asciz "@@:{_NSRange=QQ}^{_NSRange=QQ}"
.Ltext_18:
    .asciz "characterIndexForPoint:"
.Ltext_19:
    .asciz "Q@:{CGPoint=dd}"
.Ltext_20:
    .asciz "firstRectForCharacterRange:actualRange:"
.Ltext_21:
    .asciz "{CGRect={CGPoint=dd}{CGSize=dd}}@:{_NSRange=QQ}^{_NSRange=QQ}"
.Ltext_22:
    .asciz "doCommandBySelector:"
.Ltext_23:
    .asciz "v@::"
.Ltext_24:
    .asciz "NSString"
.Ltext_25:
    .asciz "isKindOfClass:"
.Ltext_26:
    .asciz "string"
.Ltext_27:
    .asciz "unreachable"
.Ltext_28:
    .asciz "src/std/window/macos/text.lucb:25:5"
.Ltext_29:
    .asciz "release"
.Ltext_30:
    .asciz "length"
.Ltext_31:
    .asciz "src/std/window/macos/text.lucb:42:5"
.Ltext_32:
    .asciz "characterAtIndex:"
.Ltext_33:
    .asciz "copy"
.Ltext_34:
    .asciz "src/std/window/macos/text.lucb:68:5"
.Ltext_35:
    .asciz "src/std/window/macos/text.lucb:73:5"
.Ltext_36:
    .asciz "src/std/window/macos/text.lucb:77:5"
.Ltext_37:
    .asciz "NSArray"
.Ltext_38:
    .asciz "array"
.Ltext_39:
    .asciz "src/std/window/macos/text.lucb:81:5"
.Ltext_40:
    .asciz "src/std/window/macos/text.lucb:86:5"
.Ltext_41:
    .asciz "src/std/window/macos/text.lucb:89:5"
.Ltext_42:
    .asciz "convertRectToScreen:"
.Ltext_43:
    .asciz "src/std/window/macos/text.lucb:96:5"
.Ltext_44:
    .asciz "inputContext"
.Ltext_45:
    .asciz "discardMarkedText"
.Ltext_46:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_window_13mac_not_found
    .type lb_window_13mac_not_found, @object
    .weak lb_window_13mac_not_found
    .p2align 3
lb_window_13mac_not_found:
    .zero 8

    .section .note.GNU-stack,"",@progbits
