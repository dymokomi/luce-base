    .weak lb_memory_copy_0g1_u8
    .text

    .p2align 4
    .globl lb_clipboard_0init
lb_clipboard_0init:
    .seh_proc lb_clipboard_0init
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
    leaq lb_clipboard_failed(%rip), %rbx
    movl $208273525, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_clipboard_10text_limit(%rip), %rbx
    movq $1048576, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
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
    .globl lb_clipboard_9read_text
lb_clipboard_9read_text:
    .seh_proc lb_clipboard_9read_text
    pushq %rbp
    .seh_pushreg %rbp
    subq $368, %rsp
    .seh_stackalloc 368
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 184(%rbp)
    movq %rdi, 360(%rbp)
    .seh_savereg %rdi, 360
    movq %rsi, 352(%rbp)
    .seh_savereg %rsi, 352
    movdqu %xmm6, 336(%rbp)
    .seh_savexmm %xmm6, 336
    movdqu %xmm7, 320(%rbp)
    .seh_savexmm %xmm7, 320
    movdqu %xmm8, 304(%rbp)
    .seh_savexmm %xmm8, 304
    movdqu %xmm9, 288(%rbp)
    .seh_savexmm %xmm9, 288
    movdqu %xmm10, 272(%rbp)
    .seh_savexmm %xmm10, 272
    movdqu %xmm11, 256(%rbp)
    .seh_savexmm %xmm11, 256
    movdqu %xmm12, 240(%rbp)
    .seh_savexmm %xmm12, 240
    movdqu %xmm13, 224(%rbp)
    .seh_savexmm %xmm13, 224
    movdqu %xmm14, 208(%rbp)
    .seh_savexmm %xmm14, 208
    movdqu %xmm15, 192(%rbp)
    .seh_savexmm %xmm15, 192
    movq %rbx, 176(%rbp)
    .seh_savereg %rbx, 176
    movq %r12, 168(%rbp)
    .seh_savereg %r12, 168
    movq %r13, 160(%rbp)
    .seh_savereg %r13, 160
    movq %r14, 152(%rbp)
    .seh_savereg %r14, 152
    .seh_endprologue
    movq %rcx, 384(%rbp)
    movq %rdx, 392(%rbp)
    movq %r8, 400(%rbp)
    movq %r9, 408(%rbp)
    subq $32, %rsp
    leaq 64(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_clipboard_12check_access
    addq $32, %rsp
    leaq 64(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    leaq 96(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 184(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 184(%rbp), %rax
    movq 360(%rbp), %rdi
    movq 352(%rbp), %rsi
    movdqu 336(%rbp), %xmm6
    movdqu 320(%rbp), %xmm7
    movdqu 304(%rbp), %xmm8
    movdqu 288(%rbp), %xmm9
    movdqu 272(%rbp), %xmm10
    movdqu 256(%rbp), %xmm11
    movdqu 240(%rbp), %xmm12
    movdqu 224(%rbp), %xmm13
    movdqu 208(%rbp), %xmm14
    movdqu 192(%rbp), %xmm15
    movq 176(%rbp), %rbx
    movq 168(%rbp), %r12
    movq 160(%rbp), %r13
    movq 152(%rbp), %r14
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L1_3:
.L1_1:
    subq $32, %rsp
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_clipboard_8win_read
    addq $32, %rsp
    leaq 8(%rbp), %r12
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_5
    jmp .L1_4
.L1_5:
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 96(%rbp), %r13
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
    movq %r13, %rsi
    movq 184(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 184(%rbp), %rax
    movq 360(%rbp), %rdi
    movq 352(%rbp), %rsi
    movdqu 336(%rbp), %xmm6
    movdqu 320(%rbp), %xmm7
    movdqu 304(%rbp), %xmm8
    movdqu 288(%rbp), %xmm9
    movdqu 272(%rbp), %xmm10
    movdqu 256(%rbp), %xmm11
    movdqu 240(%rbp), %xmm12
    movdqu 224(%rbp), %xmm13
    movdqu 208(%rbp), %xmm14
    movdqu 192(%rbp), %xmm15
    movq 176(%rbp), %rbx
    movq 168(%rbp), %r12
    movq 160(%rbp), %r13
    movq 152(%rbp), %r14
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L1_6:
.L1_4:
    leaq 96(%rbp), %rbx
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
    movq 184(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 184(%rbp), %rax
    movq 360(%rbp), %rdi
    movq 352(%rbp), %rsi
    movdqu 336(%rbp), %xmm6
    movdqu 320(%rbp), %xmm7
    movdqu 304(%rbp), %xmm8
    movdqu 288(%rbp), %xmm9
    movdqu 272(%rbp), %xmm10
    movdqu 256(%rbp), %xmm11
    movdqu 240(%rbp), %xmm12
    movdqu 224(%rbp), %xmm13
    movdqu 208(%rbp), %xmm14
    movdqu 192(%rbp), %xmm15
    movq 176(%rbp), %rbx
    movq 168(%rbp), %r12
    movq 160(%rbp), %r13
    movq 152(%rbp), %r14
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L1_7:
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
    .globl lb_clipboard_10write_text
lb_clipboard_10write_text:
    .seh_proc lb_clipboard_10write_text
    pushq %rbp
    .seh_pushreg %rbp
    subq $368, %rsp
    .seh_stackalloc 368
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 184(%rbp)
    movq %rdi, 360(%rbp)
    .seh_savereg %rdi, 360
    movq %rsi, 352(%rbp)
    .seh_savereg %rsi, 352
    movdqu %xmm6, 336(%rbp)
    .seh_savexmm %xmm6, 336
    movdqu %xmm7, 320(%rbp)
    .seh_savexmm %xmm7, 320
    movdqu %xmm8, 304(%rbp)
    .seh_savexmm %xmm8, 304
    movdqu %xmm9, 288(%rbp)
    .seh_savexmm %xmm9, 288
    movdqu %xmm10, 272(%rbp)
    .seh_savexmm %xmm10, 272
    movdqu %xmm11, 256(%rbp)
    .seh_savexmm %xmm11, 256
    movdqu %xmm12, 240(%rbp)
    .seh_savexmm %xmm12, 240
    movdqu %xmm13, 224(%rbp)
    .seh_savexmm %xmm13, 224
    movdqu %xmm14, 208(%rbp)
    .seh_savexmm %xmm14, 208
    movdqu %xmm15, 192(%rbp)
    .seh_savexmm %xmm15, 192
    movq %rbx, 176(%rbp)
    .seh_savereg %rbx, 176
    movq %r12, 168(%rbp)
    .seh_savereg %r12, 168
    movq %r13, 160(%rbp)
    .seh_savereg %r13, 160
    movq %r14, 152(%rbp)
    .seh_savereg %r14, 152
    movq %r15, 144(%rbp)
    .seh_savereg %r15, 144
    .seh_endprologue
    movq %rcx, 384(%rbp)
    movq %rdx, 392(%rbp)
    movq %r8, 400(%rbp)
    movq %r9, 408(%rbp)
    movq 392(%rbp), %r10
    leaq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    leaq 64(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_clipboard_12check_access
    addq $32, %rsp
    leaq 64(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
    leaq 112(%rbp), %rbx
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
    movq 184(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 184(%rbp), %rax
    movq 360(%rbp), %rdi
    movq 352(%rbp), %rsi
    movdqu 336(%rbp), %xmm6
    movdqu 320(%rbp), %xmm7
    movdqu 304(%rbp), %xmm8
    movdqu 288(%rbp), %xmm9
    movdqu 272(%rbp), %xmm10
    movdqu 256(%rbp), %xmm11
    movdqu 240(%rbp), %xmm12
    movdqu 224(%rbp), %xmm13
    movdqu 208(%rbp), %xmm14
    movdqu 192(%rbp), %xmm15
    movq 176(%rbp), %rbx
    movq 168(%rbp), %r12
    movq 160(%rbp), %r13
    movq 152(%rbp), %r14
    movq 144(%rbp), %r15
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L2_3:
.L2_1:
    leaq 96(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    leaq lb_clipboard_10text_limit(%rip), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_22
    jmp .L2_7
.L2_22:
    movl %r13d, %r14d
    jmp .L2_8
.L2_7:
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_utf8_valid
    addq $48, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L2_8:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_4
    jmp .L2_5
.L2_4:
    leaq 112(%rbp), %rbx
    leaq lb_clipboard_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_2(%rip), %r12
    leaq 48(%rbp), %r13
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
    movq 184(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 184(%rbp), %rax
    movq 360(%rbp), %rdi
    movq 352(%rbp), %rsi
    movdqu 336(%rbp), %xmm6
    movdqu 320(%rbp), %xmm7
    movdqu 304(%rbp), %xmm8
    movdqu 288(%rbp), %xmm9
    movdqu 272(%rbp), %xmm10
    movdqu 256(%rbp), %xmm11
    movdqu 240(%rbp), %xmm12
    movdqu 224(%rbp), %xmm13
    movdqu 208(%rbp), %xmm14
    movdqu 192(%rbp), %xmm15
    movq 176(%rbp), %rbx
    movq 168(%rbp), %r12
    movq 160(%rbp), %r13
    movq 152(%rbp), %r14
    movq 144(%rbp), %r15
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L2_9:
    jmp .L2_6
.L2_5:
.L2_6:
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r14
    movq $0, %rax
    movq %rax, %r15
.L2_10:
    cmpq %r14, %r15
    jae .L2_13
.L2_11:
    movq %r13, %r12
    addq %r15, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movzbl %r12b, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_15
.L2_14:
    leaq 112(%rbp), %rbx
    leaq lb_clipboard_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_3(%rip), %r12
    leaq 32(%rbp), %r13
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
    movq 184(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 184(%rbp), %rax
    movq 360(%rbp), %rdi
    movq 352(%rbp), %rsi
    movdqu 336(%rbp), %xmm6
    movdqu 320(%rbp), %xmm7
    movdqu 304(%rbp), %xmm8
    movdqu 288(%rbp), %xmm9
    movdqu 272(%rbp), %xmm10
    movdqu 256(%rbp), %xmm11
    movdqu 240(%rbp), %xmm12
    movdqu 224(%rbp), %xmm13
    movdqu 208(%rbp), %xmm14
    movdqu 192(%rbp), %xmm15
    movq 176(%rbp), %rbx
    movq 168(%rbp), %r12
    movq 160(%rbp), %r13
    movq 152(%rbp), %r14
    movq 144(%rbp), %r15
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L2_17:
    jmp .L2_16
.L2_15:
.L2_16:
.L2_12:
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r15
    jmp .L2_10
.L2_13:
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_clipboard_9win_write
    addq $48, %rsp
    leaq 0(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_19
    jmp .L2_18
.L2_19:
    leaq 112(%rbp), %rbx
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
    movq 184(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 184(%rbp), %rax
    movq 360(%rbp), %rdi
    movq 352(%rbp), %rsi
    movdqu 336(%rbp), %xmm6
    movdqu 320(%rbp), %xmm7
    movdqu 304(%rbp), %xmm8
    movdqu 288(%rbp), %xmm9
    movdqu 272(%rbp), %xmm10
    movdqu 256(%rbp), %xmm11
    movdqu 240(%rbp), %xmm12
    movdqu 224(%rbp), %xmm13
    movdqu 208(%rbp), %xmm14
    movdqu 192(%rbp), %xmm15
    movq 176(%rbp), %rbx
    movq 168(%rbp), %r12
    movq 160(%rbp), %r13
    movq 152(%rbp), %r14
    movq 144(%rbp), %r15
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L2_20:
.L2_18:
    leaq 112(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 184(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 184(%rbp), %rax
    movq 360(%rbp), %rdi
    movq 352(%rbp), %rsi
    movdqu 336(%rbp), %xmm6
    movdqu 320(%rbp), %xmm7
    movdqu 304(%rbp), %xmm8
    movdqu 288(%rbp), %xmm9
    movdqu 272(%rbp), %xmm10
    movdqu 256(%rbp), %xmm11
    movdqu 240(%rbp), %xmm12
    movdqu 224(%rbp), %xmm13
    movdqu 208(%rbp), %xmm14
    movdqu 192(%rbp), %xmm15
    movq 176(%rbp), %rbx
    movq 168(%rbp), %r12
    movq 160(%rbp), %r13
    movq 152(%rbp), %r14
    movq 144(%rbp), %r15
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L2_21:
    leaq 112(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 184(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 184(%rbp), %rax
    movq 360(%rbp), %rdi
    movq 352(%rbp), %rsi
    movdqu 336(%rbp), %xmm6
    movdqu 320(%rbp), %xmm7
    movdqu 304(%rbp), %xmm8
    movdqu 288(%rbp), %xmm9
    movdqu 272(%rbp), %xmm10
    movdqu 256(%rbp), %xmm11
    movdqu 240(%rbp), %xmm12
    movdqu 224(%rbp), %xmm13
    movdqu 208(%rbp), %xmm14
    movdqu 192(%rbp), %xmm15
    movq 176(%rbp), %rbx
    movq 168(%rbp), %r12
    movq 160(%rbp), %r13
    movq 152(%rbp), %r14
    movq 144(%rbp), %r15
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_clipboard_12check_access
lb_clipboard_12check_access:
    .seh_proc lb_clipboard_12check_access
    pushq %rbp
    .seh_pushreg %rbp
    subq $272, %rsp
    .seh_stackalloc 272
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 88(%rbp)
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
    movq %rbx, 80(%rbp)
    .seh_savereg %rbx, 80
    movq %r12, 72(%rbp)
    .seh_savereg %r12, 72
    movq %r13, 64(%rbp)
    .seh_savereg %r13, 64
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    subq $32, %rsp
    call lb_window_supported
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_2
.L3_1:
    leaq 32(%rbp), %rbx
    leaq lb_window_unsupported(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $51, %rax
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
    movq 88(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 88(%rbp), %rax
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
    movq 80(%rbp), %rbx
    movq 72(%rbp), %r12
    movq 64(%rbp), %r13
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    subq $32, %rsp
    call lb_thread_7is_main
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_6
.L3_5:
    leaq 32(%rbp), %rbx
    leaq lb_interop_12wrong_thread(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $39, %rax
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
    movq 88(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 88(%rbp), %rax
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
    movq 80(%rbp), %rbx
    movq 72(%rbp), %r12
    movq 64(%rbp), %r13
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L3_8:
    jmp .L3_7
.L3_6:
.L3_7:
    leaq 32(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 88(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 88(%rbp), %rax
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
    movq 80(%rbp), %rbx
    movq 72(%rbp), %r12
    movq 64(%rbp), %r13
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_clipboard_9mac_board
lb_clipboard_9mac_board:
    .seh_proc lb_clipboard_9mac_board
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
    leaq .Ltext_6(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_getClass
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L4_1
    jmp .L4_2
.L4_1:
    jmp .L4_3
.L4_2:
    leaq 32(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq 16(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 104(%rbp), %rdi
    movq $40, %rdx
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
.L4_4:
.L4_3:
    leaq .Ltext_8(%rip), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L4_5
    jmp .L4_6
.L4_6:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_5:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L4_7
    jmp .L4_8
.L4_7:
    jmp .L4_9
.L4_8:
    leaq 32(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_11(%rip), %r13
    leaq 0(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 104(%rbp), %rdi
    movq $40, %rdx
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
.L4_10:
.L4_9:
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 104(%rbp), %rdi
    movq $40, %rdx
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
.L4_11:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_clipboard_8mac_read
lb_clipboard_8mac_read:
    .seh_proc lb_clipboard_8mac_read
    pushq %rbp
    .seh_pushreg %rbp
    subq $512, %rsp
    .seh_stackalloc 512
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 328(%rbp)
    movq %rdi, 504(%rbp)
    .seh_savereg %rdi, 504
    movq %rsi, 496(%rbp)
    .seh_savereg %rsi, 496
    movdqu %xmm6, 480(%rbp)
    .seh_savexmm %xmm6, 480
    movdqu %xmm7, 464(%rbp)
    .seh_savexmm %xmm7, 464
    movdqu %xmm8, 448(%rbp)
    .seh_savexmm %xmm8, 448
    movdqu %xmm9, 432(%rbp)
    .seh_savexmm %xmm9, 432
    movdqu %xmm10, 416(%rbp)
    .seh_savexmm %xmm10, 416
    movdqu %xmm11, 400(%rbp)
    .seh_savexmm %xmm11, 400
    movdqu %xmm12, 384(%rbp)
    .seh_savexmm %xmm12, 384
    movdqu %xmm13, 368(%rbp)
    .seh_savexmm %xmm13, 368
    movdqu %xmm14, 352(%rbp)
    .seh_savexmm %xmm14, 352
    movdqu %xmm15, 336(%rbp)
    .seh_savexmm %xmm15, 336
    movq %rbx, 320(%rbp)
    .seh_savereg %rbx, 320
    movq %r12, 312(%rbp)
    .seh_savereg %r12, 312
    movq %r13, 304(%rbp)
    .seh_savereg %r13, 304
    movq %r14, 296(%rbp)
    .seh_savereg %r14, 296
    movq %r15, 288(%rbp)
    .seh_savereg %r15, 288
    .seh_endprologue
    movq %rcx, 528(%rbp)
    movq %rdx, 536(%rbp)
    movq %r8, 544(%rbp)
    movq %r9, 552(%rbp)
    subq $32, %rsp
    call objc_autoreleasePoolPush
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L5_1
    jmp .L5_2
.L5_2:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_1:
    subq $32, %rsp
    leaq 192(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_clipboard_9mac_board
    addq $32, %rsp
    leaq 192(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_4
    jmp .L5_3
.L5_4:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq 232(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r14, %rsi
    movq 328(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L5_5:
.L5_3:
    movq %r13, %r10
    movq (%r10), %r12
    leaq .Ltext_13(%rip), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L5_6
    jmp .L5_7
.L5_7:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_6:
    leaq NSPasteboardTypeString(%rip), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L5_8
    jmp .L5_9
.L5_8:
    jmp .L5_10
.L5_9:
    leaq .Ltext_15(%rip), %r12
    leaq 176(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 120(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_interop_9copy_text
    addq $48, %rsp
    leaq 120(%rbp), %r13
    movq $48, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_12
    jmp .L5_11
.L5_12:
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq 232(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r14, %rsi
    movq 328(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L5_13:
.L5_11:
    leaq 232(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 328(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L5_14:
.L5_10:
    leaq .Ltext_16(%rip), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L5_15
    jmp .L5_16
.L5_16:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_15:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $4, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r14
    leaq lb_clipboard_10text_limit(%rip), %r15
    movq %r15, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jbe .L5_18
.L5_17:
    leaq 232(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_clipboard_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_18(%rip), %r14
    leaq 104(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $28, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $48, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 328(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L5_20:
    jmp .L5_19
.L5_18:
.L5_19:
    leaq .Ltext_19(%rip), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L5_21
    jmp .L5_22
.L5_22:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_21:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L5_23
    jmp .L5_24
.L5_23:
    jmp .L5_25
.L5_24:
    leaq 232(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_clipboard_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_21(%rip), %r14
    leaq 88(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $27, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $48, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 328(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L5_26:
.L5_25:
    leaq 72(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    leaq 56(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_interop_9copy_text
    addq $48, %rsp
    leaq 0(%rbp), %r13
    movq $48, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_28
    jmp .L5_27
.L5_28:
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq 232(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r14, %rsi
    movq 328(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L5_29:
.L5_27:
    leaq 232(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 328(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L5_30:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_clipboard_9mac_write
lb_clipboard_9mac_write:
    .seh_proc lb_clipboard_9mac_write
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
    leaq 112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    call objc_autoreleasePoolPush
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L6_1
    jmp .L6_2
.L6_2:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_1:
    subq $32, %rsp
    leaq 72(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_clipboard_9mac_board
    addq $32, %rsp
    leaq 72(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L6_4
    jmp .L6_3
.L6_4:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq 128(%rbp), %r14
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
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r14, %rsi
    movq 200(%rbp), %rdi
    movq $32, %rdx
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
.L6_5:
.L6_3:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    leaq .Ltext_24(%rip), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_getClass
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L6_6
    jmp .L6_7
.L6_6:
    jmp .L6_8
.L6_7:
    leaq 128(%rbp), %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_25(%rip), %r13
    leaq 56(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $34, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 200(%rbp), %rdi
    movq $32, %rdx
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
.L6_9:
.L6_8:
    leaq .Ltext_26(%rip), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L6_10
    jmp .L6_11
.L6_11:
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_10:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L6_12
    jmp .L6_13
.L6_12:
    jmp .L6_14
.L6_13:
    leaq 128(%rbp), %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_28(%rip), %r13
    leaq 40(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $33, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 200(%rbp), %rdi
    movq $32, %rdx
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
.L6_15:
.L6_14:
    leaq .Ltext_29(%rip), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L6_16
    jmp .L6_17
.L6_17:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_16:
    leaq 112(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq $4, %rax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call objc_msgSend
    addq $48, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L6_18
    jmp .L6_19
.L6_18:
    jmp .L6_20
.L6_19:
    leaq 128(%rbp), %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_31(%rip), %r13
    leaq 24(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 200(%rbp), %rdi
    movq $32, %rdx
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
.L6_21:
.L6_20:
    leaq .Ltext_32(%rip), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L6_22
    jmp .L6_23
.L6_23:
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_22:
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r13
    leaq .Ltext_34(%rip), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L6_27
    jmp .L6_28
.L6_28:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_27:
    leaq NSPasteboardTypeString(%rip), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call objc_msgSend
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L6_25
.L6_24:
    leaq 128(%rbp), %r13
    leaq lb_clipboard_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_36(%rip), %r14
    leaq 8(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $32, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    leaq .Ltext_37(%rip), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L6_29
    jmp .L6_30
.L6_30:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_29:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r13, %rsi
    movq 200(%rbp), %rdi
    movq $32, %rdx
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
.L6_31:
    jmp .L6_26
.L6_25:
.L6_26:
    leaq .Ltext_37(%rip), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L6_32
    jmp .L6_33
.L6_33:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_32:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    leaq 128(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movl $0, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %r14, %rsi
    movq 200(%rbp), %rdi
    movq $32, %rdx
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
    jne .L7_2
.L7_1:
    leaq 472(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_39(%rip), %r13
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
.L7_2:
.L7_3:
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
    jne .L7_6
.L7_5:
    leaq .Ltext_15(%rip), %rbx
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
    jne .L7_9
    jmp .L7_8
.L7_9:
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
.L7_8:
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
.L7_6:
.L7_7:
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
    jne .L7_12
    jmp .L7_13
.L7_12:
    jmp .L7_14
.L7_13:
    leaq 472(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_40(%rip), %r13
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
.L7_14:
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalSize
    addq $32, %rsp
    movq %rax, %rbx
.L7_17:
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
    jne .L7_18
    jmp .L7_19
.L7_18:
    jmp .L7_20
.L7_19:
    leaq 472(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_43(%rip), %r13
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
.L7_20:
    leaq lb_clipboard_10text_limit(%rip), %rbx
    movq $0, %rax
    movq %rax, %r15
.L7_22:
    movq 64(%rbp), %rcx
    cmpq %rcx, %r15
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L7_25
    jmp .L7_54
.L7_54:
    movl %r12d, %r13d
    jmp .L7_26
.L7_25:
    movq %rbx, %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    setbe %al
    movzbl %al, %r13d
.L7_26:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L7_27
    jmp .L7_55
.L7_55:
    movl %r12d, %r13d
    jmp .L7_28
.L7_27:
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
.L7_28:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L7_23
    jmp .L7_24
.L7_23:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %r15
    jmp .L7_22
.L7_24:
    movq 64(%rbp), %rax
    cmpq %r15, %rax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L7_56
    jmp .L7_32
.L7_56:
    movl %ebx, %r12d
    jmp .L7_33
.L7_32:
    leaq lb_clipboard_10text_limit(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r15
    seta %al
    movzbl %al, %r12d
.L7_33:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L7_29
    jmp .L7_30
.L7_29:
    leaq 472(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_clipboard_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_45(%rip), %r13
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
.L7_30:
.L7_31:
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
    jne .L7_36
    jmp .L7_35
.L7_36:
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
.L7_35:
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
    jbe .L7_39
.L7_38:
    leaq 472(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq 32(%rbp), %r10
    movl (%r10), %r15d
    movq %r13, %r10
    movl %r15d, (%r10)
    leaq .Ltext_18(%rip), %r15
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
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
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
    jne .L7_42
    jmp .L7_41
.L7_42:
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
.L7_41:
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
.L7_39:
.L7_40:
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
    jne .L7_45
    jmp .L7_44
.L7_45:
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
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
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
    jne .L7_47
    jmp .L7_46
.L7_47:
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
.L7_46:
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
.L7_44:
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
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
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
    jne .L7_50
    jmp .L7_49
.L7_50:
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
.L7_49:
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
    jne .L8_1
    jmp .L8_2
.L8_1:
    jmp .L8_3
.L8_2:
    leaq 592(%rbp), %rbx
    leaq lb_clipboard_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_48(%rip), %r12
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
.L8_4:
.L8_3:
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
    jne .L8_6
    jmp .L8_5
.L8_6:
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
.L8_7:
.L8_5:
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
    jne .L8_9
    jmp .L8_8
.L8_9:
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
.L8_10:
.L8_8:
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
    jne .L8_12
    jmp .L8_11
.L8_12:
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
.L8_13:
.L8_11:
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
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
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
    jne .L8_14
    jmp .L8_15
.L8_14:
    jmp .L8_16
.L8_15:
    leaq 592(%rbp), %rax
    movq %rax, 56(%rbp)
    movq %r14, %r10
    movl (%r10), %r15d
    movq 56(%rbp), %r10
    movl %r15d, (%r10)
    leaq .Ltext_50(%rip), %r15
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
    jne .L8_18
    jmp .L8_17
.L8_18:
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
.L8_17:
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
.L8_19:
.L8_16:
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
    jne .L8_20
    jmp .L8_21
.L8_20:
    jmp .L8_22
.L8_21:
    leaq 592(%rbp), %r13
    movq %r14, %r10
    movl (%r10), %r15d
    movq %r13, %r10
    movl %r15d, (%r10)
    leaq .Ltext_51(%rip), %r15
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
    jne .L8_43
.L8_42:
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalFree
    addq $32, %rsp
    movq %rax, %rbx
    jmp .L8_44
.L8_43:
.L8_44:
.L8_45:
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
    jne .L8_24
    jmp .L8_23
.L8_24:
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
.L8_23:
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
.L8_25:
.L8_22:
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
    jne .L8_27
.L8_26:
    leaq 592(%rbp), %rbx
    movq %r14, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_39(%rip), %r12
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
    jne .L8_47
.L8_46:
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalFree
    addq $32, %rsp
    movq %rax, %r12
    jmp .L8_48
.L8_47:
.L8_48:
.L8_49:
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
    jne .L8_30
    jmp .L8_29
.L8_30:
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
.L8_29:
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
.L8_31:
    jmp .L8_28
.L8_27:
.L8_28:
    subq $32, %rsp
    call EmptyClipboard
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L8_58
    jmp .L8_35
.L8_58:
    movl %ebx, %r12d
    jmp .L8_36
.L8_35:
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
.L8_36:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L8_32
    jmp .L8_33
.L8_32:
    leaq 592(%rbp), %rbx
    movq %r14, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_36(%rip), %r12
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
    jne .L8_51
.L8_50:
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalFree
    addq $32, %rsp
    movq %rax, %r12
    jmp .L8_52
.L8_51:
.L8_52:
.L8_53:
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
    jne .L8_38
    jmp .L8_37
.L8_38:
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
.L8_37:
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
.L8_39:
    jmp .L8_34
.L8_33:
.L8_34:
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
    jne .L8_55
.L8_54:
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GlobalFree
    addq $32, %rsp
    movq %rax, %rbx
    jmp .L8_56
.L8_55:
.L8_56:
.L8_57:
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
    jne .L8_41
    jmp .L8_40
.L8_41:
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
.L8_40:
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
    jne .L9_11
    jmp .L9_4
.L9_11:
    movl %r13d, %r14d
    jmp .L9_5
.L9_4:
    leaq 32(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L9_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L9_1
    jmp .L9_2
.L9_1:
    leaq .Ltext_57(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_58(%rip), %r13
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
    jmp .L9_3
.L9_2:
.L9_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L9_7
.L9_6:
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
    jne .L9_9
    jmp .L9_10
.L9_10:
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_9:
    jmp .L9_8
.L9_7:
.L9_8:
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
    .quad lb_clipboard_0init
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
    .asciz "src/std/clipboard/module.lucb:21:9"
.Ltext_2:
    .asciz "clipboard text must be valid UTF-8 within 1 MiB"
.Ltext_3:
    .asciz "clipboard text cannot contain NUL"
.Ltext_4:
    .asciz "the desktop clipboard is unavailable on this target"
.Ltext_5:
    .asciz "clipboard access requires the UI thread"
.Ltext_6:
    .asciz "NSPasteboard"
.Ltext_7:
    .asciz "AppKit pasteboard is unavailable"
.Ltext_8:
    .asciz "generalPasteboard"
.Ltext_9:
    .asciz "null_foreign"
.Ltext_10:
    .asciz "src/std/clipboard/macos/native.lucb:18:5"
.Ltext_11:
    .asciz "the clipboard is unavailable"
.Ltext_12:
    .asciz "src/std/clipboard/macos/native.lucb:21:5"
.Ltext_13:
    .asciz "stringForType:"
.Ltext_14:
    .asciz "src/std/clipboard/macos/native.lucb:24:5"
.Ltext_15:
    .asciz ""
.Ltext_16:
    .asciz "lengthOfBytesUsingEncoding:"
.Ltext_17:
    .asciz "src/std/clipboard/macos/native.lucb:25:5"
.Ltext_18:
    .asciz "clipboard text exceeds 1 MiB"
.Ltext_19:
    .asciz "UTF8String"
.Ltext_20:
    .asciz "src/std/clipboard/macos/native.lucb:28:5"
.Ltext_21:
    .asciz "clipboard text is not UTF-8"
.Ltext_22:
    .asciz "src/std/clipboard/macos/native.lucb:29:5"
.Ltext_23:
    .asciz "src/std/clipboard/macos/native.lucb:32:5"
.Ltext_24:
    .asciz "NSString"
.Ltext_25:
    .asciz "Foundation strings are unavailable"
.Ltext_26:
    .asciz "alloc"
.Ltext_27:
    .asciz "src/std/clipboard/macos/native.lucb:36:5"
.Ltext_28:
    .asciz "could not allocate clipboard text"
.Ltext_29:
    .asciz "initWithBytes:length:encoding:"
.Ltext_30:
    .asciz "src/std/clipboard/macos/native.lucb:37:5"
.Ltext_31:
    .asciz "could not create clipboard text"
.Ltext_32:
    .asciz "clearContents"
.Ltext_33:
    .asciz "src/std/clipboard/macos/native.lucb:39:5"
.Ltext_34:
    .asciz "setString:forType:"
.Ltext_35:
    .asciz "src/std/clipboard/macos/native.lucb:40:5"
.Ltext_36:
    .asciz "could not publish clipboard text"
.Ltext_37:
    .asciz "release"
.Ltext_38:
    .asciz "src/std/clipboard/macos/native.lucb:41:9"
.Ltext_39:
    .asciz "the clipboard is busy"
.Ltext_40:
    .asciz "clipboard text is unavailable"
.Ltext_41:
    .asciz "division by zero"
.Ltext_42:
    .asciz "src/std/clipboard/windows/native.lucb:24:5"
.Ltext_43:
    .asciz "clipboard text cannot be read"
.Ltext_44:
    .asciz "src/std/clipboard/windows/native.lucb:30:9"
.Ltext_45:
    .asciz "clipboard text is unterminated or exceeds the limit"
.Ltext_46:
    .asciz "src/std/clipboard/windows/native.lucb:37:13"
.Ltext_47:
    .asciz "src/std/clipboard/windows/native.lucb:38:9"
.Ltext_48:
    .asciz "clipboard writing requires an active application window"
.Ltext_49:
    .asciz "src/std/clipboard/windows/native.lucb:48:9"
.Ltext_50:
    .asciz "could not allocate clipboard storage"
.Ltext_51:
    .asciz "could not lock clipboard storage"
.Ltext_52:
    .asciz "src/std/clipboard/windows/native.lucb:51:9"
.Ltext_53:
    .asciz "src/std/clipboard/windows/native.lucb:52:9"
.Ltext_54:
    .asciz "src/std/clipboard/windows/native.lucb:55:13"
.Ltext_55:
    .asciz "src/std/clipboard/windows/native.lucb:58:13"
.Ltext_56:
    .asciz "src/std/clipboard/windows/native.lucb:59:9"
.Ltext_57:
    .asciz "index out of bounds"
.Ltext_58:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_59:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_60:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_clipboard_failed
    .p2align 2
lb_clipboard_failed:
    .zero 4

    .bss
    .globl lb_clipboard_10text_limit
    .p2align 3
lb_clipboard_10text_limit:
    .zero 8

    .bss
    .globl lb_clipboard_12unicode_text
    .p2align 2
lb_clipboard_12unicode_text:
    .zero 4
