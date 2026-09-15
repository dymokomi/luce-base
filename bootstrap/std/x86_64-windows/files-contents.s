    .weak lb_memory_copy_0g1_u8
    .text

    .p2align 4
    .globl lb_files_contents_0init
lb_files_contents_0init:
    .seh_proc lb_files_contents_0init
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
    .globl lb_files_read
lb_files_read:
    .seh_proc lb_files_read
    pushq %rbp
    .seh_pushreg %rbp
    subq $336, %rsp
    .seh_stackalloc 336
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 152(%rbp)
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
    movq %rbx, 144(%rbp)
    .seh_savereg %rbx, 144
    movq %r12, 136(%rbp)
    .seh_savereg %r12, 136
    movq %r13, 128(%rbp)
    .seh_savereg %r13, 128
    movq %r14, 120(%rbp)
    .seh_savereg %r14, 120
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $-1, %rax
    movq %rax, 16(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_10read_limit
    addq $32, %rsp
    leaq 8(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 72(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 152(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 152(%rbp), %rax
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
    movq 144(%rbp), %rbx
    movq 136(%rbp), %r12
    movq 128(%rbp), %r13
    movq 120(%rbp), %r14
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L1_3:
.L1_1:
    leaq 72(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 152(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 152(%rbp), %rax
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
    movq 144(%rbp), %rbx
    movq 136(%rbp), %r12
    movq 128(%rbp), %r13
    movq 120(%rbp), %r14
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L1_4:
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
    .globl lb_files_10read_limit
lb_files_10read_limit:
    .seh_proc lb_files_10read_limit
    pushq %rbp
    .seh_pushreg %rbp
    movq $5152, %rax
    call ___chkstk_ms
    subq $5152, %rsp
    .seh_stackalloc 5152
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 4968(%rbp)
    movq %rdi, 5144(%rbp)
    .seh_savereg %rdi, 5144
    movq %rsi, 5136(%rbp)
    .seh_savereg %rsi, 5136
    movdqu %xmm6, 5120(%rbp)
    .seh_savexmm %xmm6, 5120
    movdqu %xmm7, 5104(%rbp)
    .seh_savexmm %xmm7, 5104
    movdqu %xmm8, 5088(%rbp)
    .seh_savexmm %xmm8, 5088
    movdqu %xmm9, 5072(%rbp)
    .seh_savexmm %xmm9, 5072
    movdqu %xmm10, 5056(%rbp)
    .seh_savexmm %xmm10, 5056
    movdqu %xmm11, 5040(%rbp)
    .seh_savexmm %xmm11, 5040
    movdqu %xmm12, 5024(%rbp)
    .seh_savexmm %xmm12, 5024
    movdqu %xmm13, 5008(%rbp)
    .seh_savexmm %xmm13, 5008
    movdqu %xmm14, 4992(%rbp)
    .seh_savexmm %xmm14, 4992
    movdqu %xmm15, 4976(%rbp)
    .seh_savexmm %xmm15, 4976
    movq %rbx, 4960(%rbp)
    .seh_savereg %rbx, 4960
    movq %r12, 4952(%rbp)
    .seh_savereg %r12, 4952
    movq %r13, 4944(%rbp)
    .seh_savereg %r13, 4944
    movq %r14, 4936(%rbp)
    .seh_savereg %r14, 4936
    movq %r15, 4928(%rbp)
    .seh_savereg %r15, 4928
    .seh_endprologue
    movq %rcx, 5168(%rbp)
    movq %rdx, 5176(%rbp)
    movq %r8, 5184(%rbp)
    movq %r9, 5192(%rbp)
    movq 5176(%rbp), %rax
    movq %rax, 4864(%rbp)
    movq 5184(%rbp), %rax
    movq %rax, 4848(%rbp)
    leaq 4840(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 4864(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $420, %eax
    movq %rax, 24(%rsp)
    leaq 4800(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_File_open
    addq $32, %rsp
    leaq 4800(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 4880(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
    movq 4968(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4968(%rbp), %rax
    movq 5144(%rbp), %rdi
    movq 5136(%rbp), %rsi
    movdqu 5120(%rbp), %xmm6
    movdqu 5104(%rbp), %xmm7
    movdqu 5088(%rbp), %xmm8
    movdqu 5072(%rbp), %xmm9
    movdqu 5056(%rbp), %xmm10
    movdqu 5040(%rbp), %xmm11
    movdqu 5024(%rbp), %xmm12
    movdqu 5008(%rbp), %xmm13
    movdqu 4992(%rbp), %xmm14
    movdqu 4976(%rbp), %xmm15
    movq 4960(%rbp), %rbx
    movq 4952(%rbp), %r12
    movq 4944(%rbp), %r13
    movq 4936(%rbp), %r14
    movq 4928(%rbp), %r15
    leaq 5152(%rbp), %rsp
    popq %rbp
    ret
.L2_1:
    movq %r13, %r10
    movq 72(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq 4784(%rbp), %rax
    movq %rax, 312(%rbp)
    movq 312(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 688(%rbp), %rax
    movq %rax, 304(%rbp)
    movq 304(%rbp), %rdi
    xorl %esi, %esi
    movq $4096, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    leaq 4848(%rbp), %rax
    movq %rax, 296(%rbp)
    leaq 672(%rbp), %rax
    movq %rax, 288(%rbp)
    movq 288(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 280(%rbp)
    leaq 632(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 272(%rbp)
    movq 312(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 248(%rbp)
    leaq 608(%rbp), %rax
    movq %rax, 240(%rbp)
    leaq 592(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 232(%rbp)
    leaq 472(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    leaq 544(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 520(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 184(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    movq 32(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq 32(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 176(%rbp)
    leaq .Ltext_10(%rip), %rax
    movq %rax, 168(%rbp)
    movq 176(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    movq 176(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    movq 32(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    movq 32(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 224(%rbp)
    leaq .Ltext_7(%rip), %rax
    movq %rax, 216(%rbp)
    movq 224(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 208(%rbp)
    movq 224(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 200(%rbp)
    movq 32(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 192(%rbp)
    movq 32(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    leaq 456(%rbp), %rax
    movq %rax, 104(%rbp)
    movq 104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 96(%rbp)
    leaq 440(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    movq $0, %rax
    movq %rax, 64(%rbp)
.L2_4:
.L2_5:
    movq 296(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq 64(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L2_7
    jmp .L2_8
.L2_7:
    movq $1, %rax
    movq %rax, %r14
    jmp .L2_9
.L2_8:
    movq $4096, %rcx
    cmpq %rcx, %r14
    jae .L2_11
.L2_10:
    movq %r14, %rbx
    jmp .L2_12
.L2_11:
    movq $4096, %rax
    movq %rax, %rbx
.L2_12:
    movq %rbx, %r14
.L2_9:
    movq $4097, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L2_13
.L2_14:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_13:
    movq 304(%rbp), %rax
    movq 288(%rbp), %r10
    movq %rax, (%r10)
    movq 280(%rbp), %r10
    movq %r14, (%r10)
    subq $48, %rsp
    movq 72(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 288(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 632(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_File_read
    addq $48, %rsp
    movq 272(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_16
    jmp .L2_15
.L2_16:
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 4880(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 312(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14release_buffer
    addq $48, %rsp
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %r13, %rsi
    movq 4968(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4968(%rbp), %rax
    movq 5144(%rbp), %rdi
    movq 5136(%rbp), %rsi
    movdqu 5120(%rbp), %xmm6
    movdqu 5104(%rbp), %xmm7
    movdqu 5088(%rbp), %xmm8
    movdqu 5072(%rbp), %xmm9
    movdqu 5056(%rbp), %xmm10
    movdqu 5040(%rbp), %xmm11
    movdqu 5024(%rbp), %xmm12
    movdqu 5008(%rbp), %xmm13
    movdqu 4992(%rbp), %xmm14
    movdqu 4976(%rbp), %xmm15
    movq 4960(%rbp), %rbx
    movq 4952(%rbp), %r12
    movq 4944(%rbp), %r13
    movq 4936(%rbp), %r14
    movq 4928(%rbp), %r15
    leaq 5152(%rbp), %rsp
    popq %rbp
    ret
.L2_15:
    movq 56(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 264(%rbp)
    movq 264(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L2_19
.L2_18:
    jmp .L2_6
.L2_19:
.L2_20:
    testl %r15d, %r15d
    jne .L2_22
    jmp .L2_23
.L2_22:
    leaq 4880(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_files_9too_large(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_5(%rip), %r14
    leaq 616(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $31, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 312(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14release_buffer
    addq $48, %rsp
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 4968(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4968(%rbp), %rax
    movq 5144(%rbp), %rdi
    movq 5136(%rbp), %rsi
    movdqu 5120(%rbp), %xmm6
    movdqu 5104(%rbp), %xmm7
    movdqu 5088(%rbp), %xmm8
    movdqu 5072(%rbp), %xmm9
    movdqu 5056(%rbp), %xmm10
    movdqu 5040(%rbp), %xmm11
    movdqu 5024(%rbp), %xmm12
    movdqu 5008(%rbp), %xmm13
    movdqu 4992(%rbp), %xmm14
    movdqu 4976(%rbp), %xmm15
    movq 4960(%rbp), %rbx
    movq 4952(%rbp), %r12
    movq 4944(%rbp), %r13
    movq 4936(%rbp), %r14
    movq 4928(%rbp), %r15
    leaq 5152(%rbp), %rsp
    popq %rbp
    ret
.L2_23:
.L2_24:
    movq 264(%rbp), %rax
    movq 64(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 256(%rbp)
    movq 248(%rbp), %r10
    movq (%r10), %r15
    movq 256(%rbp), %rax
    cmpq %r15, %rax
    jbe .L2_27
.L2_26:
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq $2, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 240(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qmul_u
    addq $32, %rsp
    movl %eax, %r12d
    movq 240(%rbp), %r10
    movq (%r10), %rbx
    movq 48(%rbp), %r10
    movq %rbx, (%r10)
    movq 232(%rbp), %r10
    movb %r12b, (%r10)
    movq 232(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_29
    jmp .L2_30
.L2_29:
    movq %rbx, %r12
    jmp .L2_31
.L2_30:
    movq %r13, %r12
.L2_31:
    movq $4096, %rcx
    cmpq %rcx, %r12
    jae .L2_33
.L2_32:
    movq $4096, %rax
    movq %rax, %r12
    jmp .L2_34
.L2_33:
.L2_34:
    movq 256(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L2_36
.L2_35:
    movq 256(%rbp), %rax
    movq %rax, %rbx
    jmp .L2_37
.L2_36:
    movq %r12, %rbx
.L2_37:
    cmpq %r13, %rbx
    jbe .L2_39
.L2_38:
    movq %r13, %rbx
    jmp .L2_40
.L2_39:
.L2_40:
    movq 248(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L2_42
.L2_41:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rbx
    jbe .L2_45
.L2_44:
    movl $208273409, %eax
    movq 224(%rbp), %r10
    movl %eax, (%r10)
    movq 216(%rbp), %rax
    movq 208(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq 200(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 192(%rbp), %r10
    movb %al, (%r10)
    jmp .L2_46
.L2_45:
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_47
    jmp .L2_48
.L2_48:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_47:
    movq %r15, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 520(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    movq 184(%rbp), %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ecx
    movl %r14d, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L2_49
    jmp .L2_50
.L2_49:
    movl $208273409, %eax
    movq 176(%rbp), %r10
    movl %eax, (%r10)
    movq 168(%rbp), %rax
    movq 160(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq 152(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 144(%rbp), %r10
    movb %al, (%r10)
    jmp .L2_46
.L2_50:
    movq 24(%rbp), %r10
    movq (%r10), %r12
    movq 32(%rbp), %r10
    movq %r12, (%r10)
    movq 136(%rbp), %r10
    movq %rbx, (%r10)
    movl $0, %eax
    movq 128(%rbp), %r10
    movb %al, (%r10)
.L2_46:
    movq 120(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_52
    jmp .L2_51
.L2_52:
    movq 32(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 4880(%rbp), %r12
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
    subq $48, %rsp
    movq 312(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14release_buffer
    addq $48, %rsp
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %r12, %rsi
    movq 4968(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4968(%rbp), %rax
    movq 5144(%rbp), %rdi
    movq 5136(%rbp), %rsi
    movdqu 5120(%rbp), %xmm6
    movdqu 5104(%rbp), %xmm7
    movdqu 5088(%rbp), %xmm8
    movdqu 5072(%rbp), %xmm9
    movdqu 5056(%rbp), %xmm10
    movdqu 5040(%rbp), %xmm11
    movdqu 5024(%rbp), %xmm12
    movdqu 5008(%rbp), %xmm13
    movdqu 4992(%rbp), %xmm14
    movdqu 4976(%rbp), %xmm15
    movq 4960(%rbp), %rbx
    movq 4952(%rbp), %r12
    movq 4944(%rbp), %r13
    movq 4936(%rbp), %r14
    movq 4928(%rbp), %r15
    leaq 5152(%rbp), %rsp
    popq %rbp
    ret
.L2_51:
    movq 32(%rbp), %r10
    movq 312(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_43
.L2_42:
    subq $48, %rsp
    movq 312(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    leaq 472(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_grow
    addq $48, %rsp
    movq 112(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_55
    jmp .L2_54
.L2_55:
    movq 40(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 4880(%rbp), %r12
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
    subq $48, %rsp
    movq 312(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14release_buffer
    addq $48, %rsp
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %r12, %rsi
    movq 4968(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4968(%rbp), %rax
    movq 5144(%rbp), %rdi
    movq 5136(%rbp), %rsi
    movdqu 5120(%rbp), %xmm6
    movdqu 5104(%rbp), %xmm7
    movdqu 5088(%rbp), %xmm8
    movdqu 5072(%rbp), %xmm9
    movdqu 5056(%rbp), %xmm10
    movdqu 5040(%rbp), %xmm11
    movdqu 5024(%rbp), %xmm12
    movdqu 5008(%rbp), %xmm13
    movdqu 4992(%rbp), %xmm14
    movdqu 4976(%rbp), %xmm15
    movq 4960(%rbp), %rbx
    movq 4952(%rbp), %r12
    movq 4944(%rbp), %r13
    movq 4936(%rbp), %r14
    movq 4928(%rbp), %r15
    leaq 5152(%rbp), %rsp
    popq %rbp
    ret
.L2_54:
    movq 40(%rbp), %r10
    movq 312(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L2_43:
    jmp .L2_28
.L2_27:
.L2_28:
    movq 312(%rbp), %r10
    movq (%r10), %r12
    movq 248(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq 64(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 64(%rbp), %rax
    cmpq %r13, %rax
    jbe .L2_57
.L2_58:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_57:
    movq 64(%rbp), %rax
    movq %rax, %rbx
    addq %r12, %rbx
    movq 64(%rbp), %rcx
    movq %r13, %r14
    subq %rcx, %r14
    movq 104(%rbp), %r10
    movq %rbx, (%r10)
    movq 96(%rbp), %r10
    movq %r14, (%r10)
    movq 304(%rbp), %rax
    movq 88(%rbp), %r10
    movq %rax, (%r10)
    movq $4096, %rax
    movq 80(%rbp), %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 104(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 88(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 264(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq 256(%rbp), %rax
    movq %rax, 64(%rbp)
    jmp .L2_4
.L2_6:
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 408(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_File_close
    addq $32, %rsp
    leaq 408(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_60
    jmp .L2_59
.L2_60:
    leaq 4880(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 312(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14release_buffer
    addq $48, %rsp
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 4968(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4968(%rbp), %rax
    movq 5144(%rbp), %rdi
    movq 5136(%rbp), %rsi
    movdqu 5120(%rbp), %xmm6
    movdqu 5104(%rbp), %xmm7
    movdqu 5088(%rbp), %xmm8
    movdqu 5072(%rbp), %xmm9
    movdqu 5056(%rbp), %xmm10
    movdqu 5040(%rbp), %xmm11
    movdqu 5024(%rbp), %xmm12
    movdqu 5008(%rbp), %xmm13
    movdqu 4992(%rbp), %xmm14
    movdqu 4976(%rbp), %xmm15
    movq 4960(%rbp), %rbx
    movq 4952(%rbp), %r12
    movq 4944(%rbp), %r13
    movq 4936(%rbp), %r14
    movq 4928(%rbp), %r15
    leaq 5152(%rbp), %rsp
    popq %rbp
    ret
.L2_59:
    movq 312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq 64(%rbp), %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L2_65
    jmp .L2_79
.L2_79:
    movl %ebx, %r12d
    jmp .L2_66
.L2_65:
    movq 64(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r12d
.L2_66:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L2_62
    jmp .L2_63
.L2_62:
    leaq 4880(%rbp), %rbx
    movq 312(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 4968(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4968(%rbp), %rax
    movq 5144(%rbp), %rdi
    movq 5136(%rbp), %rsi
    movdqu 5120(%rbp), %xmm6
    movdqu 5104(%rbp), %xmm7
    movdqu 5088(%rbp), %xmm8
    movdqu 5072(%rbp), %xmm9
    movdqu 5056(%rbp), %xmm10
    movdqu 5040(%rbp), %xmm11
    movdqu 5024(%rbp), %xmm12
    movdqu 5008(%rbp), %xmm13
    movdqu 4992(%rbp), %xmm14
    movdqu 4976(%rbp), %xmm15
    movq 4960(%rbp), %rbx
    movq 4952(%rbp), %r12
    movq 4944(%rbp), %r13
    movq 4936(%rbp), %r14
    movq 4928(%rbp), %r15
    leaq 5152(%rbp), %rsp
    popq %rbp
    ret
.L2_63:
.L2_64:
    leaq 392(%rbp), %rax
    movq %rax, 16(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 344(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 64(%rbp), %rax
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rax
    jbe .L2_69
.L2_68:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_7(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_70
.L2_69:
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_71
    jmp .L2_72
.L2_72:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_71:
    movq %r15, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 320(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 320(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq 64(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setne %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    andl %r13d, %r12d
    testl %r12d, %r12d
    jne .L2_73
    jmp .L2_74
.L2_73:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_10(%rip), %r12
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
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_70
.L2_74:
    movq %r14, %r10
    movq (%r10), %rbx
    movq 8(%rbp), %r10
    movq %rbx, (%r10)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 64(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_70:
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_76
    jmp .L2_75
.L2_76:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 4880(%rbp), %r12
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
    subq $48, %rsp
    movq 312(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14release_buffer
    addq $48, %rsp
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %r12, %rsi
    movq 4968(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4968(%rbp), %rax
    movq 5144(%rbp), %rdi
    movq 5136(%rbp), %rsi
    movdqu 5120(%rbp), %xmm6
    movdqu 5104(%rbp), %xmm7
    movdqu 5088(%rbp), %xmm8
    movdqu 5072(%rbp), %xmm9
    movdqu 5056(%rbp), %xmm10
    movdqu 5040(%rbp), %xmm11
    movdqu 5024(%rbp), %xmm12
    movdqu 5008(%rbp), %xmm13
    movdqu 4992(%rbp), %xmm14
    movdqu 4976(%rbp), %xmm15
    movq 4960(%rbp), %rbx
    movq 4952(%rbp), %r12
    movq 4944(%rbp), %r13
    movq 4936(%rbp), %r14
    movq 4928(%rbp), %r15
    leaq 5152(%rbp), %rsp
    popq %rbp
    ret
.L2_75:
    movq 8(%rbp), %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $64, %rsp
    movq 16(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 312(%rbp), %r10
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
    subq $48, %rsp
    movq 312(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14release_buffer
    addq $48, %rsp
    leaq 4880(%rbp), %rbx
    movq 16(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 4968(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4968(%rbp), %rax
    movq 5144(%rbp), %rdi
    movq 5136(%rbp), %rsi
    movdqu 5120(%rbp), %xmm6
    movdqu 5104(%rbp), %xmm7
    movdqu 5088(%rbp), %xmm8
    movdqu 5072(%rbp), %xmm9
    movdqu 5056(%rbp), %xmm10
    movdqu 5040(%rbp), %xmm11
    movdqu 5024(%rbp), %xmm12
    movdqu 5008(%rbp), %xmm13
    movdqu 4992(%rbp), %xmm14
    movdqu 4976(%rbp), %xmm15
    movq 4960(%rbp), %rbx
    movq 4952(%rbp), %r12
    movq 4944(%rbp), %r13
    movq 4936(%rbp), %r14
    movq 4928(%rbp), %r15
    leaq 5152(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_files_write
lb_files_write:
    .seh_proc lb_files_write
    pushq %rbp
    .seh_pushreg %rbp
    subq $416, %rsp
    .seh_stackalloc 416
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 232(%rbp)
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
    movq %rbx, 224(%rbp)
    .seh_savereg %rbx, 224
    movq %r12, 216(%rbp)
    .seh_savereg %r12, 216
    movq %r13, 208(%rbp)
    .seh_savereg %r13, 208
    movq %r14, 200(%rbp)
    .seh_savereg %r14, 200
    movq %r15, 192(%rbp)
    .seh_savereg %r15, 192
    .seh_endprologue
    movq %rcx, 432(%rbp)
    movq %rdx, 440(%rbp)
    movq %r8, 448(%rbp)
    movq %r9, 456(%rbp)
    movq 440(%rbp), %rax
    movq %rax, 144(%rbp)
    movq 448(%rbp), %r10
    leaq 128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 120(%rbp), %r12
    leaq 144(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $2, %eax
    movq %rax, 16(%rsp)
    movl $420, %eax
    movq %rax, 24(%rsp)
    leaq 80(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_File_open
    addq $32, %rsp
    leaq 80(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_2
    jmp .L3_1
.L3_2:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 160(%rbp), %r12
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
    movq 232(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 232(%rbp), %rax
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
    movq 224(%rbp), %rbx
    movq 216(%rbp), %r12
    movq 208(%rbp), %r13
    movq 200(%rbp), %r14
    movq 192(%rbp), %r15
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L3_3:
.L3_1:
    movq %r13, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq lb_vt_files_File_Writer(%rip), %r14
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    leaq 128(%rbp), %r14
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    leaq 32(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_9write_all
    addq $64, %rsp
    leaq 32(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_5
    jmp .L3_4
.L3_5:
    leaq 160(%rbp), %rbx
    movq %r14, %r10
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
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 232(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 232(%rbp), %rax
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
    movq 224(%rbp), %rbx
    movq 216(%rbp), %r12
    movq 208(%rbp), %r13
    movq 200(%rbp), %r14
    movq 192(%rbp), %r15
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L3_6:
.L3_4:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_File_close
    addq $32, %rsp
    leaq 0(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_8
    jmp .L3_7
.L3_8:
    leaq 160(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 232(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 232(%rbp), %rax
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
    movq 224(%rbp), %rbx
    movq 216(%rbp), %r12
    movq 208(%rbp), %r13
    movq 200(%rbp), %r14
    movq 192(%rbp), %r15
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L3_9:
.L3_7:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    leaq 160(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 232(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 232(%rbp), %rax
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
    movq 224(%rbp), %rbx
    movq 216(%rbp), %r12
    movq 208(%rbp), %r13
    movq 200(%rbp), %r14
    movq 192(%rbp), %r15
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_files_14release_buffer
lb_files_14release_buffer:
    .seh_proc lb_files_14release_buffer
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
    leaq 24(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L4_2
.L4_1:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 8(%rbp), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L4_5
    jmp .L4_4
.L4_5:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r15, %rax
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
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
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
    jne .L5_11
    jmp .L5_4
.L5_11:
    movl %r13d, %r14d
    jmp .L5_5
.L5_4:
    leaq 32(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L5_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L5_1
    jmp .L5_2
.L5_1:
    leaq .Ltext_4(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_16(%rip), %r13
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
    jmp .L5_3
.L5_2:
.L5_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L5_7
.L5_6:
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
    jne .L5_9
    jmp .L5_10
.L5_10:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_9:
    jmp .L5_8
.L5_7:
.L5_8:
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
    .quad lb_files_contents_0init
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
    .asciz "src/std/files/contents.lucb:5:5"
.Ltext_2:
    .asciz "src/std/files/contents.lucb:19:9"
.Ltext_3:
    .asciz "src/std/files/contents.lucb:21:9"
.Ltext_4:
    .asciz "index out of bounds"
.Ltext_5:
    .asciz "the file exceeds the read limit"
.Ltext_6:
    .asciz "src/std/files/contents.lucb:26:9"
.Ltext_7:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_8:
    .asciz "memory.unset"
.Ltext_9:
    .asciz "src/std/files/contents.lucb:36:17"
.Ltext_10:
    .asciz "memory.exhausted"
.Ltext_11:
    .asciz "src/std/files/contents.lucb:39:9"
.Ltext_12:
    .asciz "src/std/files/contents.lucb:40:9"
.Ltext_13:
    .asciz "src/std/files/contents.lucb:44:5"
.Ltext_14:
    .asciz "src/std/files/contents.lucb:47:5"
.Ltext_15:
    .asciz "src/std/files/contents.lucb:60:9"
.Ltext_16:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_17:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_18:
    .asciz "null_foreign"
.Ltext_19:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3

    .section .rdata$lb_vt_files_File_Writer,"dr"
    .p2align 3
    .globl lb_vt_files_File_Writer
lb_vt_files_File_Writer:
    .quad lb_files_File_write
