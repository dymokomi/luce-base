    .text

    .p2align 4
    .globl lb_files_windows_0init
lb_files_windows_0init:
    .seh_proc lb_files_windows_0init
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
    .globl lb_files_22windows_create_symlink
lb_files_22windows_create_symlink:
    .seh_proc lb_files_22windows_create_symlink
    pushq %rbp
    .seh_pushreg %rbp
    subq $1360, %rsp
    .seh_stackalloc 1360
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 1176(%rbp)
    movq %rdi, 1352(%rbp)
    .seh_savereg %rdi, 1352
    movq %rsi, 1344(%rbp)
    .seh_savereg %rsi, 1344
    movdqu %xmm6, 1328(%rbp)
    .seh_savexmm %xmm6, 1328
    movdqu %xmm7, 1312(%rbp)
    .seh_savexmm %xmm7, 1312
    movdqu %xmm8, 1296(%rbp)
    .seh_savexmm %xmm8, 1296
    movdqu %xmm9, 1280(%rbp)
    .seh_savexmm %xmm9, 1280
    movdqu %xmm10, 1264(%rbp)
    .seh_savexmm %xmm10, 1264
    movdqu %xmm11, 1248(%rbp)
    .seh_savexmm %xmm11, 1248
    movdqu %xmm12, 1232(%rbp)
    .seh_savexmm %xmm12, 1232
    movdqu %xmm13, 1216(%rbp)
    .seh_savexmm %xmm13, 1216
    movdqu %xmm14, 1200(%rbp)
    .seh_savexmm %xmm14, 1200
    movdqu %xmm15, 1184(%rbp)
    .seh_savexmm %xmm15, 1184
    movq %rbx, 1168(%rbp)
    .seh_savereg %rbx, 1168
    movq %r12, 1160(%rbp)
    .seh_savereg %r12, 1160
    movq %r13, 1152(%rbp)
    .seh_savereg %r13, 1152
    movq %r14, 1144(%rbp)
    .seh_savereg %r14, 1144
    movq %r15, 1136(%rbp)
    .seh_savereg %r15, 1136
    .seh_endprologue
    movq %rcx, 1376(%rbp)
    movq %rdx, 1384(%rbp)
    movq %r8, 1392(%rbp)
    movq %r9, 1400(%rbp)
    movq 1384(%rbp), %rax
    movq %rax, 1088(%rbp)
    movq 1392(%rbp), %rax
    movq %rax, 1072(%rbp)
    movq 1400(%rbp), %rax
    leaq 1056(%rbp), %r10
    movw %ax, 0(%r10)
    leaq 1056(%rbp), %r12
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_4
    jmp .L1_2
.L1_4:
    movq %r12, %r10
    movzbl (%r10), %ebx
.L1_1:
    movzbl %bl, %r12d
    movl %r12d, %eax
    movl %eax, 16(%rbp)
    jmp .L1_3
