    .weak lb_memory_copy_0g1_u8
    .weak lb_interop_Packet_0g1_u8_0c_init
    .weak lb_interop_Packet_0g1_str_init
    .text

    .p2align 4
    .globl lb_interop_transfer_0init
lb_interop_transfer_0init:
    .seh_proc lb_interop_transfer_0init
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
    leaq 8(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq lb_interop_PacketBytes_text(%rip), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq lb_interop_13text_transfer(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq 0(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq lb_interop_PacketBytes_copy(%rip), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq lb_interop_14bytes_transfer(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
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
    .seh_endproc

    .p2align 4
    .globl lb_interop_PacketBytes_drop
lb_interop_PacketBytes_drop:
    .seh_proc lb_interop_PacketBytes_drop
    pushq %rbp
    .seh_pushreg %rbp
    subq $304, %rsp
    .seh_stackalloc 304
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 120(%rbp)
    .seh_savereg %rbx, 120
    movq %r12, 112(%rbp)
    .seh_savereg %r12, 112
    movq %r13, 104(%rbp)
    .seh_savereg %r13, 104
    movq %r14, 96(%rbp)
    .seh_savereg %r14, 96
    movq %r15, 88(%rbp)
    .seh_savereg %r15, 88
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 320(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 32(%rbp)
    leaq 56(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq 16(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 32(%rbp), %r10
    movq (%r10), %r14
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L1_2
    jmp .L1_1
.L1_2:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L1_1:
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $16, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 32(%rbp), %r10
    movq (%r10), %r13
    movq 8(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_4
    jmp .L1_3
.L1_4:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
.L1_3:
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
    movq 120(%rbp), %rbx
    movq 112(%rbp), %r12
    movq 104(%rbp), %r13
    movq 96(%rbp), %r14
    movq 88(%rbp), %r15
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_interop_PacketBytes_copy
lb_interop_PacketBytes_copy:
    .seh_proc lb_interop_PacketBytes_copy
    pushq %rbp
    .seh_pushreg %rbp
    subq $640, %rsp
    .seh_stackalloc 640
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 456(%rbp)
    movq %rdi, 632(%rbp)
    .seh_savereg %rdi, 632
    movq %rsi, 624(%rbp)
    .seh_savereg %rsi, 624
    movdqu %xmm6, 608(%rbp)
    .seh_savexmm %xmm6, 608
    movdqu %xmm7, 592(%rbp)
    .seh_savexmm %xmm7, 592
    movdqu %xmm8, 576(%rbp)
    .seh_savexmm %xmm8, 576
    movdqu %xmm9, 560(%rbp)
    .seh_savexmm %xmm9, 560
    movdqu %xmm10, 544(%rbp)
    .seh_savexmm %xmm10, 544
    movdqu %xmm11, 528(%rbp)
    .seh_savexmm %xmm11, 528
    movdqu %xmm12, 512(%rbp)
    .seh_savexmm %xmm12, 512
    movdqu %xmm13, 496(%rbp)
    .seh_savexmm %xmm13, 496
    movdqu %xmm14, 480(%rbp)
    .seh_savexmm %xmm14, 480
    movdqu %xmm15, 464(%rbp)
    .seh_savexmm %xmm15, 464
    movq %rbx, 448(%rbp)
    .seh_savereg %rbx, 448
    movq %r12, 440(%rbp)
    .seh_savereg %r12, 440
    movq %r13, 432(%rbp)
    .seh_savereg %r13, 432
    movq %r14, 424(%rbp)
    .seh_savereg %r14, 424
    movq %r15, 416(%rbp)
    .seh_savereg %r15, 416
    .seh_endprologue
    movq %rcx, 656(%rbp)
    movq %rdx, 664(%rbp)
    movq %r8, 672(%rbp)
    movq %r9, 680(%rbp)
    movq 664(%rbp), %r10
    leaq 336(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 320(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 8(%rbp)
    leaq 336(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    leaq 272(%rbp), %rax
    movq %rax, 0(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rbx
    jbe .L2_2
.L2_1:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_1(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_3
.L2_2:
    movq 8(%rbp), %r10
    movq (%r10), %r13
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_4
    jmp .L2_5
.L2_5:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_4:
    movq %r14, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 248(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r15, %r11
    call *%r11
    addq $32, %rsp
    leaq 248(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, 32(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl 32(%rbp), %eax
    andl %r15d, %eax
    movl %eax, 24(%rbp)
    movl 24(%rbp), %eax
    testl %eax, %eax
    jne .L2_6
    jmp .L2_7
.L2_6:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_4(%rip), %r12
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
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_3
.L2_7:
    movq %r12, %r10
    movq (%r10), %r13
    movq 0(%rbp), %r10
    movq %r13, (%r10)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
.L2_3:
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_9
    jmp .L2_8
.L2_9:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 352(%rbp), %r12
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 456(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L2_10:
.L2_8:
    movq 0(%rbp), %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    subq $64, %rsp
    movq 16(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 48(%rbp), %r10
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
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    leaq 232(%rbp), %rbx
    movq 8(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 192(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L2_11
    jmp .L2_12
.L2_12:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_11:
    movq %rbx, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $16, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 168(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 168(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_13
    jmp .L2_14
.L2_14:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_4(%rip), %r12
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
    jmp .L2_15
.L2_13:
    movq %r15, %r10
    movq (%r10), %rbx
    leaq 152(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_15:
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_17
    jmp .L2_16
.L2_17:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 352(%rbp), %r12
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 136(%rbp), %rbx
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq 8(%rbp), %r10
    movq (%r10), %r14
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_19
    jmp .L2_18
.L2_19:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r13, %r11
    call *%r11
    addq $48, %rsp
.L2_18:
    movq %r12, %rsi
    movq 456(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L2_20:
.L2_16:
    movq %r13, %r10
    movq (%r10), %rbx
    leaq 104(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq lb_interop_PacketBytes_drop(%rip), %r12
    movq 16(%rbp), %r10
    leaq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 72(%rbp), %r10
    movq %rbx, (%r10)
    leaq 56(%rbp), %r10
    movq %r12, (%r10)
    leaq 88(%rbp), %r14
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
.L2_22:
    leaq 352(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 456(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L2_21:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_interop_PacketBytes_text
lb_interop_PacketBytes_text:
    .seh_proc lb_interop_PacketBytes_text
    pushq %rbp
    .seh_pushreg %rbp
    subq $544, %rsp
    .seh_stackalloc 544
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 360(%rbp)
    movq %rdi, 536(%rbp)
    .seh_savereg %rdi, 536
    movq %rsi, 528(%rbp)
    .seh_savereg %rsi, 528
    movdqu %xmm6, 512(%rbp)
    .seh_savexmm %xmm6, 512
    movdqu %xmm7, 496(%rbp)
    .seh_savexmm %xmm7, 496
    movdqu %xmm8, 480(%rbp)
    .seh_savexmm %xmm8, 480
    movdqu %xmm9, 464(%rbp)
    .seh_savexmm %xmm9, 464
    movdqu %xmm10, 448(%rbp)
    .seh_savexmm %xmm10, 448
    movdqu %xmm11, 432(%rbp)
    .seh_savexmm %xmm11, 432
    movdqu %xmm12, 416(%rbp)
    .seh_savexmm %xmm12, 416
    movdqu %xmm13, 400(%rbp)
    .seh_savexmm %xmm13, 400
    movdqu %xmm14, 384(%rbp)
    .seh_savexmm %xmm14, 384
    movdqu %xmm15, 368(%rbp)
    .seh_savexmm %xmm15, 368
    movq %rbx, 352(%rbp)
    .seh_savereg %rbx, 352
    movq %r12, 344(%rbp)
    .seh_savereg %r12, 344
    movq %r13, 336(%rbp)
    .seh_savereg %r13, 336
    movq %r14, 328(%rbp)
    .seh_savereg %r14, 328
    movq %r15, 320(%rbp)
    .seh_savereg %r15, 320
    .seh_endprologue
    movq %rcx, 560(%rbp)
    movq %rdx, 568(%rbp)
    movq %r8, 576(%rbp)
    movq %r9, 584(%rbp)
    movq 568(%rbp), %r10
    leaq 240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 208(%rbp), %r12
    leaq 240(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 144(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_interop_PacketBytes_copy
    addq $48, %rsp
    leaq 144(%rbp), %r13
    movq $56, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_2
    jmp .L3_1
.L3_2:
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 256(%rbp), %r12
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 360(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
.L3_3:
.L3_1:
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 112(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    leaq 96(%rbp), %r15
    movq 40(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq %r14, (%r10)
    movq $16, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r15, %r10
    leaq 80(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%rbp), %rax
    leaq 64(%rbp), %r10
    movq %rax, (%r10)
    leaq 48(%rbp), %r10
    movq %r14, (%r10)
    leaq 80(%rbp), %r15
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq 16(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $24, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %r10
    movq %r14, (%r10)
.L3_5:
    leaq 256(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $56, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 360(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
.L3_4:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .section .text$lb_memory_copy_0g1_u8,"xr"
    .p2align 4
    .globl lb_memory_copy_0g1_u8
lb_memory_copy_0g1_u8:
    .seh_proc lb_memory_copy_0g1_u8
    pushq %rbp
    .seh_pushreg %rbp
    subq $272, %rsp
    .seh_stackalloc 272
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 264(%rbp)
    .seh_savereg %rdi, 264
    movq %rsi, 256(%rbp)
    .seh_savereg %rsi, 256
    movdqu %xmm6, 240(%rbp)
    .seh_savexmm %xmm6, 240
    movdqu %xmm7, 224(%rbp)
    .seh_savexmm %xmm7, 224
    movdqu %xmm8, 208(%rbp)
    .seh_savexmm %xmm8, 208
    movdqu %xmm9, 192(%rbp)
    .seh_savexmm %xmm9, 192
    movdqu %xmm10, 176(%rbp)
    .seh_savexmm %xmm10, 176
    movdqu %xmm11, 160(%rbp)
    .seh_savexmm %xmm11, 160
    movdqu %xmm12, 144(%rbp)
    .seh_savexmm %xmm12, 144
    movdqu %xmm13, 128(%rbp)
    .seh_savexmm %xmm13, 128
    movdqu %xmm14, 112(%rbp)
    .seh_savexmm %xmm14, 112
    movdqu %xmm15, 96(%rbp)
    .seh_savexmm %xmm15, 96
    movq %rbx, 88(%rbp)
    .seh_savereg %rbx, 88
    movq %r12, 80(%rbp)
    .seh_savereg %r12, 80
    movq %r13, 72(%rbp)
    .seh_savereg %r13, 72
    movq %r14, 64(%rbp)
    .seh_savereg %r14, 64
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 288(%rbp), %r10
    leaq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 296(%rbp), %r10
    leaq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 304(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 48(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L4_11
    jmp .L4_4
.L4_11:
    movl %r13d, %r14d
    jmp .L4_5
.L4_4:
    leaq 32(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L4_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L4_1
    jmp .L4_2
.L4_1:
    leaq .Ltext_9(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_10(%rip), %r13
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
    jmp .L4_3
.L4_2:
.L4_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L4_7
.L4_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq 32(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L4_9
    jmp .L4_10
.L4_10:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_9:
    jmp .L4_8
.L4_7:
.L4_8:
    movq 264(%rbp), %rdi
    movq 256(%rbp), %rsi
    movdqu 240(%rbp), %xmm6
    movdqu 224(%rbp), %xmm7
    movdqu 208(%rbp), %xmm8
    movdqu 192(%rbp), %xmm9
    movdqu 176(%rbp), %xmm10
    movdqu 160(%rbp), %xmm11
    movdqu 144(%rbp), %xmm12
    movdqu 128(%rbp), %xmm13
    movdqu 112(%rbp), %xmm14
    movdqu 96(%rbp), %xmm15
    movq 88(%rbp), %rbx
    movq 80(%rbp), %r12
    movq 72(%rbp), %r13
    movq 64(%rbp), %r14
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .text

    .section .text$lb_interop_Packet_0g1_u8_0c_init,"xr"
    .p2align 4
    .globl lb_interop_Packet_0g1_u8_0c_init
lb_interop_Packet_0g1_u8_0c_init:
    .seh_proc lb_interop_Packet_0g1_u8_0c_init
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
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    movq 272(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 280(%rbp), %r10
    leaq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 288(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 48(%rbp), %r10
    movq (%r10), %r13
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
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
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .text

    .section .text$lb_interop_Packet_0g1_str_init,"xr"
    .p2align 4
    .globl lb_interop_Packet_0g1_str_init
lb_interop_Packet_0g1_str_init:
    .seh_proc lb_interop_Packet_0g1_str_init
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
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    movq 272(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 280(%rbp), %r10
    leaq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 288(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 48(%rbp), %r10
    movq (%r10), %r13
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
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
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .text

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_interop_transfer_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/interop/transfer.lucb:36:9"
.Ltext_1:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_2:
    .asciz "memory.unset"
.Ltext_3:
    .asciz "src/std/interop/transfer.lucb:40:9"
.Ltext_4:
    .asciz "memory.exhausted"
.Ltext_5:
    .asciz "src/std/interop/transfer.lucb:43:9"
.Ltext_6:
    .asciz "unreachable"
.Ltext_7:
    .asciz "src/std/interop/transfer.lucb:44:9"
.Ltext_8:
    .asciz "src/std/interop/transfer.lucb:48:9"
.Ltext_9:
    .asciz "index out of bounds"
.Ltext_10:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_11:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_12:
    .asciz "null_foreign"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_interop_13text_transfer
    .p2align 3
lb_interop_13text_transfer:
    .zero 8

    .bss
    .globl lb_interop_14bytes_transfer
    .p2align 3
lb_interop_14bytes_transfer:
    .zero 8
