    .text

    .p2align 4
    .globl lb_os_windows_0init
lb_os_windows_0init:
    .seh_proc lb_os_windows_0init
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
    .globl lb_os_11windows_env
lb_os_11windows_env:
    .seh_proc lb_os_11windows_env
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
    movq %rax, 128(%rbp)
    leaq 128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_os_15environment_key@SECREL32(%rax), %rax
    movq %rax, %r12
    subq $48, %rsp
    movl $65001, %eax
    movq %rax, 0(%rsp)
    movl $8, %eax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movl $4294967295, %eax
    movq %rax, 24(%rsp)
    movq %r12, %rax
    movq %rax, 32(%rsp)
    movl $32768, %eax
    movq %rax, 40(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call MultiByteToWideChar
    addq $48, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_2
.L1_1:
    leaq 104(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
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
    subq $32, %rsp
    movl $0, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call SetLastError
    addq $32, %rsp
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_os_16environment_wide@SECREL32(%rax), %rax
    movq %rax, %rbx
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $32768, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call GetEnvironmentVariableW
    addq $32, %rsp
    movl %eax, %r13d
    movl $32768, %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_23
    jmp .L1_8
.L1_23:
    movl %r14d, %r12d
    jmp .L1_9
.L1_8:
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_10
    jmp .L1_24
.L1_24:
    movl %r12d, %r14d
    jmp .L1_11
.L1_10:
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L1_11:
    movzbl %r14b, %r12d
.L1_9:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L1_5
    jmp .L1_6
.L1_5:
    leaq 80(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
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
.L1_12:
    jmp .L1_7
.L1_6:
.L1_7:
    movl $0, %ecx
    cmpl %ecx, %r13d
    jbe .L1_14
.L1_13:
    movl %r13d, %r12d
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_os_16environment_utf8@SECREL32(%rax), %rax
    movq %rax, %r14
    subq $64, %rsp
    movl $65001, %eax
    movq %rax, 0(%rsp)
    movl $128, %eax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movl %r12d, %eax
    movq %rax, 24(%rsp)
    movq %r14, %rax
    movq %rax, 32(%rsp)
    movl $131072, %eax
    movq %rax, 40(%rsp)
    movq $0, %rax
    movq %rax, 48(%rsp)
    movq $0, %rax
    movq %rax, 56(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call WideCharToMultiByte
    addq $64, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_17
.L1_16:
    leaq 56(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
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
.L1_19:
    jmp .L1_18
.L1_17:
.L1_18:
    movl %r12d, %ebx
    jmp .L1_15
.L1_14:
    movl $0, %eax
    movl %eax, %ebx
.L1_15:
    movslq %ebx, %r12
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_os_16environment_utf8@SECREL32(%rax), %rax
    movq %rax, %r13
    movq $131073, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r12, %r14
    addq %r13, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L1_20
.L1_21:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_20:
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq 0(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 144(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %rbx, %rsi
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
.L1_22:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_os_11windows_cwd
lb_os_11windows_cwd:
    .seh_proc lb_os_11windows_cwd
    pushq %rbp
    .seh_pushreg %rbp
    subq $720, %rsp
    .seh_stackalloc 720
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 536(%rbp)
    movq %rdi, 712(%rbp)
    .seh_savereg %rdi, 712
    movq %rsi, 704(%rbp)
    .seh_savereg %rsi, 704
    movdqu %xmm6, 688(%rbp)
    .seh_savexmm %xmm6, 688
    movdqu %xmm7, 672(%rbp)
    .seh_savexmm %xmm7, 672
    movdqu %xmm8, 656(%rbp)
    .seh_savexmm %xmm8, 656
    movdqu %xmm9, 640(%rbp)
    .seh_savexmm %xmm9, 640
    movdqu %xmm10, 624(%rbp)
    .seh_savexmm %xmm10, 624
    movdqu %xmm11, 608(%rbp)
    .seh_savexmm %xmm11, 608
    movdqu %xmm12, 592(%rbp)
    .seh_savexmm %xmm12, 592
    movdqu %xmm13, 576(%rbp)
    .seh_savexmm %xmm13, 576
    movdqu %xmm14, 560(%rbp)
    .seh_savexmm %xmm14, 560
    movdqu %xmm15, 544(%rbp)
    .seh_savexmm %xmm15, 544
    movq %rbx, 528(%rbp)
    .seh_savereg %rbx, 528
    movq %r12, 520(%rbp)
    .seh_savereg %r12, 520
    movq %r13, 512(%rbp)
    .seh_savereg %r13, 512
    movq %r14, 504(%rbp)
    .seh_savereg %r14, 504
    movq %r15, 496(%rbp)
    .seh_savereg %r15, 496
    .seh_endprologue
    movq %rcx, 736(%rbp)
    movq %rdx, 744(%rbp)
    movq %r8, 752(%rbp)
    movq %r9, 760(%rbp)
    leaq 432(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 384(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 360(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    movq 8(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq 8(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    leaq .Ltext_10(%rip), %rax
    movq %rax, 144(%rbp)
    movq 152(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    movq 152(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    movq 8(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 200(%rbp)
    leaq .Ltext_7(%rip), %rax
    movq %rax, 192(%rbp)
    movq 200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 184(%rbp)
    movq 200(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 176(%rbp)
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 168(%rbp)
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 96(%rbp)
    leaq 232(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq $0, %rax
    movq %rax, 40(%rbp)
.L2_1:
    movq 40(%rbp), %rax
    movq $8, %rcx
    cmpq %rcx, %rax
    jae .L2_3
.L2_2:
    subq $32, %rsp
    movl $0, %eax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetCurrentDirectoryW
    addq $32, %rsp
    movl %eax, 208(%rbp)
    movl 208(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L2_5
.L2_4:
    jmp .L2_3
.L2_7:
    jmp .L2_6
.L2_5:
.L2_6:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 24(%rbp)
    movl 208(%rbp), %eax
    movl %eax, %eax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movabsq $2305843009213693952, %rcx
    cmpq %rcx, %rax
    jbe .L2_9
.L2_8:
    movl $208273409, %eax
    movq 200(%rbp), %r10
    movl %eax, (%r10)
    movq 192(%rbp), %rax
    movq 184(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq 176(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 168(%rbp), %r10
    movb %al, (%r10)
    jmp .L2_10
.L2_9:
    movq 16(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 24(%rbp), %r10
    movq (%r10), %r15
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L2_11
    jmp .L2_12
.L2_12:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_11:
    movq %rbx, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq $2, %rax
    movq %rax, 24(%rsp)
    leaq 360(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    movq 160(%rbp), %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ecx
    movl %r13d, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L2_13
    jmp .L2_14
.L2_13:
    movl $208273409, %eax
    movq 152(%rbp), %r10
    movl %eax, (%r10)
    movq 144(%rbp), %rax
    movq 136(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq 128(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 120(%rbp), %r10
    movb %al, (%r10)
    jmp .L2_10
.L2_14:
    movq 0(%rbp), %r10
    movq (%r10), %rbx
    movq 8(%rbp), %r10
    movq %rbx, (%r10)
    movq 16(%rbp), %rax
    movq 112(%rbp), %r10
    movq %rax, (%r10)
    movl $0, %eax
    movq 104(%rbp), %r10
    movb %al, (%r10)
.L2_10:
    movq 96(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_16
    jmp .L2_15
.L2_16:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 448(%rbp), %r12
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
    movq 536(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 536(%rbp), %rax
    movq 712(%rbp), %rdi
    movq 704(%rbp), %rsi
    movdqu 688(%rbp), %xmm6
    movdqu 672(%rbp), %xmm7
    movdqu 656(%rbp), %xmm8
    movdqu 640(%rbp), %xmm9
    movdqu 624(%rbp), %xmm10
    movdqu 608(%rbp), %xmm11
    movdqu 592(%rbp), %xmm12
    movdqu 576(%rbp), %xmm13
    movdqu 560(%rbp), %xmm14
    movdqu 544(%rbp), %xmm15
    movq 528(%rbp), %rbx
    movq 520(%rbp), %r12
    movq 512(%rbp), %r13
    movq 504(%rbp), %r14
    movq 496(%rbp), %r15
    leaq 720(%rbp), %rsp
    popq %rbp
    ret
.L2_17:
.L2_15:
    movq 8(%rbp), %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 88(%rbp)
    subq $32, %rsp
    movl 208(%rbp), %eax
    movq %rax, 0(%rsp)
    movq 88(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetCurrentDirectoryW
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_19
.L2_18:
    leaq 344(%rbp), %r12
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 88(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_22
    jmp .L2_21
.L2_22:
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
.L2_21:
    jmp .L2_3
.L2_23:
    jmp .L2_20
.L2_19:
.L2_20:
    movl 208(%rbp), %ecx
    cmpl %ecx, %r12d
    jae .L2_25
.L2_24:
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl %r12d, %r15d
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L2_27
.L2_28:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_27:
    leaq 328(%rbp), %r12
    movq 88(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    leaq lb_os_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    leaq 280(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_narrow
    addq $48, %rsp
    leaq 280(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_30
    jmp .L2_29
.L2_30:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq 448(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 80(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 264(%rbp), %rbx
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 88(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r12
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_32
    jmp .L2_31
.L2_32:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
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
    movq %r13, %r11
    call *%r11
    addq $48, %rsp
.L2_31:
    movq 80(%rbp), %rsi
    movq 536(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 536(%rbp), %rax
    movq 712(%rbp), %rdi
    movq 704(%rbp), %rsi
    movdqu 688(%rbp), %xmm6
    movdqu 672(%rbp), %xmm7
    movdqu 656(%rbp), %xmm8
    movdqu 640(%rbp), %xmm9
    movdqu 624(%rbp), %xmm10
    movdqu 608(%rbp), %xmm11
    movdqu 592(%rbp), %xmm12
    movdqu 576(%rbp), %xmm13
    movdqu 560(%rbp), %xmm14
    movdqu 544(%rbp), %xmm15
    movq 528(%rbp), %rbx
    movq 520(%rbp), %r12
    movq 512(%rbp), %r13
    movq 504(%rbp), %r14
    movq 496(%rbp), %r15
    leaq 720(%rbp), %rsp
    popq %rbp
    ret
.L2_33:
.L2_29:
    leaq 448(%rbp), %rax
    movq %rax, 72(%rbp)
    movq %r14, %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 72(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 248(%rbp), %r12
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 88(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_35
    jmp .L2_34
.L2_35:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
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
.L2_34:
    movq 72(%rbp), %rsi
    movq 536(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 536(%rbp), %rax
    movq 712(%rbp), %rdi
    movq 704(%rbp), %rsi
    movdqu 688(%rbp), %xmm6
    movdqu 672(%rbp), %xmm7
    movdqu 656(%rbp), %xmm8
    movdqu 640(%rbp), %xmm9
    movdqu 624(%rbp), %xmm10
    movdqu 608(%rbp), %xmm11
    movdqu 592(%rbp), %xmm12
    movdqu 576(%rbp), %xmm13
    movdqu 560(%rbp), %xmm14
    movdqu 544(%rbp), %xmm15
    movq 528(%rbp), %rbx
    movq 520(%rbp), %r12
    movq 512(%rbp), %r13
    movq 504(%rbp), %r14
    movq 496(%rbp), %r15
    leaq 720(%rbp), %rsp
    popq %rbp
    ret
.L2_36:
    jmp .L2_26
.L2_25:
.L2_26:
    movq 40(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 88(%rbp), %rax
    movq 64(%rbp), %r10
    movq %rax, (%r10)
    movq 48(%rbp), %r10
    movq %r12, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r12
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_38
    jmp .L2_37
.L2_38:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 64(%rbp), %r10
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
.L2_37:
    movq %rbx, %rax
    movq %rax, 40(%rbp)
    jmp .L2_1
.L2_3:
    leaq 448(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_os_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_14(%rip), %r13
    leaq 216(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $36, %rax
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
    movq 536(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 536(%rbp), %rax
    movq 712(%rbp), %rdi
    movq 704(%rbp), %rsi
    movdqu 688(%rbp), %xmm6
    movdqu 672(%rbp), %xmm7
    movdqu 656(%rbp), %xmm8
    movdqu 640(%rbp), %xmm9
    movdqu 624(%rbp), %xmm10
    movdqu 608(%rbp), %xmm11
    movdqu 592(%rbp), %xmm12
    movdqu 576(%rbp), %xmm13
    movdqu 560(%rbp), %xmm14
    movdqu 544(%rbp), %xmm15
    movq 528(%rbp), %rbx
    movq 520(%rbp), %r12
    movq 512(%rbp), %r13
    movq 504(%rbp), %r14
    movq 496(%rbp), %r15
    leaq 720(%rbp), %rsp
    popq %rbp
    ret
.L2_39:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_os_18windows_executable
lb_os_18windows_executable:
    .seh_proc lb_os_18windows_executable
    pushq %rbp
    .seh_pushreg %rbp
    subq $704, %rsp
    .seh_stackalloc 704
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 520(%rbp)
    movq %rdi, 696(%rbp)
    .seh_savereg %rdi, 696
    movq %rsi, 688(%rbp)
    .seh_savereg %rsi, 688
    movdqu %xmm6, 672(%rbp)
    .seh_savexmm %xmm6, 672
    movdqu %xmm7, 656(%rbp)
    .seh_savexmm %xmm7, 656
    movdqu %xmm8, 640(%rbp)
    .seh_savexmm %xmm8, 640
    movdqu %xmm9, 624(%rbp)
    .seh_savexmm %xmm9, 624
    movdqu %xmm10, 608(%rbp)
    .seh_savexmm %xmm10, 608
    movdqu %xmm11, 592(%rbp)
    .seh_savexmm %xmm11, 592
    movdqu %xmm12, 576(%rbp)
    .seh_savexmm %xmm12, 576
    movdqu %xmm13, 560(%rbp)
    .seh_savexmm %xmm13, 560
    movdqu %xmm14, 544(%rbp)
    .seh_savexmm %xmm14, 544
    movdqu %xmm15, 528(%rbp)
    .seh_savexmm %xmm15, 528
    movq %rbx, 512(%rbp)
    .seh_savereg %rbx, 512
    movq %r12, 504(%rbp)
    .seh_savereg %r12, 504
    movq %r13, 496(%rbp)
    .seh_savereg %r13, 496
    movq %r14, 488(%rbp)
    .seh_savereg %r14, 488
    movq %r15, 480(%rbp)
    .seh_savereg %r15, 480
    .seh_endprologue
    movq %rcx, 720(%rbp)
    movq %rdx, 728(%rbp)
    movq %r8, 736(%rbp)
    movq %r9, 744(%rbp)
    leaq 416(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 368(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 344(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    movq 8(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 96(%rbp)
    movq 8(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    leaq .Ltext_10(%rip), %rax
    movq %rax, 136(%rbp)
    movq 144(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq 144(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    movq 8(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 192(%rbp)
    leaq .Ltext_7(%rip), %rax
    movq %rax, 184(%rbp)
    movq 192(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 176(%rbp)
    movq 192(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 168(%rbp)
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 88(%rbp)
    leaq 216(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 24(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq $260, %rax
    movq %rax, 32(%rbp)
.L3_1:
    movq 32(%rbp), %rax
    movq $32768, %rcx
    cmpq %rcx, %rax
    ja .L3_3
.L3_2:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 16(%rbp)
    movq 32(%rbp), %rax
    movabsq $2305843009213693952, %rcx
    cmpq %rcx, %rax
    jbe .L3_5
.L3_4:
    movl $208273409, %eax
    movq 192(%rbp), %r10
    movl %eax, (%r10)
    movq 184(%rbp), %rax
    movq 176(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq 168(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 160(%rbp), %r10
    movb %al, (%r10)
    jmp .L3_6
.L3_5:
    movq 32(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L3_7
    jmp .L3_8
.L3_8:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_7:
    movq %rbx, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq $2, %rax
    movq %rax, 24(%rsp)
    leaq 344(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    movq 152(%rbp), %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ecx
    movl %r15d, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L3_9
    jmp .L3_10
.L3_9:
    movl $208273409, %eax
    movq 144(%rbp), %r10
    movl %eax, (%r10)
    movq 136(%rbp), %rax
    movq 128(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq 120(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 112(%rbp), %r10
    movb %al, (%r10)
    jmp .L3_6
.L3_10:
    movq 0(%rbp), %r10
    movq (%r10), %rbx
    movq 8(%rbp), %r10
    movq %rbx, (%r10)
    movq 32(%rbp), %rax
    movq 104(%rbp), %r10
    movq %rax, (%r10)
    movl $0, %eax
    movq 96(%rbp), %r10
    movb %al, (%r10)
.L3_6:
    movq 88(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_12
    jmp .L3_11
.L3_12:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 432(%rbp), %r12
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
    movq 520(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L3_13:
.L3_11:
    movq 8(%rbp), %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 24(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 80(%rbp)
    subq $32, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq 80(%rbp), %rax
    movq %rax, 8(%rsp)
    movl 32(%rbp), %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call GetModuleFileNameW
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_15
.L3_14:
    leaq 328(%rbp), %r12
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 80(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_18
    jmp .L3_17
.L3_18:
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
.L3_17:
    jmp .L3_3
.L3_19:
    jmp .L3_16
.L3_15:
.L3_16:
    movl %r12d, %r13d
    movq 32(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L3_21
.L3_20:
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $1, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L3_23
.L3_24:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_23:
    leaq 312(%rbp), %r14
    movq 80(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    leaq lb_os_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    subq $48, %rsp
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movl %r15d, %eax
    movq %rax, 16(%rsp)
    leaq 264(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_narrow
    addq $48, %rsp
    leaq 264(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_26
    jmp .L3_25
.L3_26:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    leaq 432(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 72(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 248(%rbp), %rbx
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 80(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_28
    jmp .L3_27
.L3_28:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
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
.L3_27:
    movq 72(%rbp), %rsi
    movq 520(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L3_29:
.L3_25:
    leaq 432(%rbp), %rax
    movq %rax, 64(%rbp)
    movq %r15, %r10
    movq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 64(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 232(%rbp), %r13
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 80(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq 16(%rbp), %r10
    movq (%r10), %rbx
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_31
    jmp .L3_30
.L3_31:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %rbx, %rax
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
.L3_30:
    movq 64(%rbp), %rsi
    movq 520(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L3_32:
    jmp .L3_22
.L3_21:
.L3_22:
    movq 32(%rbp), %rax
    movq $4, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq 48(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 80(%rbp), %rax
    movq 56(%rbp), %r10
    movq %rax, (%r10)
    movq 40(%rbp), %r10
    movq %r12, (%r10)
    movq 16(%rbp), %r10
    movq (%r10), %r12
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_34
    jmp .L3_33
.L3_34:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 56(%rbp), %r10
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
.L3_33:
    movq %rbx, %rax
    movq %rax, 32(%rbp)
    jmp .L3_1
.L3_3:
    leaq 432(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_os_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_20(%rip), %r13
    leaq 200(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $34, %rax
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
    movq 520(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L3_35:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_os_18windows_parent_pid
lb_os_18windows_parent_pid:
    .seh_proc lb_os_18windows_parent_pid
    pushq %rbp
    .seh_pushreg %rbp
    subq $800, %rsp
    .seh_stackalloc 800
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 792(%rbp)
    .seh_savereg %rdi, 792
    movq %rsi, 784(%rbp)
    .seh_savereg %rsi, 784
    movdqu %xmm6, 768(%rbp)
    .seh_savexmm %xmm6, 768
    movdqu %xmm7, 752(%rbp)
    .seh_savexmm %xmm7, 752
    movdqu %xmm8, 736(%rbp)
    .seh_savexmm %xmm8, 736
    movdqu %xmm9, 720(%rbp)
    .seh_savexmm %xmm9, 720
    movdqu %xmm10, 704(%rbp)
    .seh_savexmm %xmm10, 704
    movdqu %xmm11, 688(%rbp)
    .seh_savexmm %xmm11, 688
    movdqu %xmm12, 672(%rbp)
    .seh_savexmm %xmm12, 672
    movdqu %xmm13, 656(%rbp)
    .seh_savexmm %xmm13, 656
    movdqu %xmm14, 640(%rbp)
    .seh_savexmm %xmm14, 640
    movdqu %xmm15, 624(%rbp)
    .seh_savexmm %xmm15, 624
    movq %rbx, 616(%rbp)
    .seh_savereg %rbx, 616
    movq %r12, 608(%rbp)
    .seh_savereg %r12, 608
    movq %r13, 600(%rbp)
    .seh_savereg %r13, 600
    movq %r14, 592(%rbp)
    .seh_savereg %r14, 592
    movq %r15, 584(%rbp)
    .seh_savereg %r15, 584
    .seh_endprologue
    movq %rcx, 816(%rbp)
    movq %rdx, 824(%rbp)
    movq %r8, 832(%rbp)
    movq %r9, 840(%rbp)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call CreateToolhelp32Snapshot
    addq $32, %rsp
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    testq %rax, %rax
    jne .L4_1
    jmp .L4_2
.L4_2:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_1:
    movq 8(%rbp), %rax
    movq $-1, %rcx
    cmpq %rcx, %rax
    jne .L4_4
.L4_3:
    movl $0, %eax
    movq 792(%rbp), %rdi
    movq 784(%rbp), %rsi
    movdqu 768(%rbp), %xmm6
    movdqu 752(%rbp), %xmm7
    movdqu 736(%rbp), %xmm8
    movdqu 720(%rbp), %xmm9
    movdqu 704(%rbp), %xmm10
    movdqu 688(%rbp), %xmm11
    movdqu 672(%rbp), %xmm12
    movdqu 656(%rbp), %xmm13
    movdqu 640(%rbp), %xmm14
    movdqu 624(%rbp), %xmm15
    movq 616(%rbp), %rbx
    movq 608(%rbp), %r12
    movq 600(%rbp), %r13
    movq 592(%rbp), %r14
    movq 584(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L4_6:
    jmp .L4_5
.L4_4:
.L4_5:
    leaq 16(%rbp), %r12
    movq %r12, %rdi
    xorl %esi, %esi
    movq $568, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    movl $568, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call Process32FirstW
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    call GetCurrentProcessId
    addq $32, %rsp
    movl %eax, %r14d
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
.L4_7:
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L4_9
.L4_8:
    movq %r15, %r10
    movl (%r10), %ebx
    cmpl %ebx, %r14d
    jne .L4_11
.L4_10:
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    movl %ebx, %eax
    movq 792(%rbp), %rdi
    movq 784(%rbp), %rsi
    movdqu 768(%rbp), %xmm6
    movdqu 752(%rbp), %xmm7
    movdqu 736(%rbp), %xmm8
    movdqu 720(%rbp), %xmm9
    movdqu 704(%rbp), %xmm10
    movdqu 688(%rbp), %xmm11
    movdqu 672(%rbp), %xmm12
    movdqu 656(%rbp), %xmm13
    movdqu 640(%rbp), %xmm14
    movdqu 624(%rbp), %xmm15
    movq 616(%rbp), %rbx
    movq 608(%rbp), %r12
    movq 600(%rbp), %r13
    movq 592(%rbp), %r14
    movq 584(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L4_13:
    jmp .L4_12
.L4_11:
.L4_12:
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call Process32NextW
    addq $32, %rsp
    movl %eax, %r13d
    jmp .L4_7
.L4_9:
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %eax
    movq 792(%rbp), %rdi
    movq 784(%rbp), %rsi
    movdqu 768(%rbp), %xmm6
    movdqu 752(%rbp), %xmm7
    movdqu 736(%rbp), %xmm8
    movdqu 720(%rbp), %xmm9
    movdqu 704(%rbp), %xmm10
    movdqu 688(%rbp), %xmm11
    movdqu 672(%rbp), %xmm12
    movdqu 656(%rbp), %xmm13
    movdqu 640(%rbp), %xmm14
    movdqu 624(%rbp), %xmm15
    movq 616(%rbp), %rbx
    movq 608(%rbp), %r12
    movq 600(%rbp), %r13
    movq 592(%rbp), %r14
    movq 584(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L4_14:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_os_windows_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/os/windows.lucb:30:5"
.Ltext_1:
    .asciz "src/std/os/windows.lucb:33:5"
.Ltext_2:
    .asciz "src/std/os/windows.lucb:38:9"
.Ltext_3:
    .asciz "src/std/os/windows.lucb:41:5"
.Ltext_4:
    .asciz "src/std/os/windows.lucb:42:5"
.Ltext_5:
    .asciz "index out of bounds"
.Ltext_6:
    .asciz "unreachable"
.Ltext_7:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_8:
    .asciz "memory.unset"
.Ltext_9:
    .asciz "src/std/os/windows.lucb:50:9"
.Ltext_10:
    .asciz "memory.exhausted"
.Ltext_11:
    .asciz "src/std/os/windows.lucb:54:13"
.Ltext_12:
    .asciz "src/std/os/windows.lucb:56:13"
.Ltext_13:
    .asciz "src/std/os/windows.lucb:57:9"
.Ltext_14:
    .asciz "the working directory cannot be read"
.Ltext_15:
    .asciz "src/std/os/windows.lucb:58:5"
.Ltext_16:
    .asciz "src/std/os/windows.lucb:65:9"
.Ltext_17:
    .asciz "src/std/os/windows.lucb:69:13"
.Ltext_18:
    .asciz "src/std/os/windows.lucb:71:13"
.Ltext_19:
    .asciz "src/std/os/windows.lucb:72:9"
.Ltext_20:
    .asciz "the executable path cannot be read"
.Ltext_21:
    .asciz "src/std/os/windows.lucb:73:5"
.Ltext_22:
    .asciz "null_foreign"
.Ltext_23:
    .asciz "src/std/os/windows.lucb:76:5"
.Ltext_24:
    .asciz "src/std/os/windows.lucb:88:5"
.Ltext_25:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3

    .section .tls$LUCE,"dw"
    .globl lb_os_16environment_wide
    .p2align 1
lb_os_16environment_wide:
    .zero 65536

    .section .tls$LUCE,"dw"
    .globl lb_os_16environment_utf8
    .p2align 0
lb_os_16environment_utf8:
    .zero 131073

    .section .tls$LUCE,"dw"
    .globl lb_os_15environment_key
    .p2align 1
lb_os_15environment_key:
    .zero 65536