.L1_2:
    leaq 1040(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 1072(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    leaq 1024(%rbp), %r13
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
    leaq 1008(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_paths_directory
    addq $48, %rsp
    leaq 1008(%rbp), %rbx
    leaq 1088(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r13
    leaq 992(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
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
    leaq 944(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_paths_join
    addq $64, %rsp
    leaq 944(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_6
    jmp .L1_5
.L1_6:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 1104(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 1176(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1176(%rbp), %rax
    movq 1352(%rbp), %rdi
    movq 1344(%rbp), %rsi
    movdqu 1328(%rbp), %xmm6
    movdqu 1312(%rbp), %xmm7
    movdqu 1296(%rbp), %xmm8
    movdqu 1280(%rbp), %xmm9
    movdqu 1264(%rbp), %xmm10
    movdqu 1248(%rbp), %xmm11
    movdqu 1232(%rbp), %xmm12
    movdqu 1216(%rbp), %xmm13
    movdqu 1200(%rbp), %xmm14
    movdqu 1184(%rbp), %xmm15
    movq 1168(%rbp), %rbx
    movq 1160(%rbp), %r12
    movq 1152(%rbp), %r13
    movq 1144(%rbp), %r14
    movq 1136(%rbp), %r15
    leaq 1360(%rbp), %rsp
    popq %rbp
    ret
.L1_7:
.L1_5:
    movq %r12, %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 816(%rbp), %r13
    movq 24(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    leaq 504(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_metadata
    addq $32, %rsp
    leaq 504(%rbp), %r14
    movq $152, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_11
    jmp .L1_10
.L1_11:
    movq $128, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 664(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L1_8
.L1_10:
    leaq 688(%rbp), %rbx
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
    jmp .L1_9
.L1_8:
    movq %r12, %r10
    movl (%r10), %ebx
    leaq lb_files_missing(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    cmpl %r14d, %ebx
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L1_13
.L1_12:
    leaq 1104(%rbp), %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 24(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %r13, %rsi
    movq 1176(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1176(%rbp), %rax
    movq 1352(%rbp), %rdi
    movq 1344(%rbp), %rsi
    movdqu 1328(%rbp), %xmm6
    movdqu 1312(%rbp), %xmm7
    movdqu 1296(%rbp), %xmm8
    movdqu 1280(%rbp), %xmm9
    movdqu 1264(%rbp), %xmm10
    movdqu 1248(%rbp), %xmm11
    movdqu 1232(%rbp), %xmm12
    movdqu 1216(%rbp), %xmm13
    movdqu 1200(%rbp), %xmm14
    movdqu 1184(%rbp), %xmm15
    movq 1168(%rbp), %rbx
    movq 1160(%rbp), %r12
    movq 1152(%rbp), %r13
    movq 1144(%rbp), %r14
    movq 1136(%rbp), %r15
    leaq 1360(%rbp), %rsp
    popq %rbp
    ret
.L1_15:
    jmp .L1_14
.L1_13:
.L1_14:
    leaq 376(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movups %xmm8, 96(%r11)
    movups %xmm8, 112(%r11)
    leaq 688(%rbp), %r12
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
    jmp .L1_9
.L1_16:
.L1_9:
    leaq 688(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, %r11
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
    movq %r13, %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    subq $48, %rsp
    movq 24(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movl %r12d, %eax
    movl %eax, 16(%rbp)
.L1_3:
    leaq 360(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 1072(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 312(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_9wide_path
    addq $32, %rsp
    leaq 312(%rbp), %r14
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_18
    jmp .L1_17
.L1_18:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 1104(%rbp), %r12
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
    movq 1176(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1176(%rbp), %rax
    movq 1352(%rbp), %rdi
    movq 1344(%rbp), %rsi
    movdqu 1328(%rbp), %xmm6
    movdqu 1312(%rbp), %xmm7
    movdqu 1296(%rbp), %xmm8
    movdqu 1280(%rbp), %xmm9
    movdqu 1264(%rbp), %xmm10
    movdqu 1248(%rbp), %xmm11
    movdqu 1232(%rbp), %xmm12
    movdqu 1216(%rbp), %xmm13
    movdqu 1200(%rbp), %xmm14
    movdqu 1184(%rbp), %xmm15
    movq 1168(%rbp), %rbx
    movq 1160(%rbp), %r12
    movq 1152(%rbp), %r13
    movq 1144(%rbp), %r14
    movq 1136(%rbp), %r15
    leaq 1360(%rbp), %rsp
    popq %rbp
    ret
.L1_19:
.L1_17:
    movq %r14, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 296(%rbp), %r15
    leaq 1088(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 248(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_9wide_path
    addq $32, %rsp
    leaq 248(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_21
    jmp .L1_20
.L1_21:
    movq $16, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    leaq 1104(%rbp), %rax
    movq %rax, 136(%rbp)
    movq 144(%rbp), %r10
    movq 136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 136(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movl $1, %eax
    movq 128(%rbp), %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 120(%rbp)
    leaq 232(%rbp), %r15
    movq 8(%rbp), %r10
    movq (%r10), %r14
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq 120(%rbp), %r10
    movq (%r10), %rbx
    movq 120(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_23
    jmp .L1_22
.L1_23:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
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
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L1_22:
    movq 136(%rbp), %rsi
    movq 1176(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1176(%rbp), %rax
    movq 1352(%rbp), %rdi
    movq 1344(%rbp), %rsi
    movdqu 1328(%rbp), %xmm6
    movdqu 1312(%rbp), %xmm7
    movdqu 1296(%rbp), %xmm8
    movdqu 1280(%rbp), %xmm9
    movdqu 1264(%rbp), %xmm10
    movdqu 1248(%rbp), %xmm11
    movdqu 1232(%rbp), %xmm12
    movdqu 1216(%rbp), %xmm13
    movdqu 1200(%rbp), %xmm14
    movdqu 1184(%rbp), %xmm15
    movq 1168(%rbp), %rbx
    movq 1160(%rbp), %r12
    movq 1152(%rbp), %r13
    movq 1144(%rbp), %r14
    movq 1136(%rbp), %r15
    leaq 1360(%rbp), %rsp
    popq %rbp
    ret
.L1_24:
.L1_20:
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 8(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 112(%rbp)
    movq %r15, %r10
    movq (%r10), %r14
    movl 16(%rbp), %eax
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_28
    jmp .L1_29
.L1_28:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L1_30
.L1_29:
    movl $0, %eax
    movl %eax, %ebx
.L1_30:
    movl $2, %ecx
    movl %ebx, %r12d
    orl %ecx, %r12d
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movl %r12d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call CreateSymbolicLinkW
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_26
.L1_25:
    leaq 1104(%rbp), %rax
    movq %rax, 104(%rbp)
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_13windows_error
    addq $32, %rsp
    movl %eax, %r12d
    movq 104(%rbp), %r10
    movl %r12d, (%r10)
    leaq .Ltext_1(%rip), %r12
    leaq 216(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 96(%rbp), %r10
    movq %r12, (%r10)
    movq 96(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $38, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 96(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 104(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 200(%rbp), %rax
    movq %rax, 88(%rbp)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 88(%rbp), %r10
    movq %r14, (%r10)
    movq 88(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L1_32
    jmp .L1_31
.L1_32:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 88(%rbp), %r10
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
.L1_31:
    leaq 184(%rbp), %rbx
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 112(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq (%r10), %r13
    movq 72(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_34
    jmp .L1_33
.L1_34:
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
.L1_33:
    movq 104(%rbp), %rsi
    movq 1176(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1176(%rbp), %rax
    movq 1352(%rbp), %rdi
    movq 1344(%rbp), %rsi
    movdqu 1328(%rbp), %xmm6
    movdqu 1312(%rbp), %xmm7
    movdqu 1296(%rbp), %xmm8
    movdqu 1280(%rbp), %xmm9
    movdqu 1264(%rbp), %xmm10
    movdqu 1248(%rbp), %xmm11
    movdqu 1232(%rbp), %xmm12
    movdqu 1216(%rbp), %xmm13
    movdqu 1200(%rbp), %xmm14
    movdqu 1184(%rbp), %xmm15
    movq 1168(%rbp), %rbx
    movq 1160(%rbp), %r12
    movq 1152(%rbp), %r13
    movq 1144(%rbp), %r14
    movq 1136(%rbp), %r15
    leaq 1360(%rbp), %rsp
    popq %rbp
    ret
.L1_35:
    jmp .L1_27
.L1_26:
.L1_27:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %rbx
    leaq 168(%rbp), %rax
    movq %rax, 64(%rbp)
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 40(%rbp)
    movq 64(%rbp), %r10
    movq %r14, (%r10)
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 40(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L1_37
    jmp .L1_36
.L1_37:
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
.L1_36:
    leaq 152(%rbp), %r12
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 112(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq 32(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_39
    jmp .L1_38
.L1_39:
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
.L1_38:
    leaq 1104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1176(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1176(%rbp), %rax
    movq 1352(%rbp), %rdi
    movq 1344(%rbp), %rsi
    movdqu 1328(%rbp), %xmm6
    movdqu 1312(%rbp), %xmm7
    movdqu 1296(%rbp), %xmm8
    movdqu 1280(%rbp), %xmm9
    movdqu 1264(%rbp), %xmm10
    movdqu 1248(%rbp), %xmm11
    movdqu 1232(%rbp), %xmm12
    movdqu 1216(%rbp), %xmm13
    movdqu 1200(%rbp), %xmm14
    movdqu 1184(%rbp), %xmm15
    movq 1168(%rbp), %rbx
    movq 1160(%rbp), %r12
    movq 1152(%rbp), %r13
    movq 1144(%rbp), %r14
    movq 1136(%rbp), %r15
    leaq 1360(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_files_20windows_read_symlink
lb_files_20windows_read_symlink:
    .seh_proc lb_files_20windows_read_symlink
    pushq %rbp
    .seh_pushreg %rbp
    movq $17136, %rax
    call ___chkstk_ms
    subq $17136, %rsp
    .seh_stackalloc 17136
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 16952(%rbp)
    movq %rdi, 17128(%rbp)
    .seh_savereg %rdi, 17128
    movq %rsi, 17120(%rbp)
    .seh_savereg %rsi, 17120
    movdqu %xmm6, 17104(%rbp)
    .seh_savexmm %xmm6, 17104
    movdqu %xmm7, 17088(%rbp)
    .seh_savexmm %xmm7, 17088
    movdqu %xmm8, 17072(%rbp)
    .seh_savexmm %xmm8, 17072
    movdqu %xmm9, 17056(%rbp)
    .seh_savexmm %xmm9, 17056
    movdqu %xmm10, 17040(%rbp)
    .seh_savexmm %xmm10, 17040
    movdqu %xmm11, 17024(%rbp)
    .seh_savexmm %xmm11, 17024
    movdqu %xmm12, 17008(%rbp)
    .seh_savexmm %xmm12, 17008
    movdqu %xmm13, 16992(%rbp)
    .seh_savexmm %xmm13, 16992
    movdqu %xmm14, 16976(%rbp)
    .seh_savexmm %xmm14, 16976
    movdqu %xmm15, 16960(%rbp)
    .seh_savexmm %xmm15, 16960
    movq %rbx, 16944(%rbp)
    .seh_savereg %rbx, 16944
    movq %r12, 16936(%rbp)
    .seh_savereg %r12, 16936
    movq %r13, 16928(%rbp)
    .seh_savereg %r13, 16928
    movq %r14, 16920(%rbp)
    .seh_savereg %r14, 16920
    movq %r15, 16912(%rbp)
    .seh_savereg %r15, 16912
    .seh_endprologue
    movq %rcx, 17152(%rbp)
    movq %rdx, 17160(%rbp)
    movq %r8, 17168(%rbp)
    movq %r9, 17176(%rbp)
    movq 17160(%rbp), %rax
    movq %rax, 16848(%rbp)
    movq 17168(%rbp), %rax
    movq %rax, 16832(%rbp)
    leaq 16848(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    leaq 16792(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_19windows_path_handle
    addq $32, %rsp
    leaq 16792(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 16864(%rbp), %r13
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
    movq 16952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 16952(%rbp), %rax
    movq 17128(%rbp), %rdi
    movq 17120(%rbp), %rsi
    movdqu 17104(%rbp), %xmm6
    movdqu 17088(%rbp), %xmm7
    movdqu 17072(%rbp), %xmm8
    movdqu 17056(%rbp), %xmm9
    movdqu 17040(%rbp), %xmm10
    movdqu 17024(%rbp), %xmm11
    movdqu 17008(%rbp), %xmm12
    movdqu 16992(%rbp), %xmm13
    movdqu 16976(%rbp), %xmm14
    movdqu 16960(%rbp), %xmm15
    movq 16944(%rbp), %rbx
    movq 16936(%rbp), %r12
    movq 16928(%rbp), %r13
    movq 16920(%rbp), %r14
    movq 16912(%rbp), %r15
    leaq 17136(%rbp), %rsp
    popq %rbp
    ret
.L2_1:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 96(%rbp)
    leaq 408(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rdi
    xorl %esi, %esi
    movq $16384, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    leaq 404(%rbp), %rax
    movq %rax, 80(%rbp)
    movl $0, %eax
    movq 80(%rbp), %r10
    movl %eax, (%r10)
    subq $64, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $589992, %eax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movq 88(%rbp), %rax
    movq %rax, 32(%rsp)
    movl $16384, %eax
    movq %rax, 40(%rsp)
    movq 80(%rbp), %rax
    movq %rax, 48(%rsp)
    movq $0, %rax
    movq %rax, 56(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call DeviceIoControl
    addq $64, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L2_5
.L2_4:
    leaq 16864(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r14d
    subq $32, %rsp
    movl %r14d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_13windows_error
    addq $32, %rsp
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_4(%rip), %r14
    leaq 384(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $35, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 16952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 16952(%rbp), %rax
    movq 17128(%rbp), %rdi
    movq 17120(%rbp), %rsi
    movdqu 17104(%rbp), %xmm6
    movdqu 17088(%rbp), %xmm7
    movdqu 17072(%rbp), %xmm8
    movdqu 17056(%rbp), %xmm9
    movdqu 17040(%rbp), %xmm10
    movdqu 17024(%rbp), %xmm11
    movdqu 17008(%rbp), %xmm12
    movdqu 16992(%rbp), %xmm13
    movdqu 16976(%rbp), %xmm14
    movdqu 16960(%rbp), %xmm15
    movq 16944(%rbp), %rbx
    movq 16936(%rbp), %r12
    movq 16928(%rbp), %r13
    movq 16920(%rbp), %r14
    movq 16912(%rbp), %r15
    leaq 17136(%rbp), %rsp
    popq %rbp
    ret
.L2_5:
.L2_6:
    movq 88(%rbp), %r10
    movl (%r10), %r12d
    movl $2684354572, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L2_8
    jmp .L2_9
.L2_8:
    movq $20, %rax
    movq %rax, %r13
    jmp .L2_10
.L2_9:
    movq $16, %rax
    movq %rax, %r13
.L2_10:
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L2_14
    jmp .L2_71
.L2_71:
    movl %ebx, %r12d
    jmp .L2_15
.L2_14:
    movl $2684354563, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L2_15:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L2_72
    jmp .L2_16
.L2_72:
    movl %ebx, %r12d
    jmp .L2_17
.L2_16:
    movq 80(%rbp), %r10
    movl (%r10), %ebx
    cmpl %r13d, %ebx
    setb %al
    movzbl %al, %r12d
.L2_17:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L2_11
    jmp .L2_12
.L2_11:
    leaq 16864(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq 368(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 16952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 16952(%rbp), %rax
    movq 17128(%rbp), %rdi
    movq 17120(%rbp), %rsi
    movdqu 17104(%rbp), %xmm6
    movdqu 17088(%rbp), %xmm7
    movdqu 17072(%rbp), %xmm8
    movdqu 17056(%rbp), %xmm9
    movdqu 17040(%rbp), %xmm10
    movdqu 17024(%rbp), %xmm11
    movdqu 17008(%rbp), %xmm12
    movdqu 16992(%rbp), %xmm13
    movdqu 16976(%rbp), %xmm14
    movdqu 16960(%rbp), %xmm15
    movq 16944(%rbp), %rbx
    movq 16936(%rbp), %r12
    movq 16928(%rbp), %r13
    movq 16920(%rbp), %r14
    movq 16912(%rbp), %r15
    leaq 17136(%rbp), %rsp
    popq %rbp
    ret
.L2_12:
.L2_13:
    movq 88(%rbp), %rax
    movq $12, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl %ebx, %ebx
    movq 88(%rbp), %rax
    movq $14, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movl %r12d, %r12d
.L2_23:
    movq $2, %rcx
    movq %rbx, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L2_73
    jmp .L2_24
.L2_73:
    movl %r15d, %r14d
    jmp .L2_25
.L2_24:
.L2_27:
    movq $2, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
.L2_25:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L2_74
    jmp .L2_28
.L2_74:
    movl %r15d, %r14d
    jmp .L2_29
.L2_28:
    movq %rbx, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 80(%rbp), %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    cmpq %r15, %r14
    seta %al
    movzbl %al, %r14d
.L2_29:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L2_19
    jmp .L2_20
.L2_19:
    leaq 16864(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_10(%rip), %r13
    leaq 352(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $47, %rax
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
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 16952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 16952(%rbp), %rax
    movq 17128(%rbp), %rdi
    movq 17120(%rbp), %rsi
    movdqu 17104(%rbp), %xmm6
    movdqu 17088(%rbp), %xmm7
    movdqu 17072(%rbp), %xmm8
    movdqu 17056(%rbp), %xmm9
    movdqu 17040(%rbp), %xmm10
    movdqu 17024(%rbp), %xmm11
    movdqu 17008(%rbp), %xmm12
    movdqu 16992(%rbp), %xmm13
    movdqu 16976(%rbp), %xmm14
    movdqu 16960(%rbp), %xmm15
    movq 16944(%rbp), %rbx
    movq 16936(%rbp), %r12
    movq 16928(%rbp), %r13
    movq 16920(%rbp), %r14
    movq 16912(%rbp), %r15
    leaq 17136(%rbp), %rsp
    popq %rbp
    ret
.L2_20:
.L2_21:
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L2_32
.L2_31:
    leaq .Ltext_11(%rip), %rbx
    leaq 336(%rbp), %r12
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
    leaq 288(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_copy
    addq $48, %rsp
    leaq 288(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_35
    jmp .L2_34
.L2_35:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 16864(%rbp), %r13
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
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r13, %rsi
    movq 16952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 16952(%rbp), %rax
    movq 17128(%rbp), %rdi
    movq 17120(%rbp), %rsi
    movdqu 17104(%rbp), %xmm6
    movdqu 17088(%rbp), %xmm7
    movdqu 17072(%rbp), %xmm8
    movdqu 17056(%rbp), %xmm9
    movdqu 17040(%rbp), %xmm10
    movdqu 17024(%rbp), %xmm11
    movdqu 17008(%rbp), %xmm12
    movdqu 16992(%rbp), %xmm13
    movdqu 16976(%rbp), %xmm14
    movdqu 16960(%rbp), %xmm15
    movq 16944(%rbp), %rbx
    movq 16936(%rbp), %r12
    movq 16928(%rbp), %r13
    movq 16920(%rbp), %r14
    movq 16912(%rbp), %r15
    leaq 17136(%rbp), %rsp
    popq %rbp
    ret
.L2_34:
    leaq 16864(%rbp), %rbx
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
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 16952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 16952(%rbp), %rax
    movq 17128(%rbp), %rdi
    movq 17120(%rbp), %rsi
    movdqu 17104(%rbp), %xmm6
    movdqu 17088(%rbp), %xmm7
    movdqu 17072(%rbp), %xmm8
    movdqu 17056(%rbp), %xmm9
    movdqu 17040(%rbp), %xmm10
    movdqu 17024(%rbp), %xmm11
    movdqu 17008(%rbp), %xmm12
    movdqu 16992(%rbp), %xmm13
    movdqu 16976(%rbp), %xmm14
    movdqu 16960(%rbp), %xmm15
    movq 16944(%rbp), %rbx
    movq 16936(%rbp), %r12
    movq 16928(%rbp), %r13
    movq 16920(%rbp), %r14
    movq 16912(%rbp), %r15
    leaq 17136(%rbp), %rsp
    popq %rbp
    ret
.L2_32:
.L2_33:
    movq %rbx, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
.L2_39:
    movq $2, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %rbx
    movq $2, %rcx
    imulq %rcx, %rbx
    movq 88(%rbp), %rax
    addq %rbx, %rax
    movq %rax, 72(%rbp)
.L2_41:
    movq $2, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, 64(%rbp)
    subq $64, %rsp
    movl $65001, %eax
    movq %rax, 0(%rsp)
    movl $128, %eax
    movq %rax, 8(%rsp)
    movq 72(%rbp), %rax
    movq %rax, 16(%rsp)
    movl 64(%rbp), %eax
    movq %rax, 24(%rsp)
    movq $0, %rax
    movq %rax, 32(%rsp)
    movl $0, %eax
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
    movl %eax, 56(%rbp)
    movl 56(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jg .L2_43
.L2_42:
    leaq 16864(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_14(%rip), %r13
    leaq 272(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $42, %rax
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
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 16952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 16952(%rbp), %rax
    movq 17128(%rbp), %rdi
    movq 17120(%rbp), %rsi
    movdqu 17104(%rbp), %xmm6
    movdqu 17088(%rbp), %xmm7
    movdqu 17072(%rbp), %xmm8
    movdqu 17056(%rbp), %xmm9
    movdqu 17040(%rbp), %xmm10
    movdqu 17024(%rbp), %xmm11
    movdqu 17008(%rbp), %xmm12
    movdqu 16992(%rbp), %xmm13
    movdqu 16976(%rbp), %xmm14
    movdqu 16960(%rbp), %xmm15
    movq 16944(%rbp), %rbx
    movq 16936(%rbp), %r12
    movq 16928(%rbp), %r13
    movq 16920(%rbp), %r14
    movq 16912(%rbp), %r15
    leaq 17136(%rbp), %rsp
    popq %rbp
    ret
.L2_43:
.L2_44:
    movl 56(%rbp), %eax
    movslq %eax, %rax
    movq %rax, 48(%rbp)
    leaq 16832(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq 48(%rbp), %rax
    cmpq %r15, %rax
    jbe .L2_47
.L2_46:
    leaq 16864(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_9too_large(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_15(%rip), %r13
    leaq 256(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $43, %rax
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
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 16952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 16952(%rbp), %rax
    movq 17128(%rbp), %rdi
    movq 17120(%rbp), %rsi
    movdqu 17104(%rbp), %xmm6
    movdqu 17088(%rbp), %xmm7
    movdqu 17072(%rbp), %xmm8
    movdqu 17056(%rbp), %xmm9
    movdqu 17040(%rbp), %xmm10
    movdqu 17024(%rbp), %xmm11
    movdqu 17008(%rbp), %xmm12
    movdqu 16992(%rbp), %xmm13
    movdqu 16976(%rbp), %xmm14
    movdqu 16960(%rbp), %xmm15
    movq 16944(%rbp), %rbx
    movq 16936(%rbp), %r12
    movq 16928(%rbp), %r13
    movq 16920(%rbp), %r14
    movq 16912(%rbp), %r15
    leaq 17136(%rbp), %rsp
    popq %rbp
    ret
.L2_47:
.L2_48:
    leaq 240(%rbp), %rax
    movq %rax, 24(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 16(%rbp)
    movq 48(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    leaq 192(%rbp), %rax
    movq %rax, 8(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r14
    jbe .L2_51
.L2_50:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $208273409, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    leaq .Ltext_17(%rip), %r15
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L2_52
.L2_51:
    movq 16(%rbp), %r10
    movq (%r10), %r12
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_53
    jmp .L2_54
.L2_54:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_53:
    movq %r15, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 168(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 168(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %eax
    movl %eax, 40(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl 40(%rbp), %eax
    andl %r13d, %eax
    movl %eax, 32(%rbp)
    movl 32(%rbp), %eax
    testl %eax, %eax
    jne .L2_55
    jmp .L2_56
.L2_55:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_19(%rip), %r12
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
    jmp .L2_52
.L2_56:
    movq %rbx, %r10
    movq (%r10), %r12
    movq 8(%rbp), %r10
    movq %r12, (%r10)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L2_52:
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_58
    jmp .L2_57
.L2_58:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 16864(%rbp), %r12
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
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 16952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 16952(%rbp), %rax
    movq 17128(%rbp), %rdi
    movq 17120(%rbp), %rsi
    movdqu 17104(%rbp), %xmm6
    movdqu 17088(%rbp), %xmm7
    movdqu 17072(%rbp), %xmm8
    movdqu 17056(%rbp), %xmm9
    movdqu 17040(%rbp), %xmm10
    movdqu 17024(%rbp), %xmm11
    movdqu 17008(%rbp), %xmm12
    movdqu 16992(%rbp), %xmm13
    movdqu 16976(%rbp), %xmm14
    movdqu 16960(%rbp), %xmm15
    movq 16944(%rbp), %rbx
    movq 16936(%rbp), %r12
    movq 16928(%rbp), %r13
    movq 16920(%rbp), %r14
    movq 16912(%rbp), %r15
    leaq 17136(%rbp), %rsp
    popq %rbp
    ret
.L2_57:
    movq 8(%rbp), %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L2_64:
    movq 24(%rbp), %r10
    movq (%r10), %rbx
    subq $64, %rsp
    movl $65001, %eax
    movq %rax, 0(%rsp)
    movl $128, %eax
    movq %rax, 8(%rsp)
    movq 72(%rbp), %rax
    movq %rax, 16(%rsp)
    movl 64(%rbp), %eax
    movq %rax, 24(%rsp)
    movq %rbx, %rax
    movq %rax, 32(%rsp)
    movl 56(%rbp), %eax
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
    movl 56(%rbp), %eax
    cmpl %r12d, %eax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_61
.L2_60:
    leaq 152(%rbp), %r12
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %rbx, (%r10)
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
    jne .L2_66
    jmp .L2_65
.L2_66:
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
.L2_65:
    leaq 16864(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_22(%rip), %r13
    leaq 136(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 16952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 16952(%rbp), %rax
    movq 17128(%rbp), %rdi
    movq 17120(%rbp), %rsi
    movdqu 17104(%rbp), %xmm6
    movdqu 17088(%rbp), %xmm7
    movdqu 17072(%rbp), %xmm8
    movdqu 17056(%rbp), %xmm9
    movdqu 17040(%rbp), %xmm10
    movdqu 17024(%rbp), %xmm11
    movdqu 17008(%rbp), %xmm12
    movdqu 16992(%rbp), %xmm13
    movdqu 16976(%rbp), %xmm14
    movdqu 16960(%rbp), %xmm15
    movq 16944(%rbp), %rbx
    movq 16936(%rbp), %r12
    movq 16928(%rbp), %r13
    movq 16920(%rbp), %r14
    movq 16912(%rbp), %r15
    leaq 17136(%rbp), %rsp
    popq %rbp
    ret
.L2_61:
.L2_62:
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq 48(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 48(%rbp), %rax
    movq %rax, %r13
    addq %rbx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 48(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 48(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L2_68
.L2_69:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_68:
    leaq 120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq 48(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq 48(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 16864(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r13, %rsi
    movq 16952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 16952(%rbp), %rax
    movq 17128(%rbp), %rdi
    movq 17120(%rbp), %rsi
    movdqu 17104(%rbp), %xmm6
    movdqu 17088(%rbp), %xmm7
    movdqu 17072(%rbp), %xmm8
    movdqu 17056(%rbp), %xmm9
    movdqu 17040(%rbp), %xmm10
    movdqu 17024(%rbp), %xmm11
    movdqu 17008(%rbp), %xmm12
    movdqu 16992(%rbp), %xmm13
    movdqu 16976(%rbp), %xmm14
    movdqu 16960(%rbp), %xmm15
    movq 16944(%rbp), %rbx
    movq 16936(%rbp), %r12
    movq 16928(%rbp), %r13
    movq 16920(%rbp), %r14
    movq 16912(%rbp), %r15
    leaq 17136(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_files_19windows_permissions
lb_files_19windows_permissions:
    .seh_proc lb_files_19windows_permissions
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
    movl %eax, 144(%rbp)
    movq 448(%rbp), %rax
    movl %eax, 128(%rbp)
    leaq 144(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _get_osfhandle
    addq $32, %rsp
    movq %rax, 8(%rbp)
    leaq 88(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movl $40, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call GetFileInformationByHandleEx
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L3_2
.L3_1:
    leaq 160(%rbp), %rbx
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_13windows_error
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_27(%rip), %r12
    leaq 72(%rbp), %r13
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
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    leaq 32(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq $32, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    leaq 128(%rbp), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl $146, %ecx
    andl %ecx, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L3_6
.L3_5:
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl $1, %ecx
    orl %ecx, %r14d
    jmp .L3_7
.L3_6:
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    leaq .Ltext_28(%rip), %rbx
    subq $64, %rsp
    movq $1, %rax
    movq %rax, 0(%rsp)
    movl $64, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movl $32, %eax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movl $0, %eax
    movq %rax, 40(%rsp)
    movq %rbx, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6conv_s
    addq $64, %rsp
    movq %rax, %rbx
    movl $4294967295, %ecx
    xorl %ecx, %ebx
    andl %ebx, %r14d
.L3_7:
    movq %r15, %r10
    movl %r14d, (%r10)
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L3_9
.L3_8:
    movl $128, %eax
    movq %r15, %r10
    movl %eax, (%r10)
    jmp .L3_10
.L3_9:
.L3_10:
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movl $40, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call SetFileInformationByHandle
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_12
.L3_11:
    leaq 160(%rbp), %rbx
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_13windows_error
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_29(%rip), %r12
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $36, %rax
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
.L3_14:
    jmp .L3_13
.L3_12:
.L3_13:
    leaq 160(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
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
    .globl lb_files_13windows_ticks
lb_files_13windows_ticks:
    .seh_proc lb_files_13windows_ticks
    pushq %rbp
    .seh_pushreg %rbp
    subq $432, %rsp
    .seh_stackalloc 432
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 248(%rbp)
    movq %rdi, 424(%rbp)
    .seh_savereg %rdi, 424
    movq %rsi, 416(%rbp)
    .seh_savereg %rsi, 416
    movdqu %xmm6, 400(%rbp)
    .seh_savexmm %xmm6, 400
    movdqu %xmm7, 384(%rbp)
    .seh_savexmm %xmm7, 384
    movdqu %xmm8, 368(%rbp)
    .seh_savexmm %xmm8, 368
    movdqu %xmm9, 352(%rbp)
    .seh_savexmm %xmm9, 352
    movdqu %xmm10, 336(%rbp)
    .seh_savexmm %xmm10, 336
    movdqu %xmm11, 320(%rbp)
    .seh_savexmm %xmm11, 320
    movdqu %xmm12, 304(%rbp)
    .seh_savexmm %xmm12, 304
    movdqu %xmm13, 288(%rbp)
    .seh_savexmm %xmm13, 288
    movdqu %xmm14, 272(%rbp)
    .seh_savexmm %xmm14, 272
    movdqu %xmm15, 256(%rbp)
    .seh_savexmm %xmm15, 256
    movq %rbx, 240(%rbp)
    .seh_savereg %rbx, 240
    movq %r12, 232(%rbp)
    .seh_savereg %r12, 232
    movq %r13, 224(%rbp)
    .seh_savereg %r13, 224
    movq %r14, 216(%rbp)
    .seh_savereg %r14, 216
    movq %r15, 208(%rbp)
    .seh_savereg %r15, 208
    .seh_endprologue
    movq %rcx, 448(%rbp)
    movq %rdx, 456(%rbp)
    movq %r8, 464(%rbp)
    movq %r9, 472(%rbp)
    movq 456(%rbp), %r10
    leaq 152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 152(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    leaq 144(%rbp), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movabsq $11644473600, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_s
    addq $32, %rsp
    movl %eax, %r12d
    leaq 128(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movb %r12b, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_1
    jmp .L4_2
.L4_1:
    jmp .L4_3
.L4_2:
    leaq 168(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_30(%rip), %r13
    leaq 112(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 248(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 248(%rbp), %rax
    movq 424(%rbp), %rdi
    movq 416(%rbp), %rsi
    movdqu 400(%rbp), %xmm6
    movdqu 384(%rbp), %xmm7
    movdqu 368(%rbp), %xmm8
    movdqu 352(%rbp), %xmm9
    movdqu 336(%rbp), %xmm10
    movdqu 320(%rbp), %xmm11
    movdqu 304(%rbp), %xmm12
    movdqu 288(%rbp), %xmm13
    movdqu 272(%rbp), %xmm14
    movdqu 256(%rbp), %xmm15
    movq 240(%rbp), %rbx
    movq 232(%rbp), %r12
    movq 224(%rbp), %r13
    movq 216(%rbp), %r14
    movq 208(%rbp), %r15
    leaq 432(%rbp), %rsp
    popq %rbp
    ret
.L4_3:
    movq $0, %rcx
    cmpq %rcx, %r13
    jge .L4_6
.L4_5:
    leaq 168(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_31(%rip), %r13
    leaq 96(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 248(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 248(%rbp), %rax
    movq 424(%rbp), %rdi
    movq 416(%rbp), %rsi
    movdqu 400(%rbp), %xmm6
    movdqu 384(%rbp), %xmm7
    movdqu 368(%rbp), %xmm8
    movdqu 352(%rbp), %xmm9
    movdqu 336(%rbp), %xmm10
    movdqu 320(%rbp), %xmm11
    movdqu 304(%rbp), %xmm12
    movdqu 288(%rbp), %xmm13
    movdqu 272(%rbp), %xmm14
    movdqu 256(%rbp), %xmm15
    movq 240(%rbp), %rbx
    movq 232(%rbp), %r12
    movq 224(%rbp), %r13
    movq 216(%rbp), %r14
    movq 208(%rbp), %r15
    leaq 432(%rbp), %rsp
    popq %rbp
    ret
.L4_6:
.L4_7:
    leaq 88(%rbp), %r12
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq $10000000, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qmul_u
    addq $32, %rsp
    movl %eax, %r14d
    leaq 72(%rbp), %r15
    movq %r12, %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %r14b, (%r10)
    movq %r15, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L4_9
    jmp .L4_10
.L4_9:
    jmp .L4_11
.L4_10:
    leaq 168(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_30(%rip), %r13
    leaq 56(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 248(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 248(%rbp), %rax
    movq 424(%rbp), %rdi
    movq 416(%rbp), %rsi
    movdqu 400(%rbp), %xmm6
    movdqu 384(%rbp), %xmm7
    movdqu 368(%rbp), %xmm8
    movdqu 352(%rbp), %xmm9
    movdqu 336(%rbp), %xmm10
    movdqu 320(%rbp), %xmm11
    movdqu 304(%rbp), %xmm12
    movdqu 288(%rbp), %xmm13
    movdqu 272(%rbp), %xmm14
    movdqu 256(%rbp), %xmm15
    movq 240(%rbp), %rbx
    movq 232(%rbp), %r12
    movq 224(%rbp), %r13
    movq 216(%rbp), %r14
    movq 208(%rbp), %r15
    leaq 432(%rbp), %rsp
    popq %rbp
    ret
.L4_11:
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
.L4_14:
    movl $100, %ecx
    movl %r13d, %eax
    xorl %edx, %edx
    divl %ecx
    movl %eax, %ebx
    movl %ebx, %ebx
    leaq 48(%rbp), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %ebx
    leaq 32(%rbp), %r15
    movq %r14, %r10
    movq (%r10), %r14
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %bl, (%r10)
    movq %r15, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_15
    jmp .L4_16
.L4_15:
    jmp .L4_17
.L4_16:
    leaq 168(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_30(%rip), %r13
    leaq 16(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 248(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 248(%rbp), %rax
    movq 424(%rbp), %rdi
    movq 416(%rbp), %rsi
    movdqu 400(%rbp), %xmm6
    movdqu 384(%rbp), %xmm7
    movdqu 368(%rbp), %xmm8
    movdqu 352(%rbp), %xmm9
    movdqu 336(%rbp), %xmm10
    movdqu 320(%rbp), %xmm11
    movdqu 304(%rbp), %xmm12
    movdqu 288(%rbp), %xmm13
    movdqu 272(%rbp), %xmm14
    movdqu 256(%rbp), %xmm15
    movq 240(%rbp), %rbx
    movq 232(%rbp), %r12
    movq 224(%rbp), %r13
    movq 216(%rbp), %r14
    movq 208(%rbp), %r15
    leaq 432(%rbp), %rsp
    popq %rbp
    ret
.L4_17:
    movabsq $9223372036854775807, %rcx
    cmpq %rcx, %r14
    jb .L4_20
.L4_19:
    leaq 168(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_30(%rip), %r13
    leaq 0(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 248(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 248(%rbp), %rax
    movq 424(%rbp), %rdi
    movq 416(%rbp), %rsi
    movdqu 400(%rbp), %xmm6
    movdqu 384(%rbp), %xmm7
    movdqu 368(%rbp), %xmm8
    movdqu 352(%rbp), %xmm9
    movdqu 336(%rbp), %xmm10
    movdqu 320(%rbp), %xmm11
    movdqu 304(%rbp), %xmm12
    movdqu 288(%rbp), %xmm13
    movdqu 272(%rbp), %xmm14
    movdqu 256(%rbp), %xmm15
    movq 240(%rbp), %rbx
    movq 232(%rbp), %r12
    movq 224(%rbp), %r13
    movq 216(%rbp), %r14
    movq 208(%rbp), %r15
    leaq 432(%rbp), %rsp
    popq %rbp
    ret
.L4_20:
.L4_21:
    leaq 168(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 248(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 248(%rbp), %rax
    movq 424(%rbp), %rdi
    movq 416(%rbp), %rsi
    movdqu 400(%rbp), %xmm6
    movdqu 384(%rbp), %xmm7
    movdqu 368(%rbp), %xmm8
    movdqu 352(%rbp), %xmm9
    movdqu 336(%rbp), %xmm10
    movdqu 320(%rbp), %xmm11
    movdqu 304(%rbp), %xmm12
    movdqu 288(%rbp), %xmm13
    movdqu 272(%rbp), %xmm14
    movdqu 256(%rbp), %xmm15
    movq 240(%rbp), %rbx
    movq 232(%rbp), %r12
    movq 224(%rbp), %r13
    movq 216(%rbp), %r14
    movq 208(%rbp), %r15
    leaq 432(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_files_17windows_set_times
lb_files_17windows_set_times:
    .seh_proc lb_files_17windows_set_times
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
    movl %eax, 144(%rbp)
    movq 448(%rbp), %r10
    leaq 128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 456(%rbp), %r10
    leaq 112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 104(%rbp), %r12
    leaq 128(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 64(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_13windows_ticks
    addq $48, %rsp
    leaq 64(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_2
    jmp .L5_1
.L5_2:
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
.L5_3:
.L5_1:
    movq %r13, %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq 56(%rbp), %r14
    leaq 112(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_13windows_ticks
    addq $48, %rsp
    leaq 16(%rbp), %r15
    movq $32, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_5
    jmp .L5_4
.L5_5:
    movq $8, %rcx
    movq %r15, %rbx
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
.L5_6:
.L5_4:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    leaq 144(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _get_osfhandle
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call SetFileTime
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_8
.L5_7:
    leaq 160(%rbp), %rbx
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_13windows_error
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_34(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $36, %rax
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
.L5_10:
    jmp .L5_9
.L5_8:
.L5_9:
    leaq 160(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
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
    .globl lb_files_9wide_path
lb_files_9wide_path:
    .seh_proc lb_files_9wide_path
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
    movq 392(%rbp), %rax
    movq %rax, 80(%rbp)
    leaq 64(%rbp), %r13
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r12d, %eax
    movq %rax, 16(%rsp)
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_wide
    addq $32, %rsp
    leaq 16(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_2
    jmp .L6_1
.L6_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 96(%rbp), %r13
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
    movq 184(%rbp), %rdi
    movq $48, %rdx
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
.L6_3:
.L6_1:
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq %r13, %r10
    movq (%r10), %r14
    movq $0, %rax
    movq %rax, %r15
.L6_4:
    movq 8(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L6_7
.L6_5:
    movq $2, %rcx
    movq %r15, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzwl (%r10), %ebx
    movl $47, %ecx
    cmpl %ecx, %ebx
    jne .L6_9
.L6_8:
    movl $92, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    jmp .L6_10
.L6_9:
.L6_10:
.L6_6:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L6_4
.L6_7:
    leaq 96(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 184(%rbp), %rdi
    movq $48, %rdx
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
.L6_11:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_13windows_error
lb_files_13windows_error:
    .seh_proc lb_files_13windows_error
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
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L7_40
    jmp .L7_4
.L7_40:
    movl %r12d, %r13d
    jmp .L7_5
.L7_4:
    movl $3, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L7_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L7_1
    jmp .L7_2
.L7_1:
    leaq lb_files_missing(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
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
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L7_6:
    jmp .L7_3
.L7_2:
.L7_3:
    movl $5, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L7_41
    jmp .L7_10
.L7_41:
    movl %r12d, %r13d
    jmp .L7_11
.L7_10:
    movl $1314, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L7_11:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L7_7
    jmp .L7_8
.L7_7:
    leaq lb_files_17permission_denied(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
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
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L7_12:
    jmp .L7_9
.L7_8:
.L7_9:
    movl $80, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L7_42
    jmp .L7_16
.L7_42:
    movl %r12d, %r13d
    jmp .L7_17
.L7_16:
    movl $183, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L7_17:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L7_13
    jmp .L7_14
.L7_13:
    leaq lb_files_14already_exists(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
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
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L7_18:
    jmp .L7_15
.L7_14:
.L7_15:
    movl $112, %ecx
    cmpl %ecx, %ebx
    jne .L7_20
.L7_19:
    leaq lb_files_8no_space(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
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
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L7_22:
    jmp .L7_21
.L7_20:
.L7_21:
    movl $145, %ecx
    cmpl %ecx, %ebx
    jne .L7_24
.L7_23:
    leaq lb_files_9not_empty(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
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
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L7_26:
    jmp .L7_25
.L7_24:
.L7_25:
    movl $206, %ecx
    cmpl %ecx, %ebx
    jne .L7_28
.L7_27:
    leaq lb_files_13name_too_long(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
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
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L7_30:
    jmp .L7_29
.L7_28:
.L7_29:
    movl $17, %ecx
    cmpl %ecx, %ebx
    jne .L7_32
.L7_31:
    leaq lb_files_12cross_device(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
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
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L7_34:
    jmp .L7_33
.L7_32:
.L7_33:
    movl $267, %ecx
    cmpl %ecx, %ebx
    jne .L7_36
.L7_35:
    leaq lb_files_13not_directory(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
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
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L7_38:
    jmp .L7_37
.L7_36:
.L7_37:
    leaq lb_files_failed(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
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
    movq 32(%rbp), %r12
    movq 24(%rbp), %r13
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L7_39:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_12windows_open
lb_files_12windows_open:
    .seh_proc lb_files_12windows_open
    pushq %rbp
    .seh_pushreg %rbp
    subq $800, %rsp
    .seh_stackalloc 800
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 616(%rbp)
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
    movq %rbx, 608(%rbp)
    .seh_savereg %rbx, 608
    movq %r12, 600(%rbp)
    .seh_savereg %r12, 600
    movq %r13, 592(%rbp)
    .seh_savereg %r13, 592
    movq %r14, 584(%rbp)
    .seh_savereg %r14, 584
    movq %r15, 576(%rbp)
    .seh_savereg %r15, 576
    .seh_endprologue
    movq %rcx, 816(%rbp)
    movq %rdx, 824(%rbp)
    movq %r8, 832(%rbp)
    movq %r9, 840(%rbp)
    movq 824(%rbp), %rax
    movq %rax, 520(%rbp)
    movq 832(%rbp), %rax
    movl %eax, 504(%rbp)
    movq 840(%rbp), %rax
    movl %eax, 488(%rbp)
    movq 848(%rbp), %rax
    movl %eax, 472(%rbp)
    movq 856(%rbp), %rax
    movl %eax, 456(%rbp)
    leaq 440(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 520(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 392(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_9wide_path
    addq $32, %rsp
    leaq 392(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_2
    jmp .L8_1
.L8_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 536(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
    movq 616(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
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
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L8_3:
.L8_1:
    movq %r13, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 504(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rax
    movq %rax, 104(%rbp)
    movl 104(%rbp), %eax
    movl $3, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    movl $2, %ecx
    cmpl %ecx, %r14d
    jne .L8_5
.L8_4:
    movl $3221225472, %eax
    movl %eax, %r13d
    jmp .L8_6
.L8_5:
    movl $1, %ecx
    cmpl %ecx, %r14d
    jne .L8_8
.L8_7:
    movl $1073741824, %eax
    movl %eax, %r13d
    jmp .L8_9
.L8_8:
    movl $2147483648, %eax
    movl %eax, %r13d
.L8_9:
.L8_6:
    movl 104(%rbp), %eax
    movl $256, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L8_11
.L8_10:
    movl 104(%rbp), %eax
    movl $1024, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L8_14
.L8_13:
    movl $1, %eax
    movl %eax, %r14d
    jmp .L8_15
.L8_14:
    movl $4, %eax
    movl %eax, %r14d
.L8_15:
    movl %r14d, %r15d
    jmp .L8_12
.L8_11:
    movl $3, %eax
    movl %eax, %r15d
.L8_12:
    leaq 488(%rbp), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl $146, %ecx
    andl %ecx, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L8_17
.L8_16:
    movl $1, %eax
    movl %eax, %r14d
    jmp .L8_18
.L8_17:
    movl $128, %eax
    movl %eax, %r14d
.L8_18:
    leaq 472(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %eax
    movl %eax, 96(%rbp)
    movl 96(%rbp), %eax
    testl %eax, %eax
    jne .L8_19
    jmp .L8_20
.L8_19:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L8_21
.L8_20:
    movl $2097152, %eax
    movl %eax, %ebx
.L8_21:
    movl %r14d, %eax
    orl %ebx, %eax
    movl %eax, 88(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 80(%rbp)
    subq $64, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    movl $7, %eax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movl %r15d, %eax
    movq %rax, 32(%rsp)
    movl 88(%rbp), %eax
    movq %rax, 40(%rsp)
    movq $0, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CreateFileW
    addq $64, %rsp
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    testq %rax, %rax
    jne .L8_22
    jmp .L8_23
.L8_23:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_39(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L8_22:
    movq 8(%rbp), %rax
    movq $-1, %rcx
    cmpq %rcx, %rax
    jne .L8_25
.L8_24:
    leaq 536(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r14d
    subq $32, %rsp
    movl %r14d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_13windows_error
    addq $32, %rsp
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_41(%rip), %r14
    leaq 376(%rbp), %r15
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
    movq 72(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 360(%rbp), %r14
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 80(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L8_28
    jmp .L8_27
.L8_28:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %rbx, %rax
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
.L8_27:
    movq 72(%rbp), %rsi
    movq 616(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
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
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L8_29:
    jmp .L8_26
.L8_25:
.L8_26:
    leaq 456(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_33
    jmp .L8_72
.L8_72:
    movl %ebx, %r13d
    jmp .L8_34
.L8_33:
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetFileType
    addq $32, %rsp
    movl %eax, %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L8_34:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L8_30
    jmp .L8_31
.L8_30:
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    leaq 536(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq lb_files_15invalid_options(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_43(%rip), %r14
    leaq 344(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $53, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 64(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 328(%rbp), %r14
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 80(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L8_36
    jmp .L8_35
.L8_36:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %rbx, %rax
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
.L8_35:
    movq 64(%rbp), %rsi
    movq 616(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
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
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L8_37:
    jmp .L8_32
.L8_31:
.L8_32:
    leaq 276(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movl $0, 48(%r11)
    movl 96(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L8_39
.L8_38:
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetFileInformationByHandle
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L8_42
.L8_41:
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r13d
    leaq 536(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_13windows_error
    addq $32, %rsp
    movl %eax, %ebx
    movq %r14, %r10
    movl %ebx, (%r10)
    leaq .Ltext_45(%rip), %rbx
    leaq 256(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 56(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %rbx
    leaq 240(%rbp), %r14
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 80(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L8_45
    jmp .L8_44
.L8_45:
    movq $16, %rcx
    movq %rbx, %r12
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
.L8_44:
    movq 56(%rbp), %rsi
    movq 616(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
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
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L8_46:
    jmp .L8_43
.L8_42:
.L8_43:
    movq %rbx, %r10
    movl (%r10), %r13d
    movl $1024, %ecx
    andl %ecx, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L8_48
.L8_47:
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    leaq 536(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq lb_files_12symlink_loop(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_47(%rip), %r14
    leaq 224(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $36, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 48(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 208(%rbp), %r14
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 80(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L8_51
    jmp .L8_50
.L8_51:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %rbx, %rax
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
.L8_50:
    movq 48(%rbp), %rsi
    movq 616(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
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
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L8_52:
    jmp .L8_49
.L8_48:
.L8_49:
    jmp .L8_40
.L8_39:
.L8_40:
    movl 104(%rbp), %eax
    movl $32907, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call _open_osfhandle
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jge .L8_54
.L8_53:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r13d
    leaq 536(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14classify_error
    addq $32, %rsp
    movl %eax, %ebx
    movq %r14, %r10
    movl %ebx, (%r10)
    leaq .Ltext_49(%rip), %rbx
    leaq 192(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq $40, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 40(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %rbx
    leaq 176(%rbp), %r14
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 80(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L8_57
    jmp .L8_56
.L8_57:
    movq $16, %rcx
    movq %rbx, %r12
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
.L8_56:
    movq 40(%rbp), %rsi
    movq 616(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
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
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L8_58:
    jmp .L8_55
.L8_54:
.L8_55:
    movl 104(%rbp), %eax
    movl $512, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L8_62
    jmp .L8_73
.L8_73:
    movl %r13d, %r14d
    jmp .L8_63
.L8_62:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_ftruncate
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L8_63:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L8_59
    jmp .L8_60
.L8_59:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call close
    addq $32, %rsp
    movl %eax, %ebx
    leaq 536(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_14classify_error
    addq $32, %rsp
    movl %eax, %r13d
    movq %r15, %r10
    movl %r13d, (%r10)
    leaq .Ltext_51(%rip), %r13
    leaq 160(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 144(%rbp), %r13
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 80(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L8_65
    jmp .L8_64
.L8_65:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
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
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
.L8_64:
    movq 32(%rbp), %rsi
    movq 616(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
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
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L8_66:
    jmp .L8_61
.L8_60:
.L8_61:
    leaq 536(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %r10
    movl %ebx, (%r10)
    movq 24(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 128(%rbp), %r14
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 80(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L8_68
    jmp .L8_67
.L8_68:
    movq $16, %rcx
    movq %r13, %rbx
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
.L8_67:
    movq 24(%rbp), %rsi
    movq 616(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
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
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L8_69:
    leaq 440(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 112(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L8_71
    jmp .L8_70
.L8_71:
    movq $16, %rcx
    movq %rbx, %r12
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
.L8_70:
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_19windows_path_handle
lb_files_19windows_path_handle:
    .seh_proc lb_files_19windows_path_handle
    pushq %rbp
    .seh_pushreg %rbp
    subq $576, %rsp
    .seh_stackalloc 576
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 392(%rbp)
    movq %rdi, 568(%rbp)
    .seh_savereg %rdi, 568
    movq %rsi, 560(%rbp)
    .seh_savereg %rsi, 560
    movdqu %xmm6, 544(%rbp)
    .seh_savexmm %xmm6, 544
    movdqu %xmm7, 528(%rbp)
    .seh_savexmm %xmm7, 528
    movdqu %xmm8, 512(%rbp)
    .seh_savexmm %xmm8, 512
    movdqu %xmm9, 496(%rbp)
    .seh_savexmm %xmm9, 496
    movdqu %xmm10, 480(%rbp)
    .seh_savexmm %xmm10, 480
    movdqu %xmm11, 464(%rbp)
    .seh_savexmm %xmm11, 464
    movdqu %xmm12, 448(%rbp)
    .seh_savexmm %xmm12, 448
    movdqu %xmm13, 432(%rbp)
    .seh_savexmm %xmm13, 432
    movdqu %xmm14, 416(%rbp)
    .seh_savexmm %xmm14, 416
    movdqu %xmm15, 400(%rbp)
    .seh_savexmm %xmm15, 400
    movq %rbx, 384(%rbp)
    .seh_savereg %rbx, 384
    movq %r12, 376(%rbp)
    .seh_savereg %r12, 376
    movq %r13, 368(%rbp)
    .seh_savereg %r13, 368
    movq %r14, 360(%rbp)
    .seh_savereg %r14, 360
    movq %r15, 352(%rbp)
    .seh_savereg %r15, 352
    .seh_endprologue
    movq %rcx, 592(%rbp)
    movq %rdx, 600(%rbp)
    movq %r8, 608(%rbp)
    movq %r9, 616(%rbp)
    movq 600(%rbp), %rax
    movq %rax, 296(%rbp)
    movq 608(%rbp), %rax
    movl %eax, 280(%rbp)
    movq 616(%rbp), %rax
    movl %eax, 264(%rbp)
    leaq 248(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 296(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 200(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_9wide_path
    addq $32, %rsp
    leaq 200(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_2
    jmp .L9_1
.L9_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 312(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
    movq 392(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 392(%rbp), %rax
    movq 568(%rbp), %rdi
    movq 560(%rbp), %rsi
    movdqu 544(%rbp), %xmm6
    movdqu 528(%rbp), %xmm7
    movdqu 512(%rbp), %xmm8
    movdqu 496(%rbp), %xmm9
    movdqu 480(%rbp), %xmm10
    movdqu 464(%rbp), %xmm11
    movdqu 448(%rbp), %xmm12
    movdqu 432(%rbp), %xmm13
    movdqu 416(%rbp), %xmm14
    movdqu 400(%rbp), %xmm15
    movq 384(%rbp), %rbx
    movq 376(%rbp), %r12
    movq 368(%rbp), %r13
    movq 360(%rbp), %r14
    movq 352(%rbp), %r15
    leaq 576(%rbp), %rsp
    popq %rbp
    ret
.L9_3:
.L9_1:
    movq %r13, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 8(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    leaq 280(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L9_4
    jmp .L9_5
.L9_4:
    movl $0, %eax
    movl %eax, %r13d
    jmp .L9_6
.L9_5:
    movl $2097152, %eax
    movl %eax, %r13d
.L9_6:
    movl $33554432, %ecx
    movl %r13d, %r15d
    orl %ecx, %r15d
    subq $64, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movl $7, %eax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movl $3, %eax
    movq %rax, 32(%rsp)
    movl %r15d, %eax
    movq %rax, 40(%rsp)
    movq $0, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CreateFileW
    addq $64, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L9_7
    jmp .L9_8
.L9_8:
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_39(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_7:
    movq $-1, %rcx
    cmpq %rcx, %r15
    jne .L9_10
.L9_9:
    leaq 312(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r15d
    subq $32, %rsp
    movl %r15d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_13windows_error
    addq $32, %rsp
    movl %eax, %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_55(%rip), %r15
    leaq 184(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $33, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %rbx
    leaq 168(%rbp), %r14
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 40(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L9_13
    jmp .L9_12
.L9_13:
    movq $16, %rcx
    movq %rbx, %r12
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
.L9_12:
    movq 32(%rbp), %rsi
    movq 392(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 392(%rbp), %rax
    movq 568(%rbp), %rdi
    movq 560(%rbp), %rsi
    movdqu 544(%rbp), %xmm6
    movdqu 528(%rbp), %xmm7
    movdqu 512(%rbp), %xmm8
    movdqu 496(%rbp), %xmm9
    movdqu 480(%rbp), %xmm10
    movdqu 464(%rbp), %xmm11
    movdqu 448(%rbp), %xmm12
    movdqu 432(%rbp), %xmm13
    movdqu 416(%rbp), %xmm14
    movdqu 400(%rbp), %xmm15
    movq 384(%rbp), %rbx
    movq 376(%rbp), %r12
    movq 368(%rbp), %r13
    movq 360(%rbp), %r14
    movq 352(%rbp), %r15
    leaq 576(%rbp), %rsp
    popq %rbp
    ret
.L9_14:
    jmp .L9_11
.L9_10:
.L9_11:
    leaq 264(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_15
    jmp .L9_16
.L9_15:
    leaq 116(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movl $0, 48(%r11)
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetFileInformationByHandle
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L9_35
    jmp .L9_21
.L9_35:
    movl %r13d, %r12d
    jmp .L9_22
.L9_21:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $16, %ecx
    andl %ecx, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L9_22:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L9_36
    jmp .L9_23
.L9_36:
    movl %r13d, %ebx
    jmp .L9_24
.L9_23:
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L9_25
    jmp .L9_37
.L9_37:
    movl %r12d, %ebx
    jmp .L9_26
.L9_25:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $1024, %ecx
    andl %ecx, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L9_26:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L9_24:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L9_18
    jmp .L9_19
.L9_18:
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    leaq 312(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    leaq lb_files_13not_directory(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_57(%rip), %r13
    leaq 96(%rbp), %r14
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
    movq 24(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 80(%rbp), %r13
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_58(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 40(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L9_28
    jmp .L9_27
.L9_28:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
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
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
.L9_27:
    movq 24(%rbp), %rsi
    movq 392(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 392(%rbp), %rax
    movq 568(%rbp), %rdi
    movq 560(%rbp), %rsi
    movdqu 544(%rbp), %xmm6
    movdqu 528(%rbp), %xmm7
    movdqu 512(%rbp), %xmm8
    movdqu 496(%rbp), %xmm9
    movdqu 480(%rbp), %xmm10
    movdqu 464(%rbp), %xmm11
    movdqu 448(%rbp), %xmm12
    movdqu 432(%rbp), %xmm13
    movdqu 416(%rbp), %xmm14
    movdqu 400(%rbp), %xmm15
    movq 384(%rbp), %rbx
    movq 376(%rbp), %r12
    movq 368(%rbp), %r13
    movq 360(%rbp), %r14
    movq 352(%rbp), %r15
    leaq 576(%rbp), %rsp
    popq %rbp
    ret
.L9_29:
    jmp .L9_20
.L9_19:
.L9_20:
    jmp .L9_17
.L9_16:
.L9_17:
    leaq 312(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r10
    movq %r15, (%r10)
    movq 16(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 64(%rbp), %r13
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 40(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L9_31
    jmp .L9_30
.L9_31:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
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
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
.L9_30:
    movq 16(%rbp), %rsi
    movq 392(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 392(%rbp), %rax
    movq 568(%rbp), %rdi
    movq 560(%rbp), %rsi
    movdqu 544(%rbp), %xmm6
    movdqu 528(%rbp), %xmm7
    movdqu 512(%rbp), %xmm8
    movdqu 496(%rbp), %xmm9
    movdqu 480(%rbp), %xmm10
    movdqu 464(%rbp), %xmm11
    movdqu 448(%rbp), %xmm12
    movdqu 432(%rbp), %xmm13
    movdqu 416(%rbp), %xmm14
    movdqu 400(%rbp), %xmm15
    movq 384(%rbp), %rbx
    movq 376(%rbp), %r12
    movq 368(%rbp), %r13
    movq 360(%rbp), %r14
    movq 352(%rbp), %r15
    leaq 576(%rbp), %rsp
    popq %rbp
    ret
.L9_32:
    leaq 248(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 48(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L9_34
    jmp .L9_33
.L9_34:
    movq $16, %rcx
    movq %rbx, %r12
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
.L9_33:
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_12windows_time
lb_files_12windows_time:
    .seh_proc lb_files_12windows_time
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
    movq %r14, 56(%rbp)
    .seh_savereg %r14, 56
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
.L10_2:
    movabsq $-9223372036854775808, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L10_3
    jmp .L10_4
.L10_3:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L10_4:
    movq $10000000, %rcx
    movq %rbx, %rax
    cqto
    idivq %rcx
    movq %rax, %r13
    movq %r13, %rax
    movabsq $11644473600, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    leaq 8(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    movq %r13, (%r10)
.L10_6:
    testl %r12d, %r12d
    jne .L10_7
    jmp .L10_8
.L10_7:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L10_8:
    movq $10000000, %rcx
    movq %rbx, %rax
    cqto
    idivq %rcx
    movq %rdx, %r12
    movl %r12d, %eax
    movl $100, %ecx
    mull %ecx
    jnc 1f
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    leaq 40(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 88(%rbp), %rdi
    movq $16, %rdx
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
    movq 56(%rbp), %r14
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_files_16windows_metadata
lb_files_16windows_metadata:
    .seh_proc lb_files_16windows_metadata
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
    movq 872(%rbp), %rax
    movq %rax, 448(%rbp)
    movq 880(%rbp), %rax
    movl %eax, 432(%rbp)
    leaq 380(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movl $0, 48(%r11)
    leaq 336(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq 312(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 448(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 72(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetFileInformationByHandle
    addq $32, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L11_32
    jmp .L11_4
.L11_32:
    movl %r15d, %ebx
    jmp .L11_5
.L11_4:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 16(%rsp)
    movl $40, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call GetFileInformationByHandleEx
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L11_5:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L11_33
    jmp .L11_6
.L11_33:
    movl %r15d, %ebx
    jmp .L11_7
.L11_6:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 56(%rbp), %rax
    movq %rax, 16(%rsp)
    movl $24, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call GetFileInformationByHandleEx
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L11_7:
    movzbl %bl, %r14d
    testl %r14d, %r14d
    jne .L11_1
    jmp .L11_2
.L11_1:
    leaq 464(%rbp), %rbx
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_13windows_error
    addq $32, %rsp
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_63(%rip), %r13
    leaq 296(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 664(%rbp), %rdi
    movq $160, %rdx
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
.L11_2:
.L11_3:
    movq 72(%rbp), %r10
    movl (%r10), %ebx
    movl $16, %ecx
    movl %ebx, %r14d
    andl %ecx, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L11_10
.L11_9:
    movl $2, %eax
    movl %eax, %r14d
    jmp .L11_11
.L11_10:
    movl $1, %eax
    movl %eax, %r14d
.L11_11:
    movzbl %r14b, %r15d
    leaq 432(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L11_15
    jmp .L11_34
.L11_34:
    movl %r12d, %r14d
    jmp .L11_16
.L11_15:
    movl $1024, %ecx
    movl %ebx, %r12d
    andl %ecx, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L11_16:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L11_12
    jmp .L11_13
.L11_12:
    movl $3, %eax
    movl %eax, %r15d
    jmp .L11_14
.L11_13:
.L11_14:
    movq 72(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
.L11_18:
    movq $32, %rcx
    movq %r12, %r14
    shlq %cl, %r14
    movq 72(%rbp), %rax
    movq $36, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movl (%r10), %eax
    movl %eax, 40(%rbp)
    movl 40(%rbp), %eax
    movl %eax, %eax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rcx
    movq %r14, %rax
    orq %rcx, %rax
    movq %rax, 24(%rbp)
    leaq 168(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movups %xmm8, 96(%r11)
    movups %xmm8, 112(%r11)
    movzbl %r15b, %r14d
    movq %r13, %r10
    movb %r14b, (%r10)
    movl $1, %ecx
    movl %ebx, %eax
    andl %ecx, %eax
    movl %eax, 16(%rbp)
    movl 16(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, 8(%rbp)
    movl 8(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L11_20
.L11_19:
    movl $292, %eax
    movl %eax, %ebx
    jmp .L11_21
.L11_20:
    movl $438, %eax
    movl %eax, %ebx
.L11_21:
    movl $2, %ecx
    cmpl %ecx, %r14d
    jne .L11_23
.L11_22:
    movl $73, %eax
    movl %eax, %r12d
    jmp .L11_24
.L11_23:
    movl $0, %eax
    movl %eax, %r12d
.L11_24:
    movl %ebx, %r14d
    orl %r12d, %r14d
    movq $4, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq 24(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 72(%rbp), %rax
    movq $28, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    movq $16, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 72(%rbp), %rax
    movq $44, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
.L11_26:
    movq $32, %rcx
    movq %r14, %rbx
    shlq %cl, %rbx
    movq 72(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    orq %r12, %rbx
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq 72(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq $44, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %rbx
.L11_28:
    movabsq $-9223372036854775808, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L11_29
    jmp .L11_30
.L11_29:
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_30:
    movq $512, %rcx
    movq %rbx, %rax
    cqto
    idivq %rcx
    movq %rax, %r12
    movq $48, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 152(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_12windows_time
    addq $32, %rsp
    leaq 152(%rbp), %r12
    movq $56, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 64(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 136(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_12windows_time
    addq $32, %rsp
    leaq 136(%rbp), %r12
    movq $72, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 64(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 120(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_12windows_time
    addq $32, %rsp
    leaq 120(%rbp), %r12
    movq $88, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 64(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 104(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_12windows_time
    addq $32, %rsp
    leaq 104(%rbp), %r12
    leaq 80(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $104, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 464(%rbp), %r12
    movq %r13, %r10
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
    movq $152, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 664(%rbp), %rdi
    movq $160, %rdx
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

    .p2align 4
    .globl lb_files_16windows_relative
lb_files_16windows_relative:
    .seh_proc lb_files_16windows_relative
    pushq %rbp
    .seh_pushreg %rbp
    subq $1056, %rsp
    .seh_stackalloc 1056
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 872(%rbp)
    movq %rdi, 1048(%rbp)
    .seh_savereg %rdi, 1048
    movq %rsi, 1040(%rbp)
    .seh_savereg %rsi, 1040
    movdqu %xmm6, 1024(%rbp)
    .seh_savexmm %xmm6, 1024
    movdqu %xmm7, 1008(%rbp)
    .seh_savexmm %xmm7, 1008
    movdqu %xmm8, 992(%rbp)
    .seh_savexmm %xmm8, 992
    movdqu %xmm9, 976(%rbp)
    .seh_savexmm %xmm9, 976
    movdqu %xmm10, 960(%rbp)
    .seh_savexmm %xmm10, 960
    movdqu %xmm11, 944(%rbp)
    .seh_savexmm %xmm11, 944
    movdqu %xmm12, 928(%rbp)
    .seh_savexmm %xmm12, 928
    movdqu %xmm13, 912(%rbp)
    .seh_savexmm %xmm13, 912
    movdqu %xmm14, 896(%rbp)
    .seh_savexmm %xmm14, 896
    movdqu %xmm15, 880(%rbp)
    .seh_savexmm %xmm15, 880
    movq %rbx, 864(%rbp)
    .seh_savereg %rbx, 864
    movq %r12, 856(%rbp)
    .seh_savereg %r12, 856
    movq %r13, 848(%rbp)
    .seh_savereg %r13, 848
    movq %r14, 840(%rbp)
    .seh_savereg %r14, 840
    movq %r15, 832(%rbp)
    .seh_savereg %r15, 832
    .seh_endprologue
    movq %rcx, 1072(%rbp)
    movq %rdx, 1080(%rbp)
    movq %r8, 1088(%rbp)
    movq %r9, 1096(%rbp)
    movq 1080(%rbp), %rax
    movl %eax, 768(%rbp)
    movq 1088(%rbp), %rax
    movq %rax, 752(%rbp)
    leaq 768(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rax
    movq %rax, 136(%rbp)
    leaq lb_files_20current_directory_fd(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl 136(%rbp), %eax
    cmpl %r12d, %eax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L12_73
    jmp .L12_4
.L12_73:
    movl %r12d, %r13d
    jmp .L12_5
.L12_4:
    leaq 752(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r13
    leaq 736(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    subq $48, %rsp
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_11is_absolute
    addq $48, %rsp
    movl %eax, %r13d
.L12_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L12_1
    jmp .L12_2
.L12_1:
    leaq 752(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    leaq 720(%rbp), %r13
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
    leaq 672(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_copy
    addq $48, %rsp
    leaq 672(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_7
    jmp .L12_6
.L12_7:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 784(%rbp), %r13
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
    movq 872(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 872(%rbp), %rax
    movq 1048(%rbp), %rdi
    movq 1040(%rbp), %rsi
    movdqu 1024(%rbp), %xmm6
    movdqu 1008(%rbp), %xmm7
    movdqu 992(%rbp), %xmm8
    movdqu 976(%rbp), %xmm9
    movdqu 960(%rbp), %xmm10
    movdqu 944(%rbp), %xmm11
    movdqu 928(%rbp), %xmm12
    movdqu 912(%rbp), %xmm13
    movdqu 896(%rbp), %xmm14
    movdqu 880(%rbp), %xmm15
    movq 864(%rbp), %rbx
    movq 856(%rbp), %r12
    movq 848(%rbp), %r13
    movq 840(%rbp), %r14
    movq 832(%rbp), %r15
    leaq 1056(%rbp), %rsp
    popq %rbp
    ret
.L12_6:
    leaq 784(%rbp), %rbx
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
    movq 872(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 872(%rbp), %rax
    movq 1048(%rbp), %rdi
    movq 1040(%rbp), %rsi
    movdqu 1024(%rbp), %xmm6
    movdqu 1008(%rbp), %xmm7
    movdqu 992(%rbp), %xmm8
    movdqu 976(%rbp), %xmm9
    movdqu 960(%rbp), %xmm10
    movdqu 944(%rbp), %xmm11
    movdqu 928(%rbp), %xmm12
    movdqu 912(%rbp), %xmm13
    movdqu 896(%rbp), %xmm14
    movdqu 880(%rbp), %xmm15
    movq 864(%rbp), %rbx
    movq 856(%rbp), %r12
    movq 848(%rbp), %r13
    movq 840(%rbp), %r14
    movq 832(%rbp), %r15
    leaq 1056(%rbp), %rsp
    popq %rbp
    ret
.L12_2:
.L12_3:
    leaq 656(%rbp), %rax
    movq %rax, 32(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 24(%rbp)
    leaq 608(%rbp), %r14
.L12_11:
    movq 24(%rbp), %r10
    movq (%r10), %r15
    movq 24(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq 128(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L12_13
    jmp .L12_14
.L12_14:
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L12_13:
    movq %rbx, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq $65536, %rax
    movq %rax, 16(%rsp)
    movq $2, %rax
    movq %rax, 24(%rsp)
    leaq 584(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 584(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $1, %ecx
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L12_15
    jmp .L12_16
.L12_15:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_19(%rip), %r12
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
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L12_12
.L12_16:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq $32768, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L12_12:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_18
    jmp .L12_17
.L12_18:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 784(%rbp), %r12
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
    movq 872(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 872(%rbp), %rax
    movq 1048(%rbp), %rdi
    movq 1040(%rbp), %rsi
    movdqu 1024(%rbp), %xmm6
    movdqu 1008(%rbp), %xmm7
    movdqu 992(%rbp), %xmm8
    movdqu 976(%rbp), %xmm9
    movdqu 960(%rbp), %xmm10
    movdqu 944(%rbp), %xmm11
    movdqu 928(%rbp), %xmm12
    movdqu 912(%rbp), %xmm13
    movdqu 896(%rbp), %xmm14
    movdqu 880(%rbp), %xmm15
    movq 864(%rbp), %rbx
    movq 856(%rbp), %r12
    movq 848(%rbp), %r13
    movq 840(%rbp), %r14
    movq 832(%rbp), %r15
    leaq 1056(%rbp), %rsp
    popq %rbp
    ret
.L12_17:
    movq %r14, %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl 136(%rbp), %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _get_osfhandle
    addq $32, %rsp
    movq %rax, %rbx
    movq 32(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 120(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 112(%rbp)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movl 112(%rbp), %eax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call GetFinalPathNameByHandleW
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L12_74
    jmp .L12_23
.L12_74:
    movl %r15d, %r14d
    jmp .L12_24
.L12_23:
    movl 112(%rbp), %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r14d
.L12_24:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L12_20
    jmp .L12_21
.L12_20:
    leaq 784(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r15d
    subq $32, %rsp
    movl %r15d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_13windows_error
    addq $32, %rsp
    movl %eax, %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_68(%rip), %r15
    leaq 568(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $41, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 552(%rbp), %r12
    movq 112(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 120(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r14
    movq 128(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L12_26
    jmp .L12_25
.L12_26:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
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
    movq %r13, %r11
    call *%r11
    addq $48, %rsp
.L12_25:
    movq %rbx, %rsi
    movq 872(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 872(%rbp), %rax
    movq 1048(%rbp), %rdi
    movq 1040(%rbp), %rsi
    movdqu 1024(%rbp), %xmm6
    movdqu 1008(%rbp), %xmm7
    movdqu 992(%rbp), %xmm8
    movdqu 976(%rbp), %xmm9
    movdqu 960(%rbp), %xmm10
    movdqu 944(%rbp), %xmm11
    movdqu 928(%rbp), %xmm12
    movdqu 912(%rbp), %xmm13
    movdqu 896(%rbp), %xmm14
    movdqu 880(%rbp), %xmm15
    movq 864(%rbp), %rbx
    movq 856(%rbp), %r12
    movq 848(%rbp), %r13
    movq 840(%rbp), %r14
    movq 832(%rbp), %r15
    leaq 1056(%rbp), %rsp
    popq %rbp
    ret
.L12_21:
.L12_22:
    leaq 536(%rbp), %rax
    movq %rax, 16(%rbp)
    movl %ebx, %eax
    movq %rax, 104(%rbp)
    movq 104(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    leaq 488(%rbp), %rax
    movq %rax, 8(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r12
    jbe .L12_29
.L12_28:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_17(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
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
    jmp .L12_30
.L12_29:
    movq 24(%rbp), %r10
    movq (%r10), %rbx
    movq 128(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L12_31
    jmp .L12_32
.L12_32:
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L12_31:
    movq %r14, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 464(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 464(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, 96(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl 96(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L12_33
    jmp .L12_34
.L12_33:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_19(%rip), %r12
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
    jmp .L12_30
.L12_34:
    movq %r15, %r10
    movq (%r10), %rbx
    movq 8(%rbp), %r10
    movq %rbx, (%r10)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L12_30:
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_36
    jmp .L12_35
.L12_36:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 784(%rbp), %r12
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
    leaq 448(%rbp), %rbx
    movq 112(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 120(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq 128(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L12_38
    jmp .L12_37
.L12_38:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L12_37:
    movq %r12, %rsi
    movq 872(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 872(%rbp), %rax
    movq 1048(%rbp), %rdi
    movq 1040(%rbp), %rsi
    movdqu 1024(%rbp), %xmm6
    movdqu 1008(%rbp), %xmm7
    movdqu 992(%rbp), %xmm8
    movdqu 976(%rbp), %xmm9
    movdqu 960(%rbp), %xmm10
    movdqu 944(%rbp), %xmm11
    movdqu 928(%rbp), %xmm12
    movdqu 912(%rbp), %xmm13
    movdqu 896(%rbp), %xmm14
    movdqu 880(%rbp), %xmm15
    movq 864(%rbp), %rbx
    movq 856(%rbp), %r12
    movq 848(%rbp), %r13
    movq 840(%rbp), %r14
    movq 832(%rbp), %r15
    leaq 1056(%rbp), %rsp
    popq %rbp
    ret
.L12_35:
    movq 8(%rbp), %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%rbp), %r10
    movq (%r10), %rbx
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    subq $64, %rsp
    movl $65001, %eax
    movq %rax, 0(%rsp)
    movl $128, %eax
    movq %rax, 8(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 16(%rsp)
    movl 104(%rbp), %eax
    movq %rax, 24(%rsp)
    movq %rbx, %rax
    movq %rax, 32(%rsp)
    movl %r13d, %eax
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
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L12_41
.L12_40:
    leaq 784(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    leaq lb_files_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_72(%rip), %r15
    leaq 432(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $44, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 416(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq 88(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r14
    movq 128(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L12_44
    jmp .L12_43
.L12_44:
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
.L12_43:
    leaq 400(%rbp), %rbx
    movq 112(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_73(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 120(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r12
    movq 128(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L12_46
    jmp .L12_45
.L12_46:
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
.L12_45:
    movq %r13, %rsi
    movq 872(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 872(%rbp), %rax
    movq 1048(%rbp), %rdi
    movq 1040(%rbp), %rsi
    movdqu 1024(%rbp), %xmm6
    movdqu 1008(%rbp), %xmm7
    movdqu 992(%rbp), %xmm8
    movdqu 976(%rbp), %xmm9
    movdqu 960(%rbp), %xmm10
    movdqu 944(%rbp), %xmm11
    movdqu 928(%rbp), %xmm12
    movdqu 912(%rbp), %xmm13
    movdqu 896(%rbp), %xmm14
    movdqu 880(%rbp), %xmm15
    movq 864(%rbp), %rbx
    movq 856(%rbp), %r12
    movq 848(%rbp), %r13
    movq 840(%rbp), %r14
    movq 832(%rbp), %r15
    leaq 1056(%rbp), %rsp
    popq %rbp
    ret
.L12_41:
.L12_42:
    leaq 384(%rbp), %rax
    movq %rax, 0(%rbp)
    movslq %r13d, %r15
    movq 88(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L12_48
.L12_49:
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L12_48:
    leaq 368(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %r10
    movq %rbx, (%r10)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movq %r15, (%r10)
    leaq 352(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movq %rbx, (%r10)
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    leaq 752(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r14
    leaq 336(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
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
    leaq 288(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_paths_join
    addq $64, %rsp
    leaq 288(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L12_51
    jmp .L12_50
.L12_51:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq 784(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 56(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 272(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq 88(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r15
    movq 128(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L12_53
    jmp .L12_52
.L12_53:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r15, %rax
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
.L12_52:
    leaq 256(%rbp), %rbx
    movq 112(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 120(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r12
    movq 128(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L12_55
    jmp .L12_54
.L12_55:
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
.L12_54:
    movq 56(%rbp), %rsi
    movq 872(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 872(%rbp), %rax
    movq 1048(%rbp), %rdi
    movq 1040(%rbp), %rsi
    movdqu 1024(%rbp), %xmm6
    movdqu 1008(%rbp), %xmm7
    movdqu 992(%rbp), %xmm8
    movdqu 976(%rbp), %xmm9
    movdqu 960(%rbp), %xmm10
    movdqu 944(%rbp), %xmm11
    movdqu 928(%rbp), %xmm12
    movdqu 912(%rbp), %xmm13
    movdqu 896(%rbp), %xmm14
    movdqu 880(%rbp), %xmm15
    movq 864(%rbp), %rbx
    movq 856(%rbp), %r12
    movq 848(%rbp), %r13
    movq 840(%rbp), %r14
    movq 832(%rbp), %r15
    leaq 1056(%rbp), %rsp
    popq %rbp
    ret
.L12_50:
    movq %r13, %r10
    movq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq 0(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 208(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_paths_normalize
    addq $48, %rsp
    leaq 208(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L12_58
    jmp .L12_57
.L12_58:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq 784(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 0(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    leaq 192(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq 88(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r15
    movq 128(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L12_60
    jmp .L12_59
.L12_60:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r15, %rax
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
.L12_59:
    leaq 176(%rbp), %rbx
    movq 112(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 120(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r12
    movq 128(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L12_62
    jmp .L12_61
.L12_62:
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
.L12_61:
    movq 48(%rbp), %rsi
    movq 872(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 872(%rbp), %rax
    movq 1048(%rbp), %rdi
    movq 1040(%rbp), %rsi
    movdqu 1024(%rbp), %xmm6
    movdqu 1008(%rbp), %xmm7
    movdqu 992(%rbp), %xmm8
    movdqu 976(%rbp), %xmm9
    movdqu 960(%rbp), %xmm10
    movdqu 944(%rbp), %xmm11
    movdqu 928(%rbp), %xmm12
    movdqu 912(%rbp), %xmm13
    movdqu 896(%rbp), %xmm14
    movdqu 880(%rbp), %xmm15
    movq 864(%rbp), %rbx
    movq 856(%rbp), %r12
    movq 848(%rbp), %r13
    movq 840(%rbp), %r14
    movq 832(%rbp), %r15
    leaq 1056(%rbp), %rsp
    popq %rbp
    ret
.L12_57:
    leaq 784(%rbp), %rax
    movq %rax, 40(%rbp)
    movq %r14, %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 40(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 0(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    leaq 160(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq 88(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r15
    movq 128(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L12_65
    jmp .L12_64
.L12_65:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
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
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
.L12_64:
    leaq 144(%rbp), %rbx
    movq 112(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 120(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r12
    movq 128(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L12_67
    jmp .L12_66
.L12_67:
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
.L12_66:
    movq 40(%rbp), %rsi
    movq 872(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 872(%rbp), %rax
    movq 1048(%rbp), %rdi
    movq 1040(%rbp), %rsi
    movdqu 1024(%rbp), %xmm6
    movdqu 1008(%rbp), %xmm7
    movdqu 992(%rbp), %xmm8
    movdqu 976(%rbp), %xmm9
    movdqu 960(%rbp), %xmm10
    movdqu 944(%rbp), %xmm11
    movdqu 928(%rbp), %xmm12
    movdqu 912(%rbp), %xmm13
    movdqu 896(%rbp), %xmm14
    movdqu 880(%rbp), %xmm15
    movq 864(%rbp), %rbx
    movq 856(%rbp), %r12
    movq 848(%rbp), %r13
    movq 840(%rbp), %r14
    movq 832(%rbp), %r15
    leaq 1056(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_files_22windows_directory_open
lb_files_22windows_directory_open:
    .seh_proc lb_files_22windows_directory_open
    pushq %rbp
    .seh_pushreg %rbp
    subq $2224, %rsp
    .seh_stackalloc 2224
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 2040(%rbp)
    movq %rdi, 2216(%rbp)
    .seh_savereg %rdi, 2216
    movq %rsi, 2208(%rbp)
    .seh_savereg %rsi, 2208
    movdqu %xmm6, 2192(%rbp)
    .seh_savexmm %xmm6, 2192
    movdqu %xmm7, 2176(%rbp)
    .seh_savexmm %xmm7, 2176
    movdqu %xmm8, 2160(%rbp)
    .seh_savexmm %xmm8, 2160
    movdqu %xmm9, 2144(%rbp)
    .seh_savexmm %xmm9, 2144
    movdqu %xmm10, 2128(%rbp)
    .seh_savexmm %xmm10, 2128
    movdqu %xmm11, 2112(%rbp)
    .seh_savexmm %xmm11, 2112
    movdqu %xmm12, 2096(%rbp)
    .seh_savexmm %xmm12, 2096
    movdqu %xmm13, 2080(%rbp)
    .seh_savexmm %xmm13, 2080
    movdqu %xmm14, 2064(%rbp)
    .seh_savexmm %xmm14, 2064
    movdqu %xmm15, 2048(%rbp)
    .seh_savexmm %xmm15, 2048
    movq %rbx, 2032(%rbp)
    .seh_savereg %rbx, 2032
    movq %r12, 2024(%rbp)
    .seh_savereg %r12, 2024
    movq %r13, 2016(%rbp)
    .seh_savereg %r13, 2016
    movq %r14, 2008(%rbp)
    .seh_savereg %r14, 2008
    movq %r15, 2000(%rbp)
    .seh_savereg %r15, 2000
    .seh_endprologue
    movq %rcx, 2240(%rbp)
    movq %rdx, 2248(%rbp)
    movq %r8, 2256(%rbp)
    movq %r9, 2264(%rbp)
    movq 2248(%rbp), %rax
    movl %eax, 1944(%rbp)
    movq 2256(%rbp), %rax
    movq %rax, 1928(%rbp)
    movq 2264(%rbp), %rax
    movl %eax, 1912(%rbp)
    leaq 1896(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 1944(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq 1928(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    leaq 1848(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_16windows_relative
    addq $32, %rsp
    leaq 1848(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_2
    jmp .L13_1
.L13_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 1960(%rbp), %r13
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
    movq %r13, %rsi
    movq 2040(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2040(%rbp), %rax
    movq 2216(%rbp), %rdi
    movq 2208(%rbp), %rsi
    movdqu 2192(%rbp), %xmm6
    movdqu 2176(%rbp), %xmm7
    movdqu 2160(%rbp), %xmm8
    movdqu 2144(%rbp), %xmm9
    movdqu 2128(%rbp), %xmm10
    movdqu 2112(%rbp), %xmm11
    movdqu 2096(%rbp), %xmm12
    movdqu 2080(%rbp), %xmm13
    movdqu 2064(%rbp), %xmm14
    movdqu 2048(%rbp), %xmm15
    movq 2032(%rbp), %rbx
    movq 2024(%rbp), %r12
    movq 2016(%rbp), %r13
    movq 2008(%rbp), %r14
    movq 2000(%rbp), %r15
    leaq 2224(%rbp), %rsp
    popq %rbp
    ret
.L13_3:
.L13_1:
    movq %r12, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 8(%rbp), %r10
    movq (%r10), %rbx
    leaq 1912(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    movl $1, %eax
    movq %rax, 24(%rsp)
    leaq 1808(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_19windows_path_handle
    addq $32, %rsp
    leaq 1808(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_5
    jmp .L13_4
.L13_5:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 1960(%rbp), %r12
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
    subq $48, %rsp
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %r12, %rsi
    movq 2040(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2040(%rbp), %rax
    movq 2216(%rbp), %rdi
    movq 2208(%rbp), %rsi
    movdqu 2192(%rbp), %xmm6
    movdqu 2176(%rbp), %xmm7
    movdqu 2160(%rbp), %xmm8
    movdqu 2144(%rbp), %xmm9
    movdqu 2128(%rbp), %xmm10
    movdqu 2112(%rbp), %xmm11
    movdqu 2096(%rbp), %xmm12
    movdqu 2080(%rbp), %xmm13
    movdqu 2064(%rbp), %xmm14
    movdqu 2048(%rbp), %xmm15
    movq 2032(%rbp), %rbx
    movq 2024(%rbp), %r12
    movq 2016(%rbp), %r13
    movq 2008(%rbp), %r14
    movq 2000(%rbp), %r15
    leaq 2224(%rbp), %rsp
    popq %rbp
    ret
.L13_6:
.L13_4:
    movq %r14, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $128, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call _open_osfhandle
    addq $32, %rsp
    movl %eax, 16(%rbp)
    movl 16(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jge .L13_8
.L13_7:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    leaq 1960(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    leaq lb_files_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_76(%rip), %r15
    leaq 1792(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $45, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %r12, %rsi
    movq 2040(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2040(%rbp), %rax
    movq 2216(%rbp), %rdi
    movq 2208(%rbp), %rsi
    movdqu 2192(%rbp), %xmm6
    movdqu 2176(%rbp), %xmm7
    movdqu 2160(%rbp), %xmm8
    movdqu 2144(%rbp), %xmm9
    movdqu 2128(%rbp), %xmm10
    movdqu 2112(%rbp), %xmm11
    movdqu 2096(%rbp), %xmm12
    movdqu 2080(%rbp), %xmm13
    movdqu 2064(%rbp), %xmm14
    movdqu 2048(%rbp), %xmm15
    movq 2032(%rbp), %rbx
    movq 2024(%rbp), %r12
    movq 2016(%rbp), %r13
    movq 2008(%rbp), %r14
    movq 2000(%rbp), %r15
    leaq 2224(%rbp), %rsp
    popq %rbp
    ret
.L13_10:
    jmp .L13_9
.L13_8:
.L13_9:
    leaq lb_memory_heap(%rip), %rbx
    leaq 1752(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1712(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_13
    jmp .L13_14
.L13_14:
    leaq .Ltext_77(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L13_13:
    movq %r13, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $1656, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 1688(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r15, %r11
    call *%r11
    addq $32, %rsp
    leaq 1688(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L13_15
    jmp .L13_16
.L13_16:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_19(%rip), %r12
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
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L13_17
.L13_15:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq 32(%rbp), %r13
    movq %r13, %rdi
    xorl %esi, %esi
    movq $1656, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    movl 16(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq %rbx, %rdi
    movq %r13, %rsi
    movq $1656, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L13_17:
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_19
    jmp .L13_18
.L13_19:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 1768(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L13_11
.L13_18:
    movq %r14, %r10
    movq (%r10), %rbx
    jmp .L13_12
.L13_11:
    subq $32, %rsp
    movl 16(%rbp), %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call close
    addq $32, %rsp
    movl %eax, %ebx
    leaq 1960(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %rbx, %rsi
    movq 2040(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2040(%rbp), %rax
    movq 2216(%rbp), %rdi
    movq 2208(%rbp), %rsi
    movdqu 2192(%rbp), %xmm6
    movdqu 2176(%rbp), %xmm7
    movdqu 2160(%rbp), %xmm8
    movdqu 2144(%rbp), %xmm9
    movdqu 2128(%rbp), %xmm10
    movdqu 2112(%rbp), %xmm11
    movdqu 2096(%rbp), %xmm12
    movdqu 2080(%rbp), %xmm13
    movdqu 2064(%rbp), %xmm14
    movdqu 2048(%rbp), %xmm15
    movq 2032(%rbp), %rbx
    movq 2024(%rbp), %r12
    movq 2016(%rbp), %r13
    movq 2008(%rbp), %r14
    movq 2000(%rbp), %r15
    leaq 2224(%rbp), %rsp
    popq %rbp
    ret
.L13_20:
.L13_12:
    leaq 24(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq 1960(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %r13, %rsi
    movq 2040(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 2040(%rbp), %rax
    movq 2216(%rbp), %rdi
    movq 2208(%rbp), %rsi
    movdqu 2192(%rbp), %xmm6
    movdqu 2176(%rbp), %xmm7
    movdqu 2160(%rbp), %xmm8
    movdqu 2144(%rbp), %xmm9
    movdqu 2128(%rbp), %xmm10
    movdqu 2112(%rbp), %xmm11
    movdqu 2096(%rbp), %xmm12
    movdqu 2080(%rbp), %xmm13
    movdqu 2064(%rbp), %xmm14
    movdqu 2048(%rbp), %xmm15
    movq 2032(%rbp), %rbx
    movq 2024(%rbp), %r12
    movq 2016(%rbp), %r13
    movq 2008(%rbp), %r14
    movq 2000(%rbp), %r15
    leaq 2224(%rbp), %rsp
    popq %rbp
    ret
.L13_21:
    leaq 1896(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_12windows_next
lb_files_12windows_next:
    .seh_proc lb_files_12windows_next
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
    movq 744(%rbp), %rax
    movq %rax, 424(%rbp)
    leaq 424(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L14_1
    jmp .L14_2
.L14_1:
    leaq 400(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 440(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 536(%rbp), %rdi
    movq $56, %rdx
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
.L14_4:
    jmp .L14_3
.L14_2:
.L14_3:
    movq 64(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L14_8
    jmp .L14_6
.L14_8:
.L14_5:
    movq 64(%rbp), %rax
    movq $20, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call FindNextFileW
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L14_10
.L14_9:
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %ebx
    movl $18, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L14_13
.L14_12:
    leaq 440(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_13windows_error
    addq $32, %rsp
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_79(%rip), %r13
    leaq 384(%rbp), %r14
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
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 536(%rbp), %rdi
    movq $56, %rdx
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
.L14_15:
    jmp .L14_14
.L14_13:
.L14_14:
    movl $1, %eax
    movq 56(%rbp), %r10
    movb %al, (%r10)
    leaq 360(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 440(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 536(%rbp), %rdi
    movq $56, %rdx
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
.L14_16:
    jmp .L14_11
.L14_10:
.L14_11:
    jmp .L14_7
.L14_6:
    leaq 344(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 64(%rbp), %r10
    movslq (%r10), %r14
    leaq .Ltext_80(%rip), %r15
    subq $32, %rsp
    movl %r14d, %eax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    leaq 296(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_16windows_relative
    addq $32, %rsp
    leaq 296(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L14_18
    jmp .L14_17
.L14_18:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 440(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 536(%rbp), %rdi
    movq $56, %rdx
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
.L14_19:
.L14_17:
    movq %r15, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 280(%rbp), %r12
    movq 8(%rbp), %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    leaq 232(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_9wide_path
    addq $32, %rsp
    leaq 232(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L14_21
    jmp .L14_20
.L14_21:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq 440(%rbp), %r14
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
    subq $48, %rsp
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %r14, %rsi
    movq 536(%rbp), %rdi
    movq $56, %rdx
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
.L14_22:
.L14_20:
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    movq 64(%rbp), %rax
    movq $20, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call FindFirstFileW
    addq $32, %rsp
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    testq %rax, %rax
    jne .L14_23
    jmp .L14_24
.L14_24:
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_39(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L14_23:
    movq 0(%rbp), %rax
    movq $-1, %rcx
    cmpq %rcx, %rax
    jne .L14_26
.L14_25:
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L14_29
.L14_28:
    movl $1, %eax
    movq 56(%rbp), %r10
    movb %al, (%r10)
    leaq 208(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 440(%rbp), %rax
    movq %rax, 32(%rbp)
    movq %rbx, %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 32(%rbp), %rax
    movq $48, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %rbx
    leaq 192(%rbp), %rax
    movq %rax, 24(%rbp)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_82(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 40(%rbp), %rax
    movq 24(%rbp), %r10
    movq %rax, (%r10)
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L14_32
    jmp .L14_31
.L14_32:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 24(%rbp), %r10
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
.L14_31:
    subq $48, %rsp
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq 32(%rbp), %rsi
    movq 536(%rbp), %rdi
    movq $56, %rdx
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
.L14_33:
    jmp .L14_30
.L14_29:
.L14_30:
    leaq 440(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r15d
    subq $32, %rsp
    movl %r15d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_13windows_error
    addq $32, %rsp
    movl %eax, %r15d
    movq %r13, %r10
    movl %r15d, (%r10)
    leaq .Ltext_79(%rip), %r15
    leaq 176(%rbp), %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $37, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 160(%rbp), %r14
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_83(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 40(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L14_35
    jmp .L14_34
.L14_35:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %rbx, %rax
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
.L14_34:
    subq $48, %rsp
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq 16(%rbp), %rsi
    movq 536(%rbp), %rdi
    movq $56, %rdx
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
.L14_36:
    jmp .L14_27
.L14_26:
.L14_27:
    movq 0(%rbp), %rax
    movq 48(%rbp), %r10
    movq %rax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %rbx
    leaq 144(%rbp), %r13
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_84(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 40(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L14_38
    jmp .L14_37
.L14_38:
    movq $16, %rcx
    movq %rbx, %r12
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
.L14_37:
    subq $48, %rsp
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
.L14_7:
    movq 64(%rbp), %rax
    movq $20, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $44, %rcx
    addq %rcx, %rbx
    movq 64(%rbp), %rax
    movq $612, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    subq $64, %rsp
    movl $65001, %eax
    movq %rax, 0(%rsp)
    movl $128, %eax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movl $4294967295, %eax
    movq %rax, 24(%rsp)
    movq %r12, %rax
    movq %rax, 32(%rsp)
    movl $1041, %eax
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
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jg .L14_40
.L14_39:
    leaq 440(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_86(%rip), %r13
    leaq 128(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $47, %rax
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
    movq 536(%rbp), %rdi
    movq $56, %rdx
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
.L14_42:
    jmp .L14_41
.L14_40:
.L14_41:
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_87(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r13d
    movslq %r13d, %r14
    movq $1042, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_87(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L14_43
.L14_44:
    leaq .Ltext_87(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L14_43:
    leaq 112(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    leaq 96(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    leaq 72(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 440(%rbp), %rbx
    movq %r13, %r10
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
    movq 536(%rbp), %rdi
    movq $56, %rdx
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
.L14_45:
    leaq .Ltext_87(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_23windows_directory_close
lb_files_23windows_directory_close:
    .seh_proc lb_files_23windows_directory_close
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
    movq %rax, 32(%rbp)
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L15_4
    jmp .L15_2
.L15_4:
.L15_1:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FindClose
    addq $32, %rsp
    movl %eax, %r12d
    jmp .L15_3
.L15_2:
.L15_3:
    movq %rbx, %r10
    movslq (%r10), %r12
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call close
    addq $32, %rsp
    movl %eax, %r12d
    leaq lb_memory_heap(%rip), %r13
    leaq 16(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $1656, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_6
    jmp .L15_5
.L15_6:
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
.L15_5:
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L15_8
.L15_7:
    leaq 48(%rbp), %rbx
    leaq lb_files_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_88(%rip), %r12
    leaq 0(%rbp), %r13
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
.L15_10:
    jmp .L15_9
.L15_8:
.L15_9:
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

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_files_windows_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/files/windows.lucb:38:5"
.Ltext_1:
    .asciz "the symbolic link could not be created"
.Ltext_2:
    .asciz "src/std/files/windows.lucb:41:9"
.Ltext_3:
    .asciz "src/std/files/windows.lucb:48:5"
.Ltext_4:
    .asciz "the symbolic link could not be read"
.Ltext_5:
    .asciz "src/std/files/windows.lucb:50:5"
.Ltext_6:
    .asciz "src/std/files/windows.lucb:51:5"
.Ltext_7:
    .asciz "the entry is not a symbolic link or junction"
.Ltext_8:
    .asciz "division by zero"
.Ltext_9:
    .asciz "src/std/files/windows.lucb:57:5"
.Ltext_10:
    .asciz "the symbolic link contains invalid reparse data"
.Ltext_11:
    .asciz ""
.Ltext_12:
    .asciz "src/std/files/windows.lucb:61:5"
.Ltext_13:
    .asciz "src/std/files/windows.lucb:62:5"
.Ltext_14:
    .asciz "the symbolic link target is invalid UTF-16"
.Ltext_15:
    .asciz "the link target exceeds the requested limit"
.Ltext_16:
    .asciz "src/std/files/windows.lucb:67:5"
.Ltext_17:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_18:
    .asciz "memory.unset"
.Ltext_19:
    .asciz "memory.exhausted"
.Ltext_20:
    .asciz "src/std/files/windows.lucb:68:5"
.Ltext_21:
    .asciz "src/std/files/windows.lucb:69:9"
.Ltext_22:
    .asciz "the symbolic link target could not be encoded"
.Ltext_23:
    .asciz "src/std/files/windows.lucb:71:5"
.Ltext_24:
    .asciz "src/std/files/windows.lucb:72:5"
.Ltext_25:
    .asciz "index out of bounds"
.Ltext_26:
    .asciz "unreachable"
.Ltext_27:
    .asciz "file attributes could not be read"
.Ltext_28:
    .asciz "src/std/files/windows.lucb:82:5"
.Ltext_29:
    .asciz "file attributes could not be changed"
.Ltext_30:
    .asciz "timestamp is outside the Windows range"
.Ltext_31:
    .asciz "timestamp predates the Windows epoch"
.Ltext_32:
    .asciz "src/std/files/windows.lucb:92:5"
.Ltext_33:
    .asciz "src/std/files/windows.lucb:95:5"
.Ltext_34:
    .asciz "file timestamps could not be changed"
.Ltext_35:
    .asciz "src/std/files/windows.lucb:150:9"
.Ltext_36:
    .asciz "src/std/files/windows.lucb:151:13"
.Ltext_37:
    .asciz "src/std/files/windows.lucb:152:5"
.Ltext_38:
    .asciz "src/std/files/windows.lucb:163:5"
.Ltext_39:
    .asciz "null_foreign"
.Ltext_40:
    .asciz "src/std/files/windows.lucb:171:5"
.Ltext_41:
    .asciz "the file could not be opened"
.Ltext_42:
    .asciz "src/std/files/windows.lucb:173:9"
.Ltext_43:
    .asciz "nonblocking Windows file opening requires a disk file"
.Ltext_44:
    .asciz "src/std/files/windows.lucb:176:9"
.Ltext_45:
    .asciz "the opened file could not be inspected"
.Ltext_46:
    .asciz "src/std/files/windows.lucb:182:13"
.Ltext_47:
    .asciz "a final symbolic link is not allowed"
.Ltext_48:
    .asciz "src/std/files/windows.lucb:185:13"
.Ltext_49:
    .asciz "the file descriptor could not be created"
.Ltext_50:
    .asciz "src/std/files/windows.lucb:190:9"
.Ltext_51:
    .asciz "the file could not be truncated"
.Ltext_52:
    .asciz "src/std/files/windows.lucb:194:9"
.Ltext_53:
    .asciz "src/std/files/windows.lucb:195:5"
.Ltext_54:
    .asciz "src/std/files/windows.lucb:200:5"
.Ltext_55:
    .asciz "the file path could not be opened"
.Ltext_56:
    .asciz "src/std/files/windows.lucb:202:9"
.Ltext_57:
    .asciz "the path is not an allowed directory"
.Ltext_58:
    .asciz "src/std/files/windows.lucb:207:13"
.Ltext_59:
    .asciz "src/std/files/windows.lucb:208:5"
.Ltext_60:
    .asciz "src/std/files/windows.lucb:211:5"
.Ltext_61:
    .asciz "integer overflow"
.Ltext_62:
    .asciz "src/std/files/windows.lucb:212:5"
.Ltext_63:
    .asciz "file metadata could not be read"
.Ltext_64:
    .asciz "shift count out of range"
.Ltext_65:
    .asciz "src/std/files/windows.lucb:223:5"
.Ltext_66:
    .asciz "src/std/files/windows.lucb:224:5"
.Ltext_67:
    .asciz "src/std/files/windows.lucb:232:5"
.Ltext_68:
    .asciz "the open directory path could not be read"
.Ltext_69:
    .asciz "src/std/files/windows.lucb:236:9"
.Ltext_70:
    .asciz "src/std/files/windows.lucb:237:5"
.Ltext_71:
    .asciz "src/std/files/windows.lucb:239:5"
.Ltext_72:
    .asciz "the open directory path could not be encoded"
.Ltext_73:
    .asciz "src/std/files/windows.lucb:241:9"
.Ltext_74:
    .asciz "src/std/files/windows.lucb:242:5"
.Ltext_75:
    .asciz "src/std/files/windows.lucb:246:5"
.Ltext_76:
    .asciz "the directory descriptor could not be created"
.Ltext_77:
    .asciz "src/std/files/windows.lucb:256:5"
.Ltext_78:
    .asciz "src/std/files/windows.lucb:259:5"
.Ltext_79:
    .asciz "the directory could not be enumerated"
.Ltext_80:
    .asciz "*"
.Ltext_81:
    .asciz "src/std/files/windows.lucb:275:9"
.Ltext_82:
    .asciz "src/std/files/windows.lucb:279:17"
.Ltext_83:
    .asciz "src/std/files/windows.lucb:280:13"
.Ltext_84:
    .asciz "src/std/files/windows.lucb:281:9"
.Ltext_85:
    .asciz "src/std/files/windows.lucb:282:5"
.Ltext_86:
    .asciz "a directory entry could not be encoded as UTF-8"
.Ltext_87:
    .asciz "src/std/files/windows.lucb:285:5"
.Ltext_88:
    .asciz "the directory could not be closed"

    .section .rdata,"dr"
    .p2align 3
