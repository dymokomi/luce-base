    .text

    .p2align 4
    .globl lb_utf8_scalars_0init
lb_utf8_scalars_0init:
    .seh_proc lb_utf8_scalars_0init
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
    .globl lb_utf8_14encoded_length
lb_utf8_14encoded_length:
    .seh_proc lb_utf8_14encoded_length
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
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 328(%rbp), %rax
    movl %eax, 64(%rbp)
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $1114111, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_21
    jmp .L1_4
.L1_21:
    movl %r12d, %r13d
    jmp .L1_5
.L1_4:
    movl $55296, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_6
    jmp .L1_22
.L1_22:
    movl %r12d, %r13d
    jmp .L1_7
.L1_6:
    movl $57343, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L1_7:
    movzbl %r13b, %r12d
    movl %r12d, %r13d
.L1_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_1
    jmp .L1_2
.L1_1:
    leaq 48(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 120(%rbp), %rdi
    movq $16, %rdx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L1_8:
    jmp .L1_3
.L1_2:
.L1_3:
    movl $128, %ecx
    cmpl %ecx, %ebx
    jae .L1_10
.L1_9:
    leaq 32(%rbp), %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 120(%rbp), %rdi
    movq $16, %rdx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L1_12:
    jmp .L1_11
.L1_10:
.L1_11:
    movl $2048, %ecx
    cmpl %ecx, %ebx
    jae .L1_14
.L1_13:
    leaq 16(%rbp), %rbx
    movq $2, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 120(%rbp), %rdi
    movq $16, %rdx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L1_16:
    jmp .L1_15
.L1_14:
.L1_15:
    movl $65536, %ecx
    cmpl %ecx, %ebx
    jae .L1_18
.L1_17:
    movq $3, %rax
    movq %rax, %rbx
    jmp .L1_19
.L1_18:
    movq $4, %rax
    movq %rax, %rbx
.L1_19:
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 80(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rsi
    movq 120(%rbp), %rdi
    movq $16, %rdx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L1_20:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_utf8_decode
lb_utf8_decode:
    .seh_proc lb_utf8_decode
    pushq %rbp
    .seh_pushreg %rbp
    subq $560, %rsp
    .seh_stackalloc 560
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 376(%rbp)
    movq %rdi, 552(%rbp)
    .seh_savereg %rdi, 552
    movq %rsi, 544(%rbp)
    .seh_savereg %rsi, 544
    movdqu %xmm6, 528(%rbp)
    .seh_savexmm %xmm6, 528
    movdqu %xmm7, 512(%rbp)
    .seh_savexmm %xmm7, 512
    movdqu %xmm8, 496(%rbp)
    .seh_savexmm %xmm8, 496
    movdqu %xmm9, 480(%rbp)
    .seh_savexmm %xmm9, 480
    movdqu %xmm10, 464(%rbp)
    .seh_savexmm %xmm10, 464
    movdqu %xmm11, 448(%rbp)
    .seh_savexmm %xmm11, 448
    movdqu %xmm12, 432(%rbp)
    .seh_savexmm %xmm12, 432
    movdqu %xmm13, 416(%rbp)
    .seh_savexmm %xmm13, 416
    movdqu %xmm14, 400(%rbp)
    .seh_savexmm %xmm14, 400
    movdqu %xmm15, 384(%rbp)
    .seh_savexmm %xmm15, 384
    movq %rbx, 368(%rbp)
    .seh_savereg %rbx, 368
    movq %r12, 360(%rbp)
    .seh_savereg %r12, 360
    movq %r13, 352(%rbp)
    .seh_savereg %r13, 352
    movq %r14, 344(%rbp)
    .seh_savereg %r14, 344
    movq %r15, 336(%rbp)
    .seh_savereg %r15, 336
    .seh_endprologue
    movq %rcx, 576(%rbp)
    movq %rdx, 584(%rbp)
    movq %r8, 592(%rbp)
    movq %r9, 600(%rbp)
    movq 584(%rbp), %r10
    leaq 296(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 592(%rbp), %rax
    movq %rax, 280(%rbp)
    leaq 280(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    leaq 296(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 32(%rbp), %rax
    cmpq %r13, %rax
    jb .L2_2
.L2_1:
    leaq 256(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 312(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq 376(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
    movq 552(%rbp), %rdi
    movq 544(%rbp), %rsi
    movdqu 528(%rbp), %xmm6
    movdqu 512(%rbp), %xmm7
    movdqu 496(%rbp), %xmm8
    movdqu 480(%rbp), %xmm9
    movdqu 464(%rbp), %xmm10
    movdqu 448(%rbp), %xmm11
    movdqu 432(%rbp), %xmm12
    movdqu 416(%rbp), %xmm13
    movdqu 400(%rbp), %xmm14
    movdqu 384(%rbp), %xmm15
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L2_2:
.L2_3:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq 32(%rbp), %rax
    movq 24(%rbp), %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movl $128, %ecx
    cmpl %ecx, %r15d
    jae .L2_6
.L2_5:
    leaq 240(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movl %r15d, %r12d
    movl %r12d, %r12d
    leaq .Ltext_3(%rip), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_7to_char
    addq $32, %rsp
    movq %rax, %r12
    movq %rbx, %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $1, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 216(%rbp), %r12
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
    leaq 312(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %rbx, %rsi
    movq 376(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
    movq 552(%rbp), %rdi
    movq 544(%rbp), %rsi
    movdqu 528(%rbp), %xmm6
    movdqu 512(%rbp), %xmm7
    movdqu 496(%rbp), %xmm8
    movdqu 480(%rbp), %xmm9
    movdqu 464(%rbp), %xmm10
    movdqu 448(%rbp), %xmm11
    movdqu 432(%rbp), %xmm12
    movdqu 416(%rbp), %xmm13
    movdqu 400(%rbp), %xmm14
    movdqu 384(%rbp), %xmm15
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L2_6:
.L2_7:
    movl $194, %ecx
    cmpl %ecx, %r15d
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_12
    jmp .L2_47
.L2_47:
    movl %r12d, %r14d
    jmp .L2_13
.L2_12:
    movl $223, %ecx
    cmpl %ecx, %r15d
    setbe %al
    movzbl %al, %r14d
.L2_13:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L2_9
    jmp .L2_10
.L2_9:
    movl $31, %ecx
    movl %r15d, %r12d
    andl %ecx, %r12d
    movl %r12d, %r12d
    movq $2, %rax
    movq %rax, 16(%rbp)
    jmp .L2_11
.L2_10:
    movl $224, %ecx
    cmpl %ecx, %r15d
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_17
    jmp .L2_48
.L2_48:
    movl %r12d, %r14d
    jmp .L2_18
.L2_17:
    movl $239, %ecx
    cmpl %ecx, %r15d
    setbe %al
    movzbl %al, %r14d
.L2_18:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L2_14
    jmp .L2_15
.L2_14:
    movl $15, %ecx
    movl %r15d, %r12d
    andl %ecx, %r12d
    movl %r12d, %r12d
    movq $3, %rax
    movq %rax, %r14
    jmp .L2_16
.L2_15:
    movl $240, %ecx
    cmpl %ecx, %r15d
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_22
    jmp .L2_49
.L2_49:
    movl %r12d, %r14d
    jmp .L2_23
.L2_22:
    movl $244, %ecx
    cmpl %ecx, %r15d
    setbe %al
    movzbl %al, %r14d
.L2_23:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L2_19
    jmp .L2_20
.L2_19:
    movl $7, %ecx
    movl %r15d, %r12d
    andl %ecx, %r12d
    movl %r12d, %r12d
    jmp .L2_21
.L2_20:
    leaq 192(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 312(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq 376(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
    movq 552(%rbp), %rdi
    movq 544(%rbp), %rsi
    movdqu 528(%rbp), %xmm6
    movdqu 512(%rbp), %xmm7
    movdqu 496(%rbp), %xmm8
    movdqu 480(%rbp), %xmm9
    movdqu 464(%rbp), %xmm10
    movdqu 448(%rbp), %xmm11
    movdqu 432(%rbp), %xmm12
    movdqu 416(%rbp), %xmm13
    movdqu 400(%rbp), %xmm14
    movdqu 384(%rbp), %xmm15
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L2_21:
    movq $4, %rax
    movq %rax, %r14
.L2_16:
    movq %r14, %rax
    movq %rax, 16(%rbp)
.L2_11:
    movq 32(%rbp), %rcx
    movq %r13, %r15
    subq %rcx, %r15
    movq 16(%rbp), %rax
    cmpq %r15, %rax
    jbe .L2_26
.L2_25:
    leaq 168(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 312(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq 376(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
    movq 552(%rbp), %rdi
    movq 544(%rbp), %rsi
    movdqu 528(%rbp), %xmm6
    movdqu 512(%rbp), %xmm7
    movdqu 496(%rbp), %xmm8
    movdqu 480(%rbp), %xmm9
    movdqu 464(%rbp), %xmm10
    movdqu 448(%rbp), %xmm11
    movdqu 432(%rbp), %xmm12
    movdqu 416(%rbp), %xmm13
    movdqu 400(%rbp), %xmm14
    movdqu 384(%rbp), %xmm15
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L2_26:
.L2_27:
    movl %r12d, %eax
    movl %eax, 8(%rbp)
    movq $1, %rax
    movq %rax, %r15
.L2_29:
    movq 16(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L2_31
.L2_30:
    movq 32(%rbp), %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movzbl %r12b, %r12d
    movl $192, %ecx
    movl %r12d, %r14d
    andl %ecx, %r14d
    movl $128, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L2_33
.L2_32:
    leaq 144(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 312(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq 376(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
    movq 552(%rbp), %rdi
    movq 544(%rbp), %rsi
    movdqu 528(%rbp), %xmm6
    movdqu 512(%rbp), %xmm7
    movdqu 496(%rbp), %xmm8
    movdqu 480(%rbp), %xmm9
    movdqu 464(%rbp), %xmm10
    movdqu 448(%rbp), %xmm11
    movdqu 432(%rbp), %xmm12
    movdqu 416(%rbp), %xmm13
    movdqu 400(%rbp), %xmm14
    movdqu 384(%rbp), %xmm15
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L2_33:
.L2_34:
.L2_37:
    movl $6, %ecx
    movl 8(%rbp), %eax
    movl %eax, %r14d
    shll %cl, %r14d
    movl $63, %ecx
    movl %r12d, %ebx
    andl %ecx, %ebx
    movl %ebx, %ebx
    movl %ebx, %ecx
    movl %r14d, %ebx
    orl %ecx, %ebx
    movq $1, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movl %ebx, %eax
    movl %eax, 8(%rbp)
    movq %r14, %r15
    jmp .L2_29
.L2_31:
    subq $32, %rsp
    movl 8(%rbp), %eax
    movq %rax, 8(%rsp)
    leaq 128(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_utf8_14encoded_length
    addq $32, %rsp
    leaq 128(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_38
    jmp .L2_39
.L2_38:
    movq %r12, %r10
    movq (%r10), %rbx
    jmp .L2_40
.L2_39:
    leaq 104(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 312(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq 376(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
    movq 552(%rbp), %rdi
    movq 544(%rbp), %rsi
    movdqu 528(%rbp), %xmm6
    movdqu 512(%rbp), %xmm7
    movdqu 496(%rbp), %xmm8
    movdqu 480(%rbp), %xmm9
    movdqu 464(%rbp), %xmm10
    movdqu 448(%rbp), %xmm11
    movdqu 432(%rbp), %xmm12
    movdqu 416(%rbp), %xmm13
    movdqu 400(%rbp), %xmm14
    movdqu 384(%rbp), %xmm15
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L2_40:
    movq 16(%rbp), %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_43
.L2_42:
    leaq 80(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 312(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq 376(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
    movq 552(%rbp), %rdi
    movq 544(%rbp), %rsi
    movdqu 528(%rbp), %xmm6
    movdqu 512(%rbp), %xmm7
    movdqu 496(%rbp), %xmm8
    movdqu 480(%rbp), %xmm9
    movdqu 464(%rbp), %xmm10
    movdqu 448(%rbp), %xmm11
    movdqu 432(%rbp), %xmm12
    movdqu 416(%rbp), %xmm13
    movdqu 400(%rbp), %xmm14
    movdqu 384(%rbp), %xmm15
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L2_43:
.L2_44:
    leaq 64(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movl 8(%rbp), %eax
    movl %eax, %r12d
    movl %r12d, %r12d
    leaq .Ltext_9(%rip), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_7to_char
    addq $32, %rsp
    movq %rax, %r12
    movq %rbx, %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 16(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 40(%rbp), %r12
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
    leaq 312(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %rbx, %rsi
    movq 376(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
    movq 552(%rbp), %rdi
    movq 544(%rbp), %rsi
    movdqu 528(%rbp), %xmm6
    movdqu 512(%rbp), %xmm7
    movdqu 496(%rbp), %xmm8
    movdqu 480(%rbp), %xmm9
    movdqu 464(%rbp), %xmm10
    movdqu 448(%rbp), %xmm11
    movdqu 432(%rbp), %xmm12
    movdqu 416(%rbp), %xmm13
    movdqu 400(%rbp), %xmm14
    movdqu 384(%rbp), %xmm15
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_utf8_14invalid_offset
lb_utf8_14invalid_offset:
    .seh_proc lb_utf8_14invalid_offset
    pushq %rbp
    .seh_pushreg %rbp
    subq $384, %rsp
    .seh_stackalloc 384
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 200(%rbp)
    movq %rdi, 376(%rbp)
    .seh_savereg %rdi, 376
    movq %rsi, 368(%rbp)
    .seh_savereg %rsi, 368
    movdqu %xmm6, 352(%rbp)
    .seh_savexmm %xmm6, 352
    movdqu %xmm7, 336(%rbp)
    .seh_savexmm %xmm7, 336
    movdqu %xmm8, 320(%rbp)
    .seh_savexmm %xmm8, 320
    movdqu %xmm9, 304(%rbp)
    .seh_savexmm %xmm9, 304
    movdqu %xmm10, 288(%rbp)
    .seh_savexmm %xmm10, 288
    movdqu %xmm11, 272(%rbp)
    .seh_savexmm %xmm11, 272
    movdqu %xmm12, 256(%rbp)
    .seh_savexmm %xmm12, 256
    movdqu %xmm13, 240(%rbp)
    .seh_savexmm %xmm13, 240
    movdqu %xmm14, 224(%rbp)
    .seh_savexmm %xmm14, 224
    movdqu %xmm15, 208(%rbp)
    .seh_savexmm %xmm15, 208
    movq %rbx, 192(%rbp)
    .seh_savereg %rbx, 192
    movq %r12, 184(%rbp)
    .seh_savereg %r12, 184
    movq %r13, 176(%rbp)
    .seh_savereg %r13, 176
    movq %r14, 168(%rbp)
    .seh_savereg %r14, 168
    movq %r15, 160(%rbp)
    .seh_savereg %r15, 160
    .seh_endprologue
    movq %rcx, 400(%rbp)
    movq %rdx, 408(%rbp)
    movq %r8, 416(%rbp)
    movq %r9, 424(%rbp)
    movq 408(%rbp), %r10
    leaq 128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 128(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq 112(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 88(%rbp), %r13
    movq $16, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    leaq 72(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 8(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L3_1:
    movq %r12, %r10
    movq (%r10), %r14
    cmpq %r14, %r15
    jae .L3_3
.L3_2:
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    leaq 88(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_utf8_decode
    addq $48, %rsp
    movq 32(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_4
    jmp .L3_5
.L3_4:
    movq %r13, %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_6
.L3_5:
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 144(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 200(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 200(%rbp), %rax
    movq 376(%rbp), %rdi
    movq 368(%rbp), %rsi
    movdqu 352(%rbp), %xmm6
    movdqu 336(%rbp), %xmm7
    movdqu 320(%rbp), %xmm8
    movdqu 304(%rbp), %xmm9
    movdqu 288(%rbp), %xmm10
    movdqu 272(%rbp), %xmm11
    movdqu 256(%rbp), %xmm12
    movdqu 240(%rbp), %xmm13
    movdqu 224(%rbp), %xmm14
    movdqu 208(%rbp), %xmm15
    movq 192(%rbp), %rbx
    movq 184(%rbp), %r12
    movq 176(%rbp), %r13
    movq 168(%rbp), %r14
    movq 160(%rbp), %r15
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L3_7:
.L3_6:
    movq 24(%rbp), %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r14, %r15
    jmp .L3_1
.L3_3:
    leaq 40(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 144(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 200(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 200(%rbp), %rax
    movq 376(%rbp), %rdi
    movq 368(%rbp), %rsi
    movdqu 352(%rbp), %xmm6
    movdqu 336(%rbp), %xmm7
    movdqu 320(%rbp), %xmm8
    movdqu 304(%rbp), %xmm9
    movdqu 288(%rbp), %xmm10
    movdqu 272(%rbp), %xmm11
    movdqu 256(%rbp), %xmm12
    movdqu 240(%rbp), %xmm13
    movdqu 224(%rbp), %xmm14
    movdqu 208(%rbp), %xmm15
    movq 192(%rbp), %rbx
    movq 184(%rbp), %r12
    movq 176(%rbp), %r13
    movq 168(%rbp), %r14
    movq 160(%rbp), %r15
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L3_8:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_utf8_valid
lb_utf8_valid:
    .seh_proc lb_utf8_valid
    pushq %rbp
    .seh_pushreg %rbp
    subq $224, %rsp
    .seh_stackalloc 224
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 216(%rbp)
    .seh_savereg %rdi, 216
    movq %rsi, 208(%rbp)
    .seh_savereg %rsi, 208
    movdqu %xmm6, 192(%rbp)
    .seh_savexmm %xmm6, 192
    movdqu %xmm7, 176(%rbp)
    .seh_savexmm %xmm7, 176
    movdqu %xmm8, 160(%rbp)
    .seh_savexmm %xmm8, 160
    movdqu %xmm9, 144(%rbp)
    .seh_savexmm %xmm9, 144
    movdqu %xmm10, 128(%rbp)
    .seh_savexmm %xmm10, 128
    movdqu %xmm11, 112(%rbp)
    .seh_savexmm %xmm11, 112
    movdqu %xmm12, 96(%rbp)
    .seh_savexmm %xmm12, 96
    movdqu %xmm13, 80(%rbp)
    .seh_savexmm %xmm13, 80
    movdqu %xmm14, 64(%rbp)
    .seh_savexmm %xmm14, 64
    movdqu %xmm15, 48(%rbp)
    .seh_savexmm %xmm15, 48
    movq %rbx, 40(%rbp)
    .seh_savereg %rbx, 40
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %r10
    leaq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 24(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_utf8_14invalid_offset
    addq $48, %rsp
    leaq 8(%rbp), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq 216(%rbp), %rdi
    movq 208(%rbp), %rsi
    movdqu 192(%rbp), %xmm6
    movdqu 176(%rbp), %xmm7
    movdqu 160(%rbp), %xmm8
    movdqu 144(%rbp), %xmm9
    movdqu 128(%rbp), %xmm10
    movdqu 112(%rbp), %xmm11
    movdqu 96(%rbp), %xmm12
    movdqu 80(%rbp), %xmm13
    movdqu 64(%rbp), %xmm14
    movdqu 48(%rbp), %xmm15
    movq 40(%rbp), %rbx
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L4_1:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_utf8_encode
lb_utf8_encode:
    .seh_proc lb_utf8_encode
    pushq %rbp
    .seh_pushreg %rbp
    subq $384, %rsp
    .seh_stackalloc 384
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 200(%rbp)
    movq %rdi, 376(%rbp)
    .seh_savereg %rdi, 376
    movq %rsi, 368(%rbp)
    .seh_savereg %rsi, 368
    movdqu %xmm6, 352(%rbp)
    .seh_savexmm %xmm6, 352
    movdqu %xmm7, 336(%rbp)
    .seh_savexmm %xmm7, 336
    movdqu %xmm8, 320(%rbp)
    .seh_savexmm %xmm8, 320
    movdqu %xmm9, 304(%rbp)
    .seh_savexmm %xmm9, 304
    movdqu %xmm10, 288(%rbp)
    .seh_savexmm %xmm10, 288
    movdqu %xmm11, 272(%rbp)
    .seh_savexmm %xmm11, 272
    movdqu %xmm12, 256(%rbp)
    .seh_savexmm %xmm12, 256
    movdqu %xmm13, 240(%rbp)
    .seh_savexmm %xmm13, 240
    movdqu %xmm14, 224(%rbp)
    .seh_savexmm %xmm14, 224
    movdqu %xmm15, 208(%rbp)
    .seh_savexmm %xmm15, 208
    movq %rbx, 192(%rbp)
    .seh_savereg %rbx, 192
    movq %r12, 184(%rbp)
    .seh_savereg %r12, 184
    movq %r13, 176(%rbp)
    .seh_savereg %r13, 176
    movq %r14, 168(%rbp)
    .seh_savereg %r14, 168
    movq %r15, 160(%rbp)
    .seh_savereg %r15, 160
    .seh_endprologue
    movq %rcx, 400(%rbp)
    movq %rdx, 408(%rbp)
    movq %r8, 416(%rbp)
    movq %r9, 424(%rbp)
    movq 408(%rbp), %rax
    movl %eax, 128(%rbp)
    movq 416(%rbp), %r10
    leaq 112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 128(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_utf8_14encoded_length
    addq $32, %rsp
    leaq 96(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_1
    jmp .L5_2
.L5_1:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    jmp .L5_3
.L5_2:
    leaq 80(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 144(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 200(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 200(%rbp), %rax
    movq 376(%rbp), %rdi
    movq 368(%rbp), %rsi
    movdqu 352(%rbp), %xmm6
    movdqu 336(%rbp), %xmm7
    movdqu 320(%rbp), %xmm8
    movdqu 304(%rbp), %xmm9
    movdqu 288(%rbp), %xmm10
    movdqu 272(%rbp), %xmm11
    movdqu 256(%rbp), %xmm12
    movdqu 240(%rbp), %xmm13
    movdqu 224(%rbp), %xmm14
    movdqu 208(%rbp), %xmm15
    movq 192(%rbp), %rbx
    movq 184(%rbp), %r12
    movq 176(%rbp), %r13
    movq 168(%rbp), %r14
    movq 160(%rbp), %r15
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L5_3:
    leaq 112(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq 24(%rbp), %rax
    cmpq %r14, %rax
    jbe .L5_6
.L5_5:
    leaq 64(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 144(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 200(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 200(%rbp), %rax
    movq 376(%rbp), %rdi
    movq 368(%rbp), %rsi
    movdqu 352(%rbp), %xmm6
    movdqu 336(%rbp), %xmm7
    movdqu 320(%rbp), %xmm8
    movdqu 304(%rbp), %xmm9
    movdqu 288(%rbp), %xmm10
    movdqu 272(%rbp), %xmm11
    movdqu 256(%rbp), %xmm12
    movdqu 240(%rbp), %xmm13
    movdqu 224(%rbp), %xmm14
    movdqu 208(%rbp), %xmm15
    movq 192(%rbp), %rbx
    movq 184(%rbp), %r12
    movq 176(%rbp), %r13
    movq 168(%rbp), %r14
    movq 160(%rbp), %r15
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L5_6:
.L5_7:
    movq 24(%rbp), %rax
    movq $1, %rcx
    cmpq %rcx, %rax
    jne .L5_10
.L5_9:
    movq 16(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %ebx, %r15d
    movzbl %r15b, %r15d
    movq %r12, %r10
    movb %r15b, (%r10)
    leaq 48(%rbp), %r12
    movq $1, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    leaq 144(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r15, %rsi
    movq 200(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 200(%rbp), %rax
    movq 376(%rbp), %rdi
    movq 368(%rbp), %rsi
    movdqu 352(%rbp), %xmm6
    movdqu 336(%rbp), %xmm7
    movdqu 320(%rbp), %xmm8
    movdqu 304(%rbp), %xmm9
    movdqu 288(%rbp), %xmm10
    movdqu 272(%rbp), %xmm11
    movdqu 256(%rbp), %xmm12
    movdqu 240(%rbp), %xmm13
    movdqu 224(%rbp), %xmm14
    movdqu 208(%rbp), %xmm15
    movq 192(%rbp), %rbx
    movq 184(%rbp), %r12
    movq 176(%rbp), %r13
    movq 168(%rbp), %r14
    movq 160(%rbp), %r15
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L5_10:
.L5_11:
    movq 16(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movl %ebx, %eax
    movl %eax, 0(%rbp)
    movq 24(%rbp), %rax
    movq %rax, %r15
.L5_13:
    movq $1, %rcx
    cmpq %rcx, %r15
    jbe .L5_15
.L5_14:
    movq $1, %rcx
    movq %r15, %rbx
    subq %rcx, %rbx
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl 0(%rbp), %eax
    movl $63, %ecx
    movl %eax, %r12d
    andl %ecx, %r12d
    movl %r12d, %r12d
    movzbl %r12b, %r12d
    movl $128, %ecx
    orl %ecx, %r12d
    movq %r13, %r10
    movb %r12b, (%r10)
.L5_17:
    movl $6, %ecx
    movl 0(%rbp), %eax
    movl %eax, %r12d
    shrl %cl, %r12d
    movl %r12d, %eax
    movl %eax, 0(%rbp)
    movq %rbx, %r15
    jmp .L5_13
.L5_15:
    movq 24(%rbp), %rax
    movq $2, %rcx
    cmpq %rcx, %rax
    jne .L5_19
.L5_18:
    movl $192, %eax
    movl %eax, %ebx
    jmp .L5_20
.L5_19:
    movq 24(%rbp), %rax
    movq $3, %rcx
    cmpq %rcx, %rax
    jne .L5_22
.L5_21:
    movl $224, %eax
    movl %eax, %ebx
    jmp .L5_23
.L5_22:
    movl $240, %eax
    movl %eax, %ebx
.L5_23:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L5_20:
    movzbl %bl, %r12d
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movzbl %r12b, %r12d
    movl 0(%rbp), %eax
    movl %eax, %r15d
    movzbl %r15b, %r15d
    orl %r15d, %r12d
    movq %r13, %r10
    movb %r12b, (%r10)
    leaq 32(%rbp), %r12
    movq 24(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 144(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rsi
    movq 200(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 200(%rbp), %rax
    movq 376(%rbp), %rdi
    movq 368(%rbp), %rsi
    movdqu 352(%rbp), %xmm6
    movdqu 336(%rbp), %xmm7
    movdqu 320(%rbp), %xmm8
    movdqu 304(%rbp), %xmm9
    movdqu 288(%rbp), %xmm10
    movdqu 272(%rbp), %xmm11
    movdqu 256(%rbp), %xmm12
    movdqu 240(%rbp), %xmm13
    movdqu 224(%rbp), %xmm14
    movdqu 208(%rbp), %xmm15
    movq 192(%rbp), %rbx
    movq 184(%rbp), %r12
    movq 176(%rbp), %r13
    movq 168(%rbp), %r14
    movq 160(%rbp), %r15
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_utf8_scalars_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/utf8/scalars.lucb:14:5"
.Ltext_2:
    .asciz "src/std/utf8/scalars.lucb:22:5"
.Ltext_3:
    .asciz "src/std/utf8/scalars.lucb:24:9"
.Ltext_4:
    .asciz "src/std/utf8/scalars.lucb:38:5"
.Ltext_5:
    .asciz "src/std/utf8/scalars.lucb:42:9"
.Ltext_6:
    .asciz "shift count out of range"
.Ltext_7:
    .asciz "src/std/utf8/scalars.lucb:45:9"
.Ltext_8:
    .asciz "src/std/utf8/scalars.lucb:46:9"
.Ltext_9:
    .asciz "src/std/utf8/scalars.lucb:50:5"
.Ltext_10:
    .asciz "src/std/utf8/scalars.lucb:58:9"
.Ltext_11:
    .asciz "src/std/utf8/scalars.lucb:59:5"
.Ltext_12:
    .asciz "src/std/utf8/scalars.lucb:63:5"
.Ltext_13:
    .asciz "src/std/utf8/scalars.lucb:73:9"
.Ltext_14:
    .asciz "src/std/utf8/scalars.lucb:78:9"
.Ltext_15:
    .asciz "src/std/utf8/scalars.lucb:79:9"
.Ltext_16:
    .asciz "src/std/utf8/scalars.lucb:80:9"
.Ltext_17:
    .asciz "src/std/utf8/scalars.lucb:82:5"
.Ltext_18:
    .asciz "src/std/utf8/scalars.lucb:83:5"
.Ltext_19:
    .asciz "integer overflow"
.Ltext_20:
    .asciz "index out of bounds"

    .section .rdata,"dr"
    .p2align 3
