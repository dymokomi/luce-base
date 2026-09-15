    .weak lb_memory_copy_0g1_u8
    .text

    .p2align 4
    .globl lb_clipboard_14windows_native_0init
lb_clipboard_14windows_native_0init:
    .seh_proc lb_clipboard_14windows_native_0init
    pushq %rbp
    .seh_pushreg %rbp
    subq $192, %rsp
    .seh_stackalloc 192
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 184(%rbp)
    .seh_savereg %rdi, 184
    movq %rsi, 176(%rbp)
    .seh_savereg %rsi, 176
    movdqu %xmm6, 160(%rbp)
    .seh_savexmm %xmm6, 160
    movdqu %xmm7, 144(%rbp)
    .seh_savexmm %xmm7, 144
    movdqu %xmm8, 128(%rbp)
    .seh_savexmm %xmm8, 128
    movdqu %xmm9, 112(%rbp)
    .seh_savexmm %xmm9, 112
    movdqu %xmm10, 96(%rbp)
    .seh_savexmm %xmm10, 96
    movdqu %xmm11, 80(%rbp)
    .seh_savexmm %xmm11, 80
    movdqu %xmm12, 64(%rbp)
    .seh_savexmm %xmm12, 64
    movdqu %xmm13, 48(%rbp)
    .seh_savexmm %xmm13, 48
    movdqu %xmm14, 32(%rbp)
    .seh_savexmm %xmm14, 32
    movdqu %xmm15, 16(%rbp)
    .seh_savexmm %xmm15, 16
    movq %rbx, 8(%rbp)
    .seh_savereg %rbx, 8
    .seh_endprologue
    movq %rcx, 208(%rbp)
    movq %rdx, 216(%rbp)
    movq %r8, 224(%rbp)
    movq %r9, 232(%rbp)
    leaq lb_clipboard_12unicode_text(%rip), %rbx
    movl $13, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq 184(%rbp), %rdi
    movq 176(%rbp), %rsi
    movdqu 160(%rbp), %xmm6
    movdqu 144(%rbp), %xmm7
    movdqu 128(%rbp), %xmm8
    movdqu 112(%rbp), %xmm9
    movdqu 96(%rbp), %xmm10
    movdqu 80(%rbp), %xmm11
    movdqu 64(%rbp), %xmm12
    movdqu 48(%rbp), %xmm13
    movdqu 32(%rbp), %xmm14
    movdqu 16(%rbp), %xmm15
    movq 8(%rbp), %rbx
    leaq 192(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_clipboard_8win_read
lb_clipboard_8win_read:
    .seh_proc lb_clipboard_8win_read
    pushq %rbp
    .seh_pushreg %rbp
    subq $752, %rsp
    .seh_stackalloc 752
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 568(%rbp)
    movq %rdi, 744(%rbp)
    .seh_savereg %rdi, 744
    movq %rsi, 736(%rbp)
    .seh_savereg %rsi, 736
    movdqu %xmm6, 720(%rbp)
    .seh_savexmm %xmm6, 720
    movdqu %xmm7, 704(%rbp)
    .seh_savexmm %xmm7, 704
    movdqu %xmm8, 688(%rbp)
    .seh_savexmm %xmm8, 688
    movdqu %xmm9, 672(%rbp)
    .seh_savexmm %xmm9, 672
    movdqu %xmm10, 656(%rbp)
    .seh_savexmm %xmm10, 656
    movdqu %xmm11, 640(%rbp)
    .seh_savexmm %xmm11, 640
    movdqu %xmm12, 624(%rbp)
    .seh_savexmm %xmm12, 624
    movdqu %xmm13, 608(%rbp)
    .seh_savexmm %xmm13, 608
    movdqu %xmm14, 592(%rbp)
    .seh_savexmm %xmm14, 592
    movdqu %xmm15, 576(%rbp)
    .seh_savexmm %xmm15, 576
    movq %rbx, 560(%rbp)
    .seh_savereg %rbx, 560
    movq %r12, 552(%rbp)
    .seh_savereg %r12, 552
    movq %r13, 544(%rbp)
    .seh_savereg %r13, 544
    movq %r14, 536(%rbp)
    .seh_savereg %r14, 536
    movq %r15, 528(%rbp)
    .seh_savereg %r15, 528
    .seh_endprologue
    movq %rcx, 768(%rbp)
    movq %rdx, 776(%rbp)
    movq %r8, 784(%rbp)
    movq %r9, 792(%rbp)
    subq $32, %rsp
    call GetActiveWindow
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call OpenClipboard
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_2
.L1_1:
    leaq 472(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq 456(%rbp), %r14
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
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 568(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 568(%rbp), %rax
    movq 744(%rbp), %rdi
    movq 736(%rbp), %rsi
    movdqu 720(%rbp), %xmm6
    movdqu 704(%rbp), %xmm7
    movdqu 688(%rbp), %xmm8
    movdqu 672(%rbp), %xmm9
    movdqu 656(%rbp), %xmm10
    movdqu 640(%rbp), %xmm11
    movdqu 624(%rbp), %xmm12
    movdqu 608(%rbp), %xmm13
    movdqu 592(%rbp), %xmm14
    movdqu 576(%rbp), %xmm15
    movq 560(%rbp), %rbx
    movq 552(%rbp), %r12
    movq 544(%rbp), %r13
    movq 536(%rbp), %r14
    movq 528(%rbp), %r15
    leaq 752(%rbp), %rsp
    popq %rbp
    ret
.L1_2:
.L1_3:
    leaq lb_clipboard_12unicode_text(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call IsClipboardFormatAvailable
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_6
.L1_5:
    leaq .Ltext_1(%rip), %rbx
    leaq 440(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 384(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_interop_9copy_text
    addq $48, %rsp
    leaq 384(%rbp), %r12
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_9
    jmp .L1_8
.L1_9:
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 472(%rbp), %r13
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
    subq $32, %rsp
    call CloseClipboard
    addq $32, %rsp
    movl %eax, %ebx
    movq %r13, %rsi
    movq 568(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 568(%rbp), %rax
    movq 744(%rbp), %rdi
    movq 736(%rbp), %rsi
    movdqu 720(%rbp), %xmm6
    movdqu 704(%rbp), %xmm7
    movdqu 688(%rbp), %xmm8
    movdqu 672(%rbp), %xmm9
    movdqu 656(%rbp), %xmm10
    movdqu 640(%rbp), %xmm11
    movdqu 624(%rbp), %xmm12
    movdqu 608(%rbp), %xmm13
    movdqu 592(%rbp), %xmm14
    movdqu 576(%rbp), %xmm15
    movq 560(%rbp), %rbx
    movq 552(%rbp), %r12
    movq 544(%rbp), %r13
    movq 536(%rbp), %r14
    movq 528(%rbp), %r15
    leaq 752(%rbp), %rsp
    popq %rbp
    ret
.L1_8:
    leaq 472(%rbp), %rbx
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
    subq $32, %rsp
    call CloseClipboard
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 568(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 568(%rbp), %rax
    movq 744(%rbp), %rdi
    movq 736(%rbp), %rsi
    movdqu 720(%rbp), %xmm6
    movdqu 704(%rbp), %xmm7
    movdqu 688(%rbp), %xmm8
    movdqu 672(%rbp), %xmm9
    movdqu 656(%rbp), %xmm10
    movdqu 640(%rbp), %xmm11
    movdqu 624(%rbp), %xmm12
    movdqu 608(%rbp), %xmm13
    movdqu 592(%rbp), %xmm14
    movdqu 576(%rbp), %xmm15
    movq 560(%rbp), %rbx
    movq 552(%rbp), %r12
    movq 544(%rbp), %r13
    movq 536(%rbp), %r14
    movq 528(%rbp), %r15
    leaq 752(%rbp), %rsp
    popq %rbp
    ret
.L1_6:
.L1_7:
    movq %rbx, %r10
    movl (%r10), %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetClipboardData
    addq $32, %rsp
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    testq %rax, %rax
    jne .L1_12
    jmp .L1_13
.L1_12:
    jmp .L1_14
.L1_13:
    leaq 472(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq 368(%rbp), %r14
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
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    call CloseClipboard
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 568(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 568(%rbp), %rax
    movq 744(%rbp), %rdi
    movq 736(%rbp), %rsi
    movdqu 720(%rbp), %xmm6
    movdqu 704(%rbp), %xmm7
    movdqu 688(%rbp), %xmm8
    movdqu 672(%rbp), %xmm9
    movdqu 656(%rbp), %xmm10
    movdqu 640(%rbp), %xmm11
    movdqu 624(%rbp), %xmm12
    movdqu 608(%rbp), %xmm13
    movdqu 592(%rbp), %xmm14
    movdqu 576(%rbp), %xmm15
    movq 560(%rbp), %rbx
    movq 552(%rbp), %r12
    movq 544(%rbp), %r13
    movq 536(%rbp), %r14
    movq 528(%rbp), %r15
    leaq 752(%rbp), %rsp
    popq %rbp
    ret
.L1_14:
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalSize
    addq $32, %rsp
    movq %rax, %rbx
.L1_17:
    movq $2, %rcx
    movq %rbx, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, 64(%rbp)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalLock
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L1_18
    jmp .L1_19
.L1_18:
    jmp .L1_20
.L1_19:
    leaq 472(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_5(%rip), %r13
    leaq 352(%rbp), %r14
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
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    call CloseClipboard
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 568(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 568(%rbp), %rax
    movq 744(%rbp), %rdi
    movq 736(%rbp), %rsi
    movdqu 720(%rbp), %xmm6
    movdqu 704(%rbp), %xmm7
    movdqu 688(%rbp), %xmm8
    movdqu 672(%rbp), %xmm9
    movdqu 656(%rbp), %xmm10
    movdqu 640(%rbp), %xmm11
    movdqu 624(%rbp), %xmm12
    movdqu 608(%rbp), %xmm13
    movdqu 592(%rbp), %xmm14
    movdqu 576(%rbp), %xmm15
    movq 560(%rbp), %rbx
    movq 552(%rbp), %r12
    movq 544(%rbp), %r13
    movq 536(%rbp), %r14
    movq 528(%rbp), %r15
    leaq 752(%rbp), %rsp
    popq %rbp
    ret
.L1_20:
    leaq lb_clipboard_10text_limit(%rip), %rbx
    movq $0, %rax
    movq %rax, %r15
.L1_22:
    movq 64(%rbp), %rcx
    cmpq %rcx, %r15
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_25
    jmp .L1_54
.L1_54:
    movl %r12d, %r13d
    jmp .L1_26
.L1_25:
    movq %rbx, %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    setbe %al
    movzbl %al, %r13d
.L1_26:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_27
    jmp .L1_55
.L1_55:
    movl %r12d, %r13d
    jmp .L1_28
.L1_27:
    movq $2, %rcx
    movq %r15, %r12
    imulq %rcx, %r12
    addq %r14, %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L1_28:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_23
    jmp .L1_24
.L1_23:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %r15
    jmp .L1_22
.L1_24:
    movq 64(%rbp), %rax
    cmpq %r15, %rax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_56
    jmp .L1_32
.L1_56:
    movl %ebx, %r12d
    jmp .L1_33
.L1_32:
    leaq lb_clipboard_10text_limit(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r15
    seta %al
    movzbl %al, %r12d
.L1_33:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_29
    jmp .L1_30
.L1_29:
    leaq 472(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq 336(%rbp), %r14
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
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalUnlock
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    call CloseClipboard
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 568(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 568(%rbp), %rax
    movq 744(%rbp), %rdi
    movq 736(%rbp), %rsi
    movdqu 720(%rbp), %xmm6
    movdqu 704(%rbp), %xmm7
    movdqu 688(%rbp), %xmm8
    movdqu 672(%rbp), %xmm9
    movdqu 656(%rbp), %xmm10
    movdqu 640(%rbp), %xmm11
    movdqu 624(%rbp), %xmm12
    movdqu 608(%rbp), %xmm13
    movdqu 592(%rbp), %xmm14
    movdqu 576(%rbp), %xmm15
    movq 560(%rbp), %rbx
    movq 552(%rbp), %r12
    movq 544(%rbp), %r13
    movq 536(%rbp), %r14
    movq 528(%rbp), %r15
    leaq 752(%rbp), %rsp
    popq %rbp
    ret
.L1_30:
.L1_31:
    leaq 320(%rbp), %rax
    movq %rax, 56(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r13
    movq %r13, %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 304(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 288(%rbp), %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movq %r15, (%r10)
    leaq lb_clipboard_failed(%rip), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movl (%r10), %ebx
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movl %ebx, %eax
    movq %rax, 16(%rsp)
    leaq 240(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_narrow
    addq $48, %rsp
    leaq 240(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_36
    jmp .L1_35
.L1_36:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 472(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq 56(%rbp), %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalUnlock
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    call CloseClipboard
    addq $32, %rsp
    movl %eax, %ebx
    movq %r14, %rsi
    movq 568(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 568(%rbp), %rax
    movq 744(%rbp), %rdi
    movq 736(%rbp), %rsi
    movdqu 720(%rbp), %xmm6
    movdqu 704(%rbp), %xmm7
    movdqu 688(%rbp), %xmm8
    movdqu 672(%rbp), %xmm9
    movdqu 656(%rbp), %xmm10
    movdqu 640(%rbp), %xmm11
    movdqu 624(%rbp), %xmm12
    movdqu 608(%rbp), %xmm13
    movdqu 592(%rbp), %xmm14
    movdqu 576(%rbp), %xmm15
    movq 560(%rbp), %rbx
    movq 552(%rbp), %r12
    movq 544(%rbp), %r13
    movq 536(%rbp), %r14
    movq 528(%rbp), %r15
    leaq 752(%rbp), %rsp
    popq %rbp
    ret
.L1_35:
    movq %r13, %r10
    movq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r14
    leaq lb_clipboard_10text_limit(%rip), %r15
    movq %r15, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jbe .L1_39
.L1_38:
    leaq 472(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq 32(%rbp), %r10
    movl (%r10), %r15d
    movq %r13, %r10
    movl %r15d, (%r10)
    leaq .Ltext_8(%rip), %r15
    leaq 224(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $28, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq 0(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    leaq 208(%rbp), %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    leaq 192(%rbp), %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 48(%rbp), %r10
    movq (%r10), %r12
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L1_42
    jmp .L1_41
.L1_42:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r15, %r10
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
.L1_41:
    movq 56(%rbp), %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalUnlock
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    call CloseClipboard
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 568(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 568(%rbp), %rax
    movq 744(%rbp), %rdi
    movq 736(%rbp), %rsi
    movdqu 720(%rbp), %xmm6
    movdqu 704(%rbp), %xmm7
    movdqu 688(%rbp), %xmm8
    movdqu 672(%rbp), %xmm9
    movdqu 656(%rbp), %xmm10
    movdqu 640(%rbp), %xmm11
    movdqu 624(%rbp), %xmm12
    movdqu 608(%rbp), %xmm13
    movdqu 592(%rbp), %xmm14
    movdqu 576(%rbp), %xmm15
    movq 560(%rbp), %rbx
    movq 552(%rbp), %r12
    movq 544(%rbp), %r13
    movq 536(%rbp), %r14
    movq 528(%rbp), %r15
    leaq 752(%rbp), %rsp
    popq %rbp
    ret
.L1_39:
.L1_40:
    subq $48, %rsp
    movq 0(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 136(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_interop_9copy_text
    addq $48, %rsp
    leaq 136(%rbp), %r13
    movq $48, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_45
    jmp .L1_44
.L1_45:
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq 472(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 24(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq 0(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    leaq 120(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    leaq 104(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq 48(%rbp), %r10
    movq (%r10), %r12
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L1_47
    jmp .L1_46
.L1_47:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %r10
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
.L1_46:
    movq 56(%rbp), %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalUnlock
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    call CloseClipboard
    addq $32, %rsp
    movl %eax, %ebx
    movq 24(%rbp), %rsi
    movq 568(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 568(%rbp), %rax
    movq 744(%rbp), %rdi
    movq 736(%rbp), %rsi
    movdqu 720(%rbp), %xmm6
    movdqu 704(%rbp), %xmm7
    movdqu 688(%rbp), %xmm8
    movdqu 672(%rbp), %xmm9
    movdqu 656(%rbp), %xmm10
    movdqu 640(%rbp), %xmm11
    movdqu 624(%rbp), %xmm12
    movdqu 608(%rbp), %xmm13
    movdqu 592(%rbp), %xmm14
    movdqu 576(%rbp), %xmm15
    movq 560(%rbp), %rbx
    movq 552(%rbp), %r12
    movq 544(%rbp), %r13
    movq 536(%rbp), %r14
    movq 528(%rbp), %r15
    leaq 752(%rbp), %rsp
    popq %rbp
    ret
.L1_44:
    leaq 472(%rbp), %rax
    movq %rax, 16(%rbp)
    movq %r13, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 16(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq 0(%rbp), %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    leaq 88(%rbp), %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    leaq 72(%rbp), %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq 48(%rbp), %r10
    movq (%r10), %r14
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L1_50
    jmp .L1_49
.L1_50:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r14, %rax
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
.L1_49:
    movq 56(%rbp), %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalUnlock
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    call CloseClipboard
    addq $32, %rsp
    movl %eax, %ebx
    movq 16(%rbp), %rsi
    movq 568(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 568(%rbp), %rax
    movq 744(%rbp), %rdi
    movq 736(%rbp), %rsi
    movdqu 720(%rbp), %xmm6
    movdqu 704(%rbp), %xmm7
    movdqu 688(%rbp), %xmm8
    movdqu 672(%rbp), %xmm9
    movdqu 656(%rbp), %xmm10
    movdqu 640(%rbp), %xmm11
    movdqu 624(%rbp), %xmm12
    movdqu 608(%rbp), %xmm13
    movdqu 592(%rbp), %xmm14
    movdqu 576(%rbp), %xmm15
    movq 560(%rbp), %rbx
    movq 552(%rbp), %r12
    movq 544(%rbp), %r13
    movq 536(%rbp), %r14
    movq 528(%rbp), %r15
    leaq 752(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_clipboard_9win_write
lb_clipboard_9win_write:
    .seh_proc lb_clipboard_9win_write
    pushq %rbp
    .seh_pushreg %rbp
    subq $848, %rsp
    .seh_stackalloc 848
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 664(%rbp)
    movq %rdi, 840(%rbp)
    .seh_savereg %rdi, 840
    movq %rsi, 832(%rbp)
    .seh_savereg %rsi, 832
    movdqu %xmm6, 816(%rbp)
    .seh_savexmm %xmm6, 816
    movdqu %xmm7, 800(%rbp)
    .seh_savexmm %xmm7, 800
    movdqu %xmm8, 784(%rbp)
    .seh_savexmm %xmm8, 784
    movdqu %xmm9, 768(%rbp)
    .seh_savexmm %xmm9, 768
    movdqu %xmm10, 752(%rbp)
    .seh_savexmm %xmm10, 752
    movdqu %xmm11, 736(%rbp)
    .seh_savexmm %xmm11, 736
    movdqu %xmm12, 720(%rbp)
    .seh_savexmm %xmm12, 720
    movdqu %xmm13, 704(%rbp)
    .seh_savexmm %xmm13, 704
    movdqu %xmm14, 688(%rbp)
    .seh_savexmm %xmm14, 688
    movdqu %xmm15, 672(%rbp)
    .seh_savexmm %xmm15, 672
    movq %rbx, 656(%rbp)
    .seh_savereg %rbx, 656
    movq %r12, 648(%rbp)
    .seh_savereg %r12, 648
    movq %r13, 640(%rbp)
    .seh_savereg %r13, 640
    movq %r14, 632(%rbp)
    .seh_savereg %r14, 632
    movq %r15, 624(%rbp)
    .seh_savereg %r15, 624
    .seh_endprologue
    movq %rcx, 864(%rbp)
    movq %rdx, 872(%rbp)
    movq %r8, 880(%rbp)
    movq %r9, 888(%rbp)
    movq 872(%rbp), %r10
    leaq 576(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    call GetActiveWindow
    addq $32, %rsp
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    testq %rax, %rax
    jne .L2_1
    jmp .L2_2
.L2_1:
    jmp .L2_3
.L2_2:
    leaq 592(%rbp), %rbx
    leaq lb_clipboard_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_12(%rip), %r12
    leaq 560(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $55, %rax
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
    movq 664(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 664(%rbp), %rax
    movq 840(%rbp), %rdi
    movq 832(%rbp), %rsi
    movdqu 816(%rbp), %xmm6
    movdqu 800(%rbp), %xmm7
    movdqu 784(%rbp), %xmm8
    movdqu 768(%rbp), %xmm9
    movdqu 752(%rbp), %xmm10
    movdqu 736(%rbp), %xmm11
    movdqu 720(%rbp), %xmm12
    movdqu 704(%rbp), %xmm13
    movdqu 688(%rbp), %xmm14
    movdqu 672(%rbp), %xmm15
    movq 656(%rbp), %rbx
    movq 648(%rbp), %r12
    movq 640(%rbp), %r13
    movq 632(%rbp), %r14
    movq 624(%rbp), %r15
    leaq 848(%rbp), %rsp
    popq %rbp
    ret
.L2_4:
.L2_3:
    leaq 544(%rbp), %rax
    movq %rax, 96(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %r10
    movq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %r10
    movq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 504(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 576(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    leaq 432(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_Builder_create
    addq $32, %rsp
    leaq 432(%rbp), %r14
    movq $64, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L2_6
    jmp .L2_5
.L2_6:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 592(%rbp), %r15
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
    movq 96(%rbp), %r10
    movq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r15, %rsi
    movq 664(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 664(%rbp), %rax
    movq 840(%rbp), %rdi
    movq 832(%rbp), %rsi
    movdqu 816(%rbp), %xmm6
    movdqu 800(%rbp), %xmm7
    movdqu 784(%rbp), %xmm8
    movdqu 768(%rbp), %xmm9
    movdqu 752(%rbp), %xmm10
    movdqu 736(%rbp), %xmm11
    movdqu 720(%rbp), %xmm12
    movdqu 704(%rbp), %xmm13
    movdqu 688(%rbp), %xmm14
    movdqu 672(%rbp), %xmm15
    movq 656(%rbp), %rbx
    movq 648(%rbp), %r12
    movq 640(%rbp), %r13
    movq 632(%rbp), %r14
    movq 624(%rbp), %r15
    leaq 848(%rbp), %rsp
    popq %rbp
    ret
.L2_7:
.L2_5:
    movq %r14, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    subq $48, %rsp
    movq 16(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 72(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 400(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_Builder_put
    addq $48, %rsp
    leaq 400(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L2_9
    jmp .L2_8
.L2_9:
    leaq 592(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 96(%rbp), %r10
    movq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %rsi
    movq 664(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 664(%rbp), %rax
    movq 840(%rbp), %rdi
    movq 832(%rbp), %rsi
    movdqu 816(%rbp), %xmm6
    movdqu 800(%rbp), %xmm7
    movdqu 784(%rbp), %xmm8
    movdqu 768(%rbp), %xmm9
    movdqu 752(%rbp), %xmm10
    movdqu 736(%rbp), %xmm11
    movdqu 720(%rbp), %xmm12
    movdqu 704(%rbp), %xmm13
    movdqu 688(%rbp), %xmm14
    movdqu 672(%rbp), %xmm15
    movq 656(%rbp), %rbx
    movq 648(%rbp), %r12
    movq 640(%rbp), %r13
    movq 632(%rbp), %r14
    movq 624(%rbp), %r15
    leaq 848(%rbp), %rsp
    popq %rbp
    ret
.L2_10:
.L2_8:
    leaq 384(%rbp), %rax
    movq %rax, 8(%rbp)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 368(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_Builder_view
    addq $32, %rsp
    leaq 368(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq lb_clipboard_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r15d
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl %r15d, %eax
    movq %rax, 16(%rsp)
    leaq 320(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_wide
    addq $32, %rsp
    leaq 320(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_12
    jmp .L2_11
.L2_12:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 592(%rbp), %r14
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
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 96(%rbp), %r10
    movq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %rsi
    movq 664(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 664(%rbp), %rax
    movq 840(%rbp), %rdi
    movq 832(%rbp), %rsi
    movdqu 816(%rbp), %xmm6
    movdqu 800(%rbp), %xmm7
    movdqu 784(%rbp), %xmm8
    movdqu 768(%rbp), %xmm9
    movdqu 752(%rbp), %xmm10
    movdqu 736(%rbp), %xmm11
    movdqu 720(%rbp), %xmm12
    movdqu 704(%rbp), %xmm13
    movdqu 688(%rbp), %xmm14
    movdqu 672(%rbp), %xmm15
    movq 656(%rbp), %rbx
    movq 648(%rbp), %r12
    movq 640(%rbp), %r13
    movq 632(%rbp), %r14
    movq 624(%rbp), %r15
    leaq 848(%rbp), %rsp
    popq %rbp
    ret
.L2_13:
.L2_11:
    movq %r15, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 64(%rbp)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GlobalAlloc
    addq $32, %rsp
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    testq %rax, %rax
    jne .L2_14
    jmp .L2_15
.L2_14:
    jmp .L2_16
.L2_15:
    leaq 592(%rbp), %rax
    movq %rax, 56(%rbp)
    movq %r14, %r10
    movl (%r10), %r15d
    movq 56(%rbp), %r10
    movl %r15d, (%r10)
    leaq .Ltext_14(%rip), %r15
    leaq 304(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $36, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 56(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 288(%rbp), %r13
    movq 8(%rbp), %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq 64(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq 88(%rbp), %r10
    movq (%r10), %r15
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L2_18
    jmp .L2_17
.L2_18:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r15, %rax
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
.L2_17:
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 96(%rbp), %r10
    movq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 56(%rbp), %rsi
    movq 664(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 664(%rbp), %rax
    movq 840(%rbp), %rdi
    movq 832(%rbp), %rsi
    movdqu 816(%rbp), %xmm6
    movdqu 800(%rbp), %xmm7
    movdqu 784(%rbp), %xmm8
    movdqu 768(%rbp), %xmm9
    movdqu 752(%rbp), %xmm10
    movdqu 736(%rbp), %xmm11
    movdqu 720(%rbp), %xmm12
    movdqu 704(%rbp), %xmm13
    movdqu 688(%rbp), %xmm14
    movdqu 672(%rbp), %xmm15
    movq 656(%rbp), %rbx
    movq 648(%rbp), %r12
    movq 640(%rbp), %r13
    movq 632(%rbp), %r14
    movq 624(%rbp), %r15
    leaq 848(%rbp), %rsp
    popq %rbp
    ret
.L2_19:
.L2_16:
    leaq 287(%rbp), %rax
    movq %rax, 48(%rbp)
    movl $0, %eax
    movq 48(%rbp), %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalLock
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L2_20
    jmp .L2_21
.L2_20:
    jmp .L2_22
.L2_21:
    leaq 592(%rbp), %r13
    movq %r14, %r10
    movl (%r10), %r15d
    movq %r13, %r10
    movl %r15d, (%r10)
    leaq .Ltext_15(%rip), %r15
    leaq 264(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $32, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq 0(%rbp), %rax
    leaq 120(%rbp), %r10
    movq %rax, (%r10)
    movq 48(%rbp), %rax
    leaq 104(%rbp), %r10
    movq %rax, (%r10)
    movq 48(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_43
.L2_42:
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalFree
    addq $32, %rsp
    movq %rax, %rbx
    jmp .L2_44
.L2_43:
.L2_44:
.L2_45:
    leaq 248(%rbp), %rbx
    movq 8(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 64(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 88(%rbp), %r10
    movq (%r10), %r12
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_24
    jmp .L2_23
.L2_24:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L2_23:
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 96(%rbp), %r10
    movq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rsi
    movq 664(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 664(%rbp), %rax
    movq 840(%rbp), %rdi
    movq 832(%rbp), %rsi
    movdqu 816(%rbp), %xmm6
    movdqu 800(%rbp), %xmm7
    movdqu 784(%rbp), %xmm8
    movdqu 768(%rbp), %xmm9
    movdqu 752(%rbp), %xmm10
    movdqu 736(%rbp), %xmm11
    movdqu 720(%rbp), %xmm12
    movdqu 704(%rbp), %xmm13
    movdqu 688(%rbp), %xmm14
    movdqu 672(%rbp), %xmm15
    movq 656(%rbp), %rbx
    movq 648(%rbp), %r12
    movq 640(%rbp), %r13
    movq 632(%rbp), %r14
    movq 624(%rbp), %r15
    leaq 848(%rbp), %rsp
    popq %rbp
    ret
.L2_25:
.L2_22:
    leaq 232(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 64(%rbp), %rax
    movq 40(%rbp), %r10
    movq %rax, (%r10)
    movq 8(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    leaq 216(%rbp), %rbx
    movq 32(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq 64(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalUnlock
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call OpenClipboard
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_27
.L2_26:
    leaq 592(%rbp), %rbx
    movq %r14, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_0(%rip), %r12
    leaq 200(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $21, %rax
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
    movq 0(%rbp), %rax
    leaq 120(%rbp), %r10
    movq %rax, (%r10)
    movq 48(%rbp), %rax
    leaq 104(%rbp), %r10
    movq %rax, (%r10)
    movq 48(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_47
.L2_46:
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalFree
    addq $32, %rsp
    movq %rax, %r12
    jmp .L2_48
.L2_47:
.L2_48:
.L2_49:
    leaq 184(%rbp), %r12
    movq 32(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq 64(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 88(%rbp), %r10
    movq (%r10), %r13
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_30
    jmp .L2_29
.L2_30:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L2_29:
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 96(%rbp), %r10
    movq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq 664(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 664(%rbp), %rax
    movq 840(%rbp), %rdi
    movq 832(%rbp), %rsi
    movdqu 816(%rbp), %xmm6
    movdqu 800(%rbp), %xmm7
    movdqu 784(%rbp), %xmm8
    movdqu 768(%rbp), %xmm9
    movdqu 752(%rbp), %xmm10
    movdqu 736(%rbp), %xmm11
    movdqu 720(%rbp), %xmm12
    movdqu 704(%rbp), %xmm13
    movdqu 688(%rbp), %xmm14
    movdqu 672(%rbp), %xmm15
    movq 656(%rbp), %rbx
    movq 648(%rbp), %r12
    movq 640(%rbp), %r13
    movq 632(%rbp), %r14
    movq 624(%rbp), %r15
    leaq 848(%rbp), %rsp
    popq %rbp
    ret
.L2_31:
    jmp .L2_28
.L2_27:
.L2_28:
    subq $32, %rsp
    call EmptyClipboard
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L2_58
    jmp .L2_35
.L2_58:
    movl %ebx, %r12d
    jmp .L2_36
.L2_35:
    leaq lb_clipboard_12unicode_text(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SetClipboardData
    addq $32, %rsp
    movq %rax, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
.L2_36:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L2_32
    jmp .L2_33
.L2_32:
    leaq 592(%rbp), %rbx
    movq %r14, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_19(%rip), %r12
    leaq 168(%rbp), %r13
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
    subq $32, %rsp
    call CloseClipboard
    addq $32, %rsp
    movl %eax, %r12d
    movq 0(%rbp), %rax
    leaq 120(%rbp), %r10
    movq %rax, (%r10)
    movq 48(%rbp), %rax
    leaq 104(%rbp), %r10
    movq %rax, (%r10)
    movq 48(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_51
.L2_50:
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalFree
    addq $32, %rsp
    movq %rax, %r12
    jmp .L2_52
.L2_51:
.L2_52:
.L2_53:
    leaq 152(%rbp), %r12
    movq 32(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq 64(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 88(%rbp), %r10
    movq (%r10), %r13
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_38
    jmp .L2_37
.L2_38:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L2_37:
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 96(%rbp), %r10
    movq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq 664(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 664(%rbp), %rax
    movq 840(%rbp), %rdi
    movq 832(%rbp), %rsi
    movdqu 816(%rbp), %xmm6
    movdqu 800(%rbp), %xmm7
    movdqu 784(%rbp), %xmm8
    movdqu 768(%rbp), %xmm9
    movdqu 752(%rbp), %xmm10
    movdqu 736(%rbp), %xmm11
    movdqu 720(%rbp), %xmm12
    movdqu 704(%rbp), %xmm13
    movdqu 688(%rbp), %xmm14
    movdqu 672(%rbp), %xmm15
    movq 656(%rbp), %rbx
    movq 648(%rbp), %r12
    movq 640(%rbp), %r13
    movq 632(%rbp), %r14
    movq 624(%rbp), %r15
    leaq 848(%rbp), %rsp
    popq %rbp
    ret
.L2_39:
    jmp .L2_34
.L2_33:
.L2_34:
    movl $1, %eax
    movq 48(%rbp), %r10
    movb %al, (%r10)
    subq $32, %rsp
    call CloseClipboard
    addq $32, %rsp
    movl %eax, %ebx
    movq 0(%rbp), %rax
    leaq 120(%rbp), %r10
    movq %rax, (%r10)
    movq 48(%rbp), %rax
    leaq 104(%rbp), %r10
    movq %rax, (%r10)
    movq 48(%rbp), %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_55
.L2_54:
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalFree
    addq $32, %rsp
    movq %rax, %rbx
    jmp .L2_56
.L2_55:
.L2_56:
.L2_57:
    leaq 136(%rbp), %rbx
    movq 32(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 64(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 88(%rbp), %r10
    movq (%r10), %r12
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_41
    jmp .L2_40
.L2_41:
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
.L2_40:
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 96(%rbp), %r10
    movq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 592(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 664(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 664(%rbp), %rax
    movq 840(%rbp), %rdi
    movq 832(%rbp), %rsi
    movdqu 816(%rbp), %xmm6
    movdqu 800(%rbp), %xmm7
    movdqu 784(%rbp), %xmm8
    movdqu 768(%rbp), %xmm9
    movdqu 752(%rbp), %xmm10
    movdqu 736(%rbp), %xmm11
    movdqu 720(%rbp), %xmm12
    movdqu 704(%rbp), %xmm13
    movdqu 688(%rbp), %xmm14
    movdqu 672(%rbp), %xmm15
    movq 656(%rbp), %rbx
    movq 648(%rbp), %r12
    movq 640(%rbp), %r13
    movq 632(%rbp), %r14
    movq 624(%rbp), %r15
    leaq 848(%rbp), %rsp
    popq %rbp
    ret
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
    jne .L3_11
    jmp .L3_4
.L3_11:
    movl %r13d, %r14d
    jmp .L3_5
.L3_4:
    leaq 32(%rbp), %r13
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
    leaq .Ltext_22(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_23(%rip), %r13
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
    jmp .L3_3
.L3_2:
.L3_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L3_7
.L3_6:
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
    jne .L3_9
    jmp .L3_10
.L3_10:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_9:
    jmp .L3_8
.L3_7:
.L3_8:
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

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_clipboard_14windows_native_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "the clipboard is busy"
.Ltext_1:
    .asciz ""
.Ltext_2:
    .asciz "clipboard text is unavailable"
.Ltext_3:
    .asciz "division by zero"
.Ltext_4:
    .asciz "src/std/clipboard/windows/native.lucb:24:5"
.Ltext_5:
    .asciz "clipboard text cannot be read"
.Ltext_6:
    .asciz "src/std/clipboard/windows/native.lucb:30:9"
.Ltext_7:
    .asciz "clipboard text is unterminated or exceeds the limit"
.Ltext_8:
    .asciz "clipboard text exceeds 1 MiB"
.Ltext_9:
    .asciz "src/std/clipboard/windows/native.lucb:37:13"
.Ltext_10:
    .asciz "src/std/clipboard/windows/native.lucb:38:9"
.Ltext_11:
    .asciz "unreachable"
.Ltext_12:
    .asciz "clipboard writing requires an active application window"
.Ltext_13:
    .asciz "src/std/clipboard/windows/native.lucb:48:9"
.Ltext_14:
    .asciz "could not allocate clipboard storage"
.Ltext_15:
    .asciz "could not lock clipboard storage"
.Ltext_16:
    .asciz "src/std/clipboard/windows/native.lucb:51:9"
.Ltext_17:
    .asciz "src/std/clipboard/windows/native.lucb:52:9"
.Ltext_18:
    .asciz "src/std/clipboard/windows/native.lucb:55:13"
.Ltext_19:
    .asciz "could not publish clipboard text"
.Ltext_20:
    .asciz "src/std/clipboard/windows/native.lucb:58:13"
.Ltext_21:
    .asciz "src/std/clipboard/windows/native.lucb:59:9"
.Ltext_22:
    .asciz "index out of bounds"
.Ltext_23:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_24:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_25:
    .asciz "null_foreign"
.Ltext_26:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_clipboard_12unicode_text
    .p2align 2
lb_clipboard_12unicode_text:
    .zero 4
