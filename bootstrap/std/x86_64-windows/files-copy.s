    .weak lb_vt_files_File_Reader
    .weak lb_vt_files_TemporaryFile_Writer
    .text

    .p2align 4
    .globl lb_files_copy_0init
lb_files_copy_0init:
    .seh_proc lb_files_copy_0init
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
    .globl lb_files_9copy_file
lb_files_9copy_file:
    .seh_proc lb_files_9copy_file
    pushq %rbp
    .seh_pushreg %rbp
    movq $6512, %rax
    call ___chkstk_ms
    subq $6512, %rsp
    .seh_stackalloc 6512
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 6328(%rbp)
    movq %rdi, 6504(%rbp)
    .seh_savereg %rdi, 6504
    movq %rsi, 6496(%rbp)
    .seh_savereg %rsi, 6496
    movdqu %xmm6, 6480(%rbp)
    .seh_savexmm %xmm6, 6480
    movdqu %xmm7, 6464(%rbp)
    .seh_savexmm %xmm7, 6464
    movdqu %xmm8, 6448(%rbp)
    .seh_savexmm %xmm8, 6448
    movdqu %xmm9, 6432(%rbp)
    .seh_savexmm %xmm9, 6432
    movdqu %xmm10, 6416(%rbp)
    .seh_savexmm %xmm10, 6416
    movdqu %xmm11, 6400(%rbp)
    .seh_savexmm %xmm11, 6400
    movdqu %xmm12, 6384(%rbp)
    .seh_savexmm %xmm12, 6384
    movdqu %xmm13, 6368(%rbp)
    .seh_savexmm %xmm13, 6368
    movdqu %xmm14, 6352(%rbp)
    .seh_savexmm %xmm14, 6352
    movdqu %xmm15, 6336(%rbp)
    .seh_savexmm %xmm15, 6336
    movq %rbx, 6320(%rbp)
    .seh_savereg %rbx, 6320
    movq %r12, 6312(%rbp)
    .seh_savereg %r12, 6312
    movq %r13, 6304(%rbp)
    .seh_savereg %r13, 6304
    movq %r14, 6296(%rbp)
    .seh_savereg %r14, 6296
    movq %r15, 6288(%rbp)
    .seh_savereg %r15, 6288
    .seh_endprologue
    movq %rcx, 6528(%rbp)
    movq %rdx, 6536(%rbp)
    movq %r8, 6544(%rbp)
    movq %r9, 6552(%rbp)
    movq 6536(%rbp), %rax
    movq %rax, 6232(%rbp)
    movq 6544(%rbp), %rax
    movq %rax, 6216(%rbp)
    movq 6552(%rbp), %rax
    movq %rax, 6200(%rbp)
    movq 6560(%rbp), %rax
    movl %eax, 6184(%rbp)
    movq 6568(%rbp), %rax
    movl %eax, 6168(%rbp)
    movq 6576(%rbp), %rax
    movl %eax, 6152(%rbp)
    movq 6584(%rbp), %rax
    movq %rax, 6136(%rbp)
    leaq 6136(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    testq %rax, %rax
    jne .L1_4
    jmp .L1_2
.L1_4:
.L1_1:
    movl $0, %eax
    movq 24(%rbp), %r10
    movb %al, (%r10)
    jmp .L1_3
.L1_2:
.L1_3:
    leaq 6128(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 6232(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $420, %eax
    movq %rax, 24(%rsp)
    leaq 6088(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_File_open
    addq $32, %rsp
    leaq 6088(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_6
    jmp .L1_5
.L1_6:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 6248(%rbp), %r12
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
    movq 6328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 6328(%rbp), %rax
    movq 6504(%rbp), %rdi
    movq 6496(%rbp), %rsi
    movdqu 6480(%rbp), %xmm6
    movdqu 6464(%rbp), %xmm7
    movdqu 6448(%rbp), %xmm8
    movdqu 6432(%rbp), %xmm9
    movdqu 6416(%rbp), %xmm10
    movdqu 6400(%rbp), %xmm11
    movdqu 6384(%rbp), %xmm12
    movdqu 6368(%rbp), %xmm13
    movdqu 6352(%rbp), %xmm14
    movdqu 6336(%rbp), %xmm15
    movq 6320(%rbp), %rbx
    movq 6312(%rbp), %r12
    movq 6304(%rbp), %r13
    movq 6296(%rbp), %r14
    movq 6288(%rbp), %r15
    leaq 6512(%rbp), %rsp
    popq %rbp
    ret
.L1_5:
    movq %r14, %r10
    movq 16(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq 5960(%rbp), %rax
    movq %rax, 8(%rbp)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 5800(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_File_metadata
    addq $32, %rsp
    leaq 5800(%rbp), %rbx
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_9
    jmp .L1_8
.L1_9:
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq 6248(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %r14, %rsi
    movq 6328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 6328(%rbp), %rax
    movq 6504(%rbp), %rdi
    movq 6496(%rbp), %rsi
    movdqu 6480(%rbp), %xmm6
    movdqu 6464(%rbp), %xmm7
    movdqu 6448(%rbp), %xmm8
    movdqu 6432(%rbp), %xmm9
    movdqu 6416(%rbp), %xmm10
    movdqu 6400(%rbp), %xmm11
    movdqu 6384(%rbp), %xmm12
    movdqu 6368(%rbp), %xmm13
    movdqu 6352(%rbp), %xmm14
    movdqu 6336(%rbp), %xmm15
    movq 6320(%rbp), %rbx
    movq 6312(%rbp), %r12
    movq 6304(%rbp), %r13
    movq 6296(%rbp), %r14
    movq 6288(%rbp), %r15
    leaq 6512(%rbp), %rsp
    popq %rbp
    ret
.L1_8:
    movq %rbx, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    movq 8(%rbp), %r10
    movzbl (%r10), %r12d
    movl $2, %ecx
    cmpl %ecx, %r12d
    jne .L1_12
.L1_11:
    leaq 6248(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_12is_directory(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_0(%rip), %r14
    leaq 5784(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $42, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 6328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 6328(%rbp), %rax
    movq 6504(%rbp), %rdi
    movq 6496(%rbp), %rsi
    movdqu 6480(%rbp), %xmm6
    movdqu 6464(%rbp), %xmm7
    movdqu 6448(%rbp), %xmm8
    movdqu 6432(%rbp), %xmm9
    movdqu 6416(%rbp), %xmm10
    movdqu 6400(%rbp), %xmm11
    movdqu 6384(%rbp), %xmm12
    movdqu 6368(%rbp), %xmm13
    movdqu 6352(%rbp), %xmm14
    movdqu 6336(%rbp), %xmm15
    movq 6320(%rbp), %rbx
    movq 6312(%rbp), %r12
    movq 6304(%rbp), %r13
    movq 6296(%rbp), %r14
    movq 6288(%rbp), %r15
    leaq 6512(%rbp), %rsp
    popq %rbp
    ret
.L1_12:
.L1_13:
    leaq 6216(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    leaq 792(%rbp), %r10
    movq %rax, (%r10)
    leaq 664(%rbp), %r14
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    leaq 352(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_metadata
    addq $32, %rsp
    leaq 352(%rbp), %rbx
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_64
    jmp .L1_63
.L1_64:
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq 512(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L1_61
.L1_63:
    leaq 536(%rbp), %r12
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
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    jmp .L1_62
.L1_61:
    movq %r14, %r10
    movl (%r10), %ebx
    leaq lb_files_missing(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    jne .L1_66
.L1_65:
    leaq 216(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $136, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    leaq 808(%rbp), %r12
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $136, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq $160, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 5616(%rbp), %rdi
    movq %r12, %rsi
    movq $168, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    jmp .L1_71
.L1_66:
.L1_67:
    leaq 808(%rbp), %r12
    movq $136, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %ebx, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $8, %rcx
    addq %rcx, %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $160, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 5616(%rbp), %rdi
    movq %r12, %rsi
    movq $168, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    jmp .L1_71
.L1_62:
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    leaq 80(%rbp), %rbx
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
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    movq $128, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 808(%rbp), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq $136, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq $160, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 5616(%rbp), %rdi
    movq %r13, %rsi
    movq $168, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
.L1_71:
    leaq 5616(%rbp), %r12
    movq $160, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_19
    jmp .L1_18
.L1_19:
    movq $136, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 6248(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %r13, %rsi
    movq 6328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 6328(%rbp), %rax
    movq 6504(%rbp), %rdi
    movq 6496(%rbp), %rsi
    movdqu 6480(%rbp), %xmm6
    movdqu 6464(%rbp), %xmm7
    movdqu 6448(%rbp), %xmm8
    movdqu 6432(%rbp), %xmm9
    movdqu 6416(%rbp), %xmm10
    movdqu 6400(%rbp), %xmm11
    movdqu 6384(%rbp), %xmm12
    movdqu 6368(%rbp), %xmm13
    movdqu 6352(%rbp), %xmm14
    movdqu 6336(%rbp), %xmm15
    movq 6320(%rbp), %rbx
    movq 6312(%rbp), %r12
    movq 6304(%rbp), %r13
    movq 6296(%rbp), %r14
    movq 6288(%rbp), %r15
    leaq 6512(%rbp), %rsp
    popq %rbp
    ret
.L1_18:
    movq $128, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_21
    jmp .L1_16
.L1_21:
    leaq 5488(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
.L1_15:
    leaq 6184(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_23
.L1_22:
    leaq 6248(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_14already_exists(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_1(%rip), %r13
    leaq 5472(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $35, %rax
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
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 6328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 6328(%rbp), %rax
    movq 6504(%rbp), %rdi
    movq 6496(%rbp), %rsi
    movdqu 6480(%rbp), %xmm6
    movdqu 6464(%rbp), %xmm7
    movdqu 6448(%rbp), %xmm8
    movdqu 6432(%rbp), %xmm9
    movdqu 6416(%rbp), %xmm10
    movdqu 6400(%rbp), %xmm11
    movdqu 6384(%rbp), %xmm12
    movdqu 6368(%rbp), %xmm13
    movdqu 6352(%rbp), %xmm14
    movdqu 6336(%rbp), %xmm15
    movq 6320(%rbp), %rbx
    movq 6312(%rbp), %r12
    movq 6304(%rbp), %r13
    movq 6296(%rbp), %r14
    movq 6288(%rbp), %r15
    leaq 6512(%rbp), %rsp
    popq %rbp
    ret
.L1_23:
.L1_24:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_29
    jmp .L1_72
.L1_72:
    movl %r12d, %r13d
    jmp .L1_30
.L1_29:
    movq 8(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    sete %al
    movzbl %al, %r13d
.L1_30:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_26
    jmp .L1_27
.L1_26:
    leaq 6248(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq 5456(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 6328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 6328(%rbp), %rax
    movq 6504(%rbp), %rdi
    movq 6496(%rbp), %rsi
    movdqu 6480(%rbp), %xmm6
    movdqu 6464(%rbp), %xmm7
    movdqu 6448(%rbp), %xmm8
    movdqu 6432(%rbp), %xmm9
    movdqu 6416(%rbp), %xmm10
    movdqu 6400(%rbp), %xmm11
    movdqu 6384(%rbp), %xmm12
    movdqu 6368(%rbp), %xmm13
    movdqu 6352(%rbp), %xmm14
    movdqu 6336(%rbp), %xmm15
    movq 6320(%rbp), %rbx
    movq 6312(%rbp), %r12
    movq 6304(%rbp), %r13
    movq 6296(%rbp), %r14
    movq 6288(%rbp), %r15
    leaq 6512(%rbp), %rsp
    popq %rbp
    ret
.L1_27:
.L1_28:
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $2, %ecx
    cmpl %ecx, %r12d
    jne .L1_33
.L1_32:
    leaq 6248(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_12is_directory(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq 5440(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $35, %rax
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
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 6328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 6328(%rbp), %rax
    movq 6504(%rbp), %rdi
    movq 6496(%rbp), %rsi
    movdqu 6480(%rbp), %xmm6
    movdqu 6464(%rbp), %xmm7
    movdqu 6448(%rbp), %xmm8
    movdqu 6432(%rbp), %xmm9
    movdqu 6416(%rbp), %xmm10
    movdqu 6400(%rbp), %xmm11
    movdqu 6384(%rbp), %xmm12
    movdqu 6368(%rbp), %xmm13
    movdqu 6352(%rbp), %xmm14
    movdqu 6336(%rbp), %xmm15
    movq 6320(%rbp), %rbx
    movq 6312(%rbp), %r12
    movq 6304(%rbp), %r13
    movq 6296(%rbp), %r14
    movq 6288(%rbp), %r15
    leaq 6512(%rbp), %rsp
    popq %rbp
    ret
.L1_33:
.L1_34:
    jmp .L1_17
.L1_16:
.L1_17:
    leaq 5384(%rbp), %r13
    leaq 6168(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    leaq 6152(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    movl %ebx, %eax
    movq %rax, 16(%rsp)
    movl %r12d, %eax
    movq %rax, 24(%rsp)
    leaq 5296(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_Replacement_prepare
    addq $32, %rsp
    leaq 5296(%rbp), %r12
    movq $80, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_37
    jmp .L1_36
.L1_37:
    movq $56, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 6248(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %r13, %rsi
    movq 6328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 6328(%rbp), %rax
    movq 6504(%rbp), %rdi
    movq 6496(%rbp), %rsi
    movdqu 6480(%rbp), %xmm6
    movdqu 6464(%rbp), %xmm7
    movdqu 6448(%rbp), %xmm8
    movdqu 6432(%rbp), %xmm9
    movdqu 6416(%rbp), %xmm10
    movdqu 6400(%rbp), %xmm11
    movdqu 6384(%rbp), %xmm12
    movdqu 6368(%rbp), %xmm13
    movdqu 6352(%rbp), %xmm14
    movdqu 6336(%rbp), %xmm15
    movq 6320(%rbp), %rbx
    movq 6312(%rbp), %r12
    movq 6304(%rbp), %r13
    movq 6296(%rbp), %r14
    movq 6288(%rbp), %r15
    leaq 6512(%rbp), %rsp
    popq %rbp
    ret
.L1_36:
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 1200(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %rdi
    xorl %esi, %esi
    movq $4096, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    leaq 1184(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 16(%rbp), %rax
    movq 48(%rbp), %r10
    movq %rax, (%r10)
    leaq lb_vt_files_File_Reader(%rip), %rax
    movq %rax, 40(%rbp)
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 40(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    leaq 1168(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq %r14, (%r10)
    leaq lb_vt_files_TemporaryFile_Writer(%rip), %r14
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    leaq 1152(%rbp), %r14
    movq 56(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $4096, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq 6200(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    subq $96, %rsp
    movq 48(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 32(%rbp), %r10
    leaq 64(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 64(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %r14, %r10
    leaq 80(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 80(%rsp), %rax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    movq $0, %rax
    movq %rax, 40(%rsp)
    leaq 1112(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_io_10copy_limit
    addq $96, %rsp
    leaq 1112(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_40
    jmp .L1_39
.L1_40:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq 6248(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_Replacement_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %r14, %rsi
    movq 6328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 6328(%rbp), %rax
    movq 6504(%rbp), %rdi
    movq 6496(%rbp), %rsi
    movdqu 6480(%rbp), %xmm6
    movdqu 6464(%rbp), %xmm7
    movdqu 6448(%rbp), %xmm8
    movdqu 6432(%rbp), %xmm9
    movdqu 6416(%rbp), %xmm10
    movdqu 6400(%rbp), %xmm11
    movdqu 6384(%rbp), %xmm12
    movdqu 6368(%rbp), %xmm13
    movdqu 6352(%rbp), %xmm14
    movdqu 6336(%rbp), %xmm15
    movq 6320(%rbp), %rbx
    movq 6312(%rbp), %r12
    movq 6304(%rbp), %r13
    movq 6296(%rbp), %r14
    movq 6288(%rbp), %r15
    leaq 6512(%rbp), %rsp
    popq %rbp
    ret
.L1_39:
    movq %rbx, %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    jne .L1_43
.L1_42:
.L1_48:
    leaq 1096(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq 16(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 1056(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_File_read
    addq $48, %rsp
    leaq 1056(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_51
    jmp .L1_50
.L1_51:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 6248(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
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
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_Replacement_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %r12, %rsi
    movq 6328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 6328(%rbp), %rax
    movq 6504(%rbp), %rdi
    movq 6496(%rbp), %rsi
    movdqu 6480(%rbp), %xmm6
    movdqu 6464(%rbp), %xmm7
    movdqu 6448(%rbp), %xmm8
    movdqu 6432(%rbp), %xmm9
    movdqu 6416(%rbp), %xmm10
    movdqu 6400(%rbp), %xmm11
    movdqu 6384(%rbp), %xmm12
    movdqu 6368(%rbp), %xmm13
    movdqu 6352(%rbp), %xmm14
    movdqu 6336(%rbp), %xmm15
    movq 6320(%rbp), %rbx
    movq 6312(%rbp), %r12
    movq 6304(%rbp), %r13
    movq 6296(%rbp), %r14
    movq 6288(%rbp), %r15
    leaq 6512(%rbp), %rsp
    popq %rbp
    ret
.L1_50:
    movq %r14, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_46
.L1_45:
    leaq 6248(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_9too_large(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_6(%rip), %r14
    leaq 1040(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $43, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_Replacement_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 6328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 6328(%rbp), %rax
    movq 6504(%rbp), %rdi
    movq 6496(%rbp), %rsi
    movdqu 6480(%rbp), %xmm6
    movdqu 6464(%rbp), %xmm7
    movdqu 6448(%rbp), %xmm8
    movdqu 6432(%rbp), %xmm9
    movdqu 6416(%rbp), %xmm10
    movdqu 6400(%rbp), %xmm11
    movdqu 6384(%rbp), %xmm12
    movdqu 6368(%rbp), %xmm13
    movdqu 6352(%rbp), %xmm14
    movdqu 6336(%rbp), %xmm15
    movq 6320(%rbp), %rbx
    movq 6312(%rbp), %r12
    movq 6304(%rbp), %r13
    movq 6296(%rbp), %r14
    movq 6288(%rbp), %r15
    leaq 6512(%rbp), %rsp
    popq %rbp
    ret
.L1_46:
.L1_47:
    jmp .L1_44
.L1_43:
.L1_44:
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 1008(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_File_close
    addq $32, %rsp
    leaq 1008(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_55
    jmp .L1_54
.L1_55:
    leaq 6248(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
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
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_Replacement_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 6328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 6328(%rbp), %rax
    movq 6504(%rbp), %rdi
    movq 6496(%rbp), %rsi
    movdqu 6480(%rbp), %xmm6
    movdqu 6464(%rbp), %xmm7
    movdqu 6448(%rbp), %xmm8
    movdqu 6432(%rbp), %xmm9
    movdqu 6416(%rbp), %xmm10
    movdqu 6400(%rbp), %xmm11
    movdqu 6384(%rbp), %xmm12
    movdqu 6368(%rbp), %xmm13
    movdqu 6352(%rbp), %xmm14
    movdqu 6336(%rbp), %xmm15
    movq 6320(%rbp), %rbx
    movq 6312(%rbp), %r12
    movq 6304(%rbp), %r13
    movq 6296(%rbp), %r14
    movq 6288(%rbp), %r15
    leaq 6512(%rbp), %rsp
    popq %rbp
    ret
.L1_54:
    leaq 6184(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 16(%rsp)
    movl %ebx, %eax
    movq %rax, 24(%rsp)
    movq 24(%rbp), %rax
    movq %rax, 32(%rsp)
    leaq 976(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_Replacement_finish
    addq $48, %rsp
    leaq 976(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_58
    jmp .L1_57
.L1_58:
    leaq 6248(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
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
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_Replacement_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 6328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 6328(%rbp), %rax
    movq 6504(%rbp), %rdi
    movq 6496(%rbp), %rsi
    movdqu 6480(%rbp), %xmm6
    movdqu 6464(%rbp), %xmm7
    movdqu 6448(%rbp), %xmm8
    movdqu 6432(%rbp), %xmm9
    movdqu 6416(%rbp), %xmm10
    movdqu 6400(%rbp), %xmm11
    movdqu 6384(%rbp), %xmm12
    movdqu 6368(%rbp), %xmm13
    movdqu 6352(%rbp), %xmm14
    movdqu 6336(%rbp), %xmm15
    movq 6320(%rbp), %rbx
    movq 6312(%rbp), %r12
    movq 6304(%rbp), %r13
    movq 6296(%rbp), %r14
    movq 6288(%rbp), %r15
    leaq 6512(%rbp), %rsp
    popq %rbp
    ret
.L1_57:
    leaq 6248(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_Replacement_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_File_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 6328(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 6328(%rbp), %rax
    movq 6504(%rbp), %rdi
    movq 6496(%rbp), %rsi
    movdqu 6480(%rbp), %xmm6
    movdqu 6464(%rbp), %xmm7
    movdqu 6448(%rbp), %xmm8
    movdqu 6432(%rbp), %xmm9
    movdqu 6416(%rbp), %xmm10
    movdqu 6400(%rbp), %xmm11
    movdqu 6384(%rbp), %xmm12
    movdqu 6368(%rbp), %xmm13
    movdqu 6352(%rbp), %xmm14
    movdqu 6336(%rbp), %xmm15
    movq 6320(%rbp), %rbx
    movq 6312(%rbp), %r12
    movq 6304(%rbp), %r13
    movq 6296(%rbp), %r14
    movq 6288(%rbp), %r15
    leaq 6512(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_files_copy_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "a directory cannot be copied as file bytes"
.Ltext_1:
    .asciz "the copy destination already exists"
.Ltext_2:
    .asciz "source and destination identify the same file"
.Ltext_3:
    .asciz "the copy destination is a directory"
.Ltext_4:
    .asciz "src/std/files/copy.lucb:30:9"
.Ltext_5:
    .asciz "index out of bounds"
.Ltext_6:
    .asciz "the copy source exceeds the requested limit"
.Ltext_7:
    .asciz "unreachable"
.Ltext_8:
    .asciz "src/std/files/copy.lucb:34:5"
.Ltext_9:
    .asciz "src/std/files/copy.lucb:41:5"

    .section .rdata,"dr"
    .p2align 3

    .section .rdata$lb_vt_files_File_Reader,"dr"
    .p2align 3
    .globl lb_vt_files_File_Reader
lb_vt_files_File_Reader:
    .quad lb_files_File_read

    .section .rdata$lb_vt_files_TemporaryFile_Writer,"dr"
    .p2align 3
    .globl lb_vt_files_TemporaryFile_Writer
lb_vt_files_TemporaryFile_Writer:
    .quad lb_files_TemporaryFile_write
