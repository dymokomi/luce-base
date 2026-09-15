    .text

    .p2align 4
    .globl lb_gpu_frame_0init
    .type lb_gpu_frame_0init, @function
lb_gpu_frame_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
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
    movq $15, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq lb_gpu_FrameState_close@GOTPCREL(%rip), %r12
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
    leaq lb_gpu_16frame_state_type(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -120(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq .Ltext_1(%rip), %r12
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $9, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq lb_gpu_Frame_close@GOTPCREL(%rip), %r12
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq lb_gpu_Frame_trace@GOTPCREL(%rip), %r12
    movq $24, %rcx
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
    movq $33, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq lb_gpu_10frame_type(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -160(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq .Ltext_2(%rip), %r12
    leaq -176(%rbp), %r13
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
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq lb_gpu_18render_target_type(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_FrameState_check
    .type lb_gpu_FrameState_check, @function
lb_gpu_FrameState_check:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    movq $144, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_1
    jmp .L1_2
.L1_1:
    leaq -80(%rbp), %rbx
    leaq lb_gpu_14frame_finished(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_3(%rip), %r12
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $31, %rax
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
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    movq $112, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_8
    jmp .L1_6
.L1_8:
.L1_5:
    movq $120, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L1_9
    jmp .L1_10
.L1_9:
    jmp .L1_11
.L1_10:
    leaq .Ltext_4(%rip), %rbx
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $35, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_5(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_11:
    movq $72, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    subq $48, %rsp
    movq %r14, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %rbx, %rsi
    leaq -152(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    addq $48, %rsp
    leaq -152(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_13
    jmp .L1_12
.L1_13:
    leaq -80(%rbp), %rbx
    movq %r15, %r10
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_14:
.L1_12:
    jmp .L1_7
.L1_6:
.L1_7:
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
    .globl lb_gpu_FrameState_close
    .type lb_gpu_FrameState_close, @function
lb_gpu_FrameState_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %r10
    movq (%r10), %r12
    movq $144, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rdi
    call lb_gpu_Canvas_destroy@PLT
    movq $112, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_4
    jmp .L2_2
.L2_4:
.L2_1:
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $136, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_5
    jmp .L2_6
.L2_5:
    jmp .L2_7
.L2_6:
    leaq .Ltext_7(%rip), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $43, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_8(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_7:
    movq %r13, %rdi
    movq %r14, %r11
    call *%r11
    jmp .L2_3
.L2_2:
.L2_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_Frame_init
    .type lb_gpu_Frame_init, @function
lb_gpu_Frame_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $816, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq 16(%rbp), %r10
    leaq -128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -816(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -760(%rbp)
    movq -760(%rbp), %r10
    leaq -704(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -704(%rbp), %r12
    movq %r12, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -784(%rbp)
    movq $0, %rax
    movq %rax, %xmm8
    movsd %xmm8, -792(%rbp)
    movsd -784(%rbp), %xmm8
    movsd -792(%rbp), %xmm9
    ucomisd %xmm9, %xmm8
    setae %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_21
    jmp .L3_54
.L3_54:
    movl %r13d, %r15d
    jmp .L3_22
.L3_21:
    movabsq $4670232813583204352, %rax
    movq %rax, %xmm12
    movsd -784(%rbp), %xmm8
    ucomisd %xmm8, %xmm12
    setae %al
    movzbl %al, %r15d
.L3_22:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L3_23
    jmp .L3_55
.L3_55:
    movl %r13d, %r15d
    jmp .L3_24
.L3_23:
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movsd -792(%rbp), %xmm9
    ucomisd %xmm9, %xmm12
    setae %al
    movzbl %al, %r15d
.L3_24:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L3_25
    jmp .L3_56
.L3_56:
    movl %r13d, %r15d
    jmp .L3_26
.L3_25:
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movabsq $4670232813583204352, %rax
    movq %rax, %xmm13
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r15d
.L3_26:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L3_27
    jmp .L3_57
.L3_57:
    movl %r13d, %r15d
    jmp .L3_28
.L3_27:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movsd -792(%rbp), %xmm9
    ucomisd %xmm9, %xmm12
    setae %al
    movzbl %al, %r15d
.L3_28:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L3_29
    jmp .L3_58
.L3_58:
    movl %r13d, %r15d
    jmp .L3_30
.L3_29:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movabsq $4670232813583204352, %rax
    movq %rax, %xmm13
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r15d
.L3_30:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L3_31
    jmp .L3_59
.L3_59:
    movl %r13d, %r15d
    jmp .L3_32
.L3_31:
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movsd -792(%rbp), %xmm9
    ucomisd %xmm9, %xmm12
    setae %al
    movzbl %al, %r15d
.L3_32:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L3_33
    jmp .L3_60
.L3_60:
    movl %r13d, %r15d
    jmp .L3_34
.L3_33:
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movabsq $4670232813583204352, %rax
    movq %rax, %xmm13
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r15d
.L3_34:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L3_35
    jmp .L3_61
.L3_61:
    movl %r13d, %r15d
    jmp .L3_36
.L3_35:
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movsd -792(%rbp), %xmm9
    ucomisd %xmm9, %xmm12
    seta %al
    movzbl %al, %r15d
.L3_36:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L3_37
    jmp .L3_62
.L3_62:
    movl %r13d, %r15d
    jmp .L3_38
.L3_37:
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movabsq $4625196817309499392, %rax
    movq %rax, %xmm13
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r15d
.L3_38:
    movzbl %r15b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L3_19
.L3_18:
    leaq -664(%rbp), %r12
    leaq lb_gpu_16invalid_geometry(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_26(%rip), %r13
    leaq -720(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $73, %rax
    movq %r13, %r10
    movq %rax, (%r10)
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
    movq %r12, %r10
    leaq -160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L3_52
.L3_39:
    jmp .L3_20
.L3_19:
.L3_20:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -800(%rbp)
    movsd -800(%rbp), %xmm0
    call lb_math_floor@PLT
    movapd %xmm0, %xmm12
    movsd -800(%rbp), %xmm8
    ucomisd %xmm12, %xmm8
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_63
    jmp .L3_43
.L3_63:
    movl %r13d, %r15d
    jmp .L3_44
.L3_43:
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -808(%rbp)
    movsd -808(%rbp), %xmm0
    call lb_math_floor@PLT
    movapd %xmm0, %xmm12
    movsd -808(%rbp), %xmm8
    ucomisd %xmm12, %xmm8
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
.L3_44:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L3_40
    jmp .L3_41
.L3_40:
    leaq -664(%rbp), %r12
    leaq lb_gpu_16invalid_geometry(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_27(%rip), %r13
    leaq -736(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $42, %rax
    movq %r13, %r10
    movq %rax, (%r10)
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
    movq %r12, %r10
    leaq -160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L3_52
.L3_45:
    jmp .L3_42
.L3_41:
.L3_42:
    movsd -784(%rbp), %xmm8
    movsd -792(%rbp), %xmm9
    ucomisd %xmm9, %xmm8
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r13d
    movsd -792(%rbp), %xmm8
    movsd -800(%rbp), %xmm9
    ucomisd %xmm9, %xmm8
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r15d
    cmpl %r15d, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_64
    jmp .L3_49
.L3_64:
    movl %r13d, %r12d
    jmp .L3_50
.L3_49:
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movsd -792(%rbp), %xmm8
    ucomisd %xmm12, %xmm8
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r13d
    movq $24, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    movsd -792(%rbp), %xmm8
    ucomisd %xmm12, %xmm8
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r15d
    cmpl %r15d, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %r12d
.L3_50:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L3_46
    jmp .L3_47
.L3_46:
    leaq -664(%rbp), %r12
    leaq lb_gpu_16invalid_geometry(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_28(%rip), %r13
    leaq -752(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $47, %rax
    movq %r13, %r10
    movq %rax, (%r10)
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
    movq %r12, %r10
    leaq -160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L3_52
.L3_51:
    jmp .L3_48
.L3_47:
.L3_48:
    leaq -664(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %r10
    leaq -160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L3_52:
    leaq -160(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_2
    jmp .L3_1
.L3_2:
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
.L3_3:
.L3_1:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -176(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -216(%rbp), %r15
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_4
    jmp .L3_5
.L3_5:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_4:
    movq %r13, %r10
    movq (%r10), %r14
    movq %r12, %rsi
    movq $152, %rdx
    movq $8, %rcx
    leaq -240(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -240(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_6
    jmp .L3_7
.L3_7:
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_11(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_8
.L3_6:
    movq %rbx, %r10
    movq (%r10), %r12
    leaq -392(%rbp), %r13
    movq %r13, %rdi
    xorl %esi, %esi
    movq $152, %rdx
    call memset@PLT
    leaq -464(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    movq %r14, %r10
    movq %r13, %r11
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
    movq $72, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq -760(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %r12, %rdi
    movq %r13, %rsi
    movq $152, %rdx
    call memcpy@PLT
    movq %r15, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L3_8:
    movq $32, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_10
    jmp .L3_9
.L3_10:
    movq $8, %rcx
    movq %r15, %rbx
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
.L3_11:
.L3_9:
    movq %r15, %r10
    movq (%r10), %rbx
    leaq -472(%rbp), %r14
    leaq lb_gpu_16frame_state_type(%rip), %r12
    leaq -488(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq %r12, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %rbx, %rsi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -528(%rbp), %rdi
    call lb_interop_Reference_0g1_gpu_FrameState_adopt@PLT
    addq $48, %rsp
    leaq -528(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_13
    jmp .L3_12
.L3_13:
    movq $8, %rcx
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
.L3_14:
.L3_12:
    movq %r12, %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -544(%rbp), %r13
    movq %r14, %rsi
    leaq -592(%rbp), %rdi
    call lb_interop_Reference_0g1_gpu_FrameState_lease@PLT
    leaq -592(%rbp), %r15
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_16
    jmp .L3_15
.L3_16:
    movq $16, %rcx
    movq %r15, %rbx
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
    movq %r14, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_release@PLT
.L3_53:
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
.L3_17:
.L3_15:
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -608(%rbp), %rax
    movq %rax, -768(%rbp)
    movq %r14, %r10
    movq -768(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -768(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -768(%rbp), %r10
    movq -816(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -816(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -776(%rbp)
    leaq -632(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq -776(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
    .globl lb_gpu_Frame_11state_value
    .type lb_gpu_Frame_11state_value, @function
lb_gpu_Frame_11state_value:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_1
    jmp .L4_2
.L4_1:
    leaq -96(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    jmp .L4_3
.L4_2:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_14frame_finished(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
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
.L4_4:
.L4_3:
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
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
.L4_5:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_gpu_Frame_size
    .type lb_gpu_Frame_size, @function
lb_gpu_Frame_size:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -120(%rbp)
    leaq -120(%rbp), %r10
    movq (%r10), %rbx
    leaq -128(%rbp), %r12
    movq %rbx, %rsi
    leaq -168(%rbp), %rdi
    call lb_gpu_Frame_11state_value@PLT
    leaq -168(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_2
    jmp .L5_1
.L5_2:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -112(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_3:
.L5_1:
    movq %r13, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %rdi
    call lb_interop_Reference_0g1_gpu_FrameState_value@PLT
    movq %rax, %rbx
    movq %rbx, %rsi
    leaq -200(%rbp), %rdi
    call lb_gpu_FrameState_check@PLT
    leaq -200(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_5
    jmp .L5_4
.L5_5:
    leaq -112(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_6:
.L5_4:
    movq %r12, %rdi
    call lb_interop_Reference_0g1_gpu_FrameState_value@PLT
    movq %rax, %rbx
    movq $72, %rcx
    addq %rcx, %rbx
    leaq -112(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_7:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_gpu_Frame_target
    .type lb_gpu_Frame_target, @function
lb_gpu_Frame_target:
    pushq %rbp
    movq %rsp, %rbp
    subq $512, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    leaq -96(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -136(%rbp), %rdi
    call lb_gpu_Frame_11state_value@PLT
    leaq -136(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_2
    jmp .L6_1
.L6_2:
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
.L6_3:
.L6_1:
    movq %r13, %rdi
    call lb_interop_Reference_0g1_gpu_FrameState_value@PLT
    movq %rax, %rbx
    movq %rbx, %rsi
    leaq -168(%rbp), %rdi
    call lb_gpu_FrameState_check@PLT
    leaq -168(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L6_5
    jmp .L6_4
.L6_5:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L6_6:
.L6_4:
    leaq -184(%rbp), %r14
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L6_7
    jmp .L6_8
.L6_7:
    leaq -200(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L6_9
.L6_8:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_14frame_finished(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq -216(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
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
.L6_10:
.L6_9:
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -248(%rbp), %rax
    movq %rax, -432(%rbp)
    leaq -280(%rbp), %rax
    movq %rax, -440(%rbp)
    movq -440(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $72, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -448(%rbp)
    movq -448(%rbp), %r10
    movsd (%r10), %xmm12
    movq -440(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -456(%rbp)
    movq -456(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -448(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -464(%rbp)
    movq -464(%rbp), %r10
    movsd (%r10), %xmm12
    movq -440(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -472(%rbp)
    movq -472(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -440(%rbp), %r10
    movq -432(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -296(%rbp), %rax
    movq %rax, -480(%rbp)
    leaq -312(%rbp), %rax
    movq %rax, -488(%rbp)
    movq -488(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -448(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -496(%rbp)
    movq -496(%rbp), %r10
    movsd (%r10), %xmm12
    leaq .Ltext_14(%rip), %rax
    movq %rax, -504(%rbp)
    movapd %xmm12, %xmm0
    movl $32, %edi
    movl $1, %esi
    movq -504(%rbp), %rdx
    call lb_core_6f_to_u@PLT
    movq %rax, %r13
    movq -488(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r13d, (%r10)
    movq -448(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    movl $32, %edi
    movl $1, %esi
    movq -504(%rbp), %rdx
    call lb_core_6f_to_u@PLT
    movq %rax, %r13
    movq -488(%rbp), %rax
    movq $12, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r13d, (%r10)
    movq -488(%rbp), %r10
    movq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -384(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq -432(%rbp), %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $56, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq -480(%rbp), %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_gpu_18render_target_type(%rip), %r15
    subq $96, %rsp
    movq %r13, %r10
    leaq 0(%rsp), %r11
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
    movq %r15, %r10
    leaq 72(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -424(%rbp), %rdi
    call lb_interop_View_0g1_gpu_RenderTarget_make@PLT
    addq $96, %rsp
    leaq -424(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L6_12
    jmp .L6_11
.L6_12:
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
.L6_13:
.L6_11:
    leaq -88(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
.L6_14:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_gpu_Frame_present
    .type lb_gpu_Frame_present, @function
lb_gpu_Frame_present:
    pushq %rbp
    movq %rsp, %rbp
    subq $352, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    leaq 16(%rbp), %r10
    leaq -120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -96(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %rsi
    leaq -160(%rbp), %rdi
    call lb_gpu_Frame_11state_value@PLT
    leaq -160(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_2
    jmp .L7_1
.L7_2:
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
.L7_3:
.L7_1:
    movq %r13, %rdi
    call lb_interop_Reference_0g1_gpu_FrameState_value@PLT
    movq %rax, %rbx
    movq %rbx, %rsi
    leaq -192(%rbp), %rdi
    call lb_gpu_FrameState_check@PLT
    leaq -192(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L7_5
    jmp .L7_4
.L7_5:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -344(%rbp), %rdi
    call lb_gpu_Frame_close@PLT
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
.L7_6:
.L7_4:
    leaq -120(%rbp), %rax
    movq %rax, -336(%rbp)
    subq $32, %rsp
    movq -336(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -224(%rbp), %rdi
    call lb_gpu_11check_color@PLT
    addq $32, %rsp
    leaq -224(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L7_8
    jmp .L7_7
.L7_8:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -344(%rbp), %rdi
    call lb_gpu_Frame_close@PLT
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
.L7_9:
.L7_7:
    movq $112, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %rax
    testq %rax, %rax
    jne .L7_10
    jmp .L7_11
.L7_10:
    jmp .L7_12
.L7_11:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_gpu_unavailable(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_16(%rip), %r14
    leaq -240(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $46, %rax
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
    movq -344(%rbp), %rdi
    call lb_gpu_Frame_close@PLT
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
.L7_13:
.L7_12:
    movq $128, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L7_14
    jmp .L7_15
.L7_14:
    jmp .L7_16
.L7_15:
    leaq .Ltext_17(%rip), %rbx
    leaq -256(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $42, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_18(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_16:
    movq -344(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L7_17
    jmp .L7_18
.L7_17:
    leaq -272(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L7_19
.L7_18:
    leaq .Ltext_19(%rip), %rbx
    leaq -288(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $26, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_20(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_19:
    movq %r13, %rdi
    call lb_interop_Lease_invalidate@PLT
    movq $144, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $96, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
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
    movq -336(%rbp), %r10
    leaq 72(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -352(%rbp), %rsi
    leaq -328(%rbp), %rdi
    movq %r15, %r11
    call *%r11
    addq $96, %rsp
    leaq -328(%rbp), %r12
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L7_21
    jmp .L7_20
.L7_21:
    movq $8, %rcx
    movq %r12, %rbx
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
    movq -344(%rbp), %rdi
    call lb_gpu_Frame_close@PLT
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
.L7_22:
.L7_20:
    movq %r12, %r10
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
    movq -344(%rbp), %rdi
    call lb_gpu_Frame_close@PLT
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
.L7_23:
    movq %rbx, %rdi
    call lb_gpu_Frame_close@PLT
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_gpu_Frame_close
    .type lb_gpu_Frame_close, @function
lb_gpu_Frame_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %r10
    movq (%r10), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_4
    jmp .L8_2
.L8_4:
    leaq -56(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L8_1:
    leaq -80(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %rbx, %rdi
    call lb_interop_Lease_invalidate@PLT
    movq %rbx, %rdi
    call lb_interop_Lease_release@PLT
    jmp .L8_3
.L8_2:
.L8_3:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_8
    jmp .L8_6
.L8_8:
    leaq -88(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
.L8_5:
    leaq -104(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rdi
    call lb_interop_Reference_0g1_gpu_FrameState_close@PLT
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    call lb_ownership_release@PLT
.L8_9:
    jmp .L8_7
.L8_6:
.L8_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_Frame_trace
    .type lb_gpu_Frame_trace, @function
lb_gpu_Frame_trace:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    movq %rdx, -80(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_4
    jmp .L9_2
.L9_4:
    leaq -88(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
.L9_1:
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -80(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    leaq -120(%rbp), %r10
    movq %r13, (%r10)
    leaq -136(%rbp), %r10
    movq %r14, (%r10)
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r15, %rdi
    call lb_ownership_12check_thread@PLT
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r15, %rdi
    movq %r14, %rsi
    movq %r13, %r11
    call *%r11
.L9_9:
    jmp .L9_3
.L9_2:
.L9_3:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_8
    jmp .L9_6
.L9_8:
    leaq -104(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L9_5:
    leaq -64(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq %r12, %rsi
    movq %r13, %rdx
    call lb_interop_Lease_trace@PLT
    jmp .L9_7
.L9_6:
.L9_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_RenderTarget_size
    .type lb_gpu_RenderTarget_size, @function
lb_gpu_RenderTarget_size:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -120(%rbp)
    leaq -120(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -152(%rbp), %rdi
    call lb_gpu_FrameState_check@PLT
    leaq -152(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_2
    jmp .L10_1
.L10_2:
    leaq -112(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_3:
.L10_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq $72, %rcx
    addq %rcx, %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call lb_gpu_11frame_scale@PLT
    movsd %xmm0, -200(%rbp)
    movq %r12, %r10
    movq (%r10), %rbx
    movq $72, %rcx
    addq %rcx, %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call lb_gpu_11frame_scale@PLT
    movsd %xmm0, -208(%rbp)
    leaq -192(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm12
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq $24, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm13
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd %xmm13, (%r10)
    movsd -200(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd %xmm12, (%r10)
    movsd -208(%rbp), %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd %xmm12, (%r10)
    movq %r12, %r10
    movq (%r10), %r13
    movq $72, %rcx
    addq %rcx, %r13
    movq $32, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd %xmm12, (%r10)
    leaq -112(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_4:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_gpu_RenderTarget_region
    .type lb_gpu_RenderTarget_region, @function
lb_gpu_RenderTarget_region:
    pushq %rbp
    movq %rsp, %rbp
    subq $496, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    leaq 16(%rbp), %r10
    leaq -128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -96(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -160(%rbp), %rdi
    call lb_gpu_FrameState_check@PLT
    leaq -160(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_2
    jmp .L11_1
.L11_2:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L11_3:
.L11_1:
    leaq -128(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -192(%rbp), %rdi
    call lb_gpu_12check_region@PLT
    addq $32, %rsp
    leaq -192(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L11_5
    jmp .L11_4
.L11_5:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L11_6:
.L11_4:
    leaq -224(%rbp), %r13
    leaq -256(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $24, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    addsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movq %r14, %r10
    movsd %xmm12, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    addsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd %xmm12, (%r10)
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd %xmm12, (%r10)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd %xmm12, (%r10)
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    subq $32, %rsp
    movq %r13, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -288(%rbp), %rdi
    call lb_gpu_12check_region@PLT
    addq $32, %rsp
    leaq -288(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L11_8
    jmp .L11_7
.L11_8:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L11_9:
.L11_7:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -440(%rbp)
    movq -440(%rbp), %rax
    movq $72, %rcx
    addq %rcx, %rax
    movq %rax, -448(%rbp)
    movq -448(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm12
    movq -448(%rbp), %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call lb_gpu_11frame_scale@PLT
    movsd %xmm0, -456(%rbp)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -464(%rbp)
    movq -464(%rbp), %rax
    movq $72, %rcx
    addq %rcx, %rax
    movq %rax, -472(%rbp)
    movq -472(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm12
    movq -472(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -480(%rbp)
    movq -480(%rbp), %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call lb_gpu_11frame_scale@PLT
    movapd %xmm0, %xmm12
    leaq -304(%rbp), %rax
    movq %rax, -488(%rbp)
    movq $56, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    subq $32, %rsp
    movq %r13, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movsd -456(%rbp), %xmm0
    movapd %xmm12, %xmm1
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_gpu_14intersect_clip@PLT
    addq $32, %rsp
    leaq -320(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -320(%rbp), %r14
    movq %r14, %r10
    movq -488(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -392(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    movq %r12, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $56, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq -488(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_gpu_18render_target_type(%rip), %rbx
    subq $96, %rsp
    movq %r14, %r10
    leaq 0(%rsp), %r11
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
    movq %rbx, %r10
    leaq 72(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r15, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -432(%rbp), %rdi
    call lb_interop_View_0g1_gpu_RenderTarget_make@PLT
    addq $96, %rsp
    leaq -432(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_11
    jmp .L11_10
.L11_11:
    movq $8, %rcx
    movq %r14, %rbx
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
.L11_12:
.L11_10:
    leaq -88(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
.L11_13:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_gpu_RenderTarget_clipped
    .type lb_gpu_RenderTarget_clipped, @function
lb_gpu_RenderTarget_clipped:
    pushq %rbp
    movq %rsp, %rbp
    subq $496, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    leaq 16(%rbp), %r10
    leaq -128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -96(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -160(%rbp), %rdi
    call lb_gpu_FrameState_check@PLT
    leaq -160(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_2
    jmp .L12_1
.L12_2:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L12_3:
.L12_1:
    leaq -128(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -192(%rbp), %rdi
    call lb_gpu_12check_region@PLT
    addq $32, %rsp
    leaq -192(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L12_5
    jmp .L12_4
.L12_5:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L12_6:
.L12_4:
    leaq -224(%rbp), %r13
    leaq -256(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $24, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -440(%rbp)
    movq -440(%rbp), %r10
    movsd (%r10), %xmm12
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    addsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movq %r14, %r10
    movsd %xmm12, (%r10)
    movq -440(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    addsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd %xmm12, (%r10)
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd %xmm12, (%r10)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd %xmm12, (%r10)
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    subq $32, %rsp
    movq %r13, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -288(%rbp), %rdi
    call lb_gpu_12check_region@PLT
    addq $32, %rsp
    leaq -288(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L12_8
    jmp .L12_7
.L12_8:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L12_9:
.L12_7:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -448(%rbp)
    movq -448(%rbp), %rax
    movq $72, %rcx
    addq %rcx, %rax
    movq %rax, -456(%rbp)
    movq -456(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm12
    movq -456(%rbp), %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call lb_gpu_11frame_scale@PLT
    movsd %xmm0, -464(%rbp)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -472(%rbp)
    movq -472(%rbp), %rax
    movq $72, %rcx
    addq %rcx, %rax
    movq %rax, -480(%rbp)
    movq -480(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm12
    movq -480(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -488(%rbp)
    movq -488(%rbp), %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call lb_gpu_11frame_scale@PLT
    movapd %xmm0, %xmm12
    leaq -304(%rbp), %rax
    movq %rax, -496(%rbp)
    movq $56, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    subq $32, %rsp
    movq %r13, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movsd -464(%rbp), %xmm0
    movapd %xmm12, %xmm1
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_gpu_14intersect_clip@PLT
    addq $32, %rsp
    leaq -320(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -320(%rbp), %r14
    movq %r14, %r10
    movq -496(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -392(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    movq %r12, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq -440(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $56, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq -496(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_gpu_18render_target_type(%rip), %rbx
    subq $96, %rsp
    movq %r14, %r10
    leaq 0(%rsp), %r11
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
    movq %rbx, %r10
    leaq 72(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r15, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -432(%rbp), %rdi
    call lb_interop_View_0g1_gpu_RenderTarget_make@PLT
    addq $96, %rsp
    leaq -432(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_11
    jmp .L12_10
.L12_11:
    movq $8, %rcx
    movq %r14, %rbx
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
.L12_12:
.L12_10:
    leaq -88(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
.L12_13:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_gpu_RenderTarget_triangles
    .type lb_gpu_RenderTarget_triangles, @function
lb_gpu_RenderTarget_triangles:
    pushq %rbp
    movq %rsp, %rbp
    subq $352, %rsp
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
    movl %r8d, -120(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -152(%rbp), %rdi
    call lb_gpu_FrameState_check@PLT
    leaq -152(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_2
    jmp .L13_1
.L13_2:
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
.L13_3:
.L13_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq $72, %rcx
    addq %rcx, %rbx
    movq $16, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -296(%rbp)
    movq -296(%rbp), %r10
    movsd (%r10), %xmm12
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call lb_gpu_11frame_scale@PLT
    movsd %xmm0, -304(%rbp)
    movq %r12, %r10
    movq (%r10), %rbx
    movq $72, %rcx
    addq %rcx, %rbx
    movq $24, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -312(%rbp)
    movq -312(%rbp), %r10
    movsd (%r10), %xmm12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call lb_gpu_11frame_scale@PLT
    movsd %xmm0, -320(%rbp)
    leaq -184(%rbp), %rbx
    leaq -216(%rbp), %rax
    movq %rax, -328(%rbp)
    movq -328(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm12
    movsd -304(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq -328(%rbp), %r10
    movsd %xmm12, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    movsd -320(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq -328(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd %xmm12, (%r10)
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    movsd -304(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq -328(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd %xmm12, (%r10)
    movq $24, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm12
    movsd -320(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq -328(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd %xmm12, (%r10)
    movq -328(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -336(%rbp)
    leaq -104(%rbp), %r14
    movq $56, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    leaq -120(%rbp), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, -352(%rbp)
    leaq -256(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq -352(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 8(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -336(%rbp), %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r15, %r10
    movq 0(%r10), %r8
    movq 8(%r10), %r9
    leaq -288(%rbp), %rdi
    call lb_gpu_Canvas_triangles@PLT
    addq $48, %rsp
    leaq -288(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_5
    jmp .L13_4
.L13_5:
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
.L13_6:
.L13_4:
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
    .globl lb_gpu_RenderTarget_mask
    .type lb_gpu_RenderTarget_mask, @function
lb_gpu_RenderTarget_mask:
    pushq %rbp
    movq %rsp, %rbp
    subq $496, %rsp
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
    movl %r8d, -120(%rbp)
    movl %r9d, -136(%rbp)
    leaq 16(%rbp), %r10
    leaq -168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 48(%rbp), %r10
    leaq -192(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -224(%rbp), %rdi
    call lb_gpu_FrameState_check@PLT
    leaq -224(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L14_2
    jmp .L14_1
.L14_2:
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
.L14_3:
.L14_1:
    leaq -168(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -256(%rbp), %rdi
    call lb_gpu_12check_region@PLT
    addq $32, %rsp
    leaq -256(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L14_5
    jmp .L14_4
.L14_5:
    leaq -80(%rbp), %rbx
    movq %r14, %r10
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_6:
.L14_4:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %rax
    movq $72, %rcx
    addq %rcx, %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -376(%rbp)
    movq -376(%rbp), %r10
    movsd (%r10), %xmm12
    movq -368(%rbp), %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call lb_gpu_11frame_scale@PLT
    movsd %xmm0, -384(%rbp)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -392(%rbp)
    movq -392(%rbp), %rax
    movq $72, %rcx
    addq %rcx, %rax
    movq %rax, -400(%rbp)
    movq -400(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -408(%rbp)
    movq -408(%rbp), %r10
    movsd (%r10), %xmm12
    movq -400(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -416(%rbp)
    movq -416(%rbp), %r10
    movsd (%r10), %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call lb_gpu_11frame_scale@PLT
    movsd %xmm0, -424(%rbp)
    leaq -288(%rbp), %rax
    movq %rax, -432(%rbp)
    leaq -320(%rbp), %rax
    movq %rax, -440(%rbp)
    movq -440(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $24, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    addsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movsd -384(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq -440(%rbp), %r10
    movsd %xmm12, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    addsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movsd -424(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq -440(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd %xmm12, (%r10)
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    movsd -384(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq -440(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd %xmm12, (%r10)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    movsd -424(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq -440(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd %xmm12, (%r10)
    movq -440(%rbp), %r10
    movq -432(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -448(%rbp)
    leaq -104(%rbp), %r15
    leaq -120(%rbp), %rax
    movq %rax, -456(%rbp)
    movq -456(%rbp), %r10
    movl (%r10), %eax
    movl %eax, -464(%rbp)
    leaq -136(%rbp), %rax
    movq %rax, -472(%rbp)
    movq -472(%rbp), %r10
    movl (%r10), %eax
    movl %eax, -480(%rbp)
    leaq -192(%rbp), %rax
    movq %rax, -488(%rbp)
    movq $56, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -496(%rbp)
    movq -448(%rbp), %rax
    movq $72, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm12
    movq $24, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm13
    subq $80, %rsp
    movq -432(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -488(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -496(%rbp), %r10
    leaq 56(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    movq -448(%rbp), %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movl -464(%rbp), %r8d
    movl -480(%rbp), %r9d
    leaq -352(%rbp), %rdi
    call lb_gpu_11canvas_mask@PLT
    addq $80, %rsp
    leaq -352(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L14_8
    jmp .L14_7
.L14_8:
    leaq -80(%rbp), %rbx
    movq %r14, %r10
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_9:
.L14_7:
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
    .globl lb_gpu_11frame_scale
    .type lb_gpu_11frame_scale, @function
lb_gpu_11frame_scale:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movsd %xmm0, -24(%rbp)
    movsd %xmm1, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movq $0, %rax
    movq %rax, %xmm13
    ucomisd %xmm13, %xmm12
    seta %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L15_1
    jmp .L15_2
.L15_1:
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movaps %xmm13, %xmm8
    divsd %xmm12, %xmm8
    movapd %xmm8, %xmm13
    jmp .L15_3
.L15_2:
.L15_3:
    movapd %xmm13, %xmm0
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L15_4:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_gpu_12check_region
    .type lb_gpu_12check_region, @function
lb_gpu_12check_region:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    leaq 16(%rbp), %r10
    leaq -96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movabsq $4670232813583204352, %rax
    movq %rax, %xmm13
    movq %xmm13, %rax
    btcq $63, %rax
    movq %rax, %xmm14
    ucomisd %xmm14, %xmm12
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L16_4
    jmp .L16_19
.L16_19:
    movl %r12d, %r13d
    jmp .L16_5
.L16_4:
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r13d
.L16_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L16_6
    jmp .L16_20
.L16_20:
    movl %r12d, %r13d
    jmp .L16_7
.L16_6:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    ucomisd %xmm14, %xmm12
    setae %al
    movzbl %al, %r13d
.L16_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L16_8
    jmp .L16_21
.L16_21:
    movl %r12d, %r13d
    jmp .L16_9
.L16_8:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r13d
.L16_9:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L16_10
    jmp .L16_22
.L16_22:
    movl %r12d, %r13d
    jmp .L16_11
.L16_10:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    movq $0, %rax
    movq %rax, %xmm14
    ucomisd %xmm14, %xmm12
    setae %al
    movzbl %al, %r13d
.L16_11:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L16_12
    jmp .L16_23
.L16_23:
    movl %r12d, %r13d
    jmp .L16_13
.L16_12:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r13d
.L16_13:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L16_14
    jmp .L16_24
.L16_24:
    movl %r12d, %r13d
    jmp .L16_15
.L16_14:
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    movq $0, %rax
    movq %rax, %xmm14
    ucomisd %xmm14, %xmm12
    setae %al
    movzbl %al, %r13d
.L16_15:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L16_16
    jmp .L16_25
.L16_25:
    movl %r12d, %ebx
    jmp .L16_17
.L16_16:
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L16_17:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L16_2
.L16_1:
    leaq -64(%rbp), %rbx
    leaq lb_gpu_16invalid_geometry(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_29(%rip), %r12
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $58, %rax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_18:
    jmp .L16_3
.L16_2:
.L16_3:
    leaq -64(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_14intersect_clip
    .type lb_gpu_14intersect_clip, @function
lb_gpu_14intersect_clip:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -64(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movsd %xmm0, -112(%rbp)
    movsd %xmm1, -128(%rbp)
    leaq 16(%rbp), %r10
    leaq -96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    movq %r12, %rcx
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
    movsd %xmm8, -168(%rbp)
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -176(%rbp)
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -184(%rbp)
    movsd -176(%rbp), %xmm8
    movsd -184(%rbp), %xmm9
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movsd -168(%rbp), %xmm0
    movapd %xmm12, %xmm1
    call lb_math_max@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    call lb_math_floor@PLT
    movsd %xmm0, -192(%rbp)
    movq $4, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    movq %r13, %rcx
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
    movsd %xmm8, -200(%rbp)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -208(%rbp)
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -216(%rbp)
    movsd -208(%rbp), %xmm8
    movsd -216(%rbp), %xmm9
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movsd -200(%rbp), %xmm0
    movapd %xmm12, %xmm1
    call lb_math_max@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    call lb_math_floor@PLT
    movsd %xmm0, -224(%rbp)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    movq %r13, %rcx
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
    movsd -168(%rbp), %xmm8
    addsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm13
    movsd -176(%rbp), %xmm8
    addsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    movsd -184(%rbp), %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call lb_math_min@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    call lb_math_ceil@PLT
    movsd %xmm0, -232(%rbp)
    movq $12, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq %rbx, %rcx
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
    movsd -200(%rbp), %xmm8
    addsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movsd -208(%rbp), %xmm8
    addsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    movsd -216(%rbp), %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    call lb_math_min@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    call lb_math_ceil@PLT
    movsd %xmm0, -240(%rbp)
    movsd -232(%rbp), %xmm8
    movsd -192(%rbp), %xmm9
    ucomisd %xmm8, %xmm9
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L17_8
    jmp .L17_4
.L17_8:
    movl %ebx, %r12d
    jmp .L17_5
.L17_4:
    movsd -240(%rbp), %xmm8
    movsd -224(%rbp), %xmm9
    ucomisd %xmm8, %xmm9
    setae %al
    movzbl %al, %r12d
.L17_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L17_1
    jmp .L17_2
.L17_1:
    leaq -144(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
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
.L17_6:
    jmp .L17_3
.L17_2:
.L17_3:
    leaq -160(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_30(%rip), %r12
    movsd -192(%rbp), %xmm0
    movl $32, %edi
    movl $1, %esi
    movq %r12, %rdx
    call lb_core_6f_to_u@PLT
    movq %rax, %r13
    movq %rbx, %r10
    movl %r13d, (%r10)
    movsd -224(%rbp), %xmm0
    movl $32, %edi
    movl $1, %esi
    movq %r12, %rdx
    call lb_core_6f_to_u@PLT
    movq %rax, %r13
    movq $4, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r13d, (%r10)
    movsd -232(%rbp), %xmm8
    movsd -192(%rbp), %xmm9
    subsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movapd %xmm12, %xmm0
    movl $32, %edi
    movl $1, %esi
    movq %r12, %rdx
    call lb_core_6f_to_u@PLT
    movq %rax, %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r13d, (%r10)
    movsd -240(%rbp), %xmm8
    movsd -224(%rbp), %xmm9
    subsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movapd %xmm12, %xmm0
    movl $32, %edi
    movl $1, %esi
    movq %r12, %rdx
    call lb_core_6f_to_u@PLT
    movq %rax, %r12
    movq $12, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
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
.L17_7:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_interop_Reference_0g1_gpu_FrameState_adopt
    .type lb_interop_Reference_0g1_gpu_FrameState_adopt, @function
    .weak lb_interop_Reference_0g1_gpu_FrameState_adopt
lb_interop_Reference_0g1_gpu_FrameState_adopt:
    pushq %rbp
    movq %rsp, %rbp
    subq $384, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    leaq -160(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq 16(%rbp), %r10
    leaq -144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -176(%rbp), %r12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L18_1
    jmp .L18_2
.L18_1:
    leaq -192(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L18_3
.L18_2:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    leaq -192(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L18_3:
    leaq -192(%rbp), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -200(%rbp), %rax
    movq %rax, -376(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %r11
    movq $0, 0(%r11)
    leaq -144(%rbp), %rax
    movq %rax, -360(%rbp)
    subq $48, %rsp
    movq -360(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -352(%rbp), %rsi
    leaq -272(%rbp), %rdi
    call lb_interop_Reservation_0g1_gpu_FrameState_init@PLT
    addq $48, %rsp
    leaq -272(%rbp), %r14
    leaq -312(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movb %r14b, (%r10)
    movq -352(%rbp), %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, -368(%rbp)
    movl -368(%rbp), %eax
    testl %eax, %eax
    jne .L18_7
    jmp .L18_6
.L18_7:
    leaq -232(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L18_4
.L18_6:
    leaq -208(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    jmp .L18_5
.L18_4:
    movq -360(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rdi
    movq %r13, %r11
    call *%r11
    leaq -328(%rbp), %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $152, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L18_9
    jmp .L18_8
.L18_9:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L18_8:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L18_10:
.L18_5:
    movq %r13, %r10
    movq -376(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -376(%rbp), %rdi
    movq %rbx, %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_interop_Reservation_0g1_gpu_FrameState_publish@PLT
    leaq -336(%rbp), %r10
    movq %rax, 0(%r10)
    leaq -336(%rbp), %rbx
    leaq -88(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r14, %rsi
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
.L18_11:
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_interop_Reference_0g1_gpu_FrameState_lease
    .type lb_interop_Reference_0g1_gpu_FrameState_lease, @function
    .weak lb_interop_Reference_0g1_gpu_FrameState_lease
lb_interop_Reference_0g1_gpu_FrameState_lease:
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
    leaq -104(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -144(%rbp), %rdi
    call lb_interop_Reference_0g1_gpu_FrameState_get@PLT
    leaq -144(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L19_2
    jmp .L19_1
.L19_2:
    movq $8, %rcx
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
.L19_3:
.L19_1:
    leaq -160(%rbp), %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %r13
    movq lb_interop_Owner_0g1_gpu_FrameState_7is_open@GOTPCREL(%rip), %r14
    movq lb_interop_Owner_0g1_gpu_FrameState_enter@GOTPCREL(%rip), %r15
    movq lb_interop_Owner_0g1_gpu_FrameState_leave@GOTPCREL(%rip), %rax
    movq %rax, -256(%rbp)
    movq -248(%rbp), %rsi
    movq %r13, %rdx
    movq %r14, %rcx
    movq %r15, %r8
    movq -256(%rbp), %r9
    leaq -192(%rbp), %rdi
    call lb_interop_Lease_init@PLT
    leaq -192(%rbp), %r13
    leaq -240(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $40, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movb %r13b, (%r10)
    movq -248(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r15, %r10
    movzbl (%r10), %eax
    movl %eax, -264(%rbp)
    movl -264(%rbp), %eax
    testl %eax, %eax
    jne .L19_5
    jmp .L19_4
.L19_5:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L19_6:
.L19_4:
    leaq -96(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
.L19_7:
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_interop_Reference_0g1_gpu_FrameState_release
    .type lb_interop_Reference_0g1_gpu_FrameState_release, @function
    .weak lb_interop_Reference_0g1_gpu_FrameState_release
lb_interop_Reference_0g1_gpu_FrameState_release:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_release@PLT
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Reference_0g1_gpu_FrameState_value
    .type lb_interop_Reference_0g1_gpu_FrameState_value, @function
    .weak lb_interop_Reference_0g1_gpu_FrameState_value
lb_interop_Reference_0g1_gpu_FrameState_value:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -96(%rbp), %rdi
    call lb_interop_Reference_0g1_gpu_FrameState_get@PLT
    leaq -96(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L21_4
    jmp .L21_3
.L21_4:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -56(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L21_1
.L21_3:
    movq %r12, %r10
    movq (%r10), %rbx
    jmp .L21_2
.L21_1:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq .Ltext_33(%rip), %r12
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    movq $0, %rax
    movq %rax, %rbx
.L21_2:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L21_5:
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_interop_View_0g1_gpu_RenderTarget_make
    .type lb_interop_View_0g1_gpu_RenderTarget_make, @function
    .weak lb_interop_View_0g1_gpu_RenderTarget_make
lb_interop_View_0g1_gpu_RenderTarget_make:
    pushq %rbp
    movq %rsp, %rbp
    subq $464, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -200(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq 16(%rbp), %r10
    leaq -160(%rbp), %r11
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
    leaq 88(%rbp), %r10
    leaq -184(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -200(%rbp), %rax
    movq %rax, -448(%rbp)
    movq -448(%rbp), %rsi
    leaq -232(%rbp), %rdi
    call lb_interop_Lease_check@PLT
    leaq -232(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L22_2
    jmp .L22_1
.L22_2:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L22_3:
.L22_1:
    leaq -288(%rbp), %r12
    leaq -344(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    leaq -184(%rbp), %rax
    movq %rax, -456(%rbp)
    movq -456(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $232, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $24, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $0, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq lb_interop_ViewOwner_0g1_gpu_RenderTarget_9drop_view@GOTPCREL(%rip), %r15
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq lb_interop_ViewOwner_0g1_gpu_RenderTarget_10trace_view@GOTPCREL(%rip), %rbx
    movq $40, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq -360(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq $232, %rdx
    movq %rbx, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    leaq -400(%rbp), %rdi
    call lb_ownership_reserve@PLT
    leaq -400(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L22_5
    jmp .L22_4
.L22_5:
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
.L22_6:
.L22_4:
    movq %r13, %r10
    movq (%r10), %rbx
    movq $64, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $120, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    leaq -160(%rbp), %r15
    movq %r15, %r10
    movq %r14, %r11
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
    movq $192, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq -456(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $216, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq -448(%rbp), %rdi
    call lb_interop_Lease_clone@PLT
    leaq -416(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -416(%rbp), %r15
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -424(%rbp), %r14
    movq %r14, %r11
    movq $0, 0(%r11)
    leaq -440(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    movq %r14, %r10
    movq %rbx, (%r10)
.L22_8:
    leaq -88(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
.L22_7:
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_interop_Reference_0g1_gpu_FrameState_close
    .type lb_interop_Reference_0g1_gpu_FrameState_close, @function
    .weak lb_interop_Reference_0g1_gpu_FrameState_close
lb_interop_Reference_0g1_gpu_FrameState_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    movq %r12, %r10
    movq (%r10), %rbx
    movq $120, %rcx
    addq %rcx, %rbx
    movq $32, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L23_2
.L23_1:
    leaq .Ltext_35(%rip), %rbx
    leaq -48(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $48, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_36(%rip), %rbx
    movq %rbx, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L23_3
.L23_2:
.L23_3:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_interop_11close_owner_0g1_gpu_FrameState@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Reference_0g1_gpu_FrameState_trace
    .type lb_interop_Reference_0g1_gpu_FrameState_trace, @function
    .weak lb_interop_Reference_0g1_gpu_FrameState_trace
lb_interop_Reference_0g1_gpu_FrameState_trace:
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
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_12check_thread@PLT
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq (%r10), %r12
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %r13, %rsi
    movq %rbx, %r11
    call *%r11
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Reservation_0g1_gpu_FrameState_init
    .type lb_interop_Reservation_0g1_gpu_FrameState_init, @function
    .weak lb_interop_Reservation_0g1_gpu_FrameState_init
lb_interop_Reservation_0g1_gpu_FrameState_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $336, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq 16(%rbp), %r10
    leaq -128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -328(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -320(%rbp)
    movq -320(%rbp), %rax
    movq $33, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L25_4
    jmp .L25_10
.L25_10:
    movl %r12d, %r14d
    jmp .L25_5
.L25_4:
    call lb_thread_7is_main@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L25_5:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L25_1
    jmp .L25_2
.L25_1:
    leaq -80(%rbp), %rbx
    leaq lb_interop_12wrong_thread(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_37(%rip), %r12
    leaq -144(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $49, %rax
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
.L25_6:
    jmp .L25_3
.L25_2:
.L25_3:
    leaq -200(%rbp), %r12
    leaq -256(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movq -320(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $200, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq lb_interop_Owner_0g1_gpu_FrameState_12finish_owner@GOTPCREL(%rip), %r15
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq lb_interop_Owner_0g1_gpu_FrameState_10drop_owner@GOTPCREL(%rip), %r13
    movq $32, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq lb_interop_Owner_0g1_gpu_FrameState_11trace_owner@GOTPCREL(%rip), %r13
    movq $40, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $48, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq -272(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq $200, %rdx
    movq %r13, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    leaq -312(%rbp), %rdi
    call lb_ownership_reserve@PLT
    leaq -312(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L25_8
    jmp .L25_7
.L25_8:
    movq $8, %rcx
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
.L25_9:
.L25_7:
    movq %r14, %r10
    movq (%r10), %r13
    movq $64, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $120, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq -320(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -328(%rbp), %r10
    movq %r13, (%r10)
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
    .globl lb_interop_Reservation_0g1_gpu_FrameState_publish
    .type lb_interop_Reservation_0g1_gpu_FrameState_publish, @function
    .weak lb_interop_Reservation_0g1_gpu_FrameState_publish
lb_interop_Reservation_0g1_gpu_FrameState_publish:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    leaq -88(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -56(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L26_1
    jmp .L26_2
.L26_1:
    jmp .L26_3
.L26_2:
    leaq .Ltext_38(%rip), %rbx
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $56, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_39(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
.L26_3:
    movq $160, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq -72(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movq $168, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    leaq -88(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L26_4
    jmp .L26_5
.L26_4:
    leaq -120(%rbp), %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L26_6
.L26_5:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -120(%rbp), %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L26_6:
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -128(%rbp), %r13
    movq %r13, %r11
    movq $0, 0(%r11)
    leaq -144(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call lb_ownership_11check_alive@PLT
    movq %r13, %r10
    movq %r12, (%r10)
.L26_8:
    leaq -48(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L26_7:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_interop_Reference_0g1_gpu_FrameState_get
    .type lb_interop_Reference_0g1_gpu_FrameState_get, @function
    .weak lb_interop_Reference_0g1_gpu_FrameState_get
lb_interop_Reference_0g1_gpu_FrameState_get:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    movq %r12, %r10
    movq (%r10), %rbx
    movq $184, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L27_1
    jmp .L27_2
.L27_1:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_interop_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_41(%rip), %r13
    leaq -104(%rbp), %r14
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
.L27_4:
    jmp .L27_3
.L27_2:
.L27_3:
    movq $160, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L27_5
    jmp .L27_6
.L27_5:
    jmp .L27_7
.L27_6:
    leaq .Ltext_42(%rip), %rbx
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $40, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_43(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
.L27_7:
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
.L27_8:
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_interop_Owner_0g1_gpu_FrameState_7is_open
    .type lb_interop_Owner_0g1_gpu_FrameState_7is_open, @function
    .weak lb_interop_Owner_0g1_gpu_FrameState_7is_open
lb_interop_Owner_0g1_gpu_FrameState_7is_open:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    movq $184, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L28_1:
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_interop_Owner_0g1_gpu_FrameState_enter
    .type lb_interop_Owner_0g1_gpu_FrameState_enter, @function
    .weak lb_interop_Owner_0g1_gpu_FrameState_enter
lb_interop_Owner_0g1_gpu_FrameState_enter:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_retain@PLT
    movq %rax, %r12
    movq $192, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Owner_0g1_gpu_FrameState_leave
    .type lb_interop_Owner_0g1_gpu_FrameState_leave, @function
    .weak lb_interop_Owner_0g1_gpu_FrameState_leave
lb_interop_Owner_0g1_gpu_FrameState_leave:
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
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    movq $192, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L30_2
.L30_1:
    leaq .Ltext_46(%rip), %r13
    leaq -64(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $34, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_47(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L30_3
.L30_2:
.L30_3:
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $184, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L30_7
    jmp .L30_9
.L30_9:
    movl %r14d, %r12d
    jmp .L30_8
.L30_7:
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r12d
.L30_8:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L30_4
    jmp .L30_5
.L30_4:
    movq %rbx, %rdi
    call lb_interop_13dispose_owner_0g1_gpu_FrameState@PLT
    jmp .L30_6
.L30_5:
.L30_6:
    movq %rbx, %rdi
    call lb_ownership_release@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_ViewOwner_0g1_gpu_RenderTarget_9drop_view
    .type lb_interop_ViewOwner_0g1_gpu_RenderTarget_9drop_view, @function
    .weak lb_interop_ViewOwner_0g1_gpu_RenderTarget_9drop_view
lb_interop_ViewOwner_0g1_gpu_RenderTarget_9drop_view:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $216, %rcx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_interop_Lease_release@PLT
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_ViewOwner_0g1_gpu_RenderTarget_10trace_view
    .type lb_interop_ViewOwner_0g1_gpu_RenderTarget_10trace_view, @function
    .weak lb_interop_ViewOwner_0g1_gpu_RenderTarget_10trace_view
lb_interop_ViewOwner_0g1_gpu_RenderTarget_10trace_view:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    movq %rdx, -72(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $216, %rcx
    addq %rcx, %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq %r12, %rsi
    movq %r13, %rdx
    call lb_interop_Lease_trace@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_View_0g1_gpu_RenderTarget_init
    .type lb_interop_View_0g1_gpu_RenderTarget_init, @function
    .weak lb_interop_View_0g1_gpu_RenderTarget_init
lb_interop_View_0g1_gpu_RenderTarget_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    movq %rsi, -40(%rbp)
    leaq -24(%rbp), %r10
    movq (%r10), %r12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    movq %r12, %r10
    movq %rbx, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_11close_owner_0g1_gpu_FrameState
    .type lb_interop_11close_owner_0g1_gpu_FrameState, @function
    .weak lb_interop_11close_owner_0g1_gpu_FrameState
lb_interop_11close_owner_0g1_gpu_FrameState:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    movq $184, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L34_1
    jmp .L34_2
.L34_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L34_4:
    jmp .L34_3
.L34_2:
.L34_3:
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $192, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L34_6
.L34_5:
    movq %rbx, %rdi
    call lb_interop_13dispose_owner_0g1_gpu_FrameState@PLT
    jmp .L34_7
.L34_6:
.L34_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Owner_0g1_gpu_FrameState_12finish_owner
    .type lb_interop_Owner_0g1_gpu_FrameState_12finish_owner, @function
    .weak lb_interop_Owner_0g1_gpu_FrameState_12finish_owner
lb_interop_Owner_0g1_gpu_FrameState_12finish_owner:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_interop_11close_owner_0g1_gpu_FrameState@PLT
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Owner_0g1_gpu_FrameState_10drop_owner
    .type lb_interop_Owner_0g1_gpu_FrameState_10drop_owner, @function
    .weak lb_interop_Owner_0g1_gpu_FrameState_10drop_owner
lb_interop_Owner_0g1_gpu_FrameState_10drop_owner:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $160, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -136(%rbp)
    movq -136(%rbp), %rax
    testq %rax, %rax
    jne .L36_4
    jmp .L36_2
.L36_4:
.L36_1:
    leaq -72(%rbp), %r15
    movq $168, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L36_5
    jmp .L36_6
.L36_5:
    leaq -88(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L36_7
.L36_6:
    leaq .Ltext_49(%rip), %rbx
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $31, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_50(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
.L36_7:
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -120(%rbp), %rax
    movq %rax, -128(%rbp)
    movq -136(%rbp), %rax
    movq -128(%rbp), %r10
    movq %rax, (%r10)
    movq -128(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $152, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L36_9
    jmp .L36_8
.L36_9:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq -128(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L36_8:
    jmp .L36_3
.L36_2:
.L36_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Owner_0g1_gpu_FrameState_11trace_owner
    .type lb_interop_Owner_0g1_gpu_FrameState_11trace_owner, @function
    .weak lb_interop_Owner_0g1_gpu_FrameState_11trace_owner
lb_interop_Owner_0g1_gpu_FrameState_11trace_owner:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    movq %rdx, -80(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $185, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L37_1
    jmp .L37_2
.L37_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L37_4:
    jmp .L37_3
.L37_2:
.L37_3:
    movq $160, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L37_8
    jmp .L37_6
.L37_8:
.L37_5:
    movq $120, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $24, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L37_12
    jmp .L37_10
.L37_12:
.L37_9:
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r14, %rdx
    movq %r13, %r11
    call *%r11
    jmp .L37_11
.L37_10:
.L37_11:
    jmp .L37_7
.L37_6:
.L37_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Reference_0g1_gpu_FrameState_init
    .type lb_interop_Reference_0g1_gpu_FrameState_init, @function
    .weak lb_interop_Reference_0g1_gpu_FrameState_init
lb_interop_Reference_0g1_gpu_FrameState_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    movq %rsi, -40(%rbp)
    leaq -24(%rbp), %r10
    movq (%r10), %r12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    movq %r12, %r10
    movq %rbx, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_13dispose_owner_0g1_gpu_FrameState
    .type lb_interop_13dispose_owner_0g1_gpu_FrameState, @function
    .weak lb_interop_13dispose_owner_0g1_gpu_FrameState
lb_interop_13dispose_owner_0g1_gpu_FrameState:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $185, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L39_1
    jmp .L39_2
.L39_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L39_4:
    jmp .L39_3
.L39_2:
.L39_3:
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $160, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L39_8
    jmp .L39_6
.L39_8:
.L39_5:
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $16, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %r12, %r11
    call *%r11
    jmp .L39_7
.L39_6:
.L39_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_frame_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "GPU frame state"
.Ltext_1:
    .asciz "GPU frame"
.Ltext_2:
    .asciz "GPU render target"
.Ltext_3:
    .asciz "the recording frame is finished"
.Ltext_4:
    .asciz "frame presentation has no validator"
.Ltext_5:
    .asciz "src/std/gpu/frame.lucb:23:13"
.Ltext_6:
    .asciz "unreachable"
.Ltext_7:
    .asciz "frame presentation has no release operation"
.Ltext_8:
    .asciz "src/std/gpu/frame.lucb:30:13"
.Ltext_9:
    .asciz "memory.unset"
.Ltext_10:
    .asciz "src/std/gpu/frame.lucb:43:9"
.Ltext_11:
    .asciz "memory.exhausted"
.Ltext_12:
    .asciz "src/std/gpu/frame.lucb:51:9"
.Ltext_13:
    .asciz "src/std/gpu/frame.lucb:56:9"
.Ltext_14:
    .asciz "src/std/gpu/frame.lucb:63:9"
.Ltext_15:
    .asciz "src/std/gpu/frame.lucb:64:9"
.Ltext_16:
    .asciz "a standalone frame has no presentation surface"
.Ltext_17:
    .asciz "frame presentation has no submit operation"
.Ltext_18:
    .asciz "src/std/gpu/frame.lucb:74:9"
.Ltext_19:
    .asciz "an open frame has no lease"
.Ltext_20:
    .asciz "src/std/gpu/frame.lucb:75:9"
.Ltext_21:
    .asciz "src/std/gpu/frame.lucb:77:9"
.Ltext_22:
    .asciz "src/std/gpu/frame.lucb:109:9"
.Ltext_23:
    .asciz "src/std/gpu/frame.lucb:121:9"
.Ltext_24:
    .asciz "src/std/gpu/frame.lucb:133:9"
.Ltext_25:
    .asciz "src/std/gpu/frame.lucb:159:5"
.Ltext_26:
    .asciz "frame extents must be finite, nonnegative and at most 16384 pixels/points"
.Ltext_27:
    .asciz "frame backing extents must be whole pixels"
.Ltext_28:
    .asciz "empty logical and backing dimensions must agree"
.Ltext_29:
    .asciz "render regions need finite origins and nonnegative extents"
.Ltext_30:
    .asciz "src/std/gpu/frame.lucb:180:5"
.Ltext_31:
    .asciz "src/std/interop/reference.lucb:17:9"
.Ltext_32:
    .asciz "src/std/interop/reference.lucb:52:9"
.Ltext_33:
    .asciz "src/std/interop/reference.lucb:34:9"
.Ltext_34:
    .asciz "src/std/interop/view.lucb:39:9"
.Ltext_35:
    .asciz "this native type does not support explicit close"
.Ltext_36:
    .asciz "src/std/interop/reference.lucb:47:13"
.Ltext_37:
    .asciz "this native type requires the process main thread"
.Ltext_38:
    .asciz "native ownership has already been published or cancelled"
.Ltext_39:
    .asciz "src/std/interop/object.lucb:82:9"
.Ltext_40:
    .asciz "src/std/interop/object.lucb:86:9"
.Ltext_41:
    .asciz "a native object is closed"
.Ltext_42:
    .asciz "a native object has not been initialized"
.Ltext_43:
    .asciz "src/std/interop/reference.lucb:30:9"
.Ltext_44:
    .asciz "src/std/interop/object.lucb:15:9"
.Ltext_45:
    .asciz "src/std/interop/object.lucb:19:9"
.Ltext_46:
    .asciz "a native call guard was left twice"
.Ltext_47:
    .asciz "src/std/interop/object.lucb:25:13"
.Ltext_48:
    .asciz "src/std/interop/object.lucb:26:9"
.Ltext_49:
    .asciz "native storage has no allocator"
.Ltext_50:
    .asciz "src/std/interop/object.lucb:37:13"
.Ltext_51:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_gpu_16frame_state_type
    .type lb_gpu_16frame_state_type, @object
    .p2align 3
lb_gpu_16frame_state_type:
    .zero 40

    .bss
    .globl lb_gpu_10frame_type
    .type lb_gpu_10frame_type, @object
    .p2align 3
lb_gpu_10frame_type:
    .zero 40

    .bss
    .globl lb_gpu_18render_target_type
    .type lb_gpu_18render_target_type, @object
    .p2align 3
lb_gpu_18render_target_type:
    .zero 24

    .section .note.GNU-stack,"",@progbits
