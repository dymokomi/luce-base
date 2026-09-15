    .weak lb_memory_copy_0g1_u32
    .text

    .p2align 4
    .globl lb_gpu_mask_0init
lb_gpu_mask_0init:
    .seh_proc lb_gpu_mask_0init
    pushq %rbp
    .seh_pushreg %rbp
    subq $176, %rsp
    .seh_stackalloc 176
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 168(%rbp)
    .seh_savereg %rdi, 168
    movq %rsi, 160(%rbp)
    .seh_savereg %rsi, 160
    movdqu %xmm6, 144(%rbp)
    .seh_savexmm %xmm6, 144
    movdqu %xmm7, 128(%rbp)
    .seh_savexmm %xmm7, 128
    movdqu %xmm8, 112(%rbp)
    .seh_savexmm %xmm8, 112
    movdqu %xmm9, 96(%rbp)
    .seh_savexmm %xmm9, 96
    movdqu %xmm10, 80(%rbp)
    .seh_savexmm %xmm10, 80
    movdqu %xmm11, 64(%rbp)
    .seh_savexmm %xmm11, 64
    movdqu %xmm12, 48(%rbp)
    .seh_savexmm %xmm12, 48
    movdqu %xmm13, 32(%rbp)
    .seh_savexmm %xmm13, 32
    movdqu %xmm14, 16(%rbp)
    .seh_savexmm %xmm14, 16
    movdqu %xmm15, 0(%rbp)
    .seh_savexmm %xmm15, 0
    .seh_endprologue
    movq %rcx, 192(%rbp)
    movq %rdx, 200(%rbp)
    movq %r8, 208(%rbp)
    movq %r9, 216(%rbp)
    movq 168(%rbp), %rdi
    movq 160(%rbp), %rsi
    movdqu 144(%rbp), %xmm6
    movdqu 128(%rbp), %xmm7
    movdqu 112(%rbp), %xmm8
    movdqu 96(%rbp), %xmm9
    movdqu 80(%rbp), %xmm10
    movdqu 64(%rbp), %xmm11
    movdqu 48(%rbp), %xmm12
    movdqu 32(%rbp), %xmm13
    movdqu 16(%rbp), %xmm14
    movdqu 0(%rbp), %xmm15
    leaq 176(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_gpu_11canvas_mask
lb_gpu_11canvas_mask:
    .seh_proc lb_gpu_11canvas_mask
    pushq %rbp
    .seh_pushreg %rbp
    subq $1296, %rsp
    .seh_stackalloc 1296
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 1112(%rbp)
    movq %rdi, 1288(%rbp)
    .seh_savereg %rdi, 1288
    movq %rsi, 1280(%rbp)
    .seh_savereg %rsi, 1280
    movdqu %xmm6, 1264(%rbp)
    .seh_savexmm %xmm6, 1264
    movdqu %xmm7, 1248(%rbp)
    .seh_savexmm %xmm7, 1248
    movdqu %xmm8, 1232(%rbp)
    .seh_savexmm %xmm8, 1232
    movdqu %xmm9, 1216(%rbp)
    .seh_savexmm %xmm9, 1216
    movdqu %xmm10, 1200(%rbp)
    .seh_savexmm %xmm10, 1200
    movdqu %xmm11, 1184(%rbp)
    .seh_savexmm %xmm11, 1184
    movdqu %xmm12, 1168(%rbp)
    .seh_savexmm %xmm12, 1168
    movdqu %xmm13, 1152(%rbp)
    .seh_savexmm %xmm13, 1152
    movdqu %xmm14, 1136(%rbp)
    .seh_savexmm %xmm14, 1136
    movdqu %xmm15, 1120(%rbp)
    .seh_savexmm %xmm15, 1120
    movq %rbx, 1104(%rbp)
    .seh_savereg %rbx, 1104
    movq %r12, 1096(%rbp)
    .seh_savereg %r12, 1096
    movq %r13, 1088(%rbp)
    .seh_savereg %r13, 1088
    movq %r14, 1080(%rbp)
    .seh_savereg %r14, 1080
    movq %r15, 1072(%rbp)
    .seh_savereg %r15, 1072
    .seh_endprologue
    movq %rcx, 1312(%rbp)
    movq %rdx, 1320(%rbp)
    movq %r8, 1328(%rbp)
    movq %r9, 1336(%rbp)
    movq 1320(%rbp), %rax
    movq %rax, 1024(%rbp)
    movq 1328(%rbp), %r10
    leaq 1008(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1336(%rbp), %rax
    movl %eax, 992(%rbp)
    movq 1344(%rbp), %rax
    movl %eax, 976(%rbp)
    movq 1352(%rbp), %r10
    leaq 944(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 1360(%rbp), %r10
    leaq 920(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 1368(%rbp), %r10
    leaq 904(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1376(%rbp), %rax
    movq %rax, 888(%rbp)
    movq 1384(%rbp), %rax
    movq %rax, 872(%rbp)
    leaq 920(%rbp), %rax
    movq %rax, 224(%rbp)
    subq $64, %rsp
    movq 224(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 840(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_11check_color
    addq $64, %rsp
    leaq 840(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_2
    jmp .L1_1
.L1_2:
    leaq 1040(%rbp), %rbx
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
    movq 1112(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1112(%rbp), %rax
    movq 1288(%rbp), %rdi
    movq 1280(%rbp), %rsi
    movdqu 1264(%rbp), %xmm6
    movdqu 1248(%rbp), %xmm7
    movdqu 1232(%rbp), %xmm8
    movdqu 1216(%rbp), %xmm9
    movdqu 1200(%rbp), %xmm10
    movdqu 1184(%rbp), %xmm11
    movdqu 1168(%rbp), %xmm12
    movdqu 1152(%rbp), %xmm13
    movdqu 1136(%rbp), %xmm14
    movdqu 1120(%rbp), %xmm15
    movq 1104(%rbp), %rbx
    movq 1096(%rbp), %r12
    movq 1088(%rbp), %r13
    movq 1080(%rbp), %r14
    movq 1072(%rbp), %r15
    leaq 1296(%rbp), %rsp
    popq %rbp
    ret
.L1_1:
    leaq 992(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %eax
    movl %eax, 216(%rbp)
    movl 216(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_69
    jmp .L1_7
.L1_69:
    movl %r13d, %r14d
    jmp .L1_8
.L1_7:
    leaq 976(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L1_8:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_70
    jmp .L1_9
.L1_70:
    movl %r13d, %r14d
    jmp .L1_10
.L1_9:
    movl 216(%rbp), %eax
    movl $16384, %ecx
    cmpl %ecx, %eax
    seta %al
    movzbl %al, %r14d
.L1_10:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_71
    jmp .L1_11
.L1_71:
    movl %r13d, %r14d
    jmp .L1_12
.L1_11:
    leaq 976(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $16384, %ecx
    cmpl %ecx, %r13d
    seta %al
    movzbl %al, %r14d
.L1_12:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_72
    jmp .L1_13
.L1_72:
    movl %r13d, %r14d
    jmp .L1_14
.L1_13:
    leaq 1008(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl 216(%rbp), %eax
    movl %eax, %r14d
    leaq 976(%rbp), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    imulq %r15, %r14
    cmpq %r14, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L1_14:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_4
    jmp .L1_5
.L1_4:
    leaq 1040(%rbp), %rbx
    leaq lb_gpu_16invalid_geometry(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_1(%rip), %r12
    leaq 824(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $65, %rax
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
    movq 1112(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1112(%rbp), %rax
    movq 1288(%rbp), %rdi
    movq 1280(%rbp), %rsi
    movdqu 1264(%rbp), %xmm6
    movdqu 1248(%rbp), %xmm7
    movdqu 1232(%rbp), %xmm8
    movdqu 1216(%rbp), %xmm9
    movdqu 1200(%rbp), %xmm10
    movdqu 1184(%rbp), %xmm11
    movdqu 1168(%rbp), %xmm12
    movdqu 1152(%rbp), %xmm13
    movdqu 1136(%rbp), %xmm14
    movdqu 1120(%rbp), %xmm15
    movq 1104(%rbp), %rbx
    movq 1096(%rbp), %r12
    movq 1088(%rbp), %r13
    movq 1080(%rbp), %r14
    movq 1072(%rbp), %r15
    leaq 1296(%rbp), %rsp
    popq %rbp
    ret
.L1_5:
.L1_6:
    leaq 944(%rbp), %rax
    movq %rax, 208(%rbp)
    movq 208(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, 200(%rbp)
    movq $0, %rax
    movq %rax, %xmm12
    movsd 200(%rbp), %xmm8
    ucomisd %xmm12, %xmm8
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_73
    jmp .L1_19
.L1_73:
    movl %r14d, %r15d
    jmp .L1_20
.L1_19:
    movq 208(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm13
    ucomisd %xmm13, %xmm12
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r15d
.L1_20:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L1_74
    jmp .L1_21
.L1_74:
    movl %r14d, %r15d
    jmp .L1_22
.L1_21:
    leaq 904(%rbp), %r14
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L1_22:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L1_75
    jmp .L1_23
.L1_75:
    movl %r14d, %r15d
    jmp .L1_24
.L1_23:
    leaq 904(%rbp), %r14
    movq $12, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L1_24:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L1_16
    jmp .L1_17
.L1_16:
    leaq 1040(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1112(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1112(%rbp), %rax
    movq 1288(%rbp), %rdi
    movq 1280(%rbp), %rsi
    movdqu 1264(%rbp), %xmm6
    movdqu 1248(%rbp), %xmm7
    movdqu 1232(%rbp), %xmm8
    movdqu 1216(%rbp), %xmm9
    movdqu 1200(%rbp), %xmm10
    movdqu 1184(%rbp), %xmm11
    movdqu 1168(%rbp), %xmm12
    movdqu 1152(%rbp), %xmm13
    movdqu 1136(%rbp), %xmm14
    movdqu 1120(%rbp), %xmm15
    movq 1104(%rbp), %rbx
    movq 1096(%rbp), %r12
    movq 1088(%rbp), %r13
    movq 1080(%rbp), %r14
    movq 1072(%rbp), %r15
    leaq 1296(%rbp), %rsp
    popq %rbp
    ret
.L1_17:
.L1_18:
    leaq 1008(%rbp), %rax
    movq %rax, 192(%rbp)
    movq 192(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 184(%rbp)
    movq 184(%rbp), %rax
    movq $3, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
.L1_27:
    movq $4, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, 176(%rbp)
    leaq 1024(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 168(%rbp)
    movq 168(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    movq 160(%rbp), %r10
    movq (%r10), %r13
    movq $4194304, %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 176(%rbp), %rax
    cmpq %r13, %rax
    jbe .L1_29
.L1_28:
    leaq 1040(%rbp), %rbx
    leaq lb_gpu_13command_limit(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq 808(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $50, %rax
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
    movq 1112(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1112(%rbp), %rax
    movq 1288(%rbp), %rdi
    movq 1280(%rbp), %rsi
    movdqu 1264(%rbp), %xmm6
    movdqu 1248(%rbp), %xmm7
    movdqu 1232(%rbp), %xmm8
    movdqu 1216(%rbp), %xmm9
    movdqu 1200(%rbp), %xmm10
    movdqu 1184(%rbp), %xmm11
    movdqu 1168(%rbp), %xmm12
    movdqu 1152(%rbp), %xmm13
    movdqu 1136(%rbp), %xmm14
    movdqu 1120(%rbp), %xmm15
    movq 1104(%rbp), %rbx
    movq 1096(%rbp), %r12
    movq 1088(%rbp), %r13
    movq 1080(%rbp), %r14
    movq 1072(%rbp), %r15
    leaq 1296(%rbp), %rsp
    popq %rbp
    ret
.L1_29:
.L1_30:
    movq 160(%rbp), %r10
    movq (%r10), %r12
    movq 176(%rbp), %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 152(%rbp)
    movq 168(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    movq 144(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %r10
    movq (%r10), %r13
    movq 152(%rbp), %rax
    cmpq %r13, %rax
    jbe .L1_33
.L1_32:
    movq 136(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    subq $32, %rsp
    movq $1024, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_10canvas_max
    addq $32, %rsp
    movq %rax, %r13
    subq $32, %rsp
    movq $4194304, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_10canvas_min
    addq $32, %rsp
    movq %rax, %r13
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_10canvas_max
    addq $32, %rsp
    movq %rax, 128(%rbp)
    leaq 792(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 32(%rbp)
    leaq 744(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 128(%rbp), %rax
    movabsq $1152921504606846976, %rcx
    cmpq %rcx, %rax
    jbe .L1_36
.L1_35:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $208273409, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq .Ltext_8(%rip), %r15
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L1_37
.L1_36:
    movq 128(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 32(%rbp), %r10
    movq (%r10), %r12
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L1_38
    jmp .L1_39
.L1_39:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_38:
    movq %r15, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq $4, %rax
    movq %rax, 24(%rsp)
    leaq 720(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %rbx, %r11
    call *%r11
    addq $32, %rsp
    leaq 720(%rbp), %r13
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %eax
    movl %eax, 120(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl 120(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L1_40
    jmp .L1_41
.L1_40:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
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
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_37
.L1_41:
    movq %r13, %r10
    movq (%r10), %rbx
    movq 24(%rbp), %r10
    movq %rbx, (%r10)
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 128(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L1_37:
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_43
    jmp .L1_42
.L1_43:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1040(%rbp), %r12
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
    movq 1112(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1112(%rbp), %rax
    movq 1288(%rbp), %rdi
    movq 1280(%rbp), %rsi
    movdqu 1264(%rbp), %xmm6
    movdqu 1248(%rbp), %xmm7
    movdqu 1232(%rbp), %xmm8
    movdqu 1216(%rbp), %xmm9
    movdqu 1200(%rbp), %xmm10
    movdqu 1184(%rbp), %xmm11
    movdqu 1168(%rbp), %xmm12
    movdqu 1152(%rbp), %xmm13
    movdqu 1136(%rbp), %xmm14
    movdqu 1120(%rbp), %xmm15
    movq 1104(%rbp), %rbx
    movq 1096(%rbp), %r12
    movq 1088(%rbp), %r13
    movq 1080(%rbp), %r14
    movq 1072(%rbp), %r15
    leaq 1296(%rbp), %rsp
    popq %rbp
    ret
.L1_42:
    movq 24(%rbp), %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 160(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L1_46
.L1_45:
    movq 160(%rbp), %r10
    movq (%r10), %rbx
    subq $64, %rsp
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 144(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u32
    addq $64, %rsp
    jmp .L1_47
.L1_46:
.L1_47:
    movq 136(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L1_49
.L1_48:
    leaq 704(%rbp), %rbx
    movq 144(%rbp), %r10
    movq (%r10), %r12
    movq 136(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 32(%rbp), %r10
    movq (%r10), %r12
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L1_52
    jmp .L1_51
.L1_52:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
.L1_51:
    jmp .L1_50
.L1_49:
.L1_50:
    movq 40(%rbp), %r10
    movq 144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_34
.L1_33:
.L1_34:
    movq 208(%rbp), %r10
    movsd (%r10), %xmm8
    movsd %xmm8, 112(%rbp)
    movabsq $4611686018427387904, %rax
    movq %rax, %xmm12
    movsd 112(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm13
    leaq 888(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm14
    movaps %xmm13, %xmm8
    divsd %xmm14, %xmm8
    movapd %xmm8, %xmm13
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm15
    movaps %xmm13, %xmm8
    subsd %xmm15, %xmm8
    movapd %xmm8, %xmm13
    cvtsd2ss %xmm13, %xmm8
    movss %xmm8, 104(%rbp)
    movsd 200(%rbp), %xmm8
    movsd 112(%rbp), %xmm9
    addsd %xmm9, %xmm8
    movapd %xmm8, %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    movaps %xmm13, %xmm8
    divsd %xmm14, %xmm8
    movapd %xmm8, %xmm13
    movaps %xmm13, %xmm8
    subsd %xmm15, %xmm8
    movapd %xmm8, %xmm13
    cvtsd2ss %xmm13, %xmm8
    movss %xmm8, 96(%rbp)
    movq 208(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, 88(%rbp)
    movsd 88(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm13
    leaq 872(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm14
    movaps %xmm13, %xmm8
    divsd %xmm14, %xmm8
    movapd %xmm8, %xmm13
    movaps %xmm15, %xmm8
    subsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    cvtsd2ss %xmm13, %xmm8
    movss %xmm8, 80(%rbp)
    movq 208(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, 72(%rbp)
    movsd 88(%rbp), %xmm8
    movsd 72(%rbp), %xmm9
    addsd %xmm9, %xmm8
    movapd %xmm8, %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movaps %xmm12, %xmm8
    divsd %xmm14, %xmm8
    movapd %xmm8, %xmm12
    movaps %xmm15, %xmm8
    subsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    cvtsd2ss %xmm12, %xmm8
    movss %xmm8, 64(%rbp)
    leaq 672(%rbp), %rbx
    leaq 640(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movss 104(%rbp), %xmm8
    movq %r12, %r10
    movss %xmm8, (%r10)
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movss 80(%rbp), %xmm8
    movq %r13, %r10
    movss %xmm8, (%r10)
    movq 224(%rbp), %r10
    movsd (%r10), %xmm12
    cvtsd2ss %xmm12, %xmm8
    movaps %xmm8, %xmm12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movq 224(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    cvtsd2ss %xmm12, %xmm8
    movaps %xmm8, %xmm12
    movq $20, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movq 224(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    cvtsd2ss %xmm12, %xmm8
    movaps %xmm8, %xmm12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movl $1065353216, %eax
    movd %eax, %xmm12
    movq $12, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movq $28, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 608(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 576(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 544(%rbp), %rax
    movq %rax, 56(%rbp)
    movq %rbx, %r10
    movq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movss 96(%rbp), %xmm8
    movq %r12, %r10
    movss %xmm8, (%r10)
    movss 96(%rbp), %xmm8
    movq %r13, %r10
    movss %xmm8, (%r10)
    movq $4, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movss 64(%rbp), %xmm8
    movq %r15, %r10
    movss %xmm8, (%r10)
    movq 56(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movss 64(%rbp), %xmm8
    movq %r15, %r10
    movss %xmm8, (%r10)
    leaq 352(%rbp), %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $64, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $96, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $128, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $160, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq 56(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 336(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $6, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 904(%rbp), %r12
    leaq 296(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    subq $128, %rsp
    movq 168(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %r12, %r10
    leaq 64(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 64(%rsp), %rax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movq %r13, %r10
    leaq 80(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq 80(%rsp), %rax
    movq %rax, 40(%rsp)
    leaq 264(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_gpu_Canvas_triangles
    addq $128, %rsp
    leaq 264(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_54
    jmp .L1_53
.L1_54:
    leaq 1040(%rbp), %rbx
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
    movq %rbx, %rsi
    movq 1112(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1112(%rbp), %rax
    movq 1288(%rbp), %rdi
    movq 1280(%rbp), %rsi
    movdqu 1264(%rbp), %xmm6
    movdqu 1248(%rbp), %xmm7
    movdqu 1232(%rbp), %xmm8
    movdqu 1216(%rbp), %xmm9
    movdqu 1200(%rbp), %xmm10
    movdqu 1184(%rbp), %xmm11
    movdqu 1168(%rbp), %xmm12
    movdqu 1152(%rbp), %xmm13
    movdqu 1136(%rbp), %xmm14
    movdqu 1120(%rbp), %xmm15
    movq 1104(%rbp), %rbx
    movq 1096(%rbp), %r12
    movq 1088(%rbp), %r13
    movq 1080(%rbp), %r14
    movq 1072(%rbp), %r15
    leaq 1296(%rbp), %rsp
    popq %rbp
    ret
.L1_53:
    movq 192(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rax
    movq %rax, 16(%rbp)
.L1_56:
    movq 16(%rbp), %rax
    movq 176(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L1_59
.L1_57:
    movl $0, %eax
    movl %eax, 8(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L1_60:
    movq $4, %rcx
    cmpq %rcx, %r14
    jae .L1_63
.L1_61:
    movq 16(%rbp), %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %r15, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 184(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L1_65
.L1_64:
    movq %r15, %r13
    addq %rbx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %r13d
    movq $8, %rcx
    movq %r14, %rax
    imulq %rcx, %rax
    movq %rax, 48(%rbp)
    movl 48(%rbp), %eax
    movl %eax, %r12d
    movq $32, %rcx
    cmpq %rcx, %r12
    jb .L1_68
.L1_67:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_68:
    movl 48(%rbp), %ecx
    movl %r13d, %r12d
    shll %cl, %r12d
    movl 8(%rbp), %ecx
    orl %ecx, %r12d
    jmp .L1_66
.L1_65:
    movl 8(%rbp), %eax
    movl %eax, %r12d
.L1_66:
.L1_62:
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movl %r12d, %eax
    movl %eax, 8(%rbp)
    movq %r13, %r14
    jmp .L1_60
.L1_63:
    movq 160(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq 16(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 136(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $4, %rcx
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl 8(%rbp), %eax
    movq %r12, %r10
    movl %eax, (%r10)
.L1_58:
    movq 16(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %rax
    movq %rax, 16(%rbp)
    jmp .L1_56
.L1_59:
    movq 168(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 168(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $112, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $80, %rcx
    addq %rcx, %rbx
    leaq 232(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movsd 112(%rbp), %xmm8
    cvtsd2ss %xmm8, %xmm8
    movaps %xmm8, %xmm12
    movq %r12, %r10
    movss %xmm12, (%r10)
    movsd 88(%rbp), %xmm8
    cvtsd2ss %xmm8, %xmm8
    movaps %xmm8, %xmm12
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movsd 200(%rbp), %xmm8
    cvtsd2ss %xmm8, %xmm8
    movaps %xmm8, %xmm12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movsd 72(%rbp), %xmm8
    cvtsd2ss %xmm8, %xmm8
    movaps %xmm8, %xmm12
    movq $12, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl 216(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq 976(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq $20, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r13d, (%r10)
    movq 160(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r13d, (%r10)
    movq $28, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 152(%rbp), %rax
    movq 160(%rbp), %r10
    movq %rax, (%r10)
    leaq 1040(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1112(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1112(%rbp), %rax
    movq 1288(%rbp), %rdi
    movq 1280(%rbp), %rsi
    movdqu 1264(%rbp), %xmm6
    movdqu 1248(%rbp), %xmm7
    movdqu 1232(%rbp), %xmm8
    movdqu 1216(%rbp), %xmm9
    movdqu 1200(%rbp), %xmm10
    movdqu 1184(%rbp), %xmm11
    movdqu 1168(%rbp), %xmm12
    movdqu 1152(%rbp), %xmm13
    movdqu 1136(%rbp), %xmm14
    movdqu 1120(%rbp), %xmm15
    movq 1104(%rbp), %rbx
    movq 1096(%rbp), %r12
    movq 1088(%rbp), %r13
    movq 1080(%rbp), %r14
    movq 1072(%rbp), %r15
    leaq 1296(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .text$lb_memory_copy_0g1_u32,"xr"
    .p2align 4
    .globl lb_memory_copy_0g1_u32
lb_memory_copy_0g1_u32:
    .seh_proc lb_memory_copy_0g1_u32
    pushq %rbp
    .seh_pushreg %rbp
    subq $288, %rsp
    .seh_stackalloc 288
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 280(%rbp)
    .seh_savereg %rdi, 280
    movq %rsi, 272(%rbp)
    .seh_savereg %rsi, 272
    movdqu %xmm6, 256(%rbp)
    .seh_savexmm %xmm6, 256
    movdqu %xmm7, 240(%rbp)
    .seh_savexmm %xmm7, 240
    movdqu %xmm8, 224(%rbp)
    .seh_savexmm %xmm8, 224
    movdqu %xmm9, 208(%rbp)
    .seh_savexmm %xmm9, 208
    movdqu %xmm10, 192(%rbp)
    .seh_savexmm %xmm10, 192
    movdqu %xmm11, 176(%rbp)
    .seh_savexmm %xmm11, 176
    movdqu %xmm12, 160(%rbp)
    .seh_savexmm %xmm12, 160
    movdqu %xmm13, 144(%rbp)
    .seh_savexmm %xmm13, 144
    movdqu %xmm14, 128(%rbp)
    .seh_savexmm %xmm14, 128
    movdqu %xmm15, 112(%rbp)
    .seh_savexmm %xmm15, 112
    movq %rbx, 104(%rbp)
    .seh_savereg %rbx, 104
    movq %r12, 96(%rbp)
    .seh_savereg %r12, 96
    movq %r13, 88(%rbp)
    .seh_savereg %r13, 88
    movq %r14, 80(%rbp)
    .seh_savereg %r14, 80
    movq %r15, 72(%rbp)
    .seh_savereg %r15, 72
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 304(%rbp), %r10
    leaq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 312(%rbp), %r10
    leaq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 320(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 56(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_11
    jmp .L2_4
.L2_11:
    movl %r13d, %r14d
    jmp .L2_5
.L2_4:
    leaq 40(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L2_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq .Ltext_18(%rip), %r13
    leaq 8(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_19(%rip), %r13
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_12trap_text_at
    addq $48, %rsp
    jmp .L2_3
.L2_2:
.L2_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L2_7
.L2_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq 40(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L2_9
    jmp .L2_10
.L2_10:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_21(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_9:
    jmp .L2_8
.L2_7:
.L2_8:
    movq 280(%rbp), %rdi
    movq 272(%rbp), %rsi
    movdqu 256(%rbp), %xmm6
    movdqu 240(%rbp), %xmm7
    movdqu 224(%rbp), %xmm8
    movdqu 208(%rbp), %xmm9
    movdqu 192(%rbp), %xmm10
    movdqu 176(%rbp), %xmm11
    movdqu 160(%rbp), %xmm12
    movdqu 144(%rbp), %xmm13
    movdqu 128(%rbp), %xmm14
    movdqu 112(%rbp), %xmm15
    movq 104(%rbp), %rbx
    movq 96(%rbp), %r12
    movq 88(%rbp), %r13
    movq 80(%rbp), %r14
    movq 72(%rbp), %r15
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .text

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_gpu_mask_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/gpu/mask.lucb:17:5"
.Ltext_1:
    .asciz "coverage dimensions must match tightly packed pixels, in 1..16384"
.Ltext_2:
    .asciz "src/std/gpu/mask.lucb:21:5"
.Ltext_3:
    .asciz "division by zero"
.Ltext_4:
    .asciz "src/std/gpu/mask.lucb:22:5"
.Ltext_5:
    .asciz "a frame supports at most 16 MiB of coverage images"
.Ltext_6:
    .asciz "src/std/gpu/mask.lucb:24:5"
.Ltext_7:
    .asciz "src/std/gpu/mask.lucb:26:9"
.Ltext_8:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_9:
    .asciz "memory.unset"
.Ltext_10:
    .asciz "src/std/gpu/mask.lucb:27:9"
.Ltext_11:
    .asciz "memory.exhausted"
.Ltext_12:
    .asciz "src/std/gpu/mask.lucb:31:13"
.Ltext_13:
    .asciz "src/std/gpu/mask.lucb:51:13"
.Ltext_14:
    .asciz "src/std/gpu/mask.lucb:53:17"
.Ltext_15:
    .asciz "shift count out of range"
.Ltext_16:
    .asciz "src/std/gpu/mask.lucb:54:9"
.Ltext_17:
    .asciz "src/std/gpu/mask.lucb:55:5"
.Ltext_18:
    .asciz "index out of bounds"
.Ltext_19:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_20:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_21:
    .asciz "null_foreign"
.Ltext_22:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3
