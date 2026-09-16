    .weak lb_memory_move_0g1_u8
    .weak lb_memory_read_0g1_u16
    .weak lb_memory_read_0g1_net_NativeIpv4Address
    .weak lb_memory_read_0g1_net_NativeIpv6Address
    .text

    .p2align 4
    .globl lb_net_address_0init
lb_net_address_0init:
    .seh_proc lb_net_address_0init
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
    .globl lb_net_SocketAddress_loopback
lb_net_SocketAddress_loopback:
    .seh_proc lb_net_SocketAddress_loopback
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
    .seh_endprologue
    movq %rcx, 400(%rbp)
    movq %rdx, 408(%rbp)
    movq %r8, 416(%rbp)
    movq %r9, 424(%rbp)
    movq 408(%rbp), %rax
    movl %eax, 128(%rbp)
    movq 416(%rbp), %rax
    movl %eax, 112(%rbp)
    leaq 112(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_2
.L1_1:
    leaq 88(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    subq $32, %rsp
    movl $2130706433, %eax
    movq %rax, 8(%rsp)
    leaq 71(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_IpAddress_9from_ipv4
    addq $32, %rsp
    leaq 71(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    leaq 128(%rbp), %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movq $18, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movw %r12w, (%r10)
    leaq 144(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq 200(%rbp), %rdi
    movq $24, %rdx
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
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    leaq 54(%rbp), %r12
    leaq 37(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movb $0, 16(%r11)
    movq %r13, %r10
    movb %bl, (%r10)
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $15, %rcx
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 12(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    leaq 128(%rbp), %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movq $18, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movw %r12w, (%r10)
    leaq 144(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq 200(%rbp), %rdi
    movq $24, %rdx
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
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L1_5:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_SocketAddress_any
lb_net_SocketAddress_any:
    .seh_proc lb_net_SocketAddress_any
    pushq %rbp
    .seh_pushreg %rbp
    subq $320, %rsp
    .seh_stackalloc 320
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 136(%rbp)
    movq %rdi, 312(%rbp)
    .seh_savereg %rdi, 312
    movq %rsi, 304(%rbp)
    .seh_savereg %rsi, 304
    movdqu %xmm6, 288(%rbp)
    .seh_savexmm %xmm6, 288
    movdqu %xmm7, 272(%rbp)
    .seh_savexmm %xmm7, 272
    movdqu %xmm8, 256(%rbp)
    .seh_savexmm %xmm8, 256
    movdqu %xmm9, 240(%rbp)
    .seh_savexmm %xmm9, 240
    movdqu %xmm10, 224(%rbp)
    .seh_savexmm %xmm10, 224
    movdqu %xmm11, 208(%rbp)
    .seh_savexmm %xmm11, 208
    movdqu %xmm12, 192(%rbp)
    .seh_savexmm %xmm12, 192
    movdqu %xmm13, 176(%rbp)
    .seh_savexmm %xmm13, 176
    movdqu %xmm14, 160(%rbp)
    .seh_savexmm %xmm14, 160
    movdqu %xmm15, 144(%rbp)
    .seh_savexmm %xmm15, 144
    movq %rbx, 128(%rbp)
    .seh_savereg %rbx, 128
    movq %r12, 120(%rbp)
    .seh_savereg %r12, 120
    movq %r13, 112(%rbp)
    .seh_savereg %r13, 112
    .seh_endprologue
    movq %rcx, 336(%rbp)
    movq %rdx, 344(%rbp)
    movq %r8, 352(%rbp)
    movq %r9, 360(%rbp)
    movq 344(%rbp), %rax
    movl %eax, 72(%rbp)
    movq 352(%rbp), %rax
    movl %eax, 56(%rbp)
    leaq 32(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 15(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movb $0, 16(%r11)
    leaq 56(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    leaq 72(%rbp), %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movq $18, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movw %r12w, (%r10)
    leaq 88(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq 136(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L2_1:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_SocketAddress_parse
lb_net_SocketAddress_parse:
    .seh_proc lb_net_SocketAddress_parse
    pushq %rbp
    .seh_pushreg %rbp
    subq $784, %rsp
    .seh_stackalloc 784
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 600(%rbp)
    movq %rdi, 776(%rbp)
    .seh_savereg %rdi, 776
    movq %rsi, 768(%rbp)
    .seh_savereg %rsi, 768
    movdqu %xmm6, 752(%rbp)
    .seh_savexmm %xmm6, 752
    movdqu %xmm7, 736(%rbp)
    .seh_savexmm %xmm7, 736
    movdqu %xmm8, 720(%rbp)
    .seh_savexmm %xmm8, 720
    movdqu %xmm9, 704(%rbp)
    .seh_savexmm %xmm9, 704
    movdqu %xmm10, 688(%rbp)
    .seh_savexmm %xmm10, 688
    movdqu %xmm11, 672(%rbp)
    .seh_savexmm %xmm11, 672
    movdqu %xmm12, 656(%rbp)
    .seh_savexmm %xmm12, 656
    movdqu %xmm13, 640(%rbp)
    .seh_savexmm %xmm13, 640
    movdqu %xmm14, 624(%rbp)
    .seh_savexmm %xmm14, 624
    movdqu %xmm15, 608(%rbp)
    .seh_savexmm %xmm15, 608
    movq %rbx, 592(%rbp)
    .seh_savereg %rbx, 592
    movq %r12, 584(%rbp)
    .seh_savereg %r12, 584
    movq %r13, 576(%rbp)
    .seh_savereg %r13, 576
    movq %r14, 568(%rbp)
    .seh_savereg %r14, 568
    movq %r15, 560(%rbp)
    .seh_savereg %r15, 560
    .seh_endprologue
    movq %rcx, 800(%rbp)
    movq %rdx, 808(%rbp)
    movq %r8, 816(%rbp)
    movq %r9, 824(%rbp)
    movq 808(%rbp), %r10
    leaq 512(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 512(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_60
    jmp .L3_4
.L3_60:
    movl %r13d, %r14d
    jmp .L3_5
.L3_4:
    movq 80(%rbp), %rax
    movq $64, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r14d
.L3_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_1
    jmp .L3_2
.L3_1:
    leaq 484(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq 532(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq 600(%rbp), %rdi
    movq $28, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 600(%rbp), %rax
    movq 776(%rbp), %rdi
    movq 768(%rbp), %rsi
    movdqu 752(%rbp), %xmm6
    movdqu 736(%rbp), %xmm7
    movdqu 720(%rbp), %xmm8
    movdqu 704(%rbp), %xmm9
    movdqu 688(%rbp), %xmm10
    movdqu 672(%rbp), %xmm11
    movdqu 656(%rbp), %xmm12
    movdqu 640(%rbp), %xmm13
    movdqu 624(%rbp), %xmm14
    movdqu 608(%rbp), %xmm15
    movq 592(%rbp), %rbx
    movq 584(%rbp), %r12
    movq 576(%rbp), %r13
    movq 568(%rbp), %r14
    movq 560(%rbp), %r15
    leaq 784(%rbp), %rsp
    popq %rbp
    ret
.L3_6:
    jmp .L3_3
.L3_2:
.L3_3:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 72(%rbp)
    movq $0, %rax
    movq 80(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 72(%rbp), %r10
    movzbl (%r10), %r14d
    movl $91, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movzbl %r14b, %eax
    movl %eax, 64(%rbp)
    movl 64(%rbp), %eax
    testl %eax, %eax
    jne .L3_7
    jmp .L3_8
.L3_7:
    movq $1, %rax
    movq %rax, %rbx
.L3_10:
    movq 80(%rbp), %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L3_13
    jmp .L3_61
.L3_61:
    movl %r15d, %r14d
    jmp .L3_14
.L3_13:
    movq 72(%rbp), %rax
    movq %rax, %r14
    addq %rbx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $93, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
.L3_14:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L3_11
    jmp .L3_12
.L3_11:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r14, %rbx
    jmp .L3_10
.L3_12:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 80(%rbp), %rcx
    cmpq %rcx, %r14
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L3_62
    jmp .L3_18
.L3_62:
    movl %r15d, %r14d
    jmp .L3_19
.L3_18:
    movq 72(%rbp), %rax
    movq %rax, %r15
    addq %r14, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movl $58, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %r14d
.L3_19:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L3_15
    jmp .L3_16
.L3_15:
    leaq 456(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq 532(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq 600(%rbp), %rdi
    movq $28, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 600(%rbp), %rax
    movq 776(%rbp), %rdi
    movq 768(%rbp), %rsi
    movdqu 752(%rbp), %xmm6
    movdqu 736(%rbp), %xmm7
    movdqu 720(%rbp), %xmm8
    movdqu 704(%rbp), %xmm9
    movdqu 688(%rbp), %xmm10
    movdqu 672(%rbp), %xmm11
    movdqu 656(%rbp), %xmm12
    movdqu 640(%rbp), %xmm13
    movdqu 624(%rbp), %xmm14
    movdqu 608(%rbp), %xmm15
    movq 592(%rbp), %rbx
    movq 584(%rbp), %r12
    movq 576(%rbp), %r13
    movq 568(%rbp), %r14
    movq 560(%rbp), %r15
    leaq 784(%rbp), %rsp
    popq %rbp
    ret
.L3_20:
    jmp .L3_17
.L3_16:
.L3_17:
    movq %rbx, %rax
    movq $2, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 56(%rbp)
    movq $1, %rax
    movq %rax, 40(%rbp)
.L3_21:
    movq 40(%rbp), %rax
    cmpq %rbx, %rax
    jb .L3_22
.L3_63:
    movq %rbx, %r14
    movl $0, %eax
    movl %eax, 32(%rbp)
    jmp .L3_23
.L3_22:
    movq 40(%rbp), %rax
    movq 80(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 72(%rbp), %rax
    movq 40(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $37, %ecx
    cmpl %ecx, %r14d
    jne .L3_25
.L3_24:
    movq 40(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq 80(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r13
    jbe .L3_27
.L3_28:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_27:
    movq 72(%rbp), %rax
    movq %rax, %r14
    addq %r13, %r14
    movq %rbx, %r12
    subq %r13, %r12
    leaq 440(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    leaq 424(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    subq $48, %rsp
    movq %r15, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movl $4294967295, %eax
    movq %rax, 8(%rsp)
    movq $10, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_21parse_endpoint_number
    addq $48, %rsp
    leaq 416(%rbp), %r10
    movq %rax, 0(%r10)
    leaq 416(%rbp), %r14
    movq $4, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_29
    jmp .L3_30
.L3_29:
    movq %r14, %r10
    movl (%r10), %ebx
    jmp .L3_31
.L3_30:
    leaq 388(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq 532(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq 600(%rbp), %rdi
    movq $28, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 600(%rbp), %rax
    movq 776(%rbp), %rdi
    movq 768(%rbp), %rsi
    movdqu 752(%rbp), %xmm6
    movdqu 736(%rbp), %xmm7
    movdqu 720(%rbp), %xmm8
    movdqu 704(%rbp), %xmm9
    movdqu 688(%rbp), %xmm10
    movdqu 672(%rbp), %xmm11
    movdqu 656(%rbp), %xmm12
    movdqu 640(%rbp), %xmm13
    movdqu 624(%rbp), %xmm14
    movdqu 608(%rbp), %xmm15
    movq 592(%rbp), %rbx
    movq 584(%rbp), %r12
    movq 576(%rbp), %r13
    movq 568(%rbp), %r14
    movq 560(%rbp), %r15
    leaq 784(%rbp), %rsp
    popq %rbp
    ret
.L3_32:
.L3_31:
    movq 40(%rbp), %rax
    movq %rax, %r14
    movl %ebx, %eax
    movl %eax, 32(%rbp)
    jmp .L3_23
.L3_33:
    jmp .L3_26
.L3_25:
.L3_26:
    movq 40(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %rax
    movq %rax, 40(%rbp)
    jmp .L3_21
.L3_23:
    movq $1, %rax
    movq %rax, %rbx
    movq %r14, %r12
    movq 56(%rbp), %rax
    movq %rax, 24(%rbp)
    movl 32(%rbp), %eax
    movl %eax, 16(%rbp)
    jmp .L3_9
.L3_8:
    movq $0, %rax
    movq %rax, %r12
.L3_34:
    movq 80(%rbp), %rcx
    cmpq %rcx, %r12
    setb %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L3_37
    jmp .L3_64
.L3_64:
    movl %ebx, %r13d
    jmp .L3_38
.L3_37:
    movq 72(%rbp), %rax
    movq %rax, %rbx
    addq %r12, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $58, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L3_38:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L3_35
    jmp .L3_36
.L3_35:
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %rbx, %r12
    jmp .L3_34
.L3_36:
    movq 80(%rbp), %rax
    cmpq %r12, %rax
    jne .L3_40
.L3_39:
    leaq 360(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq 532(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq 600(%rbp), %rdi
    movq $28, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 600(%rbp), %rax
    movq 776(%rbp), %rdi
    movq 768(%rbp), %rsi
    movdqu 752(%rbp), %xmm6
    movdqu 736(%rbp), %xmm7
    movdqu 720(%rbp), %xmm8
    movdqu 704(%rbp), %xmm9
    movdqu 688(%rbp), %xmm10
    movdqu 672(%rbp), %xmm11
    movdqu 656(%rbp), %xmm12
    movdqu 640(%rbp), %xmm13
    movdqu 624(%rbp), %xmm14
    movdqu 608(%rbp), %xmm15
    movq 592(%rbp), %rbx
    movq 584(%rbp), %r12
    movq 576(%rbp), %r13
    movq 568(%rbp), %r14
    movq 560(%rbp), %r15
    leaq 784(%rbp), %rsp
    popq %rbp
    ret
.L3_42:
    jmp .L3_41
.L3_40:
.L3_41:
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq $0, %rax
    movq %rax, %rbx
    movq %r13, %rax
    movq %rax, 24(%rbp)
    movl $0, %eax
    movl %eax, 16(%rbp)
.L3_9:
    leaq 343(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 80(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 48(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %rbx
    jbe .L3_43
.L3_44:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_43:
    movq 72(%rbp), %rax
    movq %rax, %r15
    addq %rbx, %r15
    movq %r12, %r14
    subq %rbx, %r14
    leaq 320(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    leaq 304(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 286(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_IpAddress_parse
    addq $48, %rsp
    leaq 286(%rbp), %r14
    movq $17, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L3_45
    jmp .L3_46
.L3_45:
    leaq 269(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    jmp .L3_47
.L3_46:
    leaq 240(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq 532(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq 600(%rbp), %rdi
    movq $28, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 600(%rbp), %rax
    movq 776(%rbp), %rdi
    movq 768(%rbp), %rsi
    movdqu 752(%rbp), %xmm6
    movdqu 736(%rbp), %xmm7
    movdqu 720(%rbp), %xmm8
    movdqu 704(%rbp), %xmm9
    movdqu 688(%rbp), %xmm10
    movdqu 672(%rbp), %xmm11
    movdqu 656(%rbp), %xmm12
    movdqu 640(%rbp), %xmm13
    movdqu 624(%rbp), %xmm14
    movdqu 608(%rbp), %xmm15
    movq 592(%rbp), %rbx
    movq 584(%rbp), %r12
    movq 576(%rbp), %r13
    movq 568(%rbp), %r14
    movq 560(%rbp), %r15
    leaq 784(%rbp), %rsp
    popq %rbp
    ret
.L3_48:
.L3_47:
    movq %rbx, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movq 8(%rbp), %r10
    movzbl (%r10), %r12d
    movl $1, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl 64(%rbp), %eax
    cmpl %r12d, %eax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_50
.L3_49:
    leaq 212(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq 532(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq 600(%rbp), %rdi
    movq $28, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 600(%rbp), %rax
    movq 776(%rbp), %rdi
    movq 768(%rbp), %rsi
    movdqu 752(%rbp), %xmm6
    movdqu 736(%rbp), %xmm7
    movdqu 720(%rbp), %xmm8
    movdqu 704(%rbp), %xmm9
    movdqu 688(%rbp), %xmm10
    movdqu 672(%rbp), %xmm11
    movdqu 656(%rbp), %xmm12
    movdqu 640(%rbp), %xmm13
    movdqu 624(%rbp), %xmm14
    movdqu 608(%rbp), %xmm15
    movq 592(%rbp), %rbx
    movq 584(%rbp), %r12
    movq 576(%rbp), %r13
    movq 568(%rbp), %r14
    movq 560(%rbp), %r15
    leaq 784(%rbp), %rsp
    popq %rbp
    ret
.L3_52:
    jmp .L3_51
.L3_50:
.L3_51:
    movq 24(%rbp), %rax
    movq 48(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 80(%rbp), %rax
    movq 48(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rax
    movq 80(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L3_53
.L3_54:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_53:
    movq 72(%rbp), %rax
    movq 24(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 80(%rbp), %rax
    movq 24(%rbp), %rcx
    movq %rax, %r12
    subq %rcx, %r12
    leaq 192(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq 176(%rbp), %r13
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
    movq %rax, 0(%rsp)
    movl $65535, %eax
    movq %rax, 8(%rsp)
    movq $5, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_21parse_endpoint_number
    addq $48, %rsp
    leaq 168(%rbp), %r10
    movq %rax, 0(%r10)
    leaq 168(%rbp), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_55
    jmp .L3_56
.L3_55:
    movq %r12, %r10
    movl (%r10), %ebx
    jmp .L3_57
.L3_56:
    leaq 140(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq 532(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq 600(%rbp), %rdi
    movq $28, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 600(%rbp), %rax
    movq 776(%rbp), %rdi
    movq 768(%rbp), %rsi
    movdqu 752(%rbp), %xmm6
    movdqu 736(%rbp), %xmm7
    movdqu 720(%rbp), %xmm8
    movdqu 704(%rbp), %xmm9
    movdqu 688(%rbp), %xmm10
    movdqu 672(%rbp), %xmm11
    movdqu 656(%rbp), %xmm12
    movdqu 640(%rbp), %xmm13
    movdqu 624(%rbp), %xmm14
    movdqu 608(%rbp), %xmm15
    movq 592(%rbp), %rbx
    movq 584(%rbp), %r12
    movq 576(%rbp), %r13
    movq 568(%rbp), %r14
    movq 560(%rbp), %r15
    leaq 784(%rbp), %rsp
    popq %rbp
    ret
.L3_58:
.L3_57:
    leaq 116(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq 8(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movl %ebx, %r13d
    movzwl %r13w, %r13d
    movq $18, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movw %r13w, (%r10)
    movq $20, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl 16(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq 88(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 532(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq 600(%rbp), %rdi
    movq $28, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 600(%rbp), %rax
    movq 776(%rbp), %rdi
    movq 768(%rbp), %rsi
    movdqu 752(%rbp), %xmm6
    movdqu 736(%rbp), %xmm7
    movdqu 720(%rbp), %xmm8
    movdqu 704(%rbp), %xmm9
    movdqu 688(%rbp), %xmm10
    movdqu 672(%rbp), %xmm11
    movdqu 656(%rbp), %xmm12
    movdqu 640(%rbp), %xmm13
    movdqu 624(%rbp), %xmm14
    movdqu 608(%rbp), %xmm15
    movq 592(%rbp), %rbx
    movq 584(%rbp), %r12
    movq 576(%rbp), %r13
    movq 568(%rbp), %r14
    movq 560(%rbp), %r15
    leaq 784(%rbp), %rsp
    popq %rbp
    ret
.L3_59:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_SocketAddress_equals
lb_net_SocketAddress_equals:
    .seh_proc lb_net_SocketAddress_equals
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
    movq %r14, 32(%rbp)
    .seh_savereg %r14, 32
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    movq 256(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 264(%rbp), %r10
    leaq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 24(%rbp), %r10
    movq (%r10), %r13
    leaq 0(%rbp), %rbx
    subq $64, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_IpAddress_equals
    addq $64, %rsp
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L4_1
    jmp .L4_6
.L4_6:
    movl %r12d, %r14d
    jmp .L4_2
.L4_1:
    movq $18, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movq $18, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzwl (%r10), %r14d
    cmpl %r14d, %r12d
    sete %al
    movzbl %al, %r14d
.L4_2:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L4_3
    jmp .L4_7
.L4_7:
    movl %r12d, %ebx
    jmp .L4_4
.L4_3:
    movq $20, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq $20, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    cmpl %r14d, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L4_4:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
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
    movq 32(%rbp), %r14
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L4_5:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_SocketAddress_format
lb_net_SocketAddress_format:
    .seh_proc lb_net_SocketAddress_format
    pushq %rbp
    .seh_pushreg %rbp
    subq $688, %rsp
    .seh_stackalloc 688
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 504(%rbp)
    movq %rdi, 680(%rbp)
    .seh_savereg %rdi, 680
    movq %rsi, 672(%rbp)
    .seh_savereg %rsi, 672
    movdqu %xmm6, 656(%rbp)
    .seh_savexmm %xmm6, 656
    movdqu %xmm7, 640(%rbp)
    .seh_savexmm %xmm7, 640
    movdqu %xmm8, 624(%rbp)
    .seh_savexmm %xmm8, 624
    movdqu %xmm9, 608(%rbp)
    .seh_savexmm %xmm9, 608
    movdqu %xmm10, 592(%rbp)
    .seh_savexmm %xmm10, 592
    movdqu %xmm11, 576(%rbp)
    .seh_savexmm %xmm11, 576
    movdqu %xmm12, 560(%rbp)
    .seh_savexmm %xmm12, 560
    movdqu %xmm13, 544(%rbp)
    .seh_savexmm %xmm13, 544
    movdqu %xmm14, 528(%rbp)
    .seh_savexmm %xmm14, 528
    movdqu %xmm15, 512(%rbp)
    .seh_savexmm %xmm15, 512
    movq %rbx, 496(%rbp)
    .seh_savereg %rbx, 496
    movq %r12, 488(%rbp)
    .seh_savereg %r12, 488
    movq %r13, 480(%rbp)
    .seh_savereg %r13, 480
    movq %r14, 472(%rbp)
    .seh_savereg %r14, 472
    movq %r15, 464(%rbp)
    .seh_savereg %r15, 464
    .seh_endprologue
    movq %rcx, 704(%rbp)
    movq %rdx, 712(%rbp)
    movq %r8, 720(%rbp)
    movq %r9, 728(%rbp)
    movq 712(%rbp), %rax
    movq %rax, 408(%rbp)
    movq 720(%rbp), %r10
    leaq 392(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 408(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 360(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_SocketAddress_validate
    addq $32, %rsp
    leaq 360(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_2
    jmp .L5_1
.L5_2:
    leaq 416(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
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
    movq 504(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 504(%rbp), %rax
    movq 680(%rbp), %rdi
    movq 672(%rbp), %rsi
    movdqu 656(%rbp), %xmm6
    movdqu 640(%rbp), %xmm7
    movdqu 624(%rbp), %xmm8
    movdqu 608(%rbp), %xmm9
    movdqu 592(%rbp), %xmm10
    movdqu 576(%rbp), %xmm11
    movdqu 560(%rbp), %xmm12
    movdqu 544(%rbp), %xmm13
    movdqu 528(%rbp), %xmm14
    movdqu 512(%rbp), %xmm15
    movq 496(%rbp), %rbx
    movq 488(%rbp), %r12
    movq 480(%rbp), %r13
    movq 472(%rbp), %r14
    movq 464(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
.L5_1:
    leaq 302(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movw $0, 56(%r11)
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl $1, %ecx
    cmpl %ecx, %r13d
    jne .L5_5
.L5_4:
    movl $91, %eax
    movq 32(%rbp), %r10
    movb %al, (%r10)
    leaq 280(%rbp), %r13
.L5_7:
    movq 32(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    leaq 264(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $39, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r15, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 216(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_IpAddress_format
    addq $48, %rsp
    leaq 216(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L5_10
    jmp .L5_9
.L5_10:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 416(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
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
    movq 504(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 504(%rbp), %rax
    movq 680(%rbp), %rdi
    movq 672(%rbp), %rsi
    movdqu 656(%rbp), %xmm6
    movdqu 640(%rbp), %xmm7
    movdqu 624(%rbp), %xmm8
    movdqu 608(%rbp), %xmm9
    movdqu 592(%rbp), %xmm10
    movdqu 576(%rbp), %xmm11
    movdqu 560(%rbp), %xmm12
    movdqu 544(%rbp), %xmm13
    movdqu 528(%rbp), %xmm14
    movdqu 512(%rbp), %xmm15
    movq 496(%rbp), %rbx
    movq 488(%rbp), %r12
    movq 480(%rbp), %r13
    movq 472(%rbp), %r14
    movq 464(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
.L5_9:
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq $20, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %r10
    movl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_13
.L5_12:
    movq $58, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 32(%rbp), %rax
    movq %rax, %rbx
    addq %r14, %rbx
    movl $37, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq 24(%rbp), %r10
    movl (%r10), %ebx
    leaq 200(%rbp), %r13
    movq 32(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $58, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    subq $48, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_22render_endpoint_number
    addq $48, %rsp
    movq %rax, %rbx
    jmp .L5_14
.L5_13:
    movq %r14, %rbx
.L5_14:
    movq $58, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 32(%rbp), %rax
    movq %rax, %r13
    addq %rbx, %r13
    movl $93, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    jmp .L5_6
.L5_5:
    leaq 184(%rbp), %rbx
.L5_15:
    leaq 168(%rbp), %r13
    movq 32(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $39, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 120(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_IpAddress_format
    addq $48, %rsp
    leaq 120(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_18
    jmp .L5_17
.L5_18:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 416(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
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
    movq 504(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 504(%rbp), %rax
    movq 680(%rbp), %rdi
    movq 672(%rbp), %rsi
    movdqu 656(%rbp), %xmm6
    movdqu 640(%rbp), %xmm7
    movdqu 624(%rbp), %xmm8
    movdqu 608(%rbp), %xmm9
    movdqu 592(%rbp), %xmm10
    movdqu 576(%rbp), %xmm11
    movdqu 560(%rbp), %xmm12
    movdqu 544(%rbp), %xmm13
    movdqu 528(%rbp), %xmm14
    movdqu 512(%rbp), %xmm15
    movq 496(%rbp), %rbx
    movq 488(%rbp), %r12
    movq 480(%rbp), %r13
    movq 472(%rbp), %r14
    movq 464(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
.L5_17:
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
.L5_6:
    movq $58, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 32(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movl $58, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $18, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl %ebx, %ebx
    leaq 104(%rbp), %r14
    movq 32(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq $58, %rax
    movq 16(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    subq $48, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 8(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_22render_endpoint_number
    addq $48, %rsp
    movq %rax, %rbx
    leaq 392(%rbp), %r14
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %r10
    movq (%r10), %r15
    cmpq %rbx, %r15
    jae .L5_21
.L5_20:
    leaq 416(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_30(%rip), %r13
    leaq 88(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $56, %rax
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
    movq 504(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 504(%rbp), %rax
    movq 680(%rbp), %rdi
    movq 672(%rbp), %rsi
    movdqu 656(%rbp), %xmm6
    movdqu 640(%rbp), %xmm7
    movdqu 624(%rbp), %xmm8
    movdqu 608(%rbp), %xmm9
    movdqu 592(%rbp), %xmm10
    movdqu 576(%rbp), %xmm11
    movdqu 560(%rbp), %xmm12
    movdqu 544(%rbp), %xmm13
    movdqu 528(%rbp), %xmm14
    movdqu 512(%rbp), %xmm15
    movq 496(%rbp), %rbx
    movq 488(%rbp), %r12
    movq 480(%rbp), %r13
    movq 472(%rbp), %r14
    movq 464(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
.L5_21:
.L5_22:
    leaq 72(%rbp), %r12
    movq 32(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $58, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %r14, %r10
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
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_move_0g1_u8
    addq $64, %rsp
    movq %r14, %r10
    movq (%r10), %r13
    movq 0(%rbp), %r10
    movq (%r10), %r12
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L5_24
.L5_25:
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_24:
    leaq 56(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    leaq 416(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r14, %rsi
    movq 504(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 504(%rbp), %rax
    movq 680(%rbp), %rdi
    movq 672(%rbp), %rsi
    movdqu 656(%rbp), %xmm6
    movdqu 640(%rbp), %xmm7
    movdqu 624(%rbp), %xmm8
    movdqu 608(%rbp), %xmm9
    movdqu 592(%rbp), %xmm10
    movdqu 576(%rbp), %xmm11
    movdqu 560(%rbp), %xmm12
    movdqu 544(%rbp), %xmm13
    movdqu 528(%rbp), %xmm14
    movdqu 512(%rbp), %xmm15
    movq 496(%rbp), %rbx
    movq 488(%rbp), %r12
    movq 480(%rbp), %r13
    movq 472(%rbp), %r14
    movq 464(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_SocketAddress_validate
lb_net_SocketAddress_validate:
    .seh_proc lb_net_SocketAddress_validate
    pushq %rbp
    .seh_pushreg %rbp
    subq $288, %rsp
    .seh_stackalloc 288
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 104(%rbp)
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
    movq %rbx, 96(%rbp)
    .seh_savereg %rbx, 96
    movq %r12, 88(%rbp)
    .seh_savereg %r12, 88
    movq %r13, 80(%rbp)
    .seh_savereg %r13, 80
    movq %r14, 72(%rbp)
    .seh_savereg %r14, 72
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 312(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 32(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L6_4
    jmp .L6_13
.L6_13:
    movl %r13d, %ebx
    jmp .L6_5
.L6_4:
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L6_5:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L6_1
    jmp .L6_2
.L6_1:
    leaq 40(%rbp), %rbx
    leaq lb_net_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_32(%rip), %r12
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $26, %rax
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
    movq 104(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 104(%rbp), %rax
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
    movq 96(%rbp), %rbx
    movq 88(%rbp), %r12
    movq 80(%rbp), %r13
    movq 72(%rbp), %r14
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L6_6:
    jmp .L6_3
.L6_2:
.L6_3:
    testl %r12d, %r12d
    jne .L6_10
    jmp .L6_14
.L6_14:
    movl %r12d, %ebx
    jmp .L6_11
.L6_10:
    movq $20, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L6_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L6_7
    jmp .L6_8
.L6_7:
    leaq 40(%rbp), %rbx
    leaq lb_net_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_33(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $45, %rax
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
    movq 104(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 104(%rbp), %rax
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
    movq 96(%rbp), %rbx
    movq 88(%rbp), %r12
    movq 80(%rbp), %r13
    movq 72(%rbp), %r14
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L6_12:
    jmp .L6_9
.L6_8:
.L6_9:
    leaq 40(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 104(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 104(%rbp), %rax
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
    movq 96(%rbp), %rbx
    movq 88(%rbp), %r12
    movq 80(%rbp), %r13
    movq 72(%rbp), %r14
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_SocketAddress_12write_native
lb_net_SocketAddress_12write_native:
    .seh_proc lb_net_SocketAddress_12write_native
    pushq %rbp
    .seh_pushreg %rbp
    subq $448, %rsp
    .seh_stackalloc 448
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 264(%rbp)
    movq %rdi, 440(%rbp)
    .seh_savereg %rdi, 440
    movq %rsi, 432(%rbp)
    .seh_savereg %rsi, 432
    movdqu %xmm6, 416(%rbp)
    .seh_savexmm %xmm6, 416
    movdqu %xmm7, 400(%rbp)
    .seh_savexmm %xmm7, 400
    movdqu %xmm8, 384(%rbp)
    .seh_savexmm %xmm8, 384
    movdqu %xmm9, 368(%rbp)
    .seh_savexmm %xmm9, 368
    movdqu %xmm10, 352(%rbp)
    .seh_savexmm %xmm10, 352
    movdqu %xmm11, 336(%rbp)
    .seh_savexmm %xmm11, 336
    movdqu %xmm12, 320(%rbp)
    .seh_savexmm %xmm12, 320
    movdqu %xmm13, 304(%rbp)
    .seh_savexmm %xmm13, 304
    movdqu %xmm14, 288(%rbp)
    .seh_savexmm %xmm14, 288
    movdqu %xmm15, 272(%rbp)
    .seh_savexmm %xmm15, 272
    movq %rbx, 256(%rbp)
    .seh_savereg %rbx, 256
    movq %r12, 248(%rbp)
    .seh_savereg %r12, 248
    movq %r13, 240(%rbp)
    .seh_savereg %r13, 240
    movq %r14, 232(%rbp)
    .seh_savereg %r14, 232
    movq %r15, 224(%rbp)
    .seh_savereg %r15, 224
    .seh_endprologue
    movq %rcx, 464(%rbp)
    movq %rdx, 472(%rbp)
    movq %r8, 480(%rbp)
    movq %r9, 488(%rbp)
    movq 472(%rbp), %rax
    movq %rax, 176(%rbp)
    movq 480(%rbp), %rax
    movq %rax, 160(%rbp)
    leaq 176(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 128(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_SocketAddress_validate
    addq $32, %rsp
    leaq 128(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_2
    jmp .L7_1
.L7_2:
    leaq 184(%rbp), %rbx
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
    movq 264(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 264(%rbp), %rax
    movq 440(%rbp), %rdi
    movq 432(%rbp), %rsi
    movdqu 416(%rbp), %xmm6
    movdqu 400(%rbp), %xmm7
    movdqu 384(%rbp), %xmm8
    movdqu 368(%rbp), %xmm9
    movdqu 352(%rbp), %xmm10
    movdqu 336(%rbp), %xmm11
    movdqu 320(%rbp), %xmm12
    movdqu 304(%rbp), %xmm13
    movdqu 288(%rbp), %xmm14
    movdqu 272(%rbp), %xmm15
    movq 256(%rbp), %rbx
    movq 248(%rbp), %r12
    movq 240(%rbp), %r13
    movq 232(%rbp), %r14
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L7_1:
    movq %r12, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L7_5
.L7_4:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_IpAddress_11ipv4_number
    addq $32, %rsp
    leaq 120(%rbp), %r10
    movq %rax, 0(%r10)
    leaq 120(%rbp), %r13
    movq $4, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_7
    jmp .L7_8
.L7_7:
    movq %r13, %r10
    movl (%r10), %ebx
    jmp .L7_9
.L7_8:
    leaq 184(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_34(%rip), %r13
    leaq 104(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 264(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 264(%rbp), %rax
    movq 440(%rbp), %rdi
    movq 432(%rbp), %rsi
    movdqu 416(%rbp), %xmm6
    movdqu 400(%rbp), %xmm7
    movdqu 384(%rbp), %xmm8
    movdqu 368(%rbp), %xmm9
    movdqu 352(%rbp), %xmm10
    movdqu 336(%rbp), %xmm11
    movdqu 320(%rbp), %xmm12
    movdqu 304(%rbp), %xmm13
    movdqu 288(%rbp), %xmm14
    movdqu 272(%rbp), %xmm15
    movq 256(%rbp), %rbx
    movq 248(%rbp), %r12
    movq 240(%rbp), %r13
    movq 232(%rbp), %r14
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L7_9:
    leaq 160(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    leaq 88(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movl $16, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_11family_word
    addq $32, %rsp
    movl %eax, %r13d
    movq %r15, %r10
    movw %r13w, (%r10)
    movq $18, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzwl (%r10), %r13d
    leaq 40(%rbp), %r10
    movl %r13d, (%r10)
    leaq 40(%rbp), %r13
    movq %r13, %r10
    movzwl (%r10), %r13d
.L7_14:
    movl $8, %ecx
    movl %r13d, %r12d
    shll %cl, %r12d
    movzwl %r12w, %r12d
.L7_16:
    movl $8, %ecx
    movl %r13d, %r14d
    shrl %cl, %r14d
    movzwl %r14w, %r14d
    orl %r12d, %r14d
    movzwl %r14w, %r14d
    leaq 32(%rbp), %r10
    movl %r14d, (%r10)
.L7_18:
    movq $2, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movw %r14w, (%r10)
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_swap32
    addq $32, %rsp
    movl %eax, %r12d
    movq $4, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %r15, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 184(%rbp), %r12
    movl $16, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 264(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 264(%rbp), %rax
    movq 440(%rbp), %rdi
    movq 432(%rbp), %rsi
    movdqu 416(%rbp), %xmm6
    movdqu 400(%rbp), %xmm7
    movdqu 384(%rbp), %xmm8
    movdqu 368(%rbp), %xmm9
    movdqu 352(%rbp), %xmm10
    movdqu 336(%rbp), %xmm11
    movdqu 320(%rbp), %xmm12
    movdqu 304(%rbp), %xmm13
    movdqu 288(%rbp), %xmm14
    movdqu 272(%rbp), %xmm15
    movq 256(%rbp), %rbx
    movq 248(%rbp), %r12
    movq 240(%rbp), %r13
    movq 232(%rbp), %r14
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L7_5:
.L7_6:
    leaq 160(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    leaq 60(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    subq $32, %rsp
    movl $23, %eax
    movq %rax, 0(%rsp)
    movl $28, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_11family_word
    addq $32, %rsp
    movl %eax, %ebx
    movq %r14, %r10
    movw %bx, (%r10)
    movq $18, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    leaq 40(%rbp), %r10
    movl %ebx, (%r10)
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
.L7_20:
    movl $8, %ecx
    movl %ebx, %r15d
    shll %cl, %r15d
    movzwl %r15w, %r15d
.L7_22:
    movl $8, %ecx
    movl %ebx, %r13d
    shrl %cl, %r13d
    movzwl %r13w, %r13d
    orl %r15d, %r13d
    movzwl %r13w, %r13d
    leaq 24(%rbp), %r10
    movl %r13d, (%r10)
.L7_24:
    movq $2, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movw %r13w, (%r10)
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $20, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %ebx, (%r10)
    movq %r14, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    leaq 184(%rbp), %rbx
    movl $28, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq $32, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $0, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 264(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 264(%rbp), %rax
    movq 440(%rbp), %rdi
    movq 432(%rbp), %rsi
    movdqu 416(%rbp), %xmm6
    movdqu 400(%rbp), %xmm7
    movdqu 384(%rbp), %xmm8
    movdqu 368(%rbp), %xmm9
    movdqu 352(%rbp), %xmm10
    movdqu 336(%rbp), %xmm11
    movdqu 320(%rbp), %xmm12
    movdqu 304(%rbp), %xmm13
    movdqu 288(%rbp), %xmm14
    movdqu 272(%rbp), %xmm15
    movq 256(%rbp), %rbx
    movq 248(%rbp), %r12
    movq 240(%rbp), %r13
    movq 232(%rbp), %r14
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_14decode_address
lb_net_14decode_address:
    .seh_proc lb_net_14decode_address
    pushq %rbp
    .seh_pushreg %rbp
    subq $768, %rsp
    .seh_stackalloc 768
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 584(%rbp)
    movq %rdi, 760(%rbp)
    .seh_savereg %rdi, 760
    movq %rsi, 752(%rbp)
    .seh_savereg %rsi, 752
    movdqu %xmm6, 736(%rbp)
    .seh_savexmm %xmm6, 736
    movdqu %xmm7, 720(%rbp)
    .seh_savexmm %xmm7, 720
    movdqu %xmm8, 704(%rbp)
    .seh_savexmm %xmm8, 704
    movdqu %xmm9, 688(%rbp)
    .seh_savexmm %xmm9, 688
    movdqu %xmm10, 672(%rbp)
    .seh_savexmm %xmm10, 672
    movdqu %xmm11, 656(%rbp)
    .seh_savexmm %xmm11, 656
    movdqu %xmm12, 640(%rbp)
    .seh_savexmm %xmm12, 640
    movdqu %xmm13, 624(%rbp)
    .seh_savexmm %xmm13, 624
    movdqu %xmm14, 608(%rbp)
    .seh_savexmm %xmm14, 608
    movdqu %xmm15, 592(%rbp)
    .seh_savexmm %xmm15, 592
    movq %rbx, 576(%rbp)
    .seh_savereg %rbx, 576
    movq %r12, 568(%rbp)
    .seh_savereg %r12, 568
    movq %r13, 560(%rbp)
    .seh_savereg %r13, 560
    movq %r14, 552(%rbp)
    .seh_savereg %r14, 552
    movq %r15, 544(%rbp)
    .seh_savereg %r15, 544
    .seh_endprologue
    movq %rcx, 784(%rbp)
    movq %rdx, 792(%rbp)
    movq %r8, 800(%rbp)
    movq %r9, 808(%rbp)
    movq 792(%rbp), %rax
    movq %rax, 472(%rbp)
    movq 800(%rbp), %rax
    movl %eax, 456(%rbp)
    leaq 456(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    jae .L8_2
.L8_1:
    leaq 488(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_36(%rip), %r13
    leaq 440(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $51, %rax
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
    movq 584(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 584(%rbp), %rax
    movq 760(%rbp), %rdi
    movq 752(%rbp), %rsi
    movdqu 736(%rbp), %xmm6
    movdqu 720(%rbp), %xmm7
    movdqu 704(%rbp), %xmm8
    movdqu 688(%rbp), %xmm9
    movdqu 672(%rbp), %xmm10
    movdqu 656(%rbp), %xmm11
    movdqu 640(%rbp), %xmm12
    movdqu 624(%rbp), %xmm13
    movdqu 608(%rbp), %xmm14
    movdqu 592(%rbp), %xmm15
    movq 576(%rbp), %rbx
    movq 568(%rbp), %r12
    movq 560(%rbp), %r13
    movq 552(%rbp), %r14
    movq 544(%rbp), %r15
    leaq 768(%rbp), %rsp
    popq %rbp
    ret
.L8_2:
.L8_3:
    leaq 472(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 192(%rbp), %r10
    movq %r12, (%r10)
    leaq 190(%rbp), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $2, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L8_26
    jmp .L8_27
.L8_27:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_59(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L8_26:
    movq %r13, %r10
    movzwl (%r10), %r14d
    movzwl %r14w, %r14d
    leaq 176(%rbp), %r10
    movl %r14d, (%r10)
.L8_29:
    movzwl %r14w, %r13d
    movl %r13d, %eax
    movq %rax, 8(%rbp)
    movl 8(%rbp), %eax
    movl $2, %ecx
    cmpl %ecx, %eax
    jne .L8_6
.L8_5:
    movl $16, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L8_50
    jmp .L8_11
.L8_50:
    movl %r14d, %ebx
    jmp .L8_12
.L8_11:
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movl $16, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_11family_word
    addq $32, %rsp
    movl %eax, %ebx
    cmpl %ebx, %r13d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L8_12:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L8_8
    jmp .L8_9
.L8_8:
    leaq 488(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_37(%rip), %r13
    leaq 424(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $45, %rax
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
    movq 584(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 584(%rbp), %rax
    movq 760(%rbp), %rdi
    movq 752(%rbp), %rsi
    movdqu 736(%rbp), %xmm6
    movdqu 720(%rbp), %xmm7
    movdqu 704(%rbp), %xmm8
    movdqu 688(%rbp), %xmm9
    movdqu 672(%rbp), %xmm10
    movdqu 656(%rbp), %xmm11
    movdqu 640(%rbp), %xmm12
    movdqu 624(%rbp), %xmm13
    movdqu 608(%rbp), %xmm14
    movdqu 592(%rbp), %xmm15
    movq 576(%rbp), %rbx
    movq 568(%rbp), %r12
    movq 560(%rbp), %r13
    movq 552(%rbp), %r14
    movq 544(%rbp), %r15
    leaq 768(%rbp), %rsp
    popq %rbp
    ret
.L8_9:
.L8_10:
    leaq 408(%rbp), %r14
    leaq 144(%rbp), %r10
    movq %r12, (%r10)
    leaq 128(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $16, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L8_30
    jmp .L8_31
.L8_31:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_59(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L8_30:
    leaq 160(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq 392(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L8_33:
    leaq 392(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 368(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq $4, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_swap32
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    leaq 351(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_IpAddress_9from_ipv4
    addq $32, %rsp
    leaq 351(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movq $2, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    leaq 112(%rbp), %r10
    movl %ebx, (%r10)
    leaq 112(%rbp), %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
.L8_35:
    movl $8, %ecx
    movl %ebx, %r13d
    shll %cl, %r13d
    movzwl %r13w, %r13d
.L8_37:
    movl $8, %ecx
    movl %ebx, %r14d
    shrl %cl, %r14d
    movzwl %r14w, %r14d
    orl %r13d, %r14d
    movzwl %r14w, %r14d
    leaq 104(%rbp), %r10
    movl %r14d, (%r10)
.L8_39:
    movq $18, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movw %r14w, (%r10)
    leaq 488(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 584(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 584(%rbp), %rax
    movq 760(%rbp), %rdi
    movq 752(%rbp), %rsi
    movdqu 736(%rbp), %xmm6
    movdqu 720(%rbp), %xmm7
    movdqu 704(%rbp), %xmm8
    movdqu 688(%rbp), %xmm9
    movdqu 672(%rbp), %xmm10
    movdqu 656(%rbp), %xmm11
    movdqu 640(%rbp), %xmm12
    movdqu 624(%rbp), %xmm13
    movdqu 608(%rbp), %xmm14
    movdqu 592(%rbp), %xmm15
    movq 576(%rbp), %rbx
    movq 568(%rbp), %r12
    movq 560(%rbp), %r13
    movq 552(%rbp), %r14
    movq 544(%rbp), %r15
    leaq 768(%rbp), %rsp
    popq %rbp
    ret
.L8_6:
.L8_7:
    movl 8(%rbp), %eax
    movl $23, %ecx
    cmpl %ecx, %eax
    jne .L8_16
.L8_15:
    movl $28, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L8_51
    jmp .L8_21
.L8_51:
    movl %r14d, %ebx
    jmp .L8_22
.L8_21:
    subq $32, %rsp
    movl $23, %eax
    movq %rax, 0(%rsp)
    movl $28, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_11family_word
    addq $32, %rsp
    movl %eax, %ebx
    cmpl %ebx, %r13d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L8_22:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L8_18
    jmp .L8_19
.L8_18:
    leaq 488(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_38(%rip), %r13
    leaq 328(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $45, %rax
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
    movq 584(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 584(%rbp), %rax
    movq 760(%rbp), %rdi
    movq 752(%rbp), %rsi
    movdqu 736(%rbp), %xmm6
    movdqu 720(%rbp), %xmm7
    movdqu 704(%rbp), %xmm8
    movdqu 688(%rbp), %xmm9
    movdqu 672(%rbp), %xmm10
    movdqu 656(%rbp), %xmm11
    movdqu 640(%rbp), %xmm12
    movdqu 624(%rbp), %xmm13
    movdqu 608(%rbp), %xmm14
    movdqu 592(%rbp), %xmm15
    movq 576(%rbp), %rbx
    movq 568(%rbp), %r12
    movq 560(%rbp), %r13
    movq 552(%rbp), %r14
    movq 544(%rbp), %r15
    leaq 768(%rbp), %rsp
    popq %rbp
    ret
.L8_19:
.L8_20:
    leaq 300(%rbp), %r14
    leaq 56(%rbp), %r10
    movq %r12, (%r10)
    leaq 28(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $28, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L8_40
    jmp .L8_41
.L8_41:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_59(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L8_40:
    leaq 76(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %r10
    leaq 272(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
.L8_43:
    leaq 272(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    leaq 248(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 231(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movb $0, 16(%r11)
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movq $2, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    leaq 112(%rbp), %r10
    movl %ebx, (%r10)
    leaq 112(%rbp), %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
.L8_45:
    movl $8, %ecx
    movl %ebx, %r12d
    shll %cl, %r12d
    movzwl %r12w, %r12d
.L8_47:
    movl $8, %ecx
    movl %ebx, %r13d
    shrl %cl, %r13d
    movzwl %r13w, %r13d
    orl %r12d, %r13d
    movzwl %r13w, %r13d
    leaq 16(%rbp), %r10
    movl %r13d, (%r10)
.L8_49:
    movq $18, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movw %r13w, (%r10)
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movq $20, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    leaq 488(%rbp), %rbx
    movq %r15, %r10
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
    movq 584(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 584(%rbp), %rax
    movq 760(%rbp), %rdi
    movq 752(%rbp), %rsi
    movdqu 736(%rbp), %xmm6
    movdqu 720(%rbp), %xmm7
    movdqu 704(%rbp), %xmm8
    movdqu 688(%rbp), %xmm9
    movdqu 672(%rbp), %xmm10
    movdqu 656(%rbp), %xmm11
    movdqu 640(%rbp), %xmm12
    movdqu 624(%rbp), %xmm13
    movdqu 608(%rbp), %xmm14
    movdqu 592(%rbp), %xmm15
    movq 576(%rbp), %rbx
    movq 568(%rbp), %r12
    movq 560(%rbp), %r13
    movq 552(%rbp), %r14
    movq 544(%rbp), %r15
    leaq 768(%rbp), %rsp
    popq %rbp
    ret
.L8_16:
.L8_17:
    leaq 488(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_39(%rip), %r13
    leaq 208(%rbp), %r14
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
    movq 584(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 584(%rbp), %rax
    movq 760(%rbp), %rdi
    movq 752(%rbp), %rsi
    movdqu 736(%rbp), %xmm6
    movdqu 720(%rbp), %xmm7
    movdqu 704(%rbp), %xmm8
    movdqu 688(%rbp), %xmm9
    movdqu 672(%rbp), %xmm10
    movdqu 656(%rbp), %xmm11
    movdqu 640(%rbp), %xmm12
    movdqu 624(%rbp), %xmm13
    movdqu 608(%rbp), %xmm14
    movdqu 592(%rbp), %xmm15
    movq 576(%rbp), %rbx
    movq 568(%rbp), %r12
    movq 560(%rbp), %r13
    movq 552(%rbp), %r14
    movq 544(%rbp), %r15
    leaq 768(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_21parse_endpoint_number
lb_net_21parse_endpoint_number:
    .seh_proc lb_net_21parse_endpoint_number
    pushq %rbp
    .seh_pushreg %rbp
    subq $336, %rsp
    .seh_stackalloc 336
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 328(%rbp)
    .seh_savereg %rdi, 328
    movq %rsi, 320(%rbp)
    .seh_savereg %rsi, 320
    movdqu %xmm6, 304(%rbp)
    .seh_savexmm %xmm6, 304
    movdqu %xmm7, 288(%rbp)
    .seh_savexmm %xmm7, 288
    movdqu %xmm8, 272(%rbp)
    .seh_savexmm %xmm8, 272
    movdqu %xmm9, 256(%rbp)
    .seh_savexmm %xmm9, 256
    movdqu %xmm10, 240(%rbp)
    .seh_savexmm %xmm10, 240
    movdqu %xmm11, 224(%rbp)
    .seh_savexmm %xmm11, 224
    movdqu %xmm12, 208(%rbp)
    .seh_savexmm %xmm12, 208
    movdqu %xmm13, 192(%rbp)
    .seh_savexmm %xmm13, 192
    movdqu %xmm14, 176(%rbp)
    .seh_savexmm %xmm14, 176
    movdqu %xmm15, 160(%rbp)
    .seh_savexmm %xmm15, 160
    movq %rbx, 152(%rbp)
    .seh_savereg %rbx, 152
    movq %r12, 144(%rbp)
    .seh_savereg %r12, 144
    movq %r13, 136(%rbp)
    .seh_savereg %r13, 136
    movq %r14, 128(%rbp)
    .seh_savereg %r14, 128
    movq %r15, 120(%rbp)
    .seh_savereg %r15, 120
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 352(%rbp), %r10
    leaq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 360(%rbp), %rax
    movl %eax, 80(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 96(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L9_26
    jmp .L9_4
.L9_26:
    movl %r13d, %r14d
    jmp .L9_5
.L9_4:
    leaq 64(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 24(%rbp), %rax
    cmpq %r13, %rax
    seta %al
    movzbl %al, %r14d
.L9_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L9_1
    jmp .L9_2
.L9_1:
    leaq 56(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq 112(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 328(%rbp), %rdi
    movq 320(%rbp), %rsi
    movdqu 304(%rbp), %xmm6
    movdqu 288(%rbp), %xmm7
    movdqu 272(%rbp), %xmm8
    movdqu 256(%rbp), %xmm9
    movdqu 240(%rbp), %xmm10
    movdqu 224(%rbp), %xmm11
    movdqu 208(%rbp), %xmm12
    movdqu 192(%rbp), %xmm13
    movdqu 176(%rbp), %xmm14
    movdqu 160(%rbp), %xmm15
    movq 152(%rbp), %rbx
    movq 144(%rbp), %r12
    movq 136(%rbp), %r13
    movq 128(%rbp), %r14
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L9_2:
.L9_3:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    leaq 80(%rbp), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl $0, %eax
    movl %eax, 8(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L9_7:
    movq 24(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L9_10
.L9_8:
    movq 16(%rbp), %rax
    movq %rax, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    movl $48, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L9_27
    jmp .L9_14
.L9_27:
    movl %r12d, %r13d
    jmp .L9_15
.L9_14:
    movl $57, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %r13d
.L9_15:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L9_11
    jmp .L9_12
.L9_11:
    leaq 48(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq 112(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 328(%rbp), %rdi
    movq 320(%rbp), %rsi
    movdqu 304(%rbp), %xmm6
    movdqu 288(%rbp), %xmm7
    movdqu 272(%rbp), %xmm8
    movdqu 256(%rbp), %xmm9
    movdqu 240(%rbp), %xmm10
    movdqu 224(%rbp), %xmm11
    movdqu 208(%rbp), %xmm12
    movdqu 192(%rbp), %xmm13
    movdqu 176(%rbp), %xmm14
    movdqu 160(%rbp), %xmm15
    movq 152(%rbp), %rbx
    movq 144(%rbp), %r12
    movq 136(%rbp), %r13
    movq 128(%rbp), %r14
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L9_12:
.L9_13:
    movl $48, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L9_17
.L9_18:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_17:
    movl %r13d, %ebx
    movl %r14d, %eax
    movl %ebx, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
.L9_23:
    movl $10, %ecx
    movl %r12d, %eax
    xorl %edx, %edx
    divl %ecx
    movl %eax, %r13d
    movl 8(%rbp), %eax
    cmpl %r13d, %eax
    jbe .L9_20
.L9_19:
    leaq 40(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq 112(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 328(%rbp), %rdi
    movq 320(%rbp), %rsi
    movdqu 304(%rbp), %xmm6
    movdqu 288(%rbp), %xmm7
    movdqu 272(%rbp), %xmm8
    movdqu 256(%rbp), %xmm9
    movdqu 240(%rbp), %xmm10
    movdqu 224(%rbp), %xmm11
    movdqu 208(%rbp), %xmm12
    movdqu 192(%rbp), %xmm13
    movdqu 176(%rbp), %xmm14
    movdqu 160(%rbp), %xmm15
    movq 152(%rbp), %rbx
    movq 144(%rbp), %r12
    movq 136(%rbp), %r13
    movq 128(%rbp), %r14
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L9_20:
.L9_21:
    movl 8(%rbp), %eax
    movl $10, %ecx
    mull %ecx
    jnc 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    movl %ebx, %eax
    movl %r12d, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
.L9_9:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl %r12d, %eax
    movl %eax, 8(%rbp)
    movq %rbx, %r15
    jmp .L9_7
.L9_10:
    leaq 32(%rbp), %rbx
    movl 8(%rbp), %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 112(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 328(%rbp), %rdi
    movq 320(%rbp), %rsi
    movdqu 304(%rbp), %xmm6
    movdqu 288(%rbp), %xmm7
    movdqu 272(%rbp), %xmm8
    movdqu 256(%rbp), %xmm9
    movdqu 240(%rbp), %xmm10
    movdqu 224(%rbp), %xmm11
    movdqu 208(%rbp), %xmm12
    movdqu 192(%rbp), %xmm13
    movdqu 176(%rbp), %xmm14
    movdqu 160(%rbp), %xmm15
    movq 152(%rbp), %rbx
    movq 144(%rbp), %r12
    movq 136(%rbp), %r13
    movq 128(%rbp), %r14
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_22render_endpoint_number
lb_net_22render_endpoint_number:
    .seh_proc lb_net_22render_endpoint_number
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
    movl %eax, 72(%rbp)
    movq 328(%rbp), %r10
    leaq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 336(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 24(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r11
    movq $0, 0(%r11)
    movw $0, 8(%r11)
    leaq 72(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq $0, %rax
    movq %rax, %r13
.L10_1:
.L10_2:
    movq $10, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 16(%rbp), %rax
    movq %rax, %r14
    addq %r13, %r14
.L10_5:
    movl $10, %ecx
    movl %r12d, %eax
    xorl %edx, %edx
    divl %ecx
    movl %edx, %r15d
    movl %r15d, %r15d
    movzbl %r15b, %r15d
    movl $48, %ecx
    movl %r15d, %ebx
    addl %ecx, %ebx
    movzbl %bl, %r15d
    cmpl %ebx, %r15d
    je .L10_6
.L10_7:
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L10_6:
    movq %r14, %r10
    movb %bl, (%r10)
    movq $1, %rcx
    movq %r13, %r15
    addq %rcx, %r15
.L10_9:
    movl $10, %ecx
    movl %r12d, %eax
    xorl %edx, %edx
    divl %ecx
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L10_11
.L10_10:
    movq %r15, %rbx
    jmp .L10_3
.L10_11:
.L10_12:
    movq %r15, %r13
    movl %ebx, %r12d
    jmp .L10_1
.L10_3:
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 56(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r15
.L10_14:
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L10_16
.L10_15:
    movq %r15, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 8(%rbp)
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r14, %rax
    addq %r12, %rax
    movq %rax, 0(%rbp)
    movq 8(%rbp), %rax
    movq $10, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 16(%rbp), %rax
    movq 8(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq 0(%rbp), %r10
    movb %bl, (%r10)
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %rax
    movq %rax, %r15
    movq %rbx, %r12
    jmp .L10_14
.L10_16:
    movq %r12, %rax
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
    .globl lb_net_swap32
lb_net_swap32:
    .seh_proc lb_net_swap32
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
    movq %r12, 32(%rbp)
    .seh_savereg %r12, 32
    movq %r13, 24(%rbp)
    .seh_savereg %r13, 24
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movl %eax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
.L11_2:
    movl $24, %ecx
    movl %ebx, %r12d
    shll %cl, %r12d
.L11_4:
    movl $8, %ecx
    movl %ebx, %r13d
    shll %cl, %r13d
    movl $16711680, %ecx
    andl %ecx, %r13d
    orl %r12d, %r13d
.L11_6:
    movl $8, %ecx
    movl %ebx, %r12d
    shrl %cl, %r12d
    movl $65280, %ecx
    andl %ecx, %r12d
    orl %r13d, %r12d
.L11_8:
    movl $24, %ecx
    movl %ebx, %r13d
    shrl %cl, %r13d
    orl %r12d, %r13d
    movl %r13d, %eax
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
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .text$lb_memory_move_0g1_u8,"xr"
    .p2align 4
    .globl lb_memory_move_0g1_u8
lb_memory_move_0g1_u8:
    .seh_proc lb_memory_move_0g1_u8
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
    jne .L12_11
    jmp .L12_4
.L12_11:
    movl %r13d, %r14d
    jmp .L12_5
.L12_4:
    leaq 32(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L12_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L12_1
    jmp .L12_2
.L12_1:
    leaq .Ltext_11(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_57(%rip), %r13
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
    jmp .L12_3
.L12_2:
.L12_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L12_7
.L12_6:
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
    call memmove
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L12_9
    jmp .L12_10
.L12_10:
    leaq .Ltext_58(%rip), %rdi
    leaq .Ltext_59(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L12_9:
    jmp .L12_8
.L12_7:
.L12_8:
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

    .section .text$lb_memory_read_0g1_u16,"xr"
    .p2align 4
    .globl lb_memory_read_0g1_u16
lb_memory_read_0g1_u16:
    .seh_proc lb_memory_read_0g1_u16
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
    movq %r12, 32(%rbp)
    .seh_savereg %r12, 32
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 14(%rbp), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $2, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L13_1
    jmp .L13_2
.L13_2:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_59(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L13_1:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movzwl %r12w, %r12d
    movl %r12d, %eax
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
    movq 32(%rbp), %r12
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L13_3:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .text

    .section .text$lb_memory_read_0g1_net_NativeIpv4Address,"xr"
    .p2align 4
    .globl lb_memory_read_0g1_net_NativeIpv4Address
lb_memory_read_0g1_net_NativeIpv4Address:
    .seh_proc lb_memory_read_0g1_net_NativeIpv4Address
    pushq %rbp
    .seh_pushreg %rbp
    subq $256, %rsp
    .seh_stackalloc 256
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 72(%rbp)
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
    movq %rbx, 64(%rbp)
    .seh_savereg %rbx, 64
    movq %r12, 56(%rbp)
    .seh_savereg %r12, 56
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    movq 280(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 8(%rbp), %rbx
    leaq 24(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $16, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L14_1
    jmp .L14_2
.L14_2:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_59(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L14_1:
    leaq 40(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 72(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 72(%rbp), %rax
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
    movq 64(%rbp), %rbx
    movq 56(%rbp), %r12
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
.L14_3:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .text

    .section .text$lb_memory_read_0g1_net_NativeIpv6Address,"xr"
    .p2align 4
    .globl lb_memory_read_0g1_net_NativeIpv6Address
lb_memory_read_0g1_net_NativeIpv6Address:
    .seh_proc lb_memory_read_0g1_net_NativeIpv6Address
    pushq %rbp
    .seh_pushreg %rbp
    subq $288, %rsp
    .seh_stackalloc 288
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 104(%rbp)
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
    movq %rbx, 96(%rbp)
    .seh_savereg %rbx, 96
    movq %r12, 88(%rbp)
    .seh_savereg %r12, 88
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 312(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 12(%rbp), %rbx
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $28, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L15_1
    jmp .L15_2
.L15_2:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_59(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L15_1:
    leaq 60(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq 104(%rbp), %rdi
    movq $28, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 104(%rbp), %rax
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
    movq 96(%rbp), %rbx
    movq 88(%rbp), %r12
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L15_3:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .text

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_net_address_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/net/address.lucb:13:9"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/net/address.lucb:14:9"
.Ltext_3:
    .asciz "src/std/net/address.lucb:17:9"
.Ltext_4:
    .asciz "src/std/net/address.lucb:29:9"
.Ltext_5:
    .asciz "src/std/net/address.lucb:33:13"
.Ltext_6:
    .asciz "src/std/net/address.lucb:34:17"
.Ltext_7:
    .asciz "src/std/net/address.lucb:35:13"
.Ltext_8:
    .asciz "src/std/net/address.lucb:38:13"
.Ltext_9:
    .asciz "src/std/net/address.lucb:41:17"
.Ltext_10:
    .asciz "src/std/net/address.lucb:43:21"
.Ltext_11:
    .asciz "index out of bounds"
.Ltext_12:
    .asciz "src/std/net/address.lucb:46:17"
.Ltext_13:
    .asciz "src/std/net/address.lucb:48:13"
.Ltext_14:
    .asciz "src/std/net/address.lucb:49:17"
.Ltext_15:
    .asciz "src/std/net/address.lucb:52:13"
.Ltext_16:
    .asciz "src/std/net/address.lucb:53:9"
.Ltext_17:
    .asciz "src/std/net/address.lucb:56:9"
.Ltext_18:
    .asciz "src/std/net/address.lucb:57:9"
.Ltext_19:
    .asciz "src/std/net/address.lucb:60:9"
.Ltext_20:
    .asciz "src/std/net/address.lucb:70:13"
.Ltext_21:
    .asciz "src/std/net/address.lucb:71:13"
.Ltext_22:
    .asciz "src/std/net/address.lucb:72:13"
.Ltext_23:
    .asciz "src/std/net/address.lucb:74:17"
.Ltext_24:
    .asciz "src/std/net/address.lucb:75:17"
.Ltext_25:
    .asciz "src/std/net/address.lucb:76:13"
.Ltext_26:
    .asciz "src/std/net/address.lucb:77:13"
.Ltext_27:
    .asciz "src/std/net/address.lucb:79:13"
.Ltext_28:
    .asciz "src/std/net/address.lucb:81:9"
.Ltext_29:
    .asciz "src/std/net/address.lucb:82:9"
.Ltext_30:
    .asciz "the destination cannot hold the formatted socket address"
.Ltext_31:
    .asciz "src/std/net/address.lucb:86:9"
.Ltext_32:
    .asciz "unknown IP address version"
.Ltext_33:
    .asciz "IPv4 endpoints cannot have an interface scope"
.Ltext_34:
    .asciz "IPv4 address bits are missing"
.Ltext_35:
    .asciz "src/std/net/address.lucb:101:9"
.Ltext_36:
    .asciz "the socket address is shorter than its family field"
.Ltext_37:
    .asciz "the IPv4 socket address has an invalid layout"
.Ltext_38:
    .asciz "the IPv6 socket address has an invalid layout"
.Ltext_39:
    .asciz "the socket address is not IPv4 or IPv6"
.Ltext_40:
    .asciz "src/std/net/address.lucb:118:5"
.Ltext_41:
    .asciz "integer overflow"
.Ltext_42:
    .asciz "src/std/net/address.lucb:127:9"
.Ltext_43:
    .asciz "src/std/net/address.lucb:128:9"
.Ltext_44:
    .asciz "division by zero"
.Ltext_45:
    .asciz "src/std/net/address.lucb:130:9"
.Ltext_46:
    .asciz "src/std/net/address.lucb:131:5"
.Ltext_47:
    .asciz "src/std/net/address.lucb:138:9"
.Ltext_48:
    .asciz "src/std/net/address.lucb:139:9"
.Ltext_49:
    .asciz "src/std/net/address.lucb:140:9"
.Ltext_50:
    .asciz "src/std/net/address.lucb:145:9"
.Ltext_51:
    .asciz "src/std/net/address.lucb:146:9"
.Ltext_52:
    .asciz "src/std/net/address.lucb:147:9"
.Ltext_53:
    .asciz "src/std/net/address.lucb:148:5"
.Ltext_54:
    .asciz "shift count out of range"
.Ltext_55:
    .asciz "src/std/net/address.lucb:152:5"
.Ltext_56:
    .asciz "src/std/net/address.lucb:155:5"
.Ltext_57:
    .asciz "src/std/memory.lucb:334:9"
.Ltext_58:
    .asciz "src/std/memory.lucb:336:9"
.Ltext_59:
    .asciz "null_foreign"
.Ltext_60:
    .asciz "src/std/memory.lucb:344:5"
.Ltext_61:
    .asciz "src/std/memory.lucb:345:5"

    .section .rdata,"dr"
    .p2align 3
