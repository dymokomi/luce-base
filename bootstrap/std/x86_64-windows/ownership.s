    .text

    .p2align 4
    .globl lb_ownership_0init
lb_ownership_0init:
    .seh_proc lb_ownership_0init
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
    leaq lb_ownership_black(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_gray(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_white(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_purple(%rip), %rbx
    movl $3, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_10color_mask(%rip), %rbx
    movl $3, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_buffered(%rip), %rbx
    movl $4, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_dead(%rip), %rbx
    movl $8, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_collecting(%rip), %rbx
    movl $16, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_ownership_immortal(%rip), %rbx
    movl $32, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_live@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_ownership_12next_context(%rip), %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_ownership_15next_generation(%rip), %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_14thread_context@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_13runtime_depth@SECREL32(%rax), %rax
    movq %rax, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_13pending_count@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_ownership_15candidate_limit(%rip), %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_10root_count@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_11white_count@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_17collector_running@SECREL32(%rax), %rax
    movq %rax, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
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
    .globl lb_ownership_10live_count
lb_ownership_10live_count:
    .seh_proc lb_ownership_10live_count
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
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_live@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
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
.L1_1:
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
    .globl lb_ownership_12restore_site
lb_ownership_12restore_site:
    .seh_proc lb_ownership_12restore_site
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
    movq 224(%rbp), %r10
    leaq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_site@SECREL32(%rax), %rax
    movq %rax, %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
    .globl lb_ownership_stop
lb_ownership_stop:
    .seh_proc lb_ownership_stop
    pushq %rbp
    .seh_pushreg %rbp
    subq $688, %rsp
    .seh_stackalloc 688
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 504(%rbp)
    .seh_savereg %rbx, 504
    movq %r12, 496(%rbp)
    .seh_savereg %r12, 496
    movq %r13, 488(%rbp)
    .seh_savereg %r13, 488
    movq %r14, 480(%rbp)
    .seh_savereg %r14, 480
    movq %r15, 472(%rbp)
    .seh_savereg %r15, 472
    .seh_endprologue
    movq %rcx, 704(%rbp)
    movq %rdx, 712(%rbp)
    movq %r8, 720(%rbp)
    movq %r9, 728(%rbp)
    movq 704(%rbp), %r10
    leaq 456(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 440(%rbp), %rbx
    subq $32, %rsp
    leaq 424(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_io_stderr
    addq $32, %rsp
    leaq 424(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 408(%rbp), %r12
    leaq .Ltext_2(%rip), %r13
    leaq 392(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $6, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 328(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
    leaq 328(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_4
    jmp .L3_3
.L3_4:
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq 368(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_1
.L3_3:
    jmp .L3_2
.L3_1:
    jmp .L3_2
.L3_5:
.L3_2:
    movq %rbx, %r10
    movq (%r10), %r12
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_site@SECREL32(%rax), %rax
    movq %rax, %r14
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 264(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
    leaq 264(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_9
    jmp .L3_8
.L3_9:
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq 304(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_6
.L3_8:
    jmp .L3_7
.L3_6:
    jmp .L3_7
.L3_10:
.L3_7:
    leaq 248(%rbp), %r12
    leaq .Ltext_3(%rip), %r14
    leaq 232(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $2, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 168(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
    leaq 168(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_14
    jmp .L3_13
.L3_14:
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq 208(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_11
.L3_13:
    jmp .L3_12
.L3_11:
    jmp .L3_12
.L3_15:
.L3_12:
    movq %rbx, %r10
    movq (%r10), %r12
    leaq 456(%rbp), %r14
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 104(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
    leaq 104(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_19
    jmp .L3_18
.L3_19:
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq 144(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_16
.L3_18:
    jmp .L3_17
.L3_16:
    jmp .L3_17
.L3_20:
.L3_17:
    leaq 88(%rbp), %r12
    leaq .Ltext_4(%rip), %r14
    leaq 72(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
    leaq 8(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_24
    jmp .L3_23
.L3_24:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_21
.L3_23:
    jmp .L3_22
.L3_21:
    jmp .L3_22
.L3_25:
.L3_22:
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_exit
    addq $32, %rsp
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
    movq 504(%rbp), %rbx
    movq 496(%rbp), %r12
    movq 488(%rbp), %r13
    movq 480(%rbp), %r14
    movq 472(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_10context_id
lb_ownership_10context_id:
    .seh_proc lb_ownership_10context_id
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
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_14thread_context@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L4_2
.L4_1:
    leaq lb_ownership_12next_context(%rip), %r12
    movq $1, %rcx
    movq %r12, %r10
    lock xaddq %rcx, (%r10)
    movq %rcx, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L4_5
.L4_4:
    leaq .Ltext_7(%rip), %r12
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $34, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_stop
    addq $48, %rsp
    jmp .L4_6
.L4_5:
.L4_6:
    jmp .L4_3
.L4_2:
.L4_3:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
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
.L4_7:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_ownership_enter
lb_ownership_enter:
    .seh_proc lb_ownership_enter
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
    movq %r12, 0(%rbp)
    .seh_savereg %r12, 0
    .seh_endprologue
    movq %rcx, 208(%rbp)
    movq %rdx, 216(%rbp)
    movq %r8, 224(%rbp)
    movq %r9, 232(%rbp)
    subq $32, %rsp
    call lb_ownership_10context_id
    addq $32, %rsp
    movq %rax, %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_13runtime_depth@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
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
    movq 0(%rbp), %r12
    leaq 192(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_15require_context
lb_ownership_15require_context:
    .seh_proc lb_ownership_15require_context
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
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_13runtime_depth@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L6_2
.L6_1:
    leaq .Ltext_10(%rip), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $55, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_stop
    addq $48, %rsp
    jmp .L6_3
.L6_2:
.L6_3:
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
    .globl lb_ownership_12check_thread
lb_ownership_12check_thread:
    .seh_proc lb_ownership_12check_thread
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
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 24(%rbp), %r10
    movq %rbx, (%r10)
    leaq 8(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq 0(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L7_7
.L7_6:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L7_7:
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_4
    jmp .L7_8
.L7_8:
    movl %r13d, %ebx
    jmp .L7_5
.L7_4:
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    call lb_ownership_10context_id
    addq $32, %rsp
    movq %rax, %r13
    cmpq %r13, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L7_5:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_1
    jmp .L7_2
.L7_1:
    leaq .Ltext_11(%rip), %rbx
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $43, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_stop
    addq $48, %rsp
    jmp .L7_3
.L7_2:
.L7_3:
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_11check_alive
lb_ownership_11check_alive:
    .seh_proc lb_ownership_11check_alive
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
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12check_thread
    addq $32, %rsp
    leaq lb_ownership_dead(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 24(%rbp), %r10
    movq %rbx, (%r10)
    leaq 8(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq 0(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L8_7
.L8_6:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L8_7:
    testl %r12d, %r12d
    jne .L8_8
    jmp .L8_4
.L8_8:
    movl %r12d, %ebx
    jmp .L8_5
.L8_4:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L8_5:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L8_1
    jmp .L8_2
.L8_1:
    leaq .Ltext_12(%rip), %rbx
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $36, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_stop
    addq $48, %rsp
    jmp .L8_3
.L8_2:
.L8_3:
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_reserve
lb_ownership_reserve:
    .seh_proc lb_ownership_reserve
    pushq %rbp
    .seh_pushreg %rbp
    subq $496, %rsp
    .seh_stackalloc 496
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 312(%rbp)
    movq %rdi, 488(%rbp)
    .seh_savereg %rdi, 488
    movq %rsi, 480(%rbp)
    .seh_savereg %rsi, 480
    movdqu %xmm6, 464(%rbp)
    .seh_savexmm %xmm6, 464
    movdqu %xmm7, 448(%rbp)
    .seh_savexmm %xmm7, 448
    movdqu %xmm8, 432(%rbp)
    .seh_savexmm %xmm8, 432
    movdqu %xmm9, 416(%rbp)
    .seh_savexmm %xmm9, 416
    movdqu %xmm10, 400(%rbp)
    .seh_savexmm %xmm10, 400
    movdqu %xmm11, 384(%rbp)
    .seh_savexmm %xmm11, 384
    movdqu %xmm12, 368(%rbp)
    .seh_savexmm %xmm12, 368
    movdqu %xmm13, 352(%rbp)
    .seh_savexmm %xmm13, 352
    movdqu %xmm14, 336(%rbp)
    .seh_savexmm %xmm14, 336
    movdqu %xmm15, 320(%rbp)
    .seh_savexmm %xmm15, 320
    movq %rbx, 304(%rbp)
    .seh_savereg %rbx, 304
    movq %r12, 296(%rbp)
    .seh_savereg %r12, 296
    movq %r13, 288(%rbp)
    .seh_savereg %r13, 288
    movq %r14, 280(%rbp)
    .seh_savereg %r14, 280
    movq %r15, 272(%rbp)
    .seh_savereg %r15, 272
    .seh_endprologue
    movq %rcx, 512(%rbp)
    movq %rdx, 520(%rbp)
    movq %r8, 528(%rbp)
    movq %r9, 536(%rbp)
    movq 520(%rbp), %rax
    movq %rax, 216(%rbp)
    movq 528(%rbp), %rax
    movq %rax, 200(%rbp)
    movq 536(%rbp), %r10
    leaq 184(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 200(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $64, %rcx
    cmpq %rcx, %rbx
    jae .L9_2
.L9_1:
    leaq .Ltext_13(%rip), %r12
    leaq 168(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_stop
    addq $48, %rsp
    jmp .L9_3
.L9_2:
.L9_3:
    leaq 152(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 184(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L9_4
    jmp .L9_5
.L9_4:
    leaq 136(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L9_6
.L9_5:
    leaq lb_memory_heap(%rip), %r12
    leaq 136(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L9_6:
    leaq 136(%rbp), %r12
    movq %r12, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 120(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 72(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %r12
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L9_7
    jmp .L9_8
.L9_8:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_7:
    movq %r14, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq $16, %rax
    movq %rax, 24(%rsp)
    leaq 48(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 48(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, 24(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl 24(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L9_9
    jmp .L9_10
.L9_9:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_16(%rip), %r12
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
    jmp .L9_11
.L9_10:
    movq %r15, %r10
    movq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L9_11:
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_13
    jmp .L9_12
.L9_13:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 232(%rbp), %r12
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
    movq 312(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 312(%rbp), %rax
    movq 488(%rbp), %rdi
    movq 480(%rbp), %rsi
    movdqu 464(%rbp), %xmm6
    movdqu 448(%rbp), %xmm7
    movdqu 432(%rbp), %xmm8
    movdqu 416(%rbp), %xmm9
    movdqu 400(%rbp), %xmm10
    movdqu 384(%rbp), %xmm11
    movdqu 368(%rbp), %xmm12
    movdqu 352(%rbp), %xmm13
    movdqu 336(%rbp), %xmm14
    movdqu 320(%rbp), %xmm15
    movq 304(%rbp), %rbx
    movq 296(%rbp), %r12
    movq 288(%rbp), %r13
    movq 280(%rbp), %r14
    movq 272(%rbp), %r15
    leaq 496(%rbp), %rsp
    popq %rbp
    ret
.L9_14:
.L9_12:
    movq 0(%rbp), %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_memory_set
    addq $48, %rsp
    movq 8(%rbp), %r10
    movq (%r10), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq 216(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    subq $32, %rsp
    call lb_ownership_10context_id
    addq $32, %rsp
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_ownership_15next_generation(%rip), %r13
    movq $1, %rcx
    movq %r13, %r10
    lock xaddq %rcx, (%r10)
    movq %rcx, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L9_16
.L9_15:
    leaq .Ltext_17(%rip), %r12
    leaq 32(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $36, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_stop
    addq $48, %rsp
    jmp .L9_17
.L9_16:
.L9_17:
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 16(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_live@SECREL32(%rax), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
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
    leaq 232(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 312(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 312(%rbp), %rax
    movq 488(%rbp), %rdi
    movq 480(%rbp), %rsi
    movdqu 464(%rbp), %xmm6
    movdqu 448(%rbp), %xmm7
    movdqu 432(%rbp), %xmm8
    movdqu 416(%rbp), %xmm9
    movdqu 400(%rbp), %xmm10
    movdqu 384(%rbp), %xmm11
    movdqu 368(%rbp), %xmm12
    movdqu 352(%rbp), %xmm13
    movdqu 336(%rbp), %xmm14
    movdqu 320(%rbp), %xmm15
    movq 304(%rbp), %rbx
    movq 296(%rbp), %r12
    movq 288(%rbp), %r13
    movq 280(%rbp), %r14
    movq 272(%rbp), %r15
    leaq 496(%rbp), %rsp
    popq %rbp
    ret
.L9_18:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_ownership_allocate
lb_ownership_allocate:
    .seh_proc lb_ownership_allocate
    pushq %rbp
    .seh_pushreg %rbp
    subq $352, %rsp
    .seh_stackalloc 352
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 344(%rbp)
    .seh_savereg %rdi, 344
    movq %rsi, 336(%rbp)
    .seh_savereg %rsi, 336
    movdqu %xmm6, 320(%rbp)
    .seh_savexmm %xmm6, 320
    movdqu %xmm7, 304(%rbp)
    .seh_savexmm %xmm7, 304
    movdqu %xmm8, 288(%rbp)
    .seh_savexmm %xmm8, 288
    movdqu %xmm9, 272(%rbp)
    .seh_savexmm %xmm9, 272
    movdqu %xmm10, 256(%rbp)
    .seh_savexmm %xmm10, 256
    movdqu %xmm11, 240(%rbp)
    .seh_savexmm %xmm11, 240
    movdqu %xmm12, 224(%rbp)
    .seh_savexmm %xmm12, 224
    movdqu %xmm13, 208(%rbp)
    .seh_savexmm %xmm13, 208
    movdqu %xmm14, 192(%rbp)
    .seh_savexmm %xmm14, 192
    movdqu %xmm15, 176(%rbp)
    .seh_savexmm %xmm15, 176
    movq %rbx, 168(%rbp)
    .seh_savereg %rbx, 168
    movq %r12, 160(%rbp)
    .seh_savereg %r12, 160
    movq %r13, 152(%rbp)
    .seh_savereg %r13, 152
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 136(%rbp)
    leaq 136(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 120(%rbp), %r10
    movq %rbx, (%r10)
    leaq 104(%rbp), %r10
    movq %r12, (%r10)
    leaq 64(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 24(%rsp)
    leaq 24(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_ownership_reserve
    addq $48, %rsp
    leaq 24(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_5
    jmp .L10_4
.L10_5:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 80(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L10_2
.L10_4:
    movq %r12, %r10
    movq (%r10), %rbx
    jmp .L10_3
.L10_2:
    leaq .Ltext_21(%rip), %rbx
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $13, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_22(%rip), %rbx
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
    call lb_core_12trap_text_at
    addq $48, %rsp
    movq $0, %rax
    movq %rax, %rbx
.L10_3:
    jmp .L10_7
.L10_6:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L10_7:
    movq %rbx, %rax
    movq 344(%rbp), %rdi
    movq 336(%rbp), %rsi
    movdqu 320(%rbp), %xmm6
    movdqu 304(%rbp), %xmm7
    movdqu 288(%rbp), %xmm8
    movdqu 272(%rbp), %xmm9
    movdqu 256(%rbp), %xmm10
    movdqu 240(%rbp), %xmm11
    movdqu 224(%rbp), %xmm12
    movdqu 208(%rbp), %xmm13
    movdqu 192(%rbp), %xmm14
    movdqu 176(%rbp), %xmm15
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L10_1:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_ownership_13release_shell
lb_ownership_13release_shell:
    .seh_proc lb_ownership_13release_shell
    pushq %rbp
    .seh_pushreg %rbp
    subq $416, %rsp
    .seh_stackalloc 416
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 408(%rbp)
    .seh_savereg %rdi, 408
    movq %rsi, 400(%rbp)
    .seh_savereg %rsi, 400
    movdqu %xmm6, 384(%rbp)
    .seh_savexmm %xmm6, 384
    movdqu %xmm7, 368(%rbp)
    .seh_savexmm %xmm7, 368
    movdqu %xmm8, 352(%rbp)
    .seh_savexmm %xmm8, 352
    movdqu %xmm9, 336(%rbp)
    .seh_savexmm %xmm9, 336
    movdqu %xmm10, 320(%rbp)
    .seh_savexmm %xmm10, 320
    movdqu %xmm11, 304(%rbp)
    .seh_savexmm %xmm11, 304
    movdqu %xmm12, 288(%rbp)
    .seh_savexmm %xmm12, 288
    movdqu %xmm13, 272(%rbp)
    .seh_savexmm %xmm13, 272
    movdqu %xmm14, 256(%rbp)
    .seh_savexmm %xmm14, 256
    movdqu %xmm15, 240(%rbp)
    .seh_savexmm %xmm15, 240
    movq %rbx, 232(%rbp)
    .seh_savereg %rbx, 232
    movq %r12, 224(%rbp)
    .seh_savereg %r12, 224
    movq %r13, 216(%rbp)
    .seh_savereg %r13, 216
    movq %r14, 208(%rbp)
    .seh_savereg %r14, 208
    movq %r15, 200(%rbp)
    .seh_savereg %r15, 200
    .seh_endprologue
    movq %rcx, 432(%rbp)
    movq %rdx, 440(%rbp)
    movq %r8, 448(%rbp)
    movq %r9, 456(%rbp)
    movq 432(%rbp), %rax
    movq %rax, 184(%rbp)
    leaq 184(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L11_4
    jmp .L11_17
.L11_17:
    movl %r12d, %r13d
    jmp .L11_5
.L11_4:
    leaq lb_ownership_dead(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 72(%rbp), %r10
    movq %rbx, (%r10)
    leaq 56(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 56(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r13d
    leaq 48(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L11_14
.L11_13:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_14:
.L11_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L11_6
    jmp .L11_18
.L11_18:
    movl %r12d, %r13d
    jmp .L11_7
.L11_6:
    leaq lb_ownership_buffered(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 72(%rbp), %r10
    movq %rbx, (%r10)
    leaq 56(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 56(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq 40(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L11_16
.L11_15:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_16:
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L11_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L11_1
    jmp .L11_2
.L11_1:
    leaq 168(%rbp), %r13
    movq $48, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    testq %rax, %rax
    jne .L11_8
    jmp .L11_9
.L11_8:
    leaq 152(%rbp), %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L11_10
.L11_9:
    leaq .Ltext_30(%rip), %rbx
    leaq 136(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $33, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_stop
    addq $48, %rsp
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_10:
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 120(%rbp), %rax
    movq %rax, 24(%rbp)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 104(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r10
    movq %rbx, (%r10)
    movq 16(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %r10
    movq %r12, (%r10)
    movq 16(%rbp), %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 88(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %r10
    movq %rbx, (%r10)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L11_12
    jmp .L11_11
.L11_12:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rbp), %r10
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
.L11_11:
    jmp .L11_3
.L11_2:
.L11_3:
    movq 408(%rbp), %rdi
    movq 400(%rbp), %rsi
    movdqu 384(%rbp), %xmm6
    movdqu 368(%rbp), %xmm7
    movdqu 352(%rbp), %xmm8
    movdqu 336(%rbp), %xmm9
    movdqu 320(%rbp), %xmm10
    movdqu 304(%rbp), %xmm11
    movdqu 288(%rbp), %xmm12
    movdqu 272(%rbp), %xmm13
    movdqu 256(%rbp), %xmm14
    movdqu 240(%rbp), %xmm15
    movq 232(%rbp), %rbx
    movq 224(%rbp), %r12
    movq 216(%rbp), %r13
    movq 208(%rbp), %r14
    movq 200(%rbp), %r15
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_19discard_unpublished
lb_ownership_19discard_unpublished:
    .seh_proc lb_ownership_19discard_unpublished
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
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 304(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_11check_alive
    addq $32, %rsp
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $1, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L12_10
    jmp .L12_4
.L12_10:
    movl %r12d, %r13d
    jmp .L12_5
.L12_4:
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L12_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L12_11
    jmp .L12_6
.L12_11:
    movl %r12d, %r13d
    jmp .L12_7
.L12_6:
    leaq lb_ownership_buffered(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 32(%rbp), %r10
    movq %rbx, (%r10)
    leaq 16(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r13d
    leaq 8(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L12_9
.L12_8:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L12_9:
.L12_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L12_1
    jmp .L12_2
.L12_1:
    leaq .Ltext_33(%rip), %r12
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $34, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_stop
    addq $48, %rsp
    jmp .L12_3
.L12_2:
.L12_3:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_live@SECREL32(%rax), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
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
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_dead(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_13release_shell
    addq $32, %rsp
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_abandon
lb_ownership_abandon:
    .seh_proc lb_ownership_abandon
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
    movq 288(%rbp), %rax
    movq %rax, 48(%rbp)
    leaq 48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_11check_alive
    addq $32, %rsp
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $32, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_live@SECREL32(%rax), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
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
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_dead(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    leaq lb_ownership_buffered(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq 32(%rbp), %r10
    movq %rbx, (%r10)
    leaq 16(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq 8(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L13_5
.L13_4:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L13_5:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L13_2
.L13_1:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_13release_shell
    addq $32, %rsp
    jmp .L13_3
.L13_2:
.L13_3:
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

    .p2align 4
    .globl lb_ownership_identity
lb_ownership_identity:
    .seh_proc lb_ownership_identity
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
    movq %rax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_11check_alive
    addq $32, %rsp
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $48, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L14_4
    jmp .L14_2
.L14_4:
.L14_1:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    movq %rax, %r13
    movq %r13, %rax
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
.L14_5:
    jmp .L14_3
.L14_2:
.L14_3:
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
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
.L14_6:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_ownership_mark
lb_ownership_mark:
    .seh_proc lb_ownership_mark
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
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_13pending_count@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
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
.L15_1:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_ownership_11pool_object
lb_ownership_11pool_object:
    .seh_proc lb_ownership_11pool_object
    pushq %rbp
    .seh_pushreg %rbp
    subq $560, %rsp
    .seh_stackalloc 560
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 376(%rbp)
    .seh_savereg %rbx, 376
    movq %r12, 368(%rbp)
    .seh_savereg %r12, 368
    movq %r13, 360(%rbp)
    .seh_savereg %r13, 360
    movq %r14, 352(%rbp)
    .seh_savereg %r14, 352
    movq %r15, 344(%rbp)
    .seh_savereg %r15, 344
    .seh_endprologue
    movq %rcx, 576(%rbp)
    movq %rdx, 584(%rbp)
    movq %r8, 592(%rbp)
    movq %r9, 600(%rbp)
    movq 576(%rbp), %rax
    movq %rax, 328(%rbp)
    leaq 296(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq 328(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 96(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    leaq 264(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_13pending_count@SECREL32(%rax), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %r10
    movq (%r10), %r13
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_pending@SECREL32(%rax), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jne .L16_3
.L16_2:
    leaq 248(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 16(%rbp)
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L16_8
.L16_7:
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %rax
    movq %rax, 8(%rbp)
    jmp .L16_9
.L16_8:
    movq $64, %rax
    movq %rax, 8(%rbp)
.L16_9:
    leaq 160(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 8(%rbp), %rax
    movabsq $144115188075855872, %rcx
    cmpq %rcx, %rax
    jbe .L16_11
.L16_10:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_39(%rip), %r13
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L16_12
.L16_11:
    movq 8(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq 16(%rbp), %r10
    movq (%r10), %r12
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L16_13
    jmp .L16_14
.L16_14:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L16_13:
    movq %r15, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 136(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 136(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, 56(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl 56(%rbp), %eax
    andl %r14d, %eax
    movl %eax, 48(%rbp)
    movl 48(%rbp), %eax
    testl %eax, %eax
    jne .L16_15
    jmp .L16_16
.L16_15:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_16(%rip), %r12
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
    jmp .L16_12
.L16_16:
    movq %r13, %r10
    movq (%r10), %rbx
    movq 0(%rbp), %r10
    movq %rbx, (%r10)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L16_12:
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L16_18
    jmp .L16_17
.L16_18:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 208(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L16_5
.L16_17:
    leaq 232(%rbp), %rbx
    movq 0(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L16_6
.L16_5:
    leaq .Ltext_21(%rip), %rbx
    leaq 120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $13, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    call lb_core_12trap_text_at
    addq $48, %rsp
.L16_6:
    leaq 232(%rbp), %rbx
    movq %rbx, %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rax, %r12
.L16_19:
    movq 80(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L16_21
.L16_20:
    movq 24(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    movq %rbx, %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $32, %rcx
    movq %r12, %r14
    imulq %rcx, %r14
    movq 40(%rbp), %rax
    addq %r14, %rax
    movq %rax, 32(%rbp)
    movq 72(%rbp), %r10
    movq (%r10), %r15
    movq 64(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r14, %r13
    addq %r15, %r13
    movq %r13, %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L16_19
.L16_21:
    movq 64(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L16_23
.L16_22:
    leaq 104(%rbp), %r12
    movq 72(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L16_26
    jmp .L16_25
.L16_26:
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
.L16_25:
    jmp .L16_24
.L16_23:
.L16_24:
    movq 24(%rbp), %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L16_4
.L16_3:
.L16_4:
    movq 80(%rbp), %r10
    movq (%r10), %rbx
    movq 72(%rbp), %r10
    movq (%r10), %r12
    movq 64(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $32, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 264(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 80(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 80(%rbp), %r10
    movq %rbx, (%r10)
.L16_27:
    movq 88(%rbp), %rax
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
    movq 376(%rbp), %rbx
    movq 368(%rbp), %r12
    movq 360(%rbp), %r13
    movq 352(%rbp), %r14
    movq 344(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L16_1:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_ownership_drain
lb_ownership_drain:
    .seh_proc lb_ownership_drain
    pushq %rbp
    .seh_pushreg %rbp
    subq $688, %rsp
    .seh_stackalloc 688
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 504(%rbp)
    .seh_savereg %rbx, 504
    movq %r12, 496(%rbp)
    .seh_savereg %r12, 496
    movq %r13, 488(%rbp)
    .seh_savereg %r13, 488
    movq %r14, 480(%rbp)
    .seh_savereg %r14, 480
    movq %r15, 472(%rbp)
    .seh_savereg %r15, 472
    .seh_endprologue
    movq %rcx, 704(%rbp)
    movq %rdx, 712(%rbp)
    movq %r8, 720(%rbp)
    movq %r9, 728(%rbp)
    movq 704(%rbp), %rax
    movq %rax, 456(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_13pending_count@SECREL32(%rax), %rax
    movq %rax, 216(%rbp)
    movq 216(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 208(%rbp)
    leaq 456(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 200(%rbp)
    movq 208(%rbp), %rax
    movq 200(%rbp), %rcx
    cmpq %rcx, %rax
    ja .L17_2
.L17_1:
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
    movq 504(%rbp), %rbx
    movq 496(%rbp), %r12
    movq 488(%rbp), %r13
    movq 480(%rbp), %r14
    movq 472(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
.L17_4:
    jmp .L17_3
.L17_2:
.L17_3:
    leaq 424(%rbp), %rax
    movq %rax, 192(%rbp)
    movq 192(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 184(%rbp)
    movq 192(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 176(%rbp)
    movq 192(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 168(%rbp)
    leaq 408(%rbp), %rax
    movq %rax, 160(%rbp)
    movq 160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 144(%rbp)
    leaq 392(%rbp), %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq 144(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    leaq lb_ownership_immortal(%rip), %rax
    movq %rax, 112(%rbp)
    leaq 344(%rbp), %rax
    movq %rax, 96(%rbp)
    leaq lb_ownership_collecting(%rip), %rax
    movq %rax, 104(%rbp)
    leaq lb_ownership_black(%rip), %rax
    movq %rax, 88(%rbp)
    leaq lb_ownership_10color_mask(%rip), %rax
    movq %rax, 32(%rbp)
    leaq 264(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq .Ltext_27(%rip), %rax
    movq %rax, 80(%rbp)
    leaq 296(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    leaq .Ltext_28(%rip), %rax
    movq %rax, 56(%rbp)
    leaq lb_ownership_dead(%rip), %rax
    movq %rax, 48(%rbp)
    leaq lb_ownership_buffered(%rip), %rax
    movq %rax, 40(%rbp)
    leaq 232(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 200(%rbp), %rax
    movq %rax, 8(%rbp)
.L17_5:
    movq 8(%rbp), %rax
    movq 208(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L17_7
.L17_6:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_pending@SECREL32(%rax), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 8(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    addq %r13, %r12
    movq %r12, %r10
    movq 192(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 192(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L17_11
    jmp .L17_9
.L17_11:
.L17_8:
    leaq 376(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12check_thread
    addq $32, %rsp
    movq 112(%rbp), %r10
    movzbl (%r10), %r13d
    leaq 360(%rbp), %r10
    movq %r12, (%r10)
    leaq 344(%rbp), %r10
    movl %r13d, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r14d
    movq 96(%rbp), %r10
    movzbl (%r10), %r15d
    andl %r15d, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movzbl %r14b, %r14d
    leaq 336(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L17_37
.L17_36:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L17_37:
    testl %r14d, %r14d
    jne .L17_22
    jmp .L17_23
.L17_22:
    jmp .L17_54
.L17_25:
    jmp .L17_24
.L17_23:
.L17_24:
    movq 104(%rbp), %r10
    movzbl (%r10), %r14d
    leaq 360(%rbp), %r10
    movq %r12, (%r10)
    leaq 344(%rbp), %r10
    movl %r14d, (%r10)
    movq %r13, %r10
    movzbl (%r10), %r14d
    movq 96(%rbp), %r10
    movzbl (%r10), %r15d
    andl %r15d, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movzbl %r14b, %r14d
    leaq 328(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L17_39
.L17_38:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L17_39:
    testl %r14d, %r14d
    jne .L17_26
    jmp .L17_27
.L17_26:
    movq %r12, %r10
    movl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jbe .L17_30
.L17_29:
    movq %r12, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    jmp .L17_31
.L17_30:
.L17_31:
    jmp .L17_54
.L17_32:
    jmp .L17_28
.L17_27:
.L17_28:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_11check_alive
    addq $32, %rsp
    movq %r12, %r10
    movl (%r10), %r14d
    movl %r14d, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    movq %r12, %r10
    movl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L17_34
.L17_33:
    leaq 312(%rbp), %r10
    movq %r12, (%r10)
    movq 88(%rbp), %r10
    movzbl (%r10), %r14d
    leaq 280(%rbp), %r10
    movq %r12, (%r10)
    leaq 264(%rbp), %r10
    movl %r14d, (%r10)
    movq %r13, %r10
    movzbl (%r10), %r14d
    movq 32(%rbp), %r10
    movzbl (%r10), %r15d
    movl $4294967295, %ecx
    xorl %ecx, %r15d
    movzbl %r15b, %r15d
    andl %r15d, %r14d
    movq 24(%rbp), %r10
    movzbl (%r10), %r15d
    orl %r15d, %r14d
    movq %r13, %r10
    movb %r14b, (%r10)
.L17_50:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $24, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L17_43
    jmp .L17_41
.L17_43:
.L17_40:
    movl $1, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %r15, %r11
    call *%r11
    addq $32, %rsp
    movq %r12, %r10
    movl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L17_45
.L17_44:
    movq 80(%rbp), %rax
    movq 72(%rbp), %r10
    movq %rax, (%r10)
    movq $25, %rax
    movq 64(%rbp), %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 72(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_12trap_text_at
    addq $48, %rsp
    jmp .L17_46
.L17_45:
.L17_46:
    movl $0, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    jmp .L17_42
.L17_41:
.L17_42:
    movq %r14, %r10
    movq (%r10), %rbx
    movq $32, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %rbx, %r11
    call *%r11
    addq $32, %rsp
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_live@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movzbl (%r10), %ebx
    movq 48(%rbp), %r10
    movzbl (%r10), %r15d
    orl %r15d, %ebx
    movq %r13, %r10
    movb %bl, (%r10)
    movq 40(%rbp), %r10
    movzbl (%r10), %ebx
    leaq 248(%rbp), %r10
    movq %r12, (%r10)
    leaq 232(%rbp), %r10
    movl %ebx, (%r10)
    movq %r13, %r10
    movzbl (%r10), %ebx
    movq 16(%rbp), %r10
    movzbl (%r10), %r15d
    andl %r15d, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq 224(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L17_52
.L17_51:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L17_52:
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L17_48
.L17_47:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_13release_shell
    addq $32, %rsp
    jmp .L17_49
.L17_48:
.L17_49:
.L17_53:
    jmp .L17_35
.L17_34:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_13possible_root
    addq $32, %rsp
.L17_35:
.L17_54:
    jmp .L17_10
.L17_9:
    movq 184(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L17_15
    jmp .L17_13
.L17_15:
.L17_12:
    movq 176(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L17_19
    jmp .L17_17
.L17_19:
.L17_16:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    jmp .L17_18
.L17_17:
.L17_18:
    movq 168(%rbp), %r10
    movq (%r10), %r12
    movq 160(%rbp), %r10
    movq %rbx, (%r10)
    movq 152(%rbp), %r10
    movq %r12, (%r10)
    movq 136(%rbp), %r10
    movq %rbx, (%r10)
    movq 128(%rbp), %r10
    movq %r12, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r12
    movq 120(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L17_21
    jmp .L17_20
.L17_21:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 136(%rbp), %r10
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
.L17_20:
    jmp .L17_14
.L17_13:
.L17_14:
.L17_10:
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 8(%rbp)
    jmp .L17_5
.L17_7:
    movq 200(%rbp), %rax
    movq 216(%rbp), %r10
    movq %rax, (%r10)
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
    movq 504(%rbp), %rbx
    movq 496(%rbp), %r12
    movq 488(%rbp), %r13
    movq 480(%rbp), %r14
    movq 472(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_13possible_root
lb_ownership_13possible_root:
    .seh_proc lb_ownership_13possible_root
    pushq %rbp
    .seh_pushreg %rbp
    subq $624, %rsp
    .seh_stackalloc 624
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 616(%rbp)
    .seh_savereg %rdi, 616
    movq %rsi, 608(%rbp)
    .seh_savereg %rsi, 608
    movdqu %xmm6, 592(%rbp)
    .seh_savexmm %xmm6, 592
    movdqu %xmm7, 576(%rbp)
    .seh_savexmm %xmm7, 576
    movdqu %xmm8, 560(%rbp)
    .seh_savexmm %xmm8, 560
    movdqu %xmm9, 544(%rbp)
    .seh_savexmm %xmm9, 544
    movdqu %xmm10, 528(%rbp)
    .seh_savexmm %xmm10, 528
    movdqu %xmm11, 512(%rbp)
    .seh_savexmm %xmm11, 512
    movdqu %xmm12, 496(%rbp)
    .seh_savexmm %xmm12, 496
    movdqu %xmm13, 480(%rbp)
    .seh_savexmm %xmm13, 480
    movdqu %xmm14, 464(%rbp)
    .seh_savexmm %xmm14, 464
    movdqu %xmm15, 448(%rbp)
    .seh_savexmm %xmm15, 448
    movq %rbx, 440(%rbp)
    .seh_savereg %rbx, 440
    movq %r12, 432(%rbp)
    .seh_savereg %r12, 432
    movq %r13, 424(%rbp)
    .seh_savereg %r13, 424
    movq %r14, 416(%rbp)
    .seh_savereg %r14, 416
    movq %r15, 408(%rbp)
    .seh_savereg %r15, 408
    .seh_endprologue
    movq %rcx, 640(%rbp)
    movq %rdx, 648(%rbp)
    movq %r8, 656(%rbp)
    movq %r9, 664(%rbp)
    movq 640(%rbp), %rax
    movq %rax, 392(%rbp)
    leaq 392(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %rax
    leaq 376(%rbp), %r10
    movq %rax, (%r10)
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_10color_mask(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %eax
    movl %eax, 88(%rbp)
    movl 88(%rbp), %ecx
    andl %ecx, %r13d
    movzbl %r13b, %r13d
    leaq 368(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L18_13
.L18_12:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L18_13:
    leaq lb_ownership_purple(%rip), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    cmpl %r13d, %r15d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L18_2
.L18_1:
    movq 112(%rbp), %rax
    leaq 352(%rbp), %r10
    movq %rax, (%r10)
    leaq 336(%rbp), %r10
    movl %r15d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl 88(%rbp), %eax
    movl $4294967295, %ecx
    movl %eax, %r14d
    xorl %ecx, %r14d
    movzbl %r14b, %r14d
    andl %r14d, %r13d
    leaq 336(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
.L18_14:
    leaq lb_ownership_buffered(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq 112(%rbp), %rax
    leaq 320(%rbp), %r10
    movq %rax, (%r10)
    leaq 304(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r14d
    leaq 304(%rbp), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    andl %r15d, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movzbl %r14b, %r14d
    leaq 296(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L18_16
.L18_15:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L18_16:
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L18_5
.L18_4:
    movq %r12, %r10
    movzbl (%r10), %eax
    movl %eax, 104(%rbp)
    movl 104(%rbp), %ecx
    movl %r13d, %eax
    orl %ecx, %eax
    movl %eax, 96(%rbp)
    movl 96(%rbp), %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq 112(%rbp), %rax
    leaq 280(%rbp), %r10
    movq %rax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_10root_count@SECREL32(%rax), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %r10
    movq (%r10), %r15
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_roots@SECREL32(%rax), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r15
    jne .L18_18
.L18_17:
    leaq 264(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 16(%rbp)
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L18_23
.L18_22:
    movq %r14, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, 8(%rbp)
    jmp .L18_24
.L18_23:
    leaq lb_ownership_15candidate_limit(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq %rax, 8(%rbp)
.L18_24:
    leaq 176(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 8(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L18_26
.L18_25:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_39(%rip), %r14
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L18_27
.L18_26:
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L18_28
    jmp .L18_29
.L18_29:
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L18_28:
    movq %r14, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 152(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r15, %r11
    call *%r11
    addq $32, %rsp
    leaq 152(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, 56(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl 56(%rbp), %eax
    andl %r15d, %eax
    movl %eax, 48(%rbp)
    movl 48(%rbp), %eax
    testl %eax, %eax
    jne .L18_30
    jmp .L18_31
.L18_30:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_16(%rip), %r12
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
    jmp .L18_27
.L18_31:
    movq %r12, %r10
    movq (%r10), %rbx
    movq 0(%rbp), %r10
    movq %rbx, (%r10)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L18_27:
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L18_33
    jmp .L18_32
.L18_33:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 224(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L18_20
.L18_32:
    leaq 248(%rbp), %rbx
    movq 0(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L18_21
.L18_20:
    leaq .Ltext_21(%rip), %rbx
    leaq 136(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $13, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_51(%rip), %rbx
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
    call lb_core_12trap_text_at
    addq $48, %rsp
.L18_21:
    leaq 248(%rbp), %rbx
    movq %rbx, %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 24(%rbp), %r10
    movq (%r10), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rax
    movq %rax, %r13
.L18_34:
    movq 80(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L18_36
.L18_35:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r13, %rax
    imulq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 72(%rbp), %r10
    movq (%r10), %r15
    movq 64(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq %rax, %r14
    addq %r15, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq 32(%rbp), %r10
    movq %r14, (%r10)
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r13
    jmp .L18_34
.L18_36:
    movq 64(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L18_38
.L18_37:
    leaq 120(%rbp), %r12
    movq 72(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L18_41
    jmp .L18_40
.L18_41:
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
.L18_40:
    jmp .L18_39
.L18_38:
.L18_39:
    movq 24(%rbp), %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L18_19
.L18_18:
.L18_19:
    movq 80(%rbp), %r10
    movq (%r10), %rbx
    movq 72(%rbp), %r10
    movq (%r10), %r12
    movq 64(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq 112(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 80(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 80(%rbp), %r10
    movq %rbx, (%r10)
.L18_42:
    leaq lb_ownership_15candidate_limit(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L18_10
    jmp .L18_43
.L18_43:
    movl %r12d, %ebx
    jmp .L18_11
.L18_10:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_17collector_running@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L18_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L18_7
    jmp .L18_8
.L18_7:
    subq $32, %rsp
    call lb_ownership_collect
    addq $32, %rsp
    jmp .L18_9
.L18_8:
.L18_9:
    jmp .L18_6
.L18_5:
.L18_6:
    jmp .L18_3
.L18_2:
.L18_3:
    movq 616(%rbp), %rdi
    movq 608(%rbp), %rsi
    movdqu 592(%rbp), %xmm6
    movdqu 576(%rbp), %xmm7
    movdqu 560(%rbp), %xmm8
    movdqu 544(%rbp), %xmm9
    movdqu 528(%rbp), %xmm10
    movdqu 512(%rbp), %xmm11
    movdqu 496(%rbp), %xmm12
    movdqu 480(%rbp), %xmm13
    movdqu 464(%rbp), %xmm14
    movdqu 448(%rbp), %xmm15
    movq 440(%rbp), %rbx
    movq 432(%rbp), %r12
    movq 424(%rbp), %r13
    movq 416(%rbp), %r14
    movq 408(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_15visit_mark_gray
lb_ownership_15visit_mark_gray:
    .seh_proc lb_ownership_15visit_mark_gray
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
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 24(%rbp), %r10
    movq %rbx, (%r10)
    leaq 8(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq 0(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L19_6
.L19_5:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L19_6:
    testl %r12d, %r12d
    jne .L19_1
    jmp .L19_2
.L19_1:
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L19_4:
    jmp .L19_3
.L19_2:
.L19_3:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12check_thread
    addq $32, %rsp
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_9mark_gray
    addq $32, %rsp
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_9mark_gray
lb_ownership_9mark_gray:
    .seh_proc lb_ownership_9mark_gray
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
    leaq 56(%rbp), %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_10color_mask(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %eax
    movl %eax, 8(%rbp)
    movl 8(%rbp), %ecx
    andl %ecx, %r13d
    movzbl %r13b, %r13d
    leaq 48(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L20_5
.L20_4:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L20_5:
    leaq lb_ownership_gray(%rip), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    cmpl %r13d, %r15d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L20_2
.L20_1:
    leaq 32(%rbp), %r10
    movq %rbx, (%r10)
    leaq 16(%rbp), %r10
    movl %r15d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl 8(%rbp), %eax
    movl $4294967295, %ecx
    movl %eax, %r14d
    xorl %ecx, %r14d
    movzbl %r14b, %r14d
    andl %r14d, %r13d
    leaq 16(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
.L20_6:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $40, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq lb_ownership_15visit_mark_gray(%rip), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    jmp .L20_3
.L20_2:
.L20_3:
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
    .globl lb_ownership_10visit_scan
lb_ownership_10visit_scan:
    .seh_proc lb_ownership_10visit_scan
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
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 24(%rbp), %r10
    movq %rbx, (%r10)
    leaq 8(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq 0(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L21_6
.L21_5:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L21_6:
    testl %r12d, %r12d
    jne .L21_1
    jmp .L21_2
.L21_1:
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L21_4:
    jmp .L21_3
.L21_2:
.L21_3:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12check_thread
    addq $32, %rsp
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_scan
    addq $32, %rsp
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_16visit_scan_black
lb_ownership_16visit_scan_black:
    .seh_proc lb_ownership_16visit_scan_black
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
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 320(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 328(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 48(%rbp), %r10
    movq %rbx, (%r10)
    leaq 32(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq 32(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    andl %r14d, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq 24(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L22_9
.L22_8:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_9:
    testl %r13d, %r13d
    jne .L22_1
    jmp .L22_2
.L22_1:
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L22_4:
    jmp .L22_3
.L22_2:
.L22_3:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12check_thread
    addq $32, %rsp
    movq %rbx, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_65(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq 8(%rbp), %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_10color_mask(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    andl %r14d, %r13d
    movzbl %r13b, %r13d
    leaq 0(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L22_11
.L22_10:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_11:
    leaq lb_ownership_black(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L22_6
.L22_5:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_10scan_black
    addq $32, %rsp
    jmp .L22_7
.L22_6:
.L22_7:
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_scan
lb_ownership_scan:
    .seh_proc lb_ownership_scan
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
    movq 304(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 40(%rbp), %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_10color_mask(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    andl %r14d, %r13d
    movzbl %r13b, %r13d
    leaq 32(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L23_8
.L23_7:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L23_8:
    leaq lb_ownership_gray(%rip), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    cmpl %r13d, %r15d
    jne .L23_2
.L23_1:
    movq %rbx, %r10
    movl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jbe .L23_5
.L23_4:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_10scan_black
    addq $32, %rsp
    jmp .L23_6
.L23_5:
    leaq lb_ownership_white(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq 16(%rbp), %r10
    movq %rbx, (%r10)
    leaq 0(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl $4294967295, %ecx
    movl %r14d, %r15d
    xorl %ecx, %r15d
    movzbl %r15b, %r15d
    andl %r15d, %r13d
    leaq 0(%rbp), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    orl %r15d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
.L23_9:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $40, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq lb_ownership_10visit_scan(%rip), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
.L23_6:
    jmp .L23_3
.L23_2:
.L23_3:
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

    .p2align 4
    .globl lb_ownership_10scan_black
lb_ownership_10scan_black:
    .seh_proc lb_ownership_10scan_black
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
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    movq 272(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_black(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 16(%rbp), %r10
    movq %rbx, (%r10)
    leaq 0(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_10color_mask(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $4294967295, %ecx
    xorl %ecx, %r14d
    movzbl %r14b, %r14d
    andl %r14d, %r13d
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
.L24_1:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $40, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq lb_ownership_16visit_scan_black(%rip), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
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
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_12visit_gather
lb_ownership_12visit_gather:
    .seh_proc lb_ownership_12visit_gather
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
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 24(%rbp), %r10
    movq %rbx, (%r10)
    leaq 8(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq 0(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L25_6
.L25_5:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L25_6:
    testl %r12d, %r12d
    jne .L25_1
    jmp .L25_2
.L25_1:
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L25_4:
    jmp .L25_3
.L25_2:
.L25_3:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12check_thread
    addq $32, %rsp
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_gather
    addq $32, %rsp
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_gather
lb_ownership_gather:
    .seh_proc lb_ownership_gather
    pushq %rbp
    .seh_pushreg %rbp
    subq $560, %rsp
    .seh_stackalloc 560
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 376(%rbp)
    .seh_savereg %rbx, 376
    movq %r12, 368(%rbp)
    .seh_savereg %r12, 368
    movq %r13, 360(%rbp)
    .seh_savereg %r13, 360
    movq %r14, 352(%rbp)
    .seh_savereg %r14, 352
    movq %r15, 344(%rbp)
    .seh_savereg %r15, 344
    .seh_endprologue
    movq %rcx, 576(%rbp)
    movq %rdx, 584(%rbp)
    movq %r8, 592(%rbp)
    movq %r9, 600(%rbp)
    movq 576(%rbp), %rax
    movq %rax, 328(%rbp)
    leaq 328(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    leaq 312(%rbp), %r10
    movq %rax, (%r10)
    movq 80(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_10color_mask(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    andl %r14d, %r13d
    movzbl %r13b, %r13d
    leaq 304(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L26_7
.L26_6:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L26_7:
    leaq lb_ownership_white(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    cmpl %r13d, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L26_4
    jmp .L26_36
.L26_36:
    movl %r14d, %r13d
    jmp .L26_5
.L26_4:
    leaq lb_ownership_collecting(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq 80(%rbp), %rax
    leaq 288(%rbp), %r10
    movq %rax, (%r10)
    leaq 272(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq 272(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    andl %r14d, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq 264(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L26_9
.L26_8:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L26_9:
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L26_5:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L26_1
    jmp .L26_2
.L26_1:
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_collecting(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq 80(%rbp), %rax
    leaq 248(%rbp), %r10
    movq %rax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_11white_count@SECREL32(%rax), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movq (%r10), %r14
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_whites@SECREL32(%rax), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jne .L26_11
.L26_10:
    leaq 232(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 16(%rbp)
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L26_16
.L26_15:
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, 8(%rbp)
    jmp .L26_17
.L26_16:
    movq $256, %rax
    movq %rax, 8(%rbp)
.L26_17:
    leaq 144(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 8(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L26_19
.L26_18:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_39(%rip), %r15
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L26_20
.L26_19:
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L26_21
    jmp .L26_22
.L26_22:
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L26_21:
    movq %r15, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 120(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %rbx, %r11
    call *%r11
    addq $32, %rsp
    leaq 120(%rbp), %r12
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, 48(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl 48(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L26_23
    jmp .L26_24
.L26_23:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_16(%rip), %r12
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
    jmp .L26_20
.L26_24:
    movq %r12, %r10
    movq (%r10), %rbx
    movq 0(%rbp), %r10
    movq %rbx, (%r10)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L26_20:
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L26_26
    jmp .L26_25
.L26_26:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 192(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L26_13
.L26_25:
    leaq 216(%rbp), %rbx
    movq 0(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L26_14
.L26_13:
    leaq .Ltext_21(%rip), %rbx
    leaq 104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $13, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_58(%rip), %rbx
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
    call lb_core_12trap_text_at
    addq $48, %rsp
.L26_14:
    leaq 216(%rbp), %rbx
    movq %rbx, %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 24(%rbp), %r10
    movq (%r10), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rax
    movq %rax, %r13
.L26_27:
    movq 72(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L26_29
.L26_28:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r13, %rax
    imulq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 64(%rbp), %r10
    movq (%r10), %r15
    movq 56(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq %rax, %r14
    addq %r15, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq 32(%rbp), %r10
    movq %r14, (%r10)
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r13
    jmp .L26_27
.L26_29:
    movq 56(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L26_31
.L26_30:
    leaq 88(%rbp), %r12
    movq 64(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L26_34
    jmp .L26_33
.L26_34:
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
.L26_33:
    jmp .L26_32
.L26_31:
.L26_32:
    movq 24(%rbp), %r10
    movq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L26_12
.L26_11:
.L26_12:
    movq 72(%rbp), %r10
    movq (%r10), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 56(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq 80(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 72(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 72(%rbp), %r10
    movq %rbx, (%r10)
.L26_35:
    movq 80(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $40, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_12visit_gather(%rip), %r12
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 80(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %rbx, %r11
    call *%r11
    addq $32, %rsp
    jmp .L26_3
.L26_2:
.L26_3:
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
    movq 376(%rbp), %rbx
    movq 368(%rbp), %r12
    movq 360(%rbp), %r13
    movq 352(%rbp), %r14
    movq 344(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_13visit_restore
lb_ownership_13visit_restore:
    .seh_proc lb_ownership_13visit_restore
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
    movq 328(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 40(%rbp), %r10
    movq %rbx, (%r10)
    leaq 24(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq 24(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r15d
    andl %r15d, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq 16(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L27_9
.L27_8:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L27_9:
    testl %r13d, %r13d
    jne .L27_1
    jmp .L27_2
.L27_1:
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
.L27_4:
    jmp .L27_3
.L27_2:
.L27_3:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12check_thread
    addq $32, %rsp
    leaq lb_ownership_collecting(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq 40(%rbp), %r10
    movq %rbx, (%r10)
    leaq 24(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    movq %r14, %r10
    movzbl (%r10), %r15d
    andl %r15d, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq 8(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L27_11
.L27_10:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L27_11:
    testl %r13d, %r13d
    jne .L27_5
    jmp .L27_6
.L27_5:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    jmp .L27_7
.L27_6:
.L27_7:
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
    .globl lb_ownership_collect
lb_ownership_collect:
    .seh_proc lb_ownership_collect
    pushq %rbp
    .seh_pushreg %rbp
    subq $448, %rsp
    .seh_stackalloc 448
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 264(%rbp)
    .seh_savereg %rbx, 264
    movq %r12, 256(%rbp)
    .seh_savereg %r12, 256
    movq %r13, 248(%rbp)
    .seh_savereg %r13, 248
    movq %r14, 240(%rbp)
    .seh_savereg %r14, 240
    movq %r15, 232(%rbp)
    .seh_savereg %r15, 232
    .seh_endprologue
    movq %rcx, 464(%rbp)
    movq %rdx, 472(%rbp)
    movq %r8, 480(%rbp)
    movq %r9, 488(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_17collector_running@SECREL32(%rax), %rax
    movq %rax, 144(%rbp)
    movq 144(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L28_1
    jmp .L28_2
.L28_1:
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
    movq 264(%rbp), %rbx
    movq 256(%rbp), %r12
    movq 248(%rbp), %r13
    movq 240(%rbp), %r14
    movq 232(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L28_4:
    jmp .L28_3
.L28_2:
.L28_3:
    movl $1, %eax
    movq 144(%rbp), %r10
    movb %al, (%r10)
    leaq lb_ownership_10color_mask(%rip), %r15
    leaq lb_ownership_purple(%rip), %r12
    leaq lb_ownership_dead(%rip), %rax
    movq %rax, 72(%rbp)
    leaq 160(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq lb_ownership_buffered(%rip), %rax
    movq %rax, 64(%rbp)
    movq $0, %rax
    movq %rax, 8(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L28_5:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_10root_count@SECREL32(%rax), %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r14
    jae .L28_7
.L28_6:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_roots@SECREL32(%rax), %rax
    movq %rax, 128(%rbp)
    movq 128(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 120(%rbp)
    movq 128(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 104(%rbp)
    movq 104(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r14, %rax
    imulq %rcx, %rax
    movq %rax, 96(%rbp)
    movq 120(%rbp), %rax
    movq 96(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    leaq 200(%rbp), %r10
    movq %rax, (%r10)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %r10
    movzbl (%r10), %r13d
    movq %r15, %r10
    movzbl (%r10), %ebx
    movl %ebx, %ecx
    movl %r13d, %ebx
    andl %ecx, %ebx
    movzbl %bl, %ebx
    leaq 192(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L28_47
.L28_46:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L28_47:
    movq %r12, %r10
    movzbl (%r10), %r13d
    cmpl %ebx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L28_11
    jmp .L28_50
.L28_50:
    movl %r13d, %ebx
    jmp .L28_12
.L28_11:
    movq 80(%rbp), %r10
    movl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %ebx
.L28_12:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L28_13
    jmp .L28_51
.L28_51:
    movl %r13d, %ebx
    jmp .L28_14
.L28_13:
    movq 72(%rbp), %r10
    movzbl (%r10), %ebx
    movq 80(%rbp), %rax
    leaq 176(%rbp), %r10
    movq %rax, (%r10)
    leaq 160(%rbp), %r10
    movl %ebx, (%r10)
    movq 24(%rbp), %r10
    movzbl (%r10), %ebx
    movq 16(%rbp), %r10
    movzbl (%r10), %r13d
    andl %r13d, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq 152(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L28_49
.L28_48:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L28_49:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L28_14:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L28_8
    jmp .L28_9
.L28_8:
    movq 8(%rbp), %rax
    movq 104(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_68(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq 120(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 80(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    jmp .L28_10
.L28_9:
    movq 24(%rbp), %r10
    movzbl (%r10), %ebx
    movq 64(%rbp), %r10
    movzbl (%r10), %r13d
    movl $4294967295, %ecx
    xorl %ecx, %r13d
    movzbl %r13b, %r13d
    andl %r13d, %ebx
    movq 24(%rbp), %r10
    movb %bl, (%r10)
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_13release_shell
    addq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, %rbx
.L28_10:
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %rbx, %rax
    movq %rax, 8(%rbp)
    movq %r13, %r14
    jmp .L28_5
.L28_7:
    movq 8(%rbp), %rax
    movq 136(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, %rbx
.L28_15:
    movq 136(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L28_17
.L28_16:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_roots@SECREL32(%rax), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_9mark_gray
    addq $32, %rsp
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L28_15
.L28_17:
    movq $0, %rax
    movq %rax, %rbx
.L28_18:
    movq 136(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L28_20
.L28_19:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_roots@SECREL32(%rax), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_73(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_scan
    addq $32, %rsp
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L28_18
.L28_20:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_11white_count@SECREL32(%rax), %rax
    movq %rax, 56(%rbp)
    movq $0, %rax
    movq 56(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, %r12
.L28_21:
    movq 136(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L28_23
.L28_22:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_roots@SECREL32(%rax), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r12, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_gather
    addq $32, %rsp
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L28_21
.L28_23:
    leaq lb_ownership_buffered(%rip), %r12
    movq $0, %rax
    movq %rax, %r13
.L28_24:
    movq 136(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L28_26
.L28_25:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_roots@SECREL32(%rax), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_77(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r13, %r14
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r15d
    movq %r12, %r10
    movzbl (%r10), %ebx
    movl $4294967295, %ecx
    xorl %ecx, %ebx
    movzbl %bl, %ebx
    movl %ebx, %ecx
    movl %r15d, %ebx
    andl %ecx, %ebx
    movq %r14, %r10
    movb %bl, (%r10)
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L28_24
.L28_26:
    movq $0, %rax
    movq 136(%rbp), %r10
    movq %rax, (%r10)
    leaq lb_ownership_13visit_restore(%rip), %rbx
    movq $0, %rax
    movq %rax, %r12
.L28_27:
    movq 56(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L28_29
.L28_28:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_whites@SECREL32(%rax), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_79(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r12, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $16, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $40, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L28_27
.L28_29:
    leaq .Ltext_27(%rip), %rax
    movq %rax, 48(%rbp)
    leaq 216(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    leaq .Ltext_84(%rip), %rax
    movq %rax, 32(%rbp)
    movq $0, %rax
    movq %rax, 0(%rbp)
.L28_30:
    movq 56(%rbp), %r10
    movq (%r10), %r14
    movq 0(%rbp), %rax
    cmpq %r14, %rax
    jae .L28_32
.L28_31:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_whites@SECREL32(%rax), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq 0(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    addq %r14, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $24, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L28_36
    jmp .L28_34
.L28_36:
.L28_33:
    movq %r13, %r10
    movl (%r10), %r15d
    movl %r15d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_82(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r15d
    movq %r13, %r10
    movl %r15d, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    movq %r13, %r10
    movl (%r10), %ebx
    cmpl %r15d, %ebx
    jbe .L28_38
.L28_37:
    movq 48(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $25, %rax
    movq 40(%rbp), %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_12trap_text_at
    addq $48, %rsp
    jmp .L28_39
.L28_38:
.L28_39:
    movq %r13, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_85(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %ebx
    movq %r13, %r10
    movl %ebx, (%r10)
    jmp .L28_35
.L28_34:
.L28_35:
    movq 0(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 0(%rbp)
    jmp .L28_30
.L28_32:
    movq $0, %rax
    movq %rax, %rbx
.L28_40:
    movq 56(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L28_42
.L28_41:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_whites@SECREL32(%rax), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_87(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $16, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $32, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L28_40
.L28_42:
    leaq lb_ownership_dead(%rip), %rbx
    movq $0, %rax
    movq %rax, %r12
.L28_43:
    movq 56(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L28_45
.L28_44:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_whites@SECREL32(%rax), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_111(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r12, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_live@SECREL32(%rax), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_90(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %r14, %r10
    movq %r15, (%r10)
    movl $0, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movzbl (%r10), %r15d
    movq %r14, %r10
    movb %r15b, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_13release_shell
    addq $32, %rsp
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L28_43
.L28_45:
    movq $0, %rax
    movq 56(%rbp), %r10
    movq %rax, (%r10)
    movl $0, %eax
    movq 144(%rbp), %r10
    movb %al, (%r10)
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
    movq 264(%rbp), %rbx
    movq 256(%rbp), %r12
    movq 248(%rbp), %r13
    movq 240(%rbp), %r14
    movq 232(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_9weak_make
lb_ownership_9weak_make:
    .seh_proc lb_ownership_9weak_make
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
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 48(%rbp)
    leaq 48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_11check_alive
    addq $32, %rsp
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 24(%rbp), %r10
    movq %rbx, (%r10)
    leaq 8(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq 0(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L29_6
.L29_5:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L29_6:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L29_2
.L29_1:
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_92(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    jmp .L29_3
.L29_2:
.L29_3:
    leaq 40(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq 64(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r13, %r10
    movq 0(%r10), %rax
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L29_4:
    leaq .Ltext_93(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_ownership_9weak_copy
lb_ownership_9weak_copy:
    .seh_proc lb_ownership_9weak_copy
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
    movq 288(%rbp), %rax
    leaq 40(%rbp), %r10
    movq %rax, 0(%r10)
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L30_4
    jmp .L30_2
.L30_4:
.L30_1:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12check_thread
    addq $32, %rsp
    leaq lb_ownership_immortal(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq 24(%rbp), %r10
    movq %r12, (%r10)
    leaq 8(%rbp), %r10
    movl %r13d, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq 8(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    andl %r14d, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq 0(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L30_10
.L30_9:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L30_10:
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L30_6
.L30_5:
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r14d
    movl %r14d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_94(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    jmp .L30_7
.L30_6:
.L30_7:
    jmp .L30_3
.L30_2:
.L30_3:
    leaq 56(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
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
.L30_8:
    leaq .Ltext_95(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_ownership_9weak_drop
lb_ownership_9weak_drop:
    .seh_proc lb_ownership_9weak_drop
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
    leaq 40(%rbp), %r10
    movq %rax, 0(%r10)
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L31_4
    jmp .L31_2
.L31_4:
.L31_1:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12check_thread
    addq $32, %rsp
    leaq lb_ownership_immortal(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 24(%rbp), %r10
    movq %rbx, (%r10)
    leaq 8(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    andl %r13d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq 0(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L31_9
.L31_8:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L31_9:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L31_6
.L31_5:
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_96(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_13release_shell
    addq $32, %rsp
    jmp .L31_7
.L31_6:
.L31_7:
    jmp .L31_3
.L31_2:
.L31_3:
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

    .p2align 4
    .globl lb_ownership_8weak_get
lb_ownership_8weak_get:
    .seh_proc lb_ownership_8weak_get
    pushq %rbp
    .seh_pushreg %rbp
    subq $352, %rsp
    .seh_stackalloc 352
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 344(%rbp)
    .seh_savereg %rdi, 344
    movq %rsi, 336(%rbp)
    .seh_savereg %rsi, 336
    movdqu %xmm6, 320(%rbp)
    .seh_savexmm %xmm6, 320
    movdqu %xmm7, 304(%rbp)
    .seh_savexmm %xmm7, 304
    movdqu %xmm8, 288(%rbp)
    .seh_savexmm %xmm8, 288
    movdqu %xmm9, 272(%rbp)
    .seh_savexmm %xmm9, 272
    movdqu %xmm10, 256(%rbp)
    .seh_savexmm %xmm10, 256
    movdqu %xmm11, 240(%rbp)
    .seh_savexmm %xmm11, 240
    movdqu %xmm12, 224(%rbp)
    .seh_savexmm %xmm12, 224
    movdqu %xmm13, 208(%rbp)
    .seh_savexmm %xmm13, 208
    movdqu %xmm14, 192(%rbp)
    .seh_savexmm %xmm14, 192
    movdqu %xmm15, 176(%rbp)
    .seh_savexmm %xmm15, 176
    movq %rbx, 168(%rbp)
    .seh_savereg %rbx, 168
    movq %r12, 160(%rbp)
    .seh_savereg %r12, 160
    movq %r13, 152(%rbp)
    .seh_savereg %r13, 152
    movq %r14, 144(%rbp)
    .seh_savereg %r14, 144
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 368(%rbp), %rax
    leaq 128(%rbp), %r10
    movq %rax, 0(%r10)
    leaq 128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L32_4
    jmp .L32_2
.L32_4:
.L32_1:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12check_thread
    addq $32, %rsp
    leaq lb_ownership_dead(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 112(%rbp), %r10
    movq %rbx, (%r10)
    leaq 96(%rbp), %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq 96(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    andl %r14d, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq 88(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L32_11
.L32_10:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L32_11:
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L32_6
.L32_5:
    leaq 72(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_11check_alive
    addq $32, %rsp
    leaq lb_ownership_immortal(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq 56(%rbp), %r10
    movq %rbx, (%r10)
    leaq 40(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq 40(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    andl %r14d, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq 32(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L32_18
.L32_17:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L32_18:
    testl %r13d, %r13d
    jne .L32_12
    jmp .L32_13
.L32_12:
    jmp .L32_20
.L32_15:
    jmp .L32_14
.L32_13:
.L32_14:
    movq %rbx, %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq lb_ownership_black(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq 16(%rbp), %r10
    movq %rbx, (%r10)
    leaq 0(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    leaq lb_ownership_10color_mask(%rip), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $4294967295, %ecx
    xorl %ecx, %r14d
    movzbl %r14b, %r14d
    andl %r14d, %r13d
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    orl %r14d, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
.L32_19:
    jmp .L32_20
.L32_16:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L32_20:
    movq %rbx, %rax
    movq 344(%rbp), %rdi
    movq 336(%rbp), %rsi
    movdqu 320(%rbp), %xmm6
    movdqu 304(%rbp), %xmm7
    movdqu 288(%rbp), %xmm8
    movdqu 272(%rbp), %xmm9
    movdqu 256(%rbp), %xmm10
    movdqu 240(%rbp), %xmm11
    movdqu 224(%rbp), %xmm12
    movdqu 208(%rbp), %xmm13
    movdqu 192(%rbp), %xmm14
    movdqu 176(%rbp), %xmm15
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    movq 144(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L32_8:
    jmp .L32_7
.L32_6:
.L32_7:
    jmp .L32_3
.L32_2:
.L32_3:
    movq $0, %rax
    movq 344(%rbp), %rdi
    movq 336(%rbp), %rsi
    movdqu 320(%rbp), %xmm6
    movdqu 304(%rbp), %xmm7
    movdqu 288(%rbp), %xmm8
    movdqu 272(%rbp), %xmm9
    movdqu 256(%rbp), %xmm10
    movdqu 240(%rbp), %xmm11
    movdqu 224(%rbp), %xmm12
    movdqu 208(%rbp), %xmm13
    movdqu 192(%rbp), %xmm14
    movdqu 176(%rbp), %xmm15
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    movq 144(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L32_9:
    leaq .Ltext_97(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_ownership_10finish_run
lb_ownership_10finish_run:
    .seh_proc lb_ownership_10finish_run
    pushq %rbp
    .seh_pushreg %rbp
    subq $608, %rsp
    .seh_stackalloc 608
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 600(%rbp)
    .seh_savereg %rdi, 600
    movq %rsi, 592(%rbp)
    .seh_savereg %rsi, 592
    movdqu %xmm6, 576(%rbp)
    .seh_savexmm %xmm6, 576
    movdqu %xmm7, 560(%rbp)
    .seh_savexmm %xmm7, 560
    movdqu %xmm8, 544(%rbp)
    .seh_savexmm %xmm8, 544
    movdqu %xmm9, 528(%rbp)
    .seh_savexmm %xmm9, 528
    movdqu %xmm10, 512(%rbp)
    .seh_savexmm %xmm10, 512
    movdqu %xmm11, 496(%rbp)
    .seh_savexmm %xmm11, 496
    movdqu %xmm12, 480(%rbp)
    .seh_savexmm %xmm12, 480
    movdqu %xmm13, 464(%rbp)
    .seh_savexmm %xmm13, 464
    movdqu %xmm14, 448(%rbp)
    .seh_savexmm %xmm14, 448
    movdqu %xmm15, 432(%rbp)
    .seh_savexmm %xmm15, 432
    movq %rbx, 424(%rbp)
    .seh_savereg %rbx, 424
    movq %r12, 416(%rbp)
    .seh_savereg %r12, 416
    movq %r13, 408(%rbp)
    .seh_savereg %r13, 408
    movq %r14, 400(%rbp)
    .seh_savereg %r14, 400
    movq %r15, 392(%rbp)
    .seh_savereg %r15, 392
    .seh_endprologue
    movq %rcx, 624(%rbp)
    movq %rdx, 632(%rbp)
    movq %r8, 640(%rbp)
    movq %r9, 648(%rbp)
    movq 624(%rbp), %rax
    movl %eax, 376(%rbp)
    subq $32, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_drain
    addq $32, %rsp
    subq $32, %rsp
    call lb_ownership_collect
    addq $32, %rsp
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_live@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L33_2
.L33_1:
    leaq 280(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    leaq 264(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 208(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq $96, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 184(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $96, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq .Ltext_98(%rip), %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq $9, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r15d
    movq %rbx, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_10format_u64
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_99(%rip), %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq $23, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    leaq 136(%rbp), %r15
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r14
    jbe .L33_7
.L33_6:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_100(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $60, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L33_8
.L33_7:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 120(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_13format_finish
    addq $32, %rsp
    leaq 120(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L33_8:
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L33_10
    jmp .L33_9
.L33_10:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 224(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L33_4
.L33_9:
    leaq 248(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L33_5
.L33_4:
    leaq .Ltext_101(%rip), %rbx
    leaq 104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $31, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 248(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L33_5
.L33_11:
.L33_5:
    leaq 248(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 88(%rbp), %rbx
    subq $32, %rsp
    leaq 72(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_io_stderr
    addq $32, %rsp
    leaq 72(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
    leaq 8(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L33_15
    jmp .L33_14
.L33_15:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 48(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L33_12
.L33_14:
    jmp .L33_13
.L33_12:
    jmp .L33_13
.L33_16:
.L33_13:
    movl $3, %eax
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 424(%rbp), %rbx
    movq 416(%rbp), %r12
    movq 408(%rbp), %r13
    movq 400(%rbp), %r14
    movq 392(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L33_17:
    jmp .L33_3
.L33_2:
.L33_3:
    subq $32, %rsp
    call lb_ownership_15release_buffers
    addq $32, %rsp
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_13runtime_depth@SECREL32(%rax), %rax
    movq %rax, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_14thread_context@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 376(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %eax
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 424(%rbp), %rbx
    movq 416(%rbp), %r12
    movq 408(%rbp), %r13
    movq 400(%rbp), %r14
    movq 392(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L33_18:
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_ownership_11finish_task
lb_ownership_11finish_task:
    .seh_proc lb_ownership_11finish_task
    pushq %rbp
    .seh_pushreg %rbp
    subq $592, %rsp
    .seh_stackalloc 592
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 408(%rbp)
    .seh_savereg %rbx, 408
    movq %r12, 400(%rbp)
    .seh_savereg %r12, 400
    movq %r13, 392(%rbp)
    .seh_savereg %r13, 392
    movq %r14, 384(%rbp)
    .seh_savereg %r14, 384
    movq %r15, 376(%rbp)
    .seh_savereg %r15, 376
    .seh_endprologue
    movq %rcx, 608(%rbp)
    movq %rdx, 616(%rbp)
    movq %r8, 624(%rbp)
    movq %r9, 632(%rbp)
    subq $32, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_drain
    addq $32, %rsp
    subq $32, %rsp
    call lb_ownership_collect
    addq $32, %rsp
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_live@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L34_2
.L34_1:
    leaq 280(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    leaq 264(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 208(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq $96, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 184(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $96, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq .Ltext_98(%rip), %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq $9, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r15d
    movq %rbx, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_10format_u64
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_103(%rip), %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq $33, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    leaq 136(%rbp), %r15
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r14
    jbe .L34_7
.L34_6:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_100(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $60, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L34_8
.L34_7:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 120(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_13format_finish
    addq $32, %rsp
    leaq 120(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L34_8:
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L34_10
    jmp .L34_9
.L34_10:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 224(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L34_4
.L34_9:
    leaq 248(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L34_5
.L34_4:
    leaq .Ltext_104(%rip), %rbx
    leaq 104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $41, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 248(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L34_5
.L34_11:
.L34_5:
    leaq 248(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 88(%rbp), %rbx
    subq $32, %rsp
    leaq 72(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_io_stderr
    addq $32, %rsp
    leaq 72(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
    leaq 8(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L34_15
    jmp .L34_14
.L34_15:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 48(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L34_12
.L34_14:
    jmp .L34_13
.L34_12:
    jmp .L34_13
.L34_16:
.L34_13:
    subq $32, %rsp
    movl $3, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_exit
    addq $32, %rsp
    jmp .L34_3
.L34_2:
.L34_3:
    subq $32, %rsp
    call lb_ownership_15release_buffers
    addq $32, %rsp
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_13runtime_depth@SECREL32(%rax), %rax
    movq %rax, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_14thread_context@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
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
    movq 408(%rbp), %rbx
    movq 400(%rbp), %r12
    movq 392(%rbp), %r13
    movq 384(%rbp), %r14
    movq 376(%rbp), %r15
    leaq 592(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_15release_buffers
lb_ownership_15release_buffers:
    .seh_proc lb_ownership_15release_buffers
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
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_13pending_count@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L35_1
    jmp .L35_22
.L35_22:
    movl %ebx, %r12d
    jmp .L35_2
.L35_1:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_10root_count@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
.L35_2:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L35_3
    jmp .L35_23
.L35_23:
    movl %ebx, %r12d
    jmp .L35_4
.L35_3:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_11white_count@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
.L35_4:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L35_5
    jmp .L35_6
.L35_6:
    leaq .Ltext_106(%rip), %rdi
    leaq .Ltext_105(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L35_5:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_pending@SECREL32(%rax), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L35_8
.L35_7:
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 24(%rbp)
    leaq 104(%rbp), %r14
    movq 32(%rbp), %r10
    movq (%r10), %r15
    movq %r12, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L35_11
    jmp .L35_10
.L35_11:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
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
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L35_10:
    jmp .L35_9
.L35_8:
.L35_9:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_roots@SECREL32(%rax), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L35_13
.L35_12:
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 8(%rbp)
    leaq 88(%rbp), %r15
    movq 16(%rbp), %r10
    movq (%r10), %rbx
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_108(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq 8(%rbp), %r10
    movq (%r10), %rbx
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L35_16
    jmp .L35_15
.L35_16:
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r15, %r10
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
.L35_15:
    jmp .L35_14
.L35_13:
.L35_14:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_whites@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L35_18
.L35_17:
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 0(%rbp)
    leaq 72(%rbp), %r15
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_110(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq 0(%rbp), %r10
    movq (%r10), %r12
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L35_21
    jmp .L35_20
.L35_21:
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
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
    movq %r13, %r11
    call *%r11
    addq $48, %rsp
.L35_20:
    jmp .L35_19
.L35_18:
.L35_19:
    leaq 56(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 40(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_ownership_0init
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
    .asciz "src/std/ownership/module.lucb:53:5"
.Ltext_2:
    .asciz "trap: "
.Ltext_3:
    .asciz ": "
.Ltext_4:
    .asciz "\n"
.Ltext_5:
    .asciz "src/std/ownership/module.lucb:78:5"
.Ltext_6:
    .asciz "src/std/ownership/module.lucb:84:5"
.Ltext_7:
    .asciz "runtime context identity exhausted"
.Ltext_8:
    .asciz "src/std/ownership/module.lucb:97:5"
.Ltext_9:
    .asciz "src/std/ownership/module.lucb:103:5"
.Ltext_10:
    .asciz "a managed callback needs a runtime entry on this thread"
.Ltext_11:
    .asciz "an object belongs to another runtime thread"
.Ltext_12:
    .asciz "an object has already been destroyed"
.Ltext_13:
    .asciz "an object allocation is smaller than its header"
.Ltext_14:
    .asciz "memory.unset"
.Ltext_15:
    .asciz "src/std/ownership/module.lucb:124:5"
.Ltext_16:
    .asciz "memory.exhausted"
.Ltext_17:
    .asciz "object allocation identity exhausted"
.Ltext_18:
    .asciz "src/std/ownership/module.lucb:135:5"
.Ltext_19:
    .asciz "src/std/ownership/module.lucb:136:5"
.Ltext_20:
    .asciz "src/std/ownership/module.lucb:139:5"
.Ltext_21:
    .asciz "out of memory"
.Ltext_22:
    .asciz "src/std/ownership/module.lucb:144:9"
.Ltext_23:
    .asciz "src/std/ownership/module.lucb:150:5"
.Ltext_24:
    .asciz "src/std/ownership/module.lucb:152:5"
.Ltext_25:
    .asciz "src/std/ownership/module.lucb:162:13"
.Ltext_26:
    .asciz "src/std/ownership/module.lucb:165:5"
.Ltext_27:
    .asciz "`deinit` published `self`"
.Ltext_28:
    .asciz "src/std/ownership/module.lucb:178:13"
.Ltext_29:
    .asciz "src/std/ownership/module.lucb:181:5"
.Ltext_30:
    .asciz "an object has no allocation owner"
.Ltext_31:
    .asciz "src/std/ownership/module.lucb:189:9"
.Ltext_32:
    .asciz "src/std/ownership/module.lucb:191:9"
.Ltext_33:
    .asciz "an incomplete object was published"
.Ltext_34:
    .asciz "src/std/ownership/module.lucb:199:5"
.Ltext_35:
    .asciz "src/std/ownership/module.lucb:208:5"
.Ltext_36:
    .asciz "src/std/ownership/module.lucb:220:5"
.Ltext_37:
    .asciz "src/std/ownership/pool.lucb:13:5"
.Ltext_38:
    .asciz "src/std/ownership/pool.lucb:17:9"
.Ltext_39:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_40:
    .asciz "src/std/ownership/pool.lucb:18:13"
.Ltext_41:
    .asciz "src/std/ownership/pool.lucb:21:13"
.Ltext_42:
    .asciz "src/std/ownership/pool.lucb:22:13"
.Ltext_43:
    .asciz "src/std/ownership/pool.lucb:24:13"
.Ltext_44:
    .asciz "src/std/ownership/pool.lucb:26:5"
.Ltext_45:
    .asciz "src/std/ownership/pool.lucb:27:5"
.Ltext_46:
    .asciz "src/std/ownership/pool.lucb:32:5"
.Ltext_47:
    .asciz "src/std/ownership/pool.lucb:49:9"
.Ltext_48:
    .asciz "src/std/ownership/pool.lucb:55:13"
.Ltext_49:
    .asciz "src/std/ownership/pool.lucb:56:9"
.Ltext_50:
    .asciz "src/std/ownership/cycles.lucb:13:9"
.Ltext_51:
    .asciz "src/std/ownership/cycles.lucb:14:13"
.Ltext_52:
    .asciz "src/std/ownership/cycles.lucb:17:13"
.Ltext_53:
    .asciz "src/std/ownership/cycles.lucb:18:13"
.Ltext_54:
    .asciz "src/std/ownership/cycles.lucb:20:13"
.Ltext_55:
    .asciz "src/std/ownership/cycles.lucb:22:5"
.Ltext_56:
    .asciz "src/std/ownership/cycles.lucb:23:5"
.Ltext_57:
    .asciz "src/std/ownership/cycles.lucb:27:9"
.Ltext_58:
    .asciz "src/std/ownership/cycles.lucb:28:13"
.Ltext_59:
    .asciz "src/std/ownership/cycles.lucb:31:13"
.Ltext_60:
    .asciz "src/std/ownership/cycles.lucb:32:13"
.Ltext_61:
    .asciz "src/std/ownership/cycles.lucb:34:13"
.Ltext_62:
    .asciz "src/std/ownership/cycles.lucb:36:5"
.Ltext_63:
    .asciz "src/std/ownership/cycles.lucb:37:5"
.Ltext_64:
    .asciz "src/std/ownership/cycles.lucb:52:5"
.Ltext_65:
    .asciz "src/std/ownership/cycles.lucb:70:5"
.Ltext_66:
    .asciz "src/std/ownership/cycles.lucb:104:9"
.Ltext_67:
    .asciz "src/std/ownership/cycles.lucb:115:9"
.Ltext_68:
    .asciz "src/std/ownership/cycles.lucb:117:13"
.Ltext_69:
    .asciz "src/std/ownership/cycles.lucb:118:13"
.Ltext_70:
    .asciz "src/std/ownership/cycles.lucb:122:9"
.Ltext_71:
    .asciz "src/std/ownership/cycles.lucb:126:9"
.Ltext_72:
    .asciz "src/std/ownership/cycles.lucb:127:9"
.Ltext_73:
    .asciz "src/std/ownership/cycles.lucb:130:9"
.Ltext_74:
    .asciz "src/std/ownership/cycles.lucb:131:9"
.Ltext_75:
    .asciz "src/std/ownership/cycles.lucb:135:9"
.Ltext_76:
    .asciz "src/std/ownership/cycles.lucb:136:9"
.Ltext_77:
    .asciz "src/std/ownership/cycles.lucb:139:9"
.Ltext_78:
    .asciz "src/std/ownership/cycles.lucb:140:9"
.Ltext_79:
    .asciz "src/std/ownership/cycles.lucb:146:9"
.Ltext_80:
    .asciz "src/std/ownership/cycles.lucb:147:9"
.Ltext_81:
    .asciz "src/std/ownership/cycles.lucb:150:9"
.Ltext_82:
    .asciz "src/std/ownership/cycles.lucb:153:13"
.Ltext_83:
    .asciz "src/std/ownership/cycles.lucb:155:13"
.Ltext_84:
    .asciz "src/std/ownership/cycles.lucb:156:17"
.Ltext_85:
    .asciz "src/std/ownership/cycles.lucb:159:13"
.Ltext_86:
    .asciz "src/std/ownership/cycles.lucb:160:9"
.Ltext_87:
    .asciz "src/std/ownership/cycles.lucb:163:9"
.Ltext_88:
    .asciz "src/std/ownership/cycles.lucb:164:9"
.Ltext_89:
    .asciz "src/std/ownership/cycles.lucb:167:9"
.Ltext_90:
    .asciz "src/std/ownership/cycles.lucb:168:9"
.Ltext_91:
    .asciz "src/std/ownership/cycles.lucb:172:9"
.Ltext_92:
    .asciz "src/std/ownership/weak.lucb:9:9"
.Ltext_93:
    .asciz "src/std/ownership/weak.lucb:10:5"
.Ltext_94:
    .asciz "src/std/ownership/weak.lucb:16:13"
.Ltext_95:
    .asciz "src/std/ownership/weak.lucb:17:5"
.Ltext_96:
    .asciz "src/std/ownership/weak.lucb:23:13"
.Ltext_97:
    .asciz "src/std/ownership/weak.lucb:32:5"
.Ltext_98:
    .asciz "runtime: "
.Ltext_99:
    .asciz " objects alive at exit\n"
.Ltext_100:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
.Ltext_101:
    .asciz "runtime: objects alive at exit\n"
.Ltext_102:
    .asciz "src/std/ownership/lifecycle.lucb:17:5"
.Ltext_103:
    .asciz " objects alive when a task ended\n"
.Ltext_104:
    .asciz "runtime: objects alive when a task ended\n"
.Ltext_105:
    .asciz "assert failed: pending_count == 0 and root_count == 0 and white_count == 0"
.Ltext_106:
    .asciz "src/std/ownership/lifecycle.lucb:39:5"
.Ltext_107:
    .asciz "src/std/ownership/lifecycle.lucb:41:9"
.Ltext_108:
    .asciz "src/std/ownership/lifecycle.lucb:43:9"
.Ltext_109:
    .asciz "src/std/ownership/lifecycle.lucb:45:9"
.Ltext_110:
    .asciz "integer overflow"
.Ltext_111:
    .asciz "index out of bounds"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_ownership_black
    .p2align 0
lb_ownership_black:
    .zero 1

    .bss
    .globl lb_ownership_gray
    .p2align 0
lb_ownership_gray:
    .zero 1

    .bss
    .globl lb_ownership_white
    .p2align 0
lb_ownership_white:
    .zero 1

    .bss
    .globl lb_ownership_purple
    .p2align 0
lb_ownership_purple:
    .zero 1

    .bss
    .globl lb_ownership_10color_mask
    .p2align 0
lb_ownership_10color_mask:
    .zero 1

    .bss
    .globl lb_ownership_buffered
    .p2align 0
lb_ownership_buffered:
    .zero 1

    .bss
    .globl lb_ownership_dead
    .p2align 0
lb_ownership_dead:
    .zero 1

    .bss
    .globl lb_ownership_collecting
    .p2align 0
lb_ownership_collecting:
    .zero 1

    .bss
    .globl lb_ownership_immortal
    .p2align 0
lb_ownership_immortal:
    .zero 1

    .section .tls$LUCE,"dw"
    .globl lb_ownership_live
    .p2align 3
lb_ownership_live:
    .zero 8

    .section .tls$LUCE,"dw"
    .globl lb_ownership_site
    .p2align 3
lb_ownership_site:
    .zero 16

    .bss
    .globl lb_ownership_12next_context
    .p2align 3
lb_ownership_12next_context:
    .zero 8

    .bss
    .globl lb_ownership_15next_generation
    .p2align 3
lb_ownership_15next_generation:
    .zero 8

    .section .tls$LUCE,"dw"
    .globl lb_ownership_14thread_context
    .p2align 3
lb_ownership_14thread_context:
    .zero 8

    .section .tls$LUCE,"dw"
    .globl lb_ownership_13runtime_depth
    .p2align 2
lb_ownership_13runtime_depth:
    .zero 4

    .section .tls$LUCE,"dw"
    .globl lb_ownership_pending
    .p2align 3
lb_ownership_pending:
    .zero 16

    .section .tls$LUCE,"dw"
    .globl lb_ownership_13pending_count
    .p2align 3
lb_ownership_13pending_count:
    .zero 8

    .bss
    .globl lb_ownership_15candidate_limit
    .p2align 3
lb_ownership_15candidate_limit:
    .zero 8

    .section .tls$LUCE,"dw"
    .globl lb_ownership_roots
    .p2align 3
lb_ownership_roots:
    .zero 16

    .section .tls$LUCE,"dw"
    .globl lb_ownership_10root_count
    .p2align 3
lb_ownership_10root_count:
    .zero 8

    .section .tls$LUCE,"dw"
    .globl lb_ownership_whites
    .p2align 3
lb_ownership_whites:
    .zero 16

    .section .tls$LUCE,"dw"
    .globl lb_ownership_11white_count
    .p2align 3
lb_ownership_11white_count:
    .zero 8

    .section .tls$LUCE,"dw"
    .globl lb_ownership_17collector_running
    .p2align 0
lb_ownership_17collector_running:
    .zero 1
