    .text

    .p2align 4
    .globl lb_net_9http_body_0init
lb_net_9http_body_0init:
    .seh_proc lb_net_9http_body_0init
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
    .globl lb_net_HttpBodyDecoder_create
lb_net_HttpBodyDecoder_create:
    .seh_proc lb_net_HttpBodyDecoder_create
    pushq %rbp
    .seh_pushreg %rbp
    movq $25200, %rax
    call ___chkstk_ms
    subq $25200, %rsp
    .seh_stackalloc 25200
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 25016(%rbp)
    movq %rdi, 25192(%rbp)
    .seh_savereg %rdi, 25192
    movq %rsi, 25184(%rbp)
    .seh_savereg %rsi, 25184
    movdqu %xmm6, 25168(%rbp)
    .seh_savexmm %xmm6, 25168
    movdqu %xmm7, 25152(%rbp)
    .seh_savexmm %xmm7, 25152
    movdqu %xmm8, 25136(%rbp)
    .seh_savexmm %xmm8, 25136
    movdqu %xmm9, 25120(%rbp)
    .seh_savexmm %xmm9, 25120
    movdqu %xmm10, 25104(%rbp)
    .seh_savexmm %xmm10, 25104
    movdqu %xmm11, 25088(%rbp)
    .seh_savexmm %xmm11, 25088
    movdqu %xmm12, 25072(%rbp)
    .seh_savexmm %xmm12, 25072
    movdqu %xmm13, 25056(%rbp)
    .seh_savexmm %xmm13, 25056
    movdqu %xmm14, 25040(%rbp)
    .seh_savexmm %xmm14, 25040
    movdqu %xmm15, 25024(%rbp)
    .seh_savexmm %xmm15, 25024
    movq %rbx, 25008(%rbp)
    .seh_savereg %rbx, 25008
    movq %r12, 25000(%rbp)
    .seh_savereg %r12, 25000
    movq %r13, 24992(%rbp)
    .seh_savereg %r13, 24992
    movq %r14, 24984(%rbp)
    .seh_savereg %r14, 24984
    movq %r15, 24976(%rbp)
    .seh_savereg %r15, 24976
    .seh_endprologue
    movq %rcx, 25216(%rbp)
    movq %rdx, 25224(%rbp)
    movq %r8, 25232(%rbp)
    movq %r9, 25240(%rbp)
    movq 25224(%rbp), %rax
    movl %eax, 16648(%rbp)
    movq 25232(%rbp), %rax
    movq %rax, 16632(%rbp)
    movq 25240(%rbp), %rax
    movq %rax, 16616(%rbp)
    leaq 16648(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $4, %ecx
    cmpl %ecx, %ebx
    jne .L1_2
.L1_1:
    leaq 16664(%rbp), %rbx
    movq $8280, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_16http_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq 16600(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $33, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8304, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 25016(%rbp), %rdi
    movq $8312, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 25016(%rbp), %rax
    movq 25192(%rbp), %rdi
    movq 25184(%rbp), %rsi
    movdqu 25168(%rbp), %xmm6
    movdqu 25152(%rbp), %xmm7
    movdqu 25136(%rbp), %xmm8
    movdqu 25120(%rbp), %xmm9
    movdqu 25104(%rbp), %xmm10
    movdqu 25088(%rbp), %xmm11
    movdqu 25072(%rbp), %xmm12
    movdqu 25056(%rbp), %xmm13
    movdqu 25040(%rbp), %xmm14
    movdqu 25024(%rbp), %xmm15
    movq 25008(%rbp), %rbx
    movq 25000(%rbp), %r12
    movq 24992(%rbp), %r13
    movq 24984(%rbp), %r14
    movq 24976(%rbp), %r15
    leaq 25200(%rbp), %rsp
    popq %rbp
    ret
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %eax
    movl %eax, 16(%rbp)
    movl 16(%rbp), %eax
    testl %eax, %eax
    jne .L1_8
    jmp .L1_22
.L1_22:
    movl 16(%rbp), %eax
    movl %eax, %r13d
    jmp .L1_9
.L1_8:
    leaq 16632(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 16616(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    seta %al
    movzbl %al, %r13d
.L1_9:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L1_5
    jmp .L1_6
.L1_5:
    leaq 16664(%rbp), %rbx
    movq $8280, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_1(%rip), %r13
    leaq 16584(%rbp), %r14
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
    movq $8304, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 25016(%rbp), %rdi
    movq $8312, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 25016(%rbp), %rax
    movq 25192(%rbp), %rdi
    movq 25184(%rbp), %rsi
    movdqu 25168(%rbp), %xmm6
    movdqu 25152(%rbp), %xmm7
    movdqu 25136(%rbp), %xmm8
    movdqu 25120(%rbp), %xmm9
    movdqu 25104(%rbp), %xmm10
    movdqu 25088(%rbp), %xmm11
    movdqu 25072(%rbp), %xmm12
    movdqu 25056(%rbp), %xmm13
    movdqu 25040(%rbp), %xmm14
    movdqu 25024(%rbp), %xmm15
    movq 25008(%rbp), %rbx
    movq 25000(%rbp), %r12
    movq 24992(%rbp), %r13
    movq 24984(%rbp), %r14
    movq 24976(%rbp), %r15
    leaq 25200(%rbp), %rsp
    popq %rbp
    ret
.L1_10:
    jmp .L1_7
.L1_6:
.L1_7:
    leaq 8304(%rbp), %r13
    leaq 24(%rbp), %r14
    movq %r14, %rdi
    xorl %esi, %esi
    movq $8280, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    movq %r14, %r10
    movb %bl, (%r10)
    leaq 16632(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq 0(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 16616(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $6, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rdi
    movq %r14, %rsi
    movq $8280, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L1_12
.L1_11:
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_13
.L1_12:
    movl $3, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_23
    jmp .L1_17
.L1_23:
    movl %r12d, %ebx
    jmp .L1_18
.L1_17:
    movl 16(%rbp), %eax
    testl %eax, %eax
    jne .L1_19
    jmp .L1_24
.L1_24:
    movl 16(%rbp), %eax
    movl %eax, %ebx
    jmp .L1_20
.L1_19:
    movq 0(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %ebx
.L1_20:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L1_18:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_14
    jmp .L1_15
.L1_14:
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_16
.L1_15:
.L1_16:
.L1_13:
    leaq 16664(%rbp), %rbx
    movq %rbx, %rdi
    movq %r13, %rsi
    movq $8280, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq $8304, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 25016(%rbp), %rdi
    movq $8312, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 25016(%rbp), %rax
    movq 25192(%rbp), %rdi
    movq 25184(%rbp), %rsi
    movdqu 25168(%rbp), %xmm6
    movdqu 25152(%rbp), %xmm7
    movdqu 25136(%rbp), %xmm8
    movdqu 25120(%rbp), %xmm9
    movdqu 25104(%rbp), %xmm10
    movdqu 25088(%rbp), %xmm11
    movdqu 25072(%rbp), %xmm12
    movdqu 25056(%rbp), %xmm13
    movdqu 25040(%rbp), %xmm14
    movdqu 25024(%rbp), %xmm15
    movq 25008(%rbp), %rbx
    movq 25000(%rbp), %r12
    movq 24992(%rbp), %r13
    movq 24984(%rbp), %r14
    movq 24976(%rbp), %r15
    leaq 25200(%rbp), %rsp
    popq %rbp
    ret
.L1_21:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_HttpBodyDecoder_finished
lb_net_HttpBodyDecoder_finished:
    .seh_proc lb_net_HttpBodyDecoder_finished
    pushq %rbp
    .seh_pushreg %rbp
    subq $208, %rsp
    .seh_stackalloc 208
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 200(%rbp)
    .seh_savereg %rdi, 200
    movq %rsi, 192(%rbp)
    .seh_savereg %rsi, 192
    movdqu %xmm6, 176(%rbp)
    .seh_savexmm %xmm6, 176
    movdqu %xmm7, 160(%rbp)
    .seh_savexmm %xmm7, 160
    movdqu %xmm8, 144(%rbp)
    .seh_savexmm %xmm8, 144
    movdqu %xmm9, 128(%rbp)
    .seh_savexmm %xmm9, 128
    movdqu %xmm10, 112(%rbp)
    .seh_savexmm %xmm10, 112
    movdqu %xmm11, 96(%rbp)
    .seh_savexmm %xmm11, 96
    movdqu %xmm12, 80(%rbp)
    .seh_savexmm %xmm12, 80
    movdqu %xmm13, 64(%rbp)
    .seh_savexmm %xmm13, 64
    movdqu %xmm14, 48(%rbp)
    .seh_savexmm %xmm14, 48
    movdqu %xmm15, 32(%rbp)
    .seh_savexmm %xmm15, 32
    movq %rbx, 24(%rbp)
    .seh_savereg %rbx, 24
    movq %r12, 16(%rbp)
    .seh_savereg %r12, 16
    .seh_endprologue
    movq %rcx, 224(%rbp)
    movq %rdx, 232(%rbp)
    movq %r8, 240(%rbp)
    movq %r9, 248(%rbp)
    movq 224(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 8(%rbp), %r10
    movq (%r10), %r12
    movq $8272, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L2_1
    jmp .L2_4
.L2_4:
    movl %ebx, %r12d
    jmp .L2_2
.L2_1:
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $6, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L2_2:
    movzbl %r12b, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq 200(%rbp), %rdi
    movq 192(%rbp), %rsi
    movdqu 176(%rbp), %xmm6
    movdqu 160(%rbp), %xmm7
    movdqu 144(%rbp), %xmm8
    movdqu 128(%rbp), %xmm9
    movdqu 112(%rbp), %xmm10
    movdqu 96(%rbp), %xmm11
    movdqu 80(%rbp), %xmm12
    movdqu 64(%rbp), %xmm13
    movdqu 48(%rbp), %xmm14
    movdqu 32(%rbp), %xmm15
    movq 24(%rbp), %rbx
    movq 16(%rbp), %r12
    leaq 208(%rbp), %rsp
    popq %rbp
    ret
.L2_3:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_HttpBodyDecoder_consume
lb_net_HttpBodyDecoder_consume:
    .seh_proc lb_net_HttpBodyDecoder_consume
    pushq %rbp
    .seh_pushreg %rbp
    subq $592, %rsp
    .seh_stackalloc 592
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 408(%rbp)
    movq %rdi, 584(%rbp)
    .seh_savereg %rdi, 584
    movq %rsi, 576(%rbp)
    .seh_savereg %rsi, 576
    movdqu %xmm6, 560(%rbp)
    .seh_savexmm %xmm6, 560
    movdqu %xmm7, 544(%rbp)
    .seh_savexmm %xmm7, 544
    movdqu %xmm8, 528(%rbp)
    .seh_savexmm %xmm8, 528
    movdqu %xmm9, 512(%rbp)
    .seh_savexmm %xmm9, 512
    movdqu %xmm10, 496(%rbp)
    .seh_savexmm %xmm10, 496
    movdqu %xmm11, 480(%rbp)
    .seh_savexmm %xmm11, 480
    movdqu %xmm12, 464(%rbp)
    .seh_savexmm %xmm12, 464
    movdqu %xmm13, 448(%rbp)
    .seh_savexmm %xmm13, 448
    movdqu %xmm14, 432(%rbp)
    .seh_savexmm %xmm14, 432
    movdqu %xmm15, 416(%rbp)
    .seh_savexmm %xmm15, 416
    movq %rbx, 400(%rbp)
    .seh_savereg %rbx, 400
    movq %r12, 392(%rbp)
    .seh_savereg %r12, 392
    movq %r13, 384(%rbp)
    .seh_savereg %r13, 384
    movq %r14, 376(%rbp)
    .seh_savereg %r14, 376
    movq %r15, 368(%rbp)
    .seh_savereg %r15, 368
    .seh_endprologue
    movq %rcx, 608(%rbp)
    movq %rdx, 616(%rbp)
    movq %r8, 624(%rbp)
    movq %r9, 632(%rbp)
    movq 616(%rbp), %rax
    movq %rax, 256(%rbp)
    movq 624(%rbp), %r10
    leaq 240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 256(%rbp), %r10
    movq (%r10), %r13
    movq $8272, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_1
    jmp .L3_2
.L3_1:
    leaq 264(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $8276, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_5(%rip), %r14
    leaq 224(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $28, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 408(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 408(%rbp), %rax
    movq 584(%rbp), %rdi
    movq 576(%rbp), %rsi
    movdqu 560(%rbp), %xmm6
    movdqu 544(%rbp), %xmm7
    movdqu 528(%rbp), %xmm8
    movdqu 512(%rbp), %xmm9
    movdqu 496(%rbp), %xmm10
    movdqu 480(%rbp), %xmm11
    movdqu 464(%rbp), %xmm12
    movdqu 448(%rbp), %xmm13
    movdqu 432(%rbp), %xmm14
    movdqu 416(%rbp), %xmm15
    movq 400(%rbp), %rbx
    movq 392(%rbp), %r12
    movq 384(%rbp), %r13
    movq 376(%rbp), %r14
    movq 368(%rbp), %r15
    leaq 592(%rbp), %rsp
    popq %rbp
    ret
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    leaq 240(%rbp), %r12
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 24(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_HttpBodyDecoder_advance
    addq $48, %rsp
    leaq 24(%rbp), %r14
    movq $96, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_8
    jmp .L3_7
.L3_8:
    movq $72, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq 128(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_5
.L3_7:
    leaq 152(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
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
    jmp .L3_6
.L3_5:
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $8276, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq %r15, %r10
    movl (%r10), %r14d
    movq 16(%rbp), %r10
    movl %r14d, (%r10)
    leaq 264(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $72, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 8(%rbp), %rax
    movq $96, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq 8(%rbp), %rsi
    movq 408(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 408(%rbp), %rax
    movq 584(%rbp), %rdi
    movq 576(%rbp), %rsi
    movdqu 560(%rbp), %xmm6
    movdqu 544(%rbp), %xmm7
    movdqu 528(%rbp), %xmm8
    movdqu 512(%rbp), %xmm9
    movdqu 496(%rbp), %xmm10
    movdqu 480(%rbp), %xmm11
    movdqu 464(%rbp), %xmm12
    movdqu 448(%rbp), %xmm13
    movdqu 432(%rbp), %xmm14
    movdqu 416(%rbp), %xmm15
    movq 400(%rbp), %rbx
    movq 392(%rbp), %r12
    movq 384(%rbp), %r13
    movq 376(%rbp), %r14
    movq 368(%rbp), %r15
    leaq 592(%rbp), %rsp
    popq %rbp
    ret
.L3_9:
.L3_6:
    leaq 264(%rbp), %r12
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
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    movq $96, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 408(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 408(%rbp), %rax
    movq 584(%rbp), %rdi
    movq 576(%rbp), %rsi
    movdqu 560(%rbp), %xmm6
    movdqu 544(%rbp), %xmm7
    movdqu 528(%rbp), %xmm8
    movdqu 512(%rbp), %xmm9
    movdqu 496(%rbp), %xmm10
    movdqu 480(%rbp), %xmm11
    movdqu 464(%rbp), %xmm12
    movdqu 448(%rbp), %xmm13
    movdqu 432(%rbp), %xmm14
    movdqu 416(%rbp), %xmm15
    movq 400(%rbp), %rbx
    movq 392(%rbp), %r12
    movq 384(%rbp), %r13
    movq 376(%rbp), %r14
    movq 368(%rbp), %r15
    leaq 592(%rbp), %rsp
    popq %rbp
    ret
.L3_10:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_HttpBodyDecoder_finish
lb_net_HttpBodyDecoder_finish:
    .seh_proc lb_net_HttpBodyDecoder_finish
    pushq %rbp
    .seh_pushreg %rbp
    subq $304, %rsp
    .seh_stackalloc 304
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 120(%rbp)
    movq %rdi, 296(%rbp)
    .seh_savereg %rdi, 296
    movq %rsi, 288(%rbp)
    .seh_savereg %rsi, 288
    movdqu %xmm6, 272(%rbp)
    .seh_savexmm %xmm6, 272
    movdqu %xmm7, 256(%rbp)
    .seh_savexmm %xmm7, 256
    movdqu %xmm8, 240(%rbp)
    .seh_savexmm %xmm8, 240
    movdqu %xmm9, 224(%rbp)
    .seh_savexmm %xmm9, 224
    movdqu %xmm10, 208(%rbp)
    .seh_savexmm %xmm10, 208
    movdqu %xmm11, 192(%rbp)
    .seh_savexmm %xmm11, 192
    movdqu %xmm12, 176(%rbp)
    .seh_savexmm %xmm12, 176
    movdqu %xmm13, 160(%rbp)
    .seh_savexmm %xmm13, 160
    movdqu %xmm14, 144(%rbp)
    .seh_savexmm %xmm14, 144
    movdqu %xmm15, 128(%rbp)
    .seh_savexmm %xmm15, 128
    movq %rbx, 112(%rbp)
    .seh_savereg %rbx, 112
    movq %r12, 104(%rbp)
    .seh_savereg %r12, 104
    movq %r13, 96(%rbp)
    .seh_savereg %r13, 96
    movq %r14, 88(%rbp)
    .seh_savereg %r14, 88
    movq %r15, 80(%rbp)
    .seh_savereg %r15, 80
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 328(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 40(%rbp), %r10
    movq (%r10), %r13
    movq $8272, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_1
    jmp .L4_2
.L4_1:
    leaq 48(%rbp), %rbx
    movq $8276, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq 24(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $28, %rax
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
    movq %rbx, %rsi
    movq 120(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 120(%rbp), %rax
    movq 296(%rbp), %rdi
    movq 288(%rbp), %rsi
    movdqu 272(%rbp), %xmm6
    movdqu 256(%rbp), %xmm7
    movdqu 240(%rbp), %xmm8
    movdqu 224(%rbp), %xmm9
    movdqu 208(%rbp), %xmm10
    movdqu 192(%rbp), %xmm11
    movdqu 176(%rbp), %xmm12
    movdqu 160(%rbp), %xmm13
    movdqu 144(%rbp), %xmm14
    movdqu 128(%rbp), %xmm15
    movq 112(%rbp), %rbx
    movq 104(%rbp), %r12
    movq 96(%rbp), %r13
    movq 88(%rbp), %r14
    movq 80(%rbp), %r15
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    movq %r13, %r10
    movzbl (%r10), %r12d
    movl $3, %ecx
    cmpl %ecx, %r12d
    jne .L4_6
.L4_5:
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $6, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L4_7
.L4_6:
.L4_7:
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $6, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L4_9
.L4_8:
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $8276, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq lb_io_14unexpected_eof(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r15d
    movq %r12, %r10
    movl %r15d, (%r10)
    leaq 48(%rbp), %r12
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_7(%rip), %r14
    leaq 8(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $44, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 120(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 120(%rbp), %rax
    movq 296(%rbp), %rdi
    movq 288(%rbp), %rsi
    movdqu 272(%rbp), %xmm6
    movdqu 256(%rbp), %xmm7
    movdqu 240(%rbp), %xmm8
    movdqu 224(%rbp), %xmm9
    movdqu 208(%rbp), %xmm10
    movdqu 192(%rbp), %xmm11
    movdqu 176(%rbp), %xmm12
    movdqu 160(%rbp), %xmm13
    movdqu 144(%rbp), %xmm14
    movdqu 128(%rbp), %xmm15
    movq 112(%rbp), %rbx
    movq 104(%rbp), %r12
    movq 96(%rbp), %r13
    movq 88(%rbp), %r14
    movq 80(%rbp), %r15
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L4_11:
    jmp .L4_10
.L4_9:
.L4_10:
    leaq 48(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 120(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 120(%rbp), %rax
    movq 296(%rbp), %rdi
    movq 288(%rbp), %rsi
    movdqu 272(%rbp), %xmm6
    movdqu 256(%rbp), %xmm7
    movdqu 240(%rbp), %xmm8
    movdqu 224(%rbp), %xmm9
    movdqu 208(%rbp), %xmm10
    movdqu 192(%rbp), %xmm11
    movdqu 176(%rbp), %xmm12
    movdqu 160(%rbp), %xmm13
    movdqu 144(%rbp), %xmm14
    movdqu 128(%rbp), %xmm15
    movq 112(%rbp), %rbx
    movq 104(%rbp), %r12
    movq 96(%rbp), %r13
    movq 88(%rbp), %r14
    movq 80(%rbp), %r15
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_HttpBodyDecoder_advance
lb_net_HttpBodyDecoder_advance:
    .seh_proc lb_net_HttpBodyDecoder_advance
    pushq %rbp
    .seh_pushreg %rbp
    subq $2240, %rsp
    .seh_stackalloc 2240
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 2056(%rbp)
    movq %rdi, 2232(%rbp)
    .seh_savereg %rdi, 2232
    movq %rsi, 2224(%rbp)
    .seh_savereg %rsi, 2224
    movdqu %xmm6, 2208(%rbp)
    .seh_savexmm %xmm6, 2208
    movdqu %xmm7, 2192(%rbp)
    .seh_savexmm %xmm7, 2192
    movdqu %xmm8, 2176(%rbp)
    .seh_savexmm %xmm8, 2176
    movdqu %xmm9, 2160(%rbp)
    .seh_savexmm %xmm9, 2160
    movdqu %xmm10, 2144(%rbp)
    .seh_savexmm %xmm10, 2144
    movdqu %xmm11, 2128(%rbp)
    .seh_savexmm %xmm11, 2128
    movdqu %xmm12, 2112(%rbp)
    .seh_savexmm %xmm12, 2112
    movdqu %xmm13, 2096(%rbp)
    .seh_savexmm %xmm13, 2096
    movdqu %xmm14, 2080(%rbp)
    .seh_savexmm %xmm14, 2080
    movdqu %xmm15, 2064(%rbp)
    .seh_savexmm %xmm15, 2064
    movq %rbx, 2048(%rbp)
    .seh_savereg %rbx, 2048
    movq %r12, 2040(%rbp)
    .seh_savereg %r12, 2040
    movq %r13, 2032(%rbp)
    .seh_savereg %r13, 2032
    movq %r14, 2024(%rbp)
    .seh_savereg %r14, 2024
    movq %r15, 2016(%rbp)
    .seh_savereg %r15, 2016
    .seh_endprologue
    movq %rcx, 2256(%rbp)
    movq %rdx, 2264(%rbp)
    movq %r8, 2272(%rbp)
    movq %r9, 2280(%rbp)
    movq 2264(%rbp), %rax
    movq %rax, 1904(%rbp)
    movq 2272(%rbp), %r10
    leaq 1888(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1904(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 80(%rbp)
    leaq 1888(%rbp), %rax
    movq %rax, 480(%rbp)
    movq 480(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 472(%rbp)
    movq 80(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 456(%rbp)
    movq 80(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 448(%rbp)
    movq 80(%rbp), %rax
    movq $8256, %rcx
    addq %rcx, %rax
    movq %rax, 408(%rbp)
    movq 80(%rbp), %rax
    movq $8240, %rcx
    addq %rcx, %rax
    movq %rax, 400(%rbp)
    movq 80(%rbp), %rax
    movq $8232, %rcx
    addq %rcx, %rax
    movq %rax, 304(%rbp)
    movq 80(%rbp), %rax
    movq $33, %rcx
    addq %rcx, %rax
    movq %rax, 296(%rbp)
    leaq 1720(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 80(%rbp), %rax
    movq $33, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 80(%rbp), %rax
    movq $8232, %rcx
    addq %rcx, %rax
    movq %rax, 392(%rbp)
    leaq 1704(%rbp), %rax
    movq %rax, 384(%rbp)
    movq 384(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 376(%rbp)
    leaq 1688(%rbp), %rax
    movq %rax, 368(%rbp)
    movq 368(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 360(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 320(%rbp)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    leaq 1128(%rbp), %rax
    movq %rax, 288(%rbp)
    leaq 1136(%rbp), %rax
    movq %rax, 280(%rbp)
    movq 280(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 272(%rbp)
    leaq 1126(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, 264(%rbp)
    leaq 1056(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    leaq 1152(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 96(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 88(%rbp)
    leaq 1152(%rbp), %rax
    movq %rax, 120(%rbp)
    movq 120(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    movq 120(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    leaq 1152(%rbp), %rax
    movq %rax, 192(%rbp)
    movq 192(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 184(%rbp)
    leaq lb_net_12http_invalid(%rip), %rax
    movq %rax, 176(%rbp)
    leaq .Ltext_45(%rip), %rax
    movq %rax, 168(%rbp)
    leaq 1088(%rbp), %rax
    movq %rax, 160(%rbp)
    movq 160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    movq 184(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    movq 192(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    leaq 1152(%rbp), %rax
    movq %rax, 256(%rbp)
    movq 256(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 248(%rbp)
    leaq lb_net_10http_limit(%rip), %rax
    movq %rax, 240(%rbp)
    leaq .Ltext_42(%rip), %rax
    movq %rax, 232(%rbp)
    leaq 1104(%rbp), %rax
    movq %rax, 224(%rbp)
    movq 224(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 216(%rbp)
    movq 248(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 208(%rbp)
    movq 256(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 200(%rbp)
    leaq 1648(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 352(%rbp)
    movq 80(%rbp), %rax
    movq $8248, %rcx
    addq %rcx, %rax
    movq %rax, 344(%rbp)
    movq 80(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 336(%rbp)
    movq 80(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 328(%rbp)
    movq $0, %rax
    movq %rax, 72(%rbp)
.L5_1:
    movq 472(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 464(%rbp)
    movq 72(%rbp), %rax
    movq 464(%rbp), %rcx
    cmpq %rcx, %rax
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_4
    jmp .L5_148
.L5_148:
    movl %r12d, %r13d
    jmp .L5_5
.L5_4:
    movq 456(%rbp), %r10
    movzbl (%r10), %r12d
    movl $6, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L5_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L5_2
    jmp .L5_3
.L5_2:
    movq 448(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, 440(%rbp)
    movl 440(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L5_149
    jmp .L5_9
.L5_149:
    movl %r13d, %r14d
    jmp .L5_10
.L5_9:
    movl 440(%rbp), %eax
    movl $2, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
.L5_10:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L5_6
    jmp .L5_7
.L5_6:
    movq 464(%rbp), %rax
    movq 72(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 80(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, 432(%rbp)
    movl 432(%rbp), %eax
    movl $3, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %eax
    movl %eax, 424(%rbp)
    movl 424(%rbp), %eax
    testl %eax, %eax
    jne .L5_14
    jmp .L5_150
.L5_150:
    movl 424(%rbp), %eax
    movl %eax, %r15d
    jmp .L5_15
.L5_14:
    movq 80(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    cmpq %r15, %r12
    seta %al
    movzbl %al, %r15d
.L5_15:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L5_11
    jmp .L5_12
.L5_11:
    movq 80(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    jmp .L5_13
.L5_12:
.L5_13:
    movq 80(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 80(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r14
    movq %r13, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    cmpq %r13, %r12
    jbe .L5_17
.L5_16:
    leaq 1912(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_1(%rip), %r13
    leaq 1872(%rbp), %r14
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
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 2056(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2056(%rbp), %rax
    movq 2232(%rbp), %rdi
    movq 2224(%rbp), %rsi
    movdqu 2208(%rbp), %xmm6
    movdqu 2192(%rbp), %xmm7
    movdqu 2176(%rbp), %xmm8
    movdqu 2160(%rbp), %xmm9
    movdqu 2144(%rbp), %xmm10
    movdqu 2128(%rbp), %xmm11
    movdqu 2112(%rbp), %xmm12
    movdqu 2096(%rbp), %xmm13
    movdqu 2080(%rbp), %xmm14
    movdqu 2064(%rbp), %xmm15
    movq 2048(%rbp), %rbx
    movq 2040(%rbp), %r12
    movq 2032(%rbp), %r13
    movq 2024(%rbp), %r14
    movq 2016(%rbp), %r15
    leaq 2240(%rbp), %rsp
    popq %rbp
    ret
.L5_17:
.L5_18:
    movq %r14, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r15, %r10
    movq %r13, (%r10)
    movl 424(%rbp), %eax
    testl %eax, %eax
    jne .L5_20
    jmp .L5_21
.L5_20:
    movq 80(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq %r12, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L5_24
.L5_23:
    movl 432(%rbp), %eax
    movl $2, %ecx
    cmpl %ecx, %eax
    jne .L5_27
.L5_26:
    movl $3, %eax
    movl %eax, %ebx
    jmp .L5_28
.L5_27:
    movl $6, %eax
    movl %eax, %ebx
.L5_28:
    movzbl %bl, %r13d
    movq 448(%rbp), %r10
    movb %r13b, (%r10)
    jmp .L5_25
.L5_24:
.L5_25:
    jmp .L5_22
.L5_21:
.L5_22:
    leaq 1800(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    movq 72(%rbp), %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 0(%rbp), %r10
    movq %rbx, (%r10)
    movq 480(%rbp), %r10
    movq (%r10), %r15
    movq 464(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq 72(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 72(%rbp), %rax
    cmpq %rbx, %rax
    jbe .L5_29
.L5_30:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_29:
    movq 72(%rbp), %rax
    movq %rax, %r12
    addq %r15, %r12
    movq 72(%rbp), %rcx
    movq %rbx, %r13
    subq %rcx, %r13
    leaq 1784(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 448(%rbp), %r10
    movzbl (%r10), %r12d
    movl $6, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movq 0(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    leaq 1912(%rbp), %r12
    movq 0(%rbp), %r10
    movq %r12, %r11
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
    movq $96, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 2056(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2056(%rbp), %rax
    movq 2232(%rbp), %rdi
    movq 2224(%rbp), %rsi
    movdqu 2208(%rbp), %xmm6
    movdqu 2192(%rbp), %xmm7
    movdqu 2176(%rbp), %xmm8
    movdqu 2160(%rbp), %xmm9
    movdqu 2144(%rbp), %xmm10
    movdqu 2128(%rbp), %xmm11
    movdqu 2112(%rbp), %xmm12
    movdqu 2096(%rbp), %xmm13
    movdqu 2080(%rbp), %xmm14
    movdqu 2064(%rbp), %xmm15
    movq 2048(%rbp), %rbx
    movq 2040(%rbp), %r12
    movq 2032(%rbp), %r13
    movq 2024(%rbp), %r14
    movq 2016(%rbp), %r15
    leaq 2240(%rbp), %rsp
    popq %rbp
    ret
.L5_7:
.L5_8:
    movq 480(%rbp), %r10
    movq (%r10), %r13
    movq 72(%rbp), %rax
    movq 464(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 72(%rbp), %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq 72(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, 416(%rbp)
    movl 440(%rbp), %eax
    movl $3, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L5_151
    jmp .L5_35
.L5_151:
    movl %r15d, %ebx
    jmp .L5_36
.L5_35:
    movl 440(%rbp), %eax
    movl $4, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %ebx
.L5_36:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L5_32
    jmp .L5_33
.L5_32:
    testl %r15d, %r15d
    jne .L5_37
    jmp .L5_38
.L5_37:
    movl $13, %eax
    movl %eax, %ebx
    jmp .L5_39
.L5_38:
    movl $10, %eax
    movl %eax, %ebx
.L5_39:
    movzbl %bl, %r12d
    movzbl %r13b, %r14d
    movzbl %r12b, %r12d
    cmpl %r12d, %r14d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L5_41
.L5_40:
    leaq 1912(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_16(%rip), %r13
    leaq 1768(%rbp), %r14
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
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 2056(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2056(%rbp), %rax
    movq 2232(%rbp), %rdi
    movq 2224(%rbp), %rsi
    movdqu 2208(%rbp), %xmm6
    movdqu 2192(%rbp), %xmm7
    movdqu 2176(%rbp), %xmm8
    movdqu 2160(%rbp), %xmm9
    movdqu 2144(%rbp), %xmm10
    movdqu 2128(%rbp), %xmm11
    movdqu 2112(%rbp), %xmm12
    movdqu 2096(%rbp), %xmm13
    movdqu 2080(%rbp), %xmm14
    movdqu 2064(%rbp), %xmm15
    movq 2048(%rbp), %rbx
    movq 2040(%rbp), %r12
    movq 2032(%rbp), %r13
    movq 2024(%rbp), %r14
    movq 2016(%rbp), %r15
    leaq 2240(%rbp), %rsp
    popq %rbp
    ret
.L5_41:
.L5_42:
    testl %r15d, %r15d
    jne .L5_44
    jmp .L5_45
.L5_44:
    movl $4, %eax
    movl %eax, %ebx
    jmp .L5_46
.L5_45:
    movl $1, %eax
    movl %eax, %ebx
.L5_46:
    movzbl %bl, %r12d
    movq 448(%rbp), %r10
    movb %r12b, (%r10)
    movq 416(%rbp), %rax
    movq %rax, 72(%rbp)
    jmp .L5_1
.L5_33:
.L5_34:
    movl 440(%rbp), %eax
    movl $5, %ecx
    cmpl %ecx, %eax
    jne .L5_49
.L5_48:
    movq 408(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 408(%rbp), %r10
    movq %rbx, (%r10)
    movq $32768, %rcx
    cmpq %rcx, %rbx
    jbe .L5_52
.L5_51:
    leaq 1912(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_18(%rip), %r13
    leaq 1752(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $37, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 2056(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2056(%rbp), %rax
    movq 2232(%rbp), %rdi
    movq 2224(%rbp), %rsi
    movdqu 2208(%rbp), %xmm6
    movdqu 2192(%rbp), %xmm7
    movdqu 2176(%rbp), %xmm8
    movdqu 2160(%rbp), %xmm9
    movdqu 2144(%rbp), %xmm10
    movdqu 2128(%rbp), %xmm11
    movdqu 2112(%rbp), %xmm12
    movdqu 2096(%rbp), %xmm13
    movdqu 2080(%rbp), %xmm14
    movdqu 2064(%rbp), %xmm15
    movq 2048(%rbp), %rbx
    movq 2040(%rbp), %r12
    movq 2032(%rbp), %r13
    movq 2024(%rbp), %r14
    movq 2016(%rbp), %r15
    leaq 2240(%rbp), %rsp
    popq %rbp
    ret
.L5_52:
.L5_53:
    jmp .L5_50
.L5_49:
.L5_50:
    movq 400(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_55
    jmp .L5_56
.L5_55:
    movzbl %r13b, %ebx
    movl $10, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_59
.L5_58:
    leaq 1912(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_19(%rip), %r13
    leaq 1736(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $24, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 2056(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2056(%rbp), %rax
    movq 2232(%rbp), %rdi
    movq 2224(%rbp), %rsi
    movdqu 2208(%rbp), %xmm6
    movdqu 2192(%rbp), %xmm7
    movdqu 2176(%rbp), %xmm8
    movdqu 2160(%rbp), %xmm9
    movdqu 2144(%rbp), %xmm10
    movdqu 2128(%rbp), %xmm11
    movdqu 2112(%rbp), %xmm12
    movdqu 2096(%rbp), %xmm13
    movdqu 2080(%rbp), %xmm14
    movdqu 2064(%rbp), %xmm15
    movq 2048(%rbp), %rbx
    movq 2040(%rbp), %r12
    movq 2032(%rbp), %r13
    movq 2024(%rbp), %r14
    movq 2016(%rbp), %r15
    leaq 2240(%rbp), %rsp
    popq %rbp
    ret
.L5_59:
.L5_60:
    movl $0, %eax
    movq 400(%rbp), %r10
    movb %al, (%r10)
    movq 392(%rbp), %r10
    movq (%r10), %r12
    movq $8193, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L5_62
.L5_63:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_62:
    movq 56(%rbp), %rax
    movq 384(%rbp), %r10
    movq %rax, (%r10)
    movq 376(%rbp), %r10
    movq %r12, (%r10)
    movq 56(%rbp), %rax
    movq 368(%rbp), %r10
    movq %rax, (%r10)
    movq 360(%rbp), %r10
    movq %r12, (%r10)
    movq 368(%rbp), %r10
    movq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq 392(%rbp), %r10
    movq %rax, (%r10)
    movq 448(%rbp), %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    jne .L5_65
.L5_64:
    movq 64(%rbp), %r10
    leaq 1136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq 288(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rax, %r12
.L5_113:
    movq 272(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L5_115
.L5_114:
    movq 280(%rbp), %r10
    movq (%r10), %r13
    addq %r12, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_8http_hex
    addq $32, %rsp
    leaq 1126(%rbp), %r10
    movw %ax, 0(%r10)
    movq 264(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_116
    jmp .L5_117
.L5_116:
    movq 24(%rbp), %r10
    movzbl (%r10), %r12d
    jmp .L5_118
.L5_117:
    jmp .L5_115
.L5_118:
    movzbl %r12b, %r13d
    movzbl %r13b, %r13d
    movl %r13d, %r13d
    movq $-1, %rax
    movq %rax, %r14
    subq %r13, %r14
.L5_124:
    movq $16, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r12
    cmpq %r12, %rbx
    jbe .L5_121
.L5_120:
    movq 240(%rbp), %r10
    movl (%r10), %ebx
    movq 248(%rbp), %r10
    movl %ebx, (%r10)
    movq 232(%rbp), %rax
    movq 224(%rbp), %r10
    movq %rax, (%r10)
    movq $31, %rax
    movq 216(%rbp), %r10
    movq %rax, (%r10)
    movq 224(%rbp), %r10
    movq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    movq 200(%rbp), %r10
    movb %al, (%r10)
    movq 256(%rbp), %r10
    leaq 1648(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_137
.L5_121:
.L5_122:
    movq %rbx, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r13, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 288(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 288(%rbp), %r10
    movq %r14, (%r10)
    movq %r12, %rbx
    movq %r14, %r12
    jmp .L5_113
.L5_115:
    movq 288(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L5_127
.L5_126:
    movq 176(%rbp), %r10
    movl (%r10), %ebx
    movq 184(%rbp), %r10
    movl %ebx, (%r10)
    movq 168(%rbp), %rax
    movq 160(%rbp), %r10
    movq %rax, (%r10)
    movq $35, %rax
    movq 152(%rbp), %r10
    movq %rax, (%r10)
    movq 160(%rbp), %r10
    movq 144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    movq 136(%rbp), %r10
    movb %al, (%r10)
    movq 192(%rbp), %r10
    leaq 1648(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_137
.L5_127:
.L5_128:
.L5_130:
    movq 288(%rbp), %r10
    movq (%r10), %r12
    movq 272(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L5_132
.L5_131:
    subq $48, %rsp
    movq 280(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 288(%rbp), %rax
    movq %rax, 16(%rsp)
    leaq 1056(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_20http_chunk_extension
    addq $48, %rsp
    movq 128(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_134
    jmp .L5_133
.L5_134:
    movq 16(%rbp), %r10
    movq 112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl $1, %eax
    movq 104(%rbp), %r10
    movb %al, (%r10)
    movq 120(%rbp), %r10
    leaq 1648(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_137
.L5_133:
    jmp .L5_130
.L5_132:
    movq 96(%rbp), %r10
    movq %rbx, (%r10)
    movl $0, %eax
    movq 88(%rbp), %r10
    movb %al, (%r10)
    movq 96(%rbp), %r10
    leaq 1648(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
.L5_137:
    movq 352(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_68
    jmp .L5_67
.L5_68:
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1912(%rbp), %r12
    movq $72, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $96, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 2056(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2056(%rbp), %rax
    movq 2232(%rbp), %rdi
    movq 2224(%rbp), %rsi
    movdqu 2208(%rbp), %xmm6
    movdqu 2192(%rbp), %xmm7
    movdqu 2176(%rbp), %xmm8
    movdqu 2160(%rbp), %xmm9
    movdqu 2144(%rbp), %xmm10
    movdqu 2128(%rbp), %xmm11
    movdqu 2112(%rbp), %xmm12
    movdqu 2096(%rbp), %xmm13
    movdqu 2080(%rbp), %xmm14
    movdqu 2064(%rbp), %xmm15
    movq 2048(%rbp), %rbx
    movq 2040(%rbp), %r12
    movq 2032(%rbp), %r13
    movq 2024(%rbp), %r14
    movq 2016(%rbp), %r15
    leaq 2240(%rbp), %rsp
    popq %rbp
    ret
.L5_67:
    movq 8(%rbp), %r10
    movq (%r10), %rbx
    movq 32(%rbp), %r10
    movq %rbx, (%r10)
    movq 344(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 344(%rbp), %r10
    movq %r12, (%r10)
    movq $1000000, %rcx
    cmpq %rcx, %r12
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_152
    jmp .L5_73
.L5_152:
    movl %r12d, %r13d
    jmp .L5_74
.L5_73:
    movq 336(%rbp), %r10
    movq (%r10), %r12
    movq 328(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    cmpq %r12, %rbx
    seta %al
    movzbl %al, %r13d
.L5_74:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L5_70
    jmp .L5_71
.L5_70:
    leaq 1912(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_23(%rip), %r13
    leaq 1632(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $44, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 2056(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2056(%rbp), %rax
    movq 2232(%rbp), %rdi
    movq 2224(%rbp), %rsi
    movdqu 2208(%rbp), %xmm6
    movdqu 2192(%rbp), %xmm7
    movdqu 2176(%rbp), %xmm8
    movdqu 2160(%rbp), %xmm9
    movdqu 2144(%rbp), %xmm10
    movdqu 2128(%rbp), %xmm11
    movdqu 2112(%rbp), %xmm12
    movdqu 2096(%rbp), %xmm13
    movdqu 2080(%rbp), %xmm14
    movdqu 2064(%rbp), %xmm15
    movq 2048(%rbp), %rbx
    movq 2040(%rbp), %r12
    movq 2032(%rbp), %r13
    movq 2024(%rbp), %r14
    movq 2016(%rbp), %r15
    leaq 2240(%rbp), %rsp
    popq %rbp
    ret
.L5_71:
.L5_72:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L5_77
.L5_76:
    movl $5, %eax
    movl %eax, %ebx
    jmp .L5_78
.L5_77:
    movl $2, %eax
    movl %eax, %ebx
.L5_78:
    movzbl %bl, %r12d
    movq 448(%rbp), %r10
    movb %r12b, (%r10)
    jmp .L5_66
.L5_65:
    movq 320(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L5_80
.L5_79:
    movl $6, %eax
    movq 448(%rbp), %r10
    movb %al, (%r10)
    jmp .L5_81
.L5_80:
    movq 80(%rbp), %rax
    movq $8264, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $100, %rcx
    cmpq %rcx, %r12
    jbe .L5_83
.L5_82:
    leaq 1912(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_25(%rip), %r13
    leaq 1616(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $28, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 2056(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2056(%rbp), %rax
    movq 2232(%rbp), %rdi
    movq 2224(%rbp), %rsi
    movdqu 2208(%rbp), %xmm6
    movdqu 2192(%rbp), %xmm7
    movdqu 2176(%rbp), %xmm8
    movdqu 2160(%rbp), %xmm9
    movdqu 2144(%rbp), %xmm10
    movdqu 2128(%rbp), %xmm11
    movdqu 2112(%rbp), %xmm12
    movdqu 2096(%rbp), %xmm13
    movdqu 2080(%rbp), %xmm14
    movdqu 2064(%rbp), %xmm15
    movq 2048(%rbp), %rbx
    movq 2040(%rbp), %r12
    movq 2032(%rbp), %r13
    movq 2024(%rbp), %r14
    movq 2016(%rbp), %r15
    leaq 2240(%rbp), %rsp
    popq %rbp
    ret
.L5_83:
.L5_84:
    leaq .Ltext_26(%rip), %rbx
    leaq 1600(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 64(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 1584(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_find
    addq $64, %rsp
    leaq 1584(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_86
    jmp .L5_87
.L5_86:
    movq %r12, %r10
    movq (%r10), %rbx
    jmp .L5_88
.L5_87:
    leaq 1912(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_27(%rip), %r13
    leaq 1568(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $21, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 2056(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2056(%rbp), %rax
    movq 2232(%rbp), %rdi
    movq 2224(%rbp), %rsi
    movdqu 2208(%rbp), %xmm6
    movdqu 2192(%rbp), %xmm7
    movdqu 2176(%rbp), %xmm8
    movdqu 2160(%rbp), %xmm9
    movdqu 2144(%rbp), %xmm10
    movdqu 2128(%rbp), %xmm11
    movdqu 2112(%rbp), %xmm12
    movdqu 2096(%rbp), %xmm13
    movdqu 2080(%rbp), %xmm14
    movdqu 2064(%rbp), %xmm15
    movq 2048(%rbp), %rbx
    movq 2040(%rbp), %r12
    movq 2032(%rbp), %r13
    movq 2024(%rbp), %r14
    movq 2016(%rbp), %r15
    leaq 2240(%rbp), %rsp
    popq %rbp
    ret
.L5_88:
    leaq 1536(%rbp), %rax
    movq %rax, 48(%rbp)
    leaq 1504(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq 64(%rbp), %r10
    movq (%r10), %r15
    movq 320(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 312(%rbp)
    movq 312(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L5_90
.L5_91:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_90:
    leaq 1488(%rbp), %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    leaq 1472(%rbp), %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq %r14, %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 312(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 312(%rbp), %rcx
    cmpq %rcx, %r14
    jbe .L5_92
.L5_93:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_92:
    movq %r15, %rbx
    addq %r14, %rbx
    movq 312(%rbp), %rax
    movq %rax, %r12
    subq %r14, %r12
    leaq 1456(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq 1440(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 1424(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_8http_ows
    addq $48, %rsp
    leaq 1424(%rbp), %rbx
    movq 40(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 40(%rbp), %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    subq $64, %rsp
    movq 48(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_16http_field_valid
    addq $64, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L5_153
    jmp .L5_97
.L5_153:
    movl %ebx, %r12d
    jmp .L5_98
.L5_97:
    movq 48(%rbp), %r10
    leaq 1040(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 864(%rbp), %rbx
    leaq 688(%rbp), %r12
    leaq .Ltext_73(%rip), %r13
    leaq 672(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $14, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_74(%rip), %r13
    leaq 656(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $17, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_75(%rip), %r13
    leaq 640(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $4, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_76(%rip), %r13
    leaq 624(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $10, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $48, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_77(%rip), %r13
    leaq 608(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $7, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $64, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_78(%rip), %r13
    leaq 592(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $7, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $80, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_79(%rip), %r13
    leaq 576(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $6, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $96, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_80(%rip), %r13
    leaq 560(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $13, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $112, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_81(%rip), %r13
    leaq 544(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $12, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $128, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_82(%rip), %r13
    leaq 528(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $16, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $144, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_83(%rip), %r13
    leaq 512(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $13, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $160, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $176, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    leaq 496(%rbp), %r12
    leaq 1040(%rbp), %r13
    movq $0, %rax
    movq %rax, %r14
.L5_138:
    movq $11, %rcx
    cmpq %rcx, %r14
    jae .L5_141
.L5_139:
    movq $16, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    movq %r15, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $64, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_10http_equal
    addq $64, %rsp
    movl %eax, %r15d
    testl %r15d, %r15d
    jne .L5_142
    jmp .L5_143
.L5_142:
    movl $1, %eax
    leaq 488(%rbp), %r10
    movl %eax, (%r10)
    movl $1, %eax
    movl %eax, %r12d
    jmp .L5_147
.L5_143:
.L5_144:
.L5_140:
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r14
    jmp .L5_138
.L5_141:
    movl $0, %eax
    leaq 488(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %r12d
.L5_147:
.L5_98:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_94
    jmp .L5_95
.L5_94:
    leaq 1912(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_29(%rip), %r13
    leaq 1408(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $33, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 2056(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2056(%rbp), %rax
    movq 2232(%rbp), %rdi
    movq 2224(%rbp), %rsi
    movdqu 2208(%rbp), %xmm6
    movdqu 2192(%rbp), %xmm7
    movdqu 2176(%rbp), %xmm8
    movdqu 2160(%rbp), %xmm9
    movdqu 2144(%rbp), %xmm10
    movdqu 2128(%rbp), %xmm11
    movdqu 2112(%rbp), %xmm12
    movdqu 2096(%rbp), %xmm13
    movdqu 2080(%rbp), %xmm14
    movdqu 2064(%rbp), %xmm15
    movq 2048(%rbp), %rbx
    movq 2040(%rbp), %r12
    movq 2032(%rbp), %r13
    movq 2024(%rbp), %r14
    movq 2016(%rbp), %r15
    leaq 2240(%rbp), %rsp
    popq %rbp
    ret
.L5_95:
.L5_96:
    leaq 1336(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    movq 416(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 1296(%rbp), %r12
    movq 48(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq 1912(%rbp), %r12
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
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    movq $96, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 2056(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2056(%rbp), %rax
    movq 2232(%rbp), %rdi
    movq 2224(%rbp), %rsi
    movdqu 2208(%rbp), %xmm6
    movdqu 2192(%rbp), %xmm7
    movdqu 2176(%rbp), %xmm8
    movdqu 2160(%rbp), %xmm9
    movdqu 2144(%rbp), %xmm10
    movdqu 2128(%rbp), %xmm11
    movdqu 2112(%rbp), %xmm12
    movdqu 2096(%rbp), %xmm13
    movdqu 2080(%rbp), %xmm14
    movdqu 2064(%rbp), %xmm15
    movq 2048(%rbp), %rbx
    movq 2040(%rbp), %r12
    movq 2032(%rbp), %r13
    movq 2024(%rbp), %r14
    movq 2016(%rbp), %r15
    leaq 2240(%rbp), %rsp
    popq %rbp
    ret
.L5_81:
.L5_66:
    jmp .L5_57
.L5_56:
    movzbl %r13b, %ebx
    movl $13, %ecx
    cmpl %ecx, %ebx
    jne .L5_102
.L5_101:
    movl $1, %eax
    movq 400(%rbp), %r10
    movb %al, (%r10)
    jmp .L5_103
.L5_102:
    movl $10, %ecx
    cmpl %ecx, %ebx
    jne .L5_105
.L5_104:
    leaq 1912(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_19(%rip), %r13
    leaq 1280(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $24, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 2056(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2056(%rbp), %rax
    movq 2232(%rbp), %rdi
    movq 2224(%rbp), %rsi
    movdqu 2208(%rbp), %xmm6
    movdqu 2192(%rbp), %xmm7
    movdqu 2176(%rbp), %xmm8
    movdqu 2160(%rbp), %xmm9
    movdqu 2144(%rbp), %xmm10
    movdqu 2128(%rbp), %xmm11
    movdqu 2112(%rbp), %xmm12
    movdqu 2096(%rbp), %xmm13
    movdqu 2080(%rbp), %xmm14
    movdqu 2064(%rbp), %xmm15
    movq 2048(%rbp), %rbx
    movq 2040(%rbp), %r12
    movq 2032(%rbp), %r13
    movq 2024(%rbp), %r14
    movq 2016(%rbp), %r15
    leaq 2240(%rbp), %rsp
    popq %rbp
    ret
.L5_105:
.L5_106:
    movq 304(%rbp), %r10
    movq (%r10), %r12
    movq $8192, %rcx
    cmpq %rcx, %r12
    jne .L5_109
.L5_108:
    leaq 1912(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_30(%rip), %r13
    leaq 1264(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $33, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 2056(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2056(%rbp), %rax
    movq 2232(%rbp), %rdi
    movq 2224(%rbp), %rsi
    movdqu 2208(%rbp), %xmm6
    movdqu 2192(%rbp), %xmm7
    movdqu 2176(%rbp), %xmm8
    movdqu 2160(%rbp), %xmm9
    movdqu 2144(%rbp), %xmm10
    movdqu 2128(%rbp), %xmm11
    movdqu 2112(%rbp), %xmm12
    movdqu 2096(%rbp), %xmm13
    movdqu 2080(%rbp), %xmm14
    movdqu 2064(%rbp), %xmm15
    movq 2048(%rbp), %rbx
    movq 2040(%rbp), %r12
    movq 2032(%rbp), %r13
    movq 2024(%rbp), %r14
    movq 2016(%rbp), %r15
    leaq 2240(%rbp), %rsp
    popq %rbp
    ret
.L5_109:
.L5_110:
    movq $8192, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 296(%rbp), %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movb %bl, (%r10)
    movq 304(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 304(%rbp), %r10
    movq %r13, (%r10)
.L5_103:
.L5_57:
    movq 416(%rbp), %rax
    movq %rax, 72(%rbp)
    jmp .L5_1
.L5_3:
    leaq 1192(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    movq 72(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 80(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $6, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movq $64, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    leaq 1912(%rbp), %r12
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
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    movq $96, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 2056(%rbp), %rdi
    movq $104, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2056(%rbp), %rax
    movq 2232(%rbp), %rdi
    movq 2224(%rbp), %rsi
    movdqu 2208(%rbp), %xmm6
    movdqu 2192(%rbp), %xmm7
    movdqu 2176(%rbp), %xmm8
    movdqu 2160(%rbp), %xmm9
    movdqu 2144(%rbp), %xmm10
    movdqu 2128(%rbp), %xmm11
    movdqu 2112(%rbp), %xmm12
    movdqu 2096(%rbp), %xmm13
    movdqu 2080(%rbp), %xmm14
    movdqu 2064(%rbp), %xmm15
    movq 2048(%rbp), %rbx
    movq 2040(%rbp), %r12
    movq 2032(%rbp), %r13
    movq 2024(%rbp), %r14
    movq 2016(%rbp), %r15
    leaq 2240(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_8http_hex
lb_net_8http_hex:
    .seh_proc lb_net_8http_hex
    pushq %rbp
    .seh_pushreg %rbp
    subq $240, %rsp
    .seh_stackalloc 240
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 232(%rbp)
    .seh_savereg %rdi, 232
    movq %rsi, 224(%rbp)
    .seh_savereg %rsi, 224
    movdqu %xmm6, 208(%rbp)
    .seh_savexmm %xmm6, 208
    movdqu %xmm7, 192(%rbp)
    .seh_savexmm %xmm7, 192
    movdqu %xmm8, 176(%rbp)
    .seh_savexmm %xmm8, 176
    movdqu %xmm9, 160(%rbp)
    .seh_savexmm %xmm9, 160
    movdqu %xmm10, 144(%rbp)
    .seh_savexmm %xmm10, 144
    movdqu %xmm11, 128(%rbp)
    .seh_savexmm %xmm11, 128
    movdqu %xmm12, 112(%rbp)
    .seh_savexmm %xmm12, 112
    movdqu %xmm13, 96(%rbp)
    .seh_savexmm %xmm13, 96
    movdqu %xmm14, 80(%rbp)
    .seh_savexmm %xmm14, 80
    movdqu %xmm15, 64(%rbp)
    .seh_savexmm %xmm15, 64
    movq %rbx, 56(%rbp)
    .seh_savereg %rbx, 56
    movq %r12, 48(%rbp)
    .seh_savereg %r12, 48
    movq %r13, 40(%rbp)
    .seh_savereg %r13, 40
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    movq 256(%rbp), %rax
    movl %eax, 16(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $48, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_4
    jmp .L6_30
.L6_30:
    movl %r12d, %r13d
    jmp .L6_5
.L6_4:
    movl $57, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L6_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L6_1
    jmp .L6_2
.L6_1:
    movl $48, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L6_6
.L6_7:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_6:
    leaq 14(%rbp), %rbx
    movq %rbx, %r10
    movb %r13b, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 38(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq 232(%rbp), %rdi
    movq 224(%rbp), %rsi
    movdqu 208(%rbp), %xmm6
    movdqu 192(%rbp), %xmm7
    movdqu 176(%rbp), %xmm8
    movdqu 160(%rbp), %xmm9
    movdqu 144(%rbp), %xmm10
    movdqu 128(%rbp), %xmm11
    movdqu 112(%rbp), %xmm12
    movdqu 96(%rbp), %xmm13
    movdqu 80(%rbp), %xmm14
    movdqu 64(%rbp), %xmm15
    movq 56(%rbp), %rbx
    movq 48(%rbp), %r12
    movq 40(%rbp), %r13
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L6_8:
    jmp .L6_3
.L6_2:
.L6_3:
    movl $97, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_12
    jmp .L6_31
.L6_31:
    movl %r12d, %r13d
    jmp .L6_13
.L6_12:
    movl $102, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L6_13:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L6_9
    jmp .L6_10
.L6_9:
    movl $97, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L6_14
.L6_15:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_14:
    movl $10, %ecx
    movl %r13d, %r12d
    addl %ecx, %r12d
    movzbl %r12b, %ebx
    cmpl %r12d, %ebx
    je .L6_16
.L6_17:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_16:
    leaq 12(%rbp), %rbx
    movq %rbx, %r10
    movb %r12b, (%r10)
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 38(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r13, %r10
    movzwl 0(%r10), %eax
    movq 232(%rbp), %rdi
    movq 224(%rbp), %rsi
    movdqu 208(%rbp), %xmm6
    movdqu 192(%rbp), %xmm7
    movdqu 176(%rbp), %xmm8
    movdqu 160(%rbp), %xmm9
    movdqu 144(%rbp), %xmm10
    movdqu 128(%rbp), %xmm11
    movdqu 112(%rbp), %xmm12
    movdqu 96(%rbp), %xmm13
    movdqu 80(%rbp), %xmm14
    movdqu 64(%rbp), %xmm15
    movq 56(%rbp), %rbx
    movq 48(%rbp), %r12
    movq 40(%rbp), %r13
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L6_18:
    jmp .L6_11
.L6_10:
.L6_11:
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_22
    jmp .L6_32
.L6_32:
    movl %r12d, %r13d
    jmp .L6_23
.L6_22:
    movl $70, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L6_23:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L6_19
    jmp .L6_20
.L6_19:
    movl $65, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L6_24
.L6_25:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_24:
    movl $10, %ecx
    movl %r13d, %r12d
    addl %ecx, %r12d
    movzbl %r12b, %ebx
    cmpl %r12d, %ebx
    je .L6_26
.L6_27:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_26:
    leaq 10(%rbp), %rbx
    movq %rbx, %r10
    movb %r12b, (%r10)
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 38(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r13, %r10
    movzwl 0(%r10), %eax
    movq 232(%rbp), %rdi
    movq 224(%rbp), %rsi
    movdqu 208(%rbp), %xmm6
    movdqu 192(%rbp), %xmm7
    movdqu 176(%rbp), %xmm8
    movdqu 160(%rbp), %xmm9
    movdqu 144(%rbp), %xmm10
    movdqu 128(%rbp), %xmm11
    movdqu 112(%rbp), %xmm12
    movdqu 96(%rbp), %xmm13
    movdqu 80(%rbp), %xmm14
    movdqu 64(%rbp), %xmm15
    movq 56(%rbp), %rbx
    movq 48(%rbp), %r12
    movq 40(%rbp), %r13
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L6_28:
    jmp .L6_21
.L6_20:
.L6_21:
    leaq 8(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq 38(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq 232(%rbp), %rdi
    movq 224(%rbp), %rsi
    movdqu 208(%rbp), %xmm6
    movdqu 192(%rbp), %xmm7
    movdqu 176(%rbp), %xmm8
    movdqu 160(%rbp), %xmm9
    movdqu 144(%rbp), %xmm10
    movdqu 128(%rbp), %xmm11
    movdqu 112(%rbp), %xmm12
    movdqu 96(%rbp), %xmm13
    movdqu 80(%rbp), %xmm14
    movdqu 64(%rbp), %xmm15
    movq 56(%rbp), %rbx
    movq 48(%rbp), %r12
    movq 40(%rbp), %r13
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L6_29:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_13http_skip_ows
lb_net_13http_skip_ows:
    .seh_proc lb_net_13http_skip_ows
    pushq %rbp
    .seh_pushreg %rbp
    subq $256, %rsp
    .seh_stackalloc 256
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 248(%rbp)
    .seh_savereg %rdi, 248
    movq %rsi, 240(%rbp)
    .seh_savereg %rsi, 240
    movdqu %xmm6, 224(%rbp)
    .seh_savexmm %xmm6, 224
    movdqu %xmm7, 208(%rbp)
    .seh_savexmm %xmm7, 208
    movdqu %xmm8, 192(%rbp)
    .seh_savexmm %xmm8, 192
    movdqu %xmm9, 176(%rbp)
    .seh_savexmm %xmm9, 176
    movdqu %xmm10, 160(%rbp)
    .seh_savexmm %xmm10, 160
    movdqu %xmm11, 144(%rbp)
    .seh_savexmm %xmm11, 144
    movdqu %xmm12, 128(%rbp)
    .seh_savexmm %xmm12, 128
    movdqu %xmm13, 112(%rbp)
    .seh_savexmm %xmm13, 112
    movdqu %xmm14, 96(%rbp)
    .seh_savexmm %xmm14, 96
    movdqu %xmm15, 80(%rbp)
    .seh_savexmm %xmm15, 80
    movq %rbx, 72(%rbp)
    .seh_savereg %rbx, 72
    movq %r12, 64(%rbp)
    .seh_savereg %r12, 64
    movq %r13, 56(%rbp)
    .seh_savereg %r13, 56
    movq %r14, 48(%rbp)
    .seh_savereg %r14, 48
    movq %r15, 40(%rbp)
    .seh_savereg %r15, 40
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    movq 272(%rbp), %r10
    leaq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 280(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 24(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r12
.L7_1:
    movq %rbx, %r10
    movq (%r10), %r14
    cmpq %r13, %r14
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L7_4
    jmp .L7_8
.L7_8:
    movl %r14d, %r15d
    jmp .L7_5
.L7_4:
    movq %rbx, %r10
    movq (%r10), %r14
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r12, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $32, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L7_9
    jmp .L7_6
.L7_9:
    movl %r14d, %r15d
    jmp .L7_7
.L7_6:
    movq %rbx, %r10
    movq (%r10), %r14
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r14, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $9, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L7_7:
    movzbl %r15b, %r14d
    movl %r14d, %r15d
.L7_5:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L7_2
    jmp .L7_3
.L7_2:
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r14, (%r10)
    jmp .L7_1
.L7_3:
    movq 248(%rbp), %rdi
    movq 240(%rbp), %rsi
    movdqu 224(%rbp), %xmm6
    movdqu 208(%rbp), %xmm7
    movdqu 192(%rbp), %xmm8
    movdqu 176(%rbp), %xmm9
    movdqu 160(%rbp), %xmm10
    movdqu 144(%rbp), %xmm11
    movdqu 128(%rbp), %xmm12
    movdqu 112(%rbp), %xmm13
    movdqu 96(%rbp), %xmm14
    movdqu 80(%rbp), %xmm15
    movq 72(%rbp), %rbx
    movq 64(%rbp), %r12
    movq 56(%rbp), %r13
    movq 48(%rbp), %r14
    movq 40(%rbp), %r15
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_20http_chunk_extension
lb_net_20http_chunk_extension:
    .seh_proc lb_net_20http_chunk_extension
    pushq %rbp
    .seh_pushreg %rbp
    subq $656, %rsp
    .seh_stackalloc 656
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 472(%rbp)
    movq %rdi, 648(%rbp)
    .seh_savereg %rdi, 648
    movq %rsi, 640(%rbp)
    .seh_savereg %rsi, 640
    movdqu %xmm6, 624(%rbp)
    .seh_savexmm %xmm6, 624
    movdqu %xmm7, 608(%rbp)
    .seh_savexmm %xmm7, 608
    movdqu %xmm8, 592(%rbp)
    .seh_savexmm %xmm8, 592
    movdqu %xmm9, 576(%rbp)
    .seh_savexmm %xmm9, 576
    movdqu %xmm10, 560(%rbp)
    .seh_savexmm %xmm10, 560
    movdqu %xmm11, 544(%rbp)
    .seh_savexmm %xmm11, 544
    movdqu %xmm12, 528(%rbp)
    .seh_savexmm %xmm12, 528
    movdqu %xmm13, 512(%rbp)
    .seh_savexmm %xmm13, 512
    movdqu %xmm14, 496(%rbp)
    .seh_savexmm %xmm14, 496
    movdqu %xmm15, 480(%rbp)
    .seh_savexmm %xmm15, 480
    movq %rbx, 464(%rbp)
    .seh_savereg %rbx, 464
    movq %r12, 456(%rbp)
    .seh_savereg %r12, 456
    movq %r13, 448(%rbp)
    .seh_savereg %r13, 448
    movq %r14, 440(%rbp)
    .seh_savereg %r14, 440
    movq %r15, 432(%rbp)
    .seh_savereg %r15, 432
    .seh_endprologue
    movq %rcx, 672(%rbp)
    movq %rdx, 680(%rbp)
    movq %r8, 688(%rbp)
    movq %r9, 696(%rbp)
    movq 680(%rbp), %r10
    leaq 384(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 688(%rbp), %rax
    movq %rax, 368(%rbp)
    leaq 384(%rbp), %rbx
    leaq 368(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_13http_skip_ows
    addq $48, %rsp
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    movq 152(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L8_76
    jmp .L8_4
.L8_76:
    movl %r13d, %r15d
    jmp .L8_5
.L8_4:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r14, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $59, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %r15d
.L8_5:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L8_1
    jmp .L8_2
.L8_1:
    leaq 400(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_50(%rip), %r12
    leaq 352(%rbp), %r13
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
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L8_6:
    jmp .L8_3
.L8_2:
.L8_3:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 144(%rbp)
    movq 144(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 136(%rbp)
    movq 136(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_13http_skip_ows
    addq $48, %rsp
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 128(%rbp)
    leaq 336(%rbp), %rax
    movq %rax, 120(%rbp)
    movq 120(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    leaq 320(%rbp), %rax
    movq %rax, 104(%rbp)
    movq 104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 96(%rbp)
.L8_7:
    movq %r12, %r10
    movq (%r10), %r13
    movq 152(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L8_10
    jmp .L8_77
.L8_77:
    movl %r13d, %r15d
    jmp .L8_11
.L8_10:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq %r12, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 16(%rbp)
    movq $1, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 16(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 16(%rbp), %rcx
    cmpq %rcx, %r14
    jbe .L8_12
.L8_13:
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L8_12:
    movq 24(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq 16(%rbp), %rax
    movq %rax, %r15
    subq %r14, %r15
    movq 120(%rbp), %r10
    movq %r13, (%r10)
    movq 112(%rbp), %r10
    movq %r15, (%r10)
    movq 104(%rbp), %r10
    movq %r13, (%r10)
    movq 96(%rbp), %r10
    movq %r15, (%r10)
    subq $48, %rsp
    movq 104(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_10http_token
    addq $48, %rsp
    movl %eax, %r15d
.L8_11:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L8_8
    jmp .L8_9
.L8_8:
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    jmp .L8_7
.L8_9:
    movq %r12, %r10
    movq (%r10), %r13
    movq 128(%rbp), %rax
    cmpq %r13, %rax
    jne .L8_15
.L8_14:
    leaq 400(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_54(%rip), %r12
    leaq 304(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $28, %rax
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
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L8_17:
    jmp .L8_16
.L8_15:
.L8_16:
    movq %r12, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_13http_skip_ows
    addq $48, %rsp
    movq %r12, %r10
    movq (%r10), %r14
    movq 152(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jne .L8_19
.L8_18:
    movq %r12, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r13
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L8_22
.L8_21:
    leaq 400(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_55(%rip), %r12
    leaq 288(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $38, %rax
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
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L8_24:
    jmp .L8_23
.L8_22:
.L8_23:
    leaq 400(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L8_25:
    jmp .L8_20
.L8_19:
.L8_20:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r14, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $59, %ecx
    cmpl %ecx, %r13d
    jne .L8_27
.L8_26:
    leaq 400(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L8_29:
    jmp .L8_28
.L8_27:
.L8_28:
    movq %r12, %r10
    movq (%r10), %r13
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r13, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $61, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L8_31
.L8_30:
    leaq 400(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_58(%rip), %r12
    leaq 272(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $23, %rax
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
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L8_33:
    jmp .L8_32
.L8_31:
.L8_32:
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_13http_skip_ows
    addq $48, %rsp
    movq %r12, %r10
    movq (%r10), %r13
    movq 152(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jne .L8_35
.L8_34:
    leaq 400(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_60(%rip), %r12
    leaq 256(%rbp), %r13
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
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L8_37:
    jmp .L8_36
.L8_35:
.L8_36:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r15, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $34, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L8_39
.L8_38:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 88(%rbp)
    leaq 240(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    leaq 224(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
.L8_41:
    movq %r12, %r10
    movq (%r10), %r13
    movq 152(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L8_44
    jmp .L8_78
.L8_78:
    movl %r13d, %r15d
    jmp .L8_45
.L8_44:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq %r12, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 0(%rbp)
    movq $1, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 0(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 0(%rbp), %rcx
    cmpq %rcx, %r14
    jbe .L8_46
.L8_47:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L8_46:
    movq 8(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq 0(%rbp), %rax
    movq %rax, %r15
    subq %r14, %r15
    movq 80(%rbp), %r10
    movq %r13, (%r10)
    movq 72(%rbp), %r10
    movq %r15, (%r10)
    movq 64(%rbp), %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq %r15, (%r10)
    subq $48, %rsp
    movq 64(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_10http_token
    addq $48, %rsp
    movl %eax, %r15d
.L8_45:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L8_42
    jmp .L8_43
.L8_42:
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    jmp .L8_41
.L8_43:
    movq %r12, %r10
    movq (%r10), %rbx
    movq 88(%rbp), %rax
    cmpq %rbx, %rax
    jne .L8_49
.L8_48:
    leaq 400(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_64(%rip), %r12
    leaq 208(%rbp), %r13
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
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L8_51:
    jmp .L8_50
.L8_49:
.L8_50:
    leaq 400(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L8_52:
    jmp .L8_40
.L8_39:
.L8_40:
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_65(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
.L8_53:
    movq %r12, %r10
    movq (%r10), %r13
    movq 152(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L8_55
.L8_54:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    movq %rbx, %r10
    movq (%r10), %r15
    movq 48(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 48(%rbp), %rax
    addq %r15, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, 32(%rbp)
    movq %r12, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %r12, %r10
    movq %r15, (%r10)
    movl 32(%rbp), %eax
    movzbl %al, %r15d
    movl $34, %ecx
    cmpl %ecx, %r15d
    jne .L8_57
.L8_56:
    leaq 400(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L8_59:
    jmp .L8_58
.L8_57:
.L8_58:
    movl $92, %ecx
    cmpl %ecx, %r15d
    jne .L8_61
.L8_60:
    movq %r12, %r10
    movq (%r10), %r13
    movq 152(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jne .L8_64
.L8_63:
    leaq 400(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_68(%rip), %r12
    leaq 192(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $28, %rax
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
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L8_66:
    jmp .L8_65
.L8_64:
.L8_65:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r15, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq %r12, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %r12, %r10
    movq %r15, (%r10)
    jmp .L8_62
.L8_61:
    movl 32(%rbp), %eax
    movl %eax, %r13d
.L8_62:
    movzbl %r13b, %r14d
    movl $32, %ecx
    cmpl %ecx, %r14d
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L8_70
    jmp .L8_79
.L8_79:
    movl %r15d, %r13d
    jmp .L8_71
.L8_70:
    movl $9, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L8_71:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L8_80
    jmp .L8_72
.L8_80:
    movl %r15d, %r13d
    jmp .L8_73
.L8_72:
    movl $127, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r13d
.L8_73:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L8_67
    jmp .L8_68
.L8_67:
    leaq 400(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_71(%rip), %r12
    leaq 176(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $25, %rax
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
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L8_74:
    jmp .L8_69
.L8_68:
.L8_69:
    jmp .L8_53
.L8_55:
    leaq 400(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_72(%rip), %r12
    leaq 160(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $30, %rax
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
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L8_75:
    leaq 400(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_net_9http_body_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "a tunnel has no HTTP body decoder"
.Ltext_1:
    .asciz "HTTP body exceeds its byte limit"
.Ltext_2:
    .asciz "unreachable"
.Ltext_3:
    .asciz "src/std/net/http/body.lucb:38:9"
.Ltext_4:
    .asciz "src/std/net/http/body.lucb:41:9"
.Ltext_5:
    .asciz "HTTP body decoder has failed"
.Ltext_6:
    .asciz "src/std/net/http/body.lucb:49:13"
.Ltext_7:
    .asciz "HTTP body ended before its framing completed"
.Ltext_8:
    .asciz "src/std/net/http/body.lucb:65:17"
.Ltext_9:
    .asciz "src/std/net/http/body.lucb:68:17"
.Ltext_10:
    .asciz "src/std/net/http/body.lucb:70:17"
.Ltext_11:
    .asciz "src/std/net/http/body.lucb:72:21"
.Ltext_12:
    .asciz "src/std/net/http/body.lucb:75:17"
.Ltext_13:
    .asciz "index out of bounds"
.Ltext_14:
    .asciz "src/std/net/http/body.lucb:76:13"
.Ltext_15:
    .asciz "src/std/net/http/body.lucb:77:13"
.Ltext_16:
    .asciz "chunk data must end with CRLF"
.Ltext_17:
    .asciz "src/std/net/http/body.lucb:85:17"
.Ltext_18:
    .asciz "HTTP trailers exceed their byte limit"
.Ltext_19:
    .asciz "chunk lines require CRLF"
.Ltext_20:
    .asciz "src/std/net/http/body.lucb:92:17"
.Ltext_21:
    .asciz "src/std/net/http/body.lucb:96:21"
.Ltext_22:
    .asciz "src/std/net/http/body.lucb:97:21"
.Ltext_23:
    .asciz "HTTP chunks exceed their count or byte limit"
.Ltext_24:
    .asciz "src/std/net/http/body.lucb:103:21"
.Ltext_25:
    .asciz "too many HTTP trailer fields"
.Ltext_26:
    .asciz ":"
.Ltext_27:
    .asciz "trailer needs a colon"
.Ltext_28:
    .asciz "src/std/net/http/body.lucb:107:21"
.Ltext_29:
    .asciz "invalid or forbidden HTTP trailer"
.Ltext_30:
    .asciz "chunk line exceeds its byte limit"
.Ltext_31:
    .asciz "src/std/net/http/body.lucb:118:17"
.Ltext_32:
    .asciz "src/std/net/http/body.lucb:119:17"
.Ltext_33:
    .asciz "src/std/net/http/body.lucb:120:9"
.Ltext_34:
    .asciz "integer overflow"
.Ltext_35:
    .asciz "src/std/net/http/body.lucb:124:9"
.Ltext_36:
    .asciz "src/std/net/http/body.lucb:126:9"
.Ltext_37:
    .asciz "src/std/net/http/body.lucb:128:9"
.Ltext_38:
    .asciz "src/std/net/http/body.lucb:129:5"
.Ltext_39:
    .asciz "src/std/net/http/body.lucb:135:9"
.Ltext_40:
    .asciz "src/std/net/http/body.lucb:136:9"
.Ltext_41:
    .asciz "division by zero"
.Ltext_42:
    .asciz "HTTP chunk length overflows u64"
.Ltext_43:
    .asciz "src/std/net/http/body.lucb:138:9"
.Ltext_44:
    .asciz "src/std/net/http/body.lucb:139:9"
.Ltext_45:
    .asciz "chunk size needs hexadecimal digits"
.Ltext_46:
    .asciz "src/std/net/http/body.lucb:144:5"
.Ltext_47:
    .asciz "src/std/net/http/body.lucb:147:5"
.Ltext_48:
    .asciz "src/std/net/http/body.lucb:148:9"
.Ltext_49:
    .asciz "src/std/net/http/body.lucb:152:5"
.Ltext_50:
    .asciz "invalid chunk extension separator"
.Ltext_51:
    .asciz "src/std/net/http/body.lucb:154:5"
.Ltext_52:
    .asciz "src/std/net/http/body.lucb:157:5"
.Ltext_53:
    .asciz "src/std/net/http/body.lucb:158:9"
.Ltext_54:
    .asciz "chunk extension needs a name"
.Ltext_55:
    .asciz "trailing whitespace in chunk extension"
.Ltext_56:
    .asciz "src/std/net/http/body.lucb:167:5"
.Ltext_57:
    .asciz "src/std/net/http/body.lucb:169:5"
.Ltext_58:
    .asciz "invalid chunk extension"
.Ltext_59:
    .asciz "src/std/net/http/body.lucb:171:5"
.Ltext_60:
    .asciz "chunk extension needs a value"
.Ltext_61:
    .asciz "src/std/net/http/body.lucb:175:5"
.Ltext_62:
    .asciz "src/std/net/http/body.lucb:177:9"
.Ltext_63:
    .asciz "src/std/net/http/body.lucb:178:13"
.Ltext_64:
    .asciz "invalid chunk extension value"
.Ltext_65:
    .asciz "src/std/net/http/body.lucb:182:5"
.Ltext_66:
    .asciz "src/std/net/http/body.lucb:184:9"
.Ltext_67:
    .asciz "src/std/net/http/body.lucb:185:9"
.Ltext_68:
    .asciz "incomplete chunk quoted pair"
.Ltext_69:
    .asciz "src/std/net/http/body.lucb:191:13"
.Ltext_70:
    .asciz "src/std/net/http/body.lucb:192:13"
.Ltext_71:
    .asciz "invalid chunk quoted text"
.Ltext_72:
    .asciz "unclosed chunk extension value"
.Ltext_73:
    .asciz "content-length"
.Ltext_74:
    .asciz "transfer-encoding"
.Ltext_75:
    .asciz "host"
.Ltext_76:
    .asciz "connection"
.Ltext_77:
    .asciz "trailer"
.Ltext_78:
    .asciz "upgrade"
.Ltext_79:
    .asciz "expect"
.Ltext_80:
    .asciz "authorization"
.Ltext_81:
    .asciz "content-type"
.Ltext_82:
    .asciz "content-encoding"
.Ltext_83:
    .asciz "content-range"
.Ltext_84:
    .asciz "src/std/net/http/body.lucb:202:5"

    .section .rdata,"dr"
    .p2align 3
