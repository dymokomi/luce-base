    .text

    .p2align 4
    .globl lb_fonts_12linux_native_0init
    .type lb_fonts_12linux_native_0init, @function
lb_fonts_12linux_native_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_fonts_10linux_face
    .type lb_fonts_10linux_face, @function
lb_fonts_10linux_face:
    pushq %rbp
    movq %rsp, %rbp
    subq $640, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movsd %xmm0, -136(%rbp)
    leaq -152(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -168(%rbp), %rax
    movq %rax, -632(%rbp)
    leaq -152(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L1_2
.L1_1:
    leaq .Ltext_2(%rip), %rbx
    leaq -200(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $9, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -184(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_3
.L1_2:
    leaq -184(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L1_3:
    leaq -184(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -248(%rbp), %rdi
    call lb_fonts_12family_bytes@PLT
    leaq -248(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_5
    jmp .L1_4
.L1_5:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -120(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_6:
.L1_4:
    movq %r12, %r10
    movq -632(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $2, %edi
    movl $1, %esi
    movl $1, %edx
    call cairo_image_surface_create@PLT
    movq %rax, -640(%rbp)
    movq -640(%rbp), %rax
    testq %rax, %rax
    jne .L1_7
    jmp .L1_8
.L1_8:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_7:
    movq -640(%rbp), %rdi
    call cairo_create@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L1_9
    jmp .L1_10
.L1_10:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_9:
    leaq -504(%rbp), %r10
    movq %r12, (%r10)
    call cairo_font_options_create@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L1_30
    jmp .L1_31
.L1_31:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_30:
    movq %r14, %rdi
    movl $2, %esi
    call cairo_font_options_set_antialias@PLT
    movq %r14, %rdi
    movl $1, %esi
    call cairo_font_options_set_hint_metrics@PLT
    movq %r12, %rdi
    movq %r14, %rsi
    call cairo_set_font_options@PLT
    movq %r14, %rdi
    call cairo_font_options_destroy@PLT
.L1_32:
    movq -632(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -512(%rbp)
    movq %r12, %rdi
    movq -512(%rbp), %rsi
    movl $0, %edx
    movl $0, %ecx
    call cairo_select_font_face@PLT
    leaq -136(%rbp), %rax
    movq %rax, -520(%rbp)
    movq -520(%rbp), %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    movq %r12, %rdi
    call cairo_set_font_size@PLT
    leaq -288(%rbp), %rax
    movq %rax, -528(%rbp)
    movq -528(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq %r12, %rdi
    movq -528(%rbp), %rsi
    call cairo_font_extents@PLT
    leaq -336(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    leaq -384(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    leaq .Ltext_5(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call cairo_text_extents@PLT
    leaq .Ltext_6(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r14, %rdx
    call cairo_text_extents@PLT
    movq %r12, %rdi
    call cairo_status@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_33
    jmp .L1_14
.L1_33:
    movl %ebx, %r13d
    jmp .L1_15
.L1_14:
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movq $0, %rax
    movq %rax, %xmm13
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r13d
.L1_15:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L1_34
    jmp .L1_16
.L1_34:
    movl %ebx, %r13d
    jmp .L1_17
.L1_16:
    movq $32, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    subsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movapd %xmm12, %xmm0
    call lb_math_abs@PLT
    movapd %xmm0, %xmm12
    movabsq $4576918229304087675, %rax
    movq %rax, %xmm13
    ucomisd %xmm13, %xmm12
    seta %al
    movzbl %al, %r13d
.L1_17:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L1_11
    jmp .L1_12
.L1_11:
    leaq -120(%rbp), %rax
    movq %rax, -536(%rbp)
    movq -536(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq lb_fonts_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_7(%rip), %r14
    leaq -400(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $54, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -536(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rdi
    call cairo_destroy@PLT
    movq -640(%rbp), %rdi
    call cairo_surface_destroy@PLT
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -416(%rbp), %r14
    movq -632(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq -512(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L1_19
    jmp .L1_18
.L1_19:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L1_18:
    movq -536(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L1_20:
    jmp .L1_13
.L1_12:
.L1_13:
    movq %r12, %rdi
    call cairo_get_scaled_font@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L1_21
    jmp .L1_22
.L1_22:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_21:
    movq %rbx, %rdi
    call cairo_scaled_font_reference@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L1_23
    jmp .L1_24
.L1_24:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_23:
    leaq -456(%rbp), %rax
    movq %rax, -544(%rbp)
    movq -544(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq -544(%rbp), %r10
    movq %r13, (%r10)
    movq -544(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -552(%rbp)
    movq $0, %rax
    movq -552(%rbp), %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -560(%rbp)
    movq -560(%rbp), %r10
    movsd (%r10), %xmm12
    movq -544(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -568(%rbp)
    movq -568(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -528(%rbp), %r10
    movsd (%r10), %xmm12
    movq -544(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -576(%rbp)
    movq -576(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -528(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -584(%rbp)
    movq -584(%rbp), %r10
    movsd (%r10), %xmm12
    movq -544(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -592(%rbp)
    movq -592(%rbp), %r10
    movsd %xmm12, (%r10)
    leaq -120(%rbp), %rax
    movq %rax, -600(%rbp)
    movq -544(%rbp), %r10
    movq -600(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -600(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, -608(%rbp)
    movl $0, %eax
    movq -608(%rbp), %r10
    movb %al, (%r10)
    movq %r12, %rdi
    call cairo_destroy@PLT
    movq -640(%rbp), %rdi
    call cairo_surface_destroy@PLT
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -616(%rbp)
    leaq -472(%rbp), %rax
    movq %rax, -624(%rbp)
    movq -632(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -512(%rbp), %rax
    movq -624(%rbp), %r10
    movq %rax, (%r10)
    movq -624(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq -616(%rbp), %r10
    movq (%r10), %rbx
    movq -616(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L1_26
    jmp .L1_25
.L1_26:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq -624(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L1_25:
    movq -600(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L1_27:
    movq %rbx, %rdi
    call cairo_destroy@PLT
    movq %r12, %rbx
    movq %rbx, %rdi
    call cairo_surface_destroy@PLT
    leaq -168(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -488(%rbp), %r13
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
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_30(%rip), %rsi
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
    jne .L1_29
    jmp .L1_28
.L1_29:
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
.L1_28:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_fonts_12linux_raster
    .type lb_fonts_12linux_raster, @function
lb_fonts_12linux_raster:
    pushq %rbp
    movq %rsp, %rbp
    subq $624, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -144(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movsd %xmm0, -160(%rbp)
    movq %rcx, -176(%rbp)
    leaq 16(%rbp), %r10
    leaq -128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_1
    jmp .L2_2
.L2_1:
    jmp .L2_3
.L2_2:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_12(%rip), %r12
    leaq -192(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
.L2_4:
.L2_3:
    leaq -176(%rbp), %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -376(%rbp)
    movq -376(%rbp), %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movq -368(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, -384(%rbp)
    movq -384(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    movl $2, %edi
    movl %r15d, %esi
    movl %r13d, %edx
    call cairo_image_surface_create@PLT
    movq %rax, -560(%rbp)
    movq -560(%rbp), %rax
    testq %rax, %rax
    jne .L2_5
    jmp .L2_6
.L2_6:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_5:
    movq -560(%rbp), %rdi
    call cairo_surface_status@PLT
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L2_8
.L2_7:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_14(%rip), %r12
    leaq -208(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $38, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -560(%rbp), %rdi
    call cairo_surface_destroy@PLT
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
.L2_10:
    jmp .L2_9
.L2_8:
.L2_9:
    movq -560(%rbp), %rdi
    call cairo_create@PLT
    movq %rax, -568(%rbp)
    movq -568(%rbp), %rax
    testq %rax, %rax
    jne .L2_11
    jmp .L2_12
.L2_12:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_11:
    movq -568(%rbp), %rax
    leaq -352(%rbp), %r10
    movq %rax, (%r10)
    call cairo_font_options_create@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L2_37
    jmp .L2_38
.L2_38:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_37:
    movq %r14, %rdi
    movl $2, %esi
    call cairo_font_options_set_antialias@PLT
    movq %r14, %rdi
    movl $1, %esi
    call cairo_font_options_set_hint_metrics@PLT
    movq -568(%rbp), %rdi
    movq %r14, %rsi
    call cairo_set_font_options@PLT
    movq %r14, %rdi
    call cairo_font_options_destroy@PLT
.L2_39:
    movq %r12, %rdi
    call cairo_scaled_font_get_font_face@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L2_13
    jmp .L2_14
.L2_14:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_13:
    movq -568(%rbp), %rdi
    movq %r14, %rsi
    call cairo_set_font_face@PLT
    movq $16, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -392(%rbp)
    movq -392(%rbp), %r10
    movsd (%r10), %xmm12
    leaq -160(%rbp), %rax
    movq %rax, -400(%rbp)
    movq -400(%rbp), %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -408(%rbp)
    movsd -408(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movapd %xmm12, %xmm0
    movq -568(%rbp), %rdi
    call cairo_set_font_size@PLT
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm12
    movapd %xmm12, %xmm0
    movapd %xmm12, %xmm1
    movapd %xmm12, %xmm2
    movapd %xmm12, %xmm3
    movq -568(%rbp), %rdi
    call cairo_set_source_rgba@PLT
    leaq -144(%rbp), %rax
    movq %rax, -416(%rbp)
    movq -416(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -424(%rbp)
    leaq -224(%rbp), %rax
    movq %rax, -608(%rbp)
    leaq -248(%rbp), %rax
    movq %rax, -616(%rbp)
    movq -616(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -432(%rbp)
    leaq -264(%rbp), %rax
    movq %rax, -440(%rbp)
    leaq -285(%rbp), %rax
    movq %rax, -448(%rbp)
    movq -608(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -456(%rbp)
    movabsq $4611686018427387904, %rax
    movq %rax, %xmm8
    movsd %xmm8, -472(%rbp)
    movq $24, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -480(%rbp)
    movq $32, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -488(%rbp)
    movq $0, %rax
    movq %rax, -576(%rbp)
    movq $0, %rax
    movq %rax, -584(%rbp)
.L2_15:
    movq -424(%rbp), %r10
    movq (%r10), %rbx
    movq -576(%rbp), %rax
    cmpq %rbx, %rax
    jae .L2_17
.L2_16:
    movq -416(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -576(%rbp), %rcx
    leaq -248(%rbp), %rdi
    call lb_utf8_decode@PLT
    movq -432(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_18
    jmp .L2_19
.L2_18:
    movq -616(%rbp), %r10
    movq -440(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_20
.L2_19:
    leaq .Ltext_17(%rip), %rbx
    leaq -280(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $22, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_18(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_20:
    movq -440(%rbp), %r10
    movq -608(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -448(%rbp), %r11
    movl $0, 0(%r11)
    movb $0, 4(%r11)
    movq -456(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -464(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L2_21:
    movq -464(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L2_24
.L2_22:
    movq $5, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -448(%rbp), %rax
    movq %rax, %r12
    addq %r14, %r12
    movq -576(%rbp), %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_30(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -416(%rbp), %r10
    movq (%r10), %r15
    movq -424(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r13, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq %r12, %r10
    movb %bl, (%r10)
.L2_23:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L2_21
.L2_24:
    movq -464(%rbp), %rax
    movq $5, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -448(%rbp), %rax
    movq -464(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -584(%rbp), %rax
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
    movq -480(%rbp), %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movsd -408(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movsd -472(%rbp), %xmm8
    addsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq -488(%rbp), %r10
    movsd (%r10), %xmm13
    movsd -408(%rbp), %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    movsd -472(%rbp), %xmm8
    addsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    movq -568(%rbp), %rdi
    call cairo_move_to@PLT
    movq -568(%rbp), %rdi
    movq -448(%rbp), %rsi
    call cairo_show_text@PLT
    movq -464(%rbp), %rax
    movq -576(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_30(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -584(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_30(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %rax
    movq %rax, -576(%rbp)
    movq %r12, %rax
    movq %rax, -584(%rbp)
    jmp .L2_15
.L2_17:
    movq -568(%rbp), %rdi
    call cairo_status@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_26
.L2_25:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_24(%rip), %r12
    leaq -304(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $33, %rax
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
    movq -568(%rbp), %rdi
    call cairo_destroy@PLT
    movq -560(%rbp), %rdi
    call cairo_surface_destroy@PLT
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
.L2_28:
    jmp .L2_27
.L2_26:
.L2_27:
    movq -560(%rbp), %rdi
    call cairo_surface_flush@PLT
    movq -560(%rbp), %rdi
    call cairo_image_surface_get_data@PLT
    movq %rax, -592(%rbp)
    movq -592(%rbp), %rax
    testq %rax, %rax
    jne .L2_29
    jmp .L2_30
.L2_30:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_29:
    movq -560(%rbp), %rdi
    call cairo_image_surface_get_stride@PLT
    movl %eax, -496(%rbp)
    movl -496(%rbp), %eax
    movslq %eax, %rax
    movq %rax, -504(%rbp)
    movq -384(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movq %rax, -512(%rbp)
    movq -368(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -520(%rbp)
    leaq -320(%rbp), %rax
    movq %rax, -528(%rbp)
    movq -528(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -536(%rbp)
    leaq -336(%rbp), %rax
    movq %rax, -544(%rbp)
    movq -544(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -552(%rbp)
    movq $0, %rax
    movq %rax, %r12
.L2_31:
    movq -512(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L2_34
.L2_32:
    movq -368(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -600(%rbp)
    movq -520(%rbp), %r10
    movq (%r10), %r15
    movq -376(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq %rbx, %r13
    imulq %r12, %r13
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r15
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r13
    jbe .L2_35
.L2_36:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_35:
    movq -600(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq %r15, %r14
    subq %r13, %r14
    movq -528(%rbp), %r10
    movq %rbx, (%r10)
    movq -536(%rbp), %r10
    movq %r14, (%r10)
    movq -504(%rbp), %rax
    movq %r12, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_30(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -592(%rbp), %rcx
    addq %rcx, %rbx
    movq -376(%rbp), %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    movq -544(%rbp), %r10
    movq %rbx, (%r10)
    movq -552(%rbp), %r10
    movq %r14, (%r10)
    movq -376(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq -528(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -544(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_copy_0g1_u8@PLT
.L2_33:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r12
    jmp .L2_31
.L2_34:
    movq -568(%rbp), %rdi
    call cairo_destroy@PLT
    movq -560(%rbp), %rdi
    call cairo_surface_destroy@PLT
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
    .globl lb_memory_copy_0g1_u8
    .type lb_memory_copy_0g1_u8, @function
    .weak lb_memory_copy_0g1_u8
lb_memory_copy_0g1_u8:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -48(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -64(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -80(%rbp)
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -48(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_11
    jmp .L3_4
.L3_11:
    movl %r13d, %r14d
    jmp .L3_5
.L3_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L3_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_1
    jmp .L3_2
.L3_1:
    leaq .Ltext_27(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_28(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L3_3
.L3_2:
.L3_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L3_7
.L3_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -64(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %rdi
    movq %r14, %rsi
    movq %rbx, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L3_9
    jmp .L3_10
.L3_10:
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_9:
    jmp .L3_8
.L3_7:
.L3_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_fonts_12linux_native_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "null_foreign"
.Ltext_1:
    .asciz "src/std/fonts/linux/native.lucb:44:5"
.Ltext_2:
    .asciz "monospace"
.Ltext_3:
    .asciz "src/std/fonts/linux/native.lucb:53:5"
.Ltext_4:
    .asciz "src/std/fonts/linux/native.lucb:55:5"
.Ltext_5:
    .asciz "i"
.Ltext_6:
    .asciz "W"
.Ltext_7:
    .asciz "the requested font must be an available monospace face"
.Ltext_8:
    .asciz "src/std/fonts/linux/native.lucb:67:9"
.Ltext_9:
    .asciz "src/std/fonts/linux/native.lucb:68:5"
.Ltext_10:
    .asciz "src/std/fonts/linux/native.lucb:69:5"
.Ltext_11:
    .asciz "unreachable"
.Ltext_12:
    .asciz "the font is closed"
.Ltext_13:
    .asciz "src/std/fonts/linux/native.lucb:73:5"
.Ltext_14:
    .asciz "could not allocate font raster storage"
.Ltext_15:
    .asciz "src/std/fonts/linux/native.lucb:77:5"
.Ltext_16:
    .asciz "src/std/fonts/linux/native.lucb:80:5"
.Ltext_17:
    .asciz "validated text changed"
.Ltext_18:
    .asciz "src/std/fonts/linux/native.lucb:86:9"
.Ltext_19:
    .asciz "src/std/fonts/linux/native.lucb:89:13"
.Ltext_20:
    .asciz "src/std/fonts/linux/native.lucb:90:9"
.Ltext_21:
    .asciz "src/std/fonts/linux/native.lucb:92:9"
.Ltext_22:
    .asciz "src/std/fonts/linux/native.lucb:93:9"
.Ltext_23:
    .asciz "src/std/fonts/linux/native.lucb:94:9"
.Ltext_24:
    .asciz "could not rasterize the font text"
.Ltext_25:
    .asciz "src/std/fonts/linux/native.lucb:98:5"
.Ltext_26:
    .asciz "src/std/fonts/linux/native.lucb:101:9"
.Ltext_27:
    .asciz "index out of bounds"
.Ltext_28:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_29:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_30:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
