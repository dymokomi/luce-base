    .text

    .p2align 4
    .globl lb_process_19environment_windows_0init
lb_process_19environment_windows_0init:
    .seh_proc lb_process_19environment_windows_0init
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
    .globl lb_process_23environment_windows_key
lb_process_23environment_windows_key:
    .seh_proc lb_process_23environment_windows_key
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
    movq %r15, 64(%rbp)
    .seh_savereg %r15, 64
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 312(%rbp), %r10
    leaq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $1, %rax
    movq %rax, %r14
.L1_1:
    movq 8(%rbp), %rcx
    cmpq %rcx, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L1_4
    jmp .L1_9
.L1_9:
    movl %r15d, %r12d
    jmp .L1_5
.L1_4:
    movq $2, %rcx
    movq %r14, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movl $61, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L1_5:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L1_2
    jmp .L1_3
.L1_2:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %r14
    jmp .L1_1
.L1_3:
    movq %rbx, %r10
    movq (%r10), %r13
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L1_6
.L1_7:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_6:
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    leaq 48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 104(%rbp), %rdi
    movq $16, %rdx
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
    movq 64(%rbp), %r15
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L1_8:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_27environment_windows_compare
lb_process_27environment_windows_compare:
    .seh_proc lb_process_27environment_windows_compare
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
    movq 320(%rbp), %r10
    leaq 80(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 328(%rbp), %r10
    leaq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rbp), %rbx
    leaq 80(%rbp), %r12
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 32(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_23environment_windows_key
    addq $48, %rsp
    leaq 32(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 16(%rbp), %r12
    leaq 64(%rbp), %r13
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_23environment_windows_key
    addq $48, %rsp
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movl %r12d, %eax
    movq %rax, 24(%rsp)
    movl $1, %eax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CompareStringOrdinal
    addq $48, %rsp
    movl %eax, %ebx
    movl %ebx, %eax
    movl $2, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %ebx
    movl %ebx, %eax
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
.L2_1:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_19environment_windows
lb_process_19environment_windows:
    .seh_proc lb_process_19environment_windows
    pushq %rbp
    .seh_pushreg %rbp
    subq $1488, %rsp
    .seh_stackalloc 1488
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 1304(%rbp)
    movq %rdi, 1480(%rbp)
    .seh_savereg %rdi, 1480
    movq %rsi, 1472(%rbp)
    .seh_savereg %rsi, 1472
    movdqu %xmm6, 1456(%rbp)
    .seh_savexmm %xmm6, 1456
    movdqu %xmm7, 1440(%rbp)
    .seh_savexmm %xmm7, 1440
    movdqu %xmm8, 1424(%rbp)
    .seh_savexmm %xmm8, 1424
    movdqu %xmm9, 1408(%rbp)
    .seh_savexmm %xmm9, 1408
    movdqu %xmm10, 1392(%rbp)
    .seh_savexmm %xmm10, 1392
    movdqu %xmm11, 1376(%rbp)
    .seh_savexmm %xmm11, 1376
    movdqu %xmm12, 1360(%rbp)
    .seh_savexmm %xmm12, 1360
    movdqu %xmm13, 1344(%rbp)
    .seh_savexmm %xmm13, 1344
    movdqu %xmm14, 1328(%rbp)
    .seh_savexmm %xmm14, 1328
    movdqu %xmm15, 1312(%rbp)
    .seh_savexmm %xmm15, 1312
    movq %rbx, 1296(%rbp)
    .seh_savereg %rbx, 1296
    movq %r12, 1288(%rbp)
    .seh_savereg %r12, 1288
    movq %r13, 1280(%rbp)
    .seh_savereg %r13, 1280
    movq %r14, 1272(%rbp)
    .seh_savereg %r14, 1272
    movq %r15, 1264(%rbp)
    .seh_savereg %r15, 1264
    .seh_endprologue
    movq %rcx, 1504(%rbp)
    movq %rdx, 1512(%rbp)
    movq %r8, 1520(%rbp)
    movq %r9, 1528(%rbp)
    movq 1512(%rbp), %r10
    leaq 1200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    call GetEnvironmentStringsW
    addq $32, %rsp
    movq %rax, 168(%rbp)
    movq 168(%rbp), %rax
    testq %rax, %rax
    jne .L3_1
    jmp .L3_2
.L3_1:
    jmp .L3_3
.L3_2:
    leaq 1216(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_6(%rip), %r13
    leaq 1184(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $40, %rax
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
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L3_4:
.L3_3:
    movq $0, %rax
    movq %rax, 160(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L3_5:
    movq $2, %rcx
    movq %r13, %r14
    imulq %rcx, %r14
    movq 168(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzwl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L3_7
.L3_6:
    movq 160(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r13, %r15
.L3_8:
    movq $2, %rcx
    movq %r15, %r12
    imulq %rcx, %r12
    movq 168(%rbp), %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_10
.L3_9:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %r15
    jmp .L3_8
.L3_10:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r14, %rax
    movq %rax, 160(%rbp)
    jmp .L3_5
.L3_7:
    leaq 1168(%rbp), %rax
    movq %rax, 152(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 144(%rbp)
    leaq 1200(%rbp), %rax
    movq %rax, 464(%rbp)
    movq 464(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 136(%rbp)
    leaq 1120(%rbp), %rax
    movq %rax, 128(%rbp)
    movq 136(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L3_12
.L3_11:
    movq 128(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $208273409, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    leaq .Ltext_10(%rip), %rbx
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 128(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_13
.L3_12:
    movq 136(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 144(%rbp), %r10
    movq (%r10), %rbx
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L3_14
    jmp .L3_15
.L3_15:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_14:
    movq %r12, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 1096(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 1096(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %eax
    movl %eax, 456(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl 456(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L3_16
    jmp .L3_17
.L3_16:
    movq 128(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_13(%rip), %r12
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
    movq 128(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_13
.L3_17:
    movq %r15, %r10
    movq (%r10), %rbx
    movq 128(%rbp), %r10
    movq %rbx, (%r10)
    movq 128(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 136(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 128(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L3_13:
    movq 128(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_19
    jmp .L3_18
.L3_19:
    movq 128(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1216(%rbp), %r12
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
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L3_20:
.L3_18:
    movq 128(%rbp), %r10
    movq 152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1048(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 448(%rbp)
    movq 152(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 440(%rbp)
    leaq lb_process_failed(%rip), %rax
    movq %rax, 416(%rbp)
    leaq 984(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 408(%rbp)
    movq $0, %rax
    movq %rax, 120(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L3_21:
    movq 136(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L3_24
.L3_22:
    movq 464(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    addq %r15, %r12
    movq %r12, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    leaq 1048(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_16environment_name
    addq $32, %rsp
    movq 448(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L3_26
    jmp .L3_25
.L3_26:
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1216(%rbp), %r12
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
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 1032(%rbp), %rbx
    movq 152(%rbp), %r10
    movq (%r10), %r14
    movq 152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r14
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_28
    jmp .L3_27
.L3_28:
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
.L3_27:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L3_29:
.L3_25:
    movq 152(%rbp), %r10
    movq (%r10), %r15
    movq 440(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 432(%rbp)
    movq 432(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    movq %r14, %rax
    imulq %rcx, %rax
    movq %rax, 424(%rbp)
    movq 424(%rbp), %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r12, %r10
    movq (%r10), %r15
    movq 416(%rbp), %r10
    movl (%r10), %r13d
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    leaq 984(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_wide
    addq $32, %rsp
    movq 408(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L3_31
    jmp .L3_30
.L3_31:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1216(%rbp), %r12
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
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 968(%rbp), %rbx
    movq 152(%rbp), %r10
    movq (%r10), %r13
    movq 440(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_33
    jmp .L3_32
.L3_33:
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
.L3_32:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L3_34:
.L3_30:
    movq 8(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 120(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 400(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L3_35:
    cmpq %r14, %r13
    jae .L3_38
.L3_36:
    movq 152(%rbp), %r10
    movq (%r10), %rbx
    movq 440(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 424(%rbp), %rax
    movq %rax, %r15
    addq %rbx, %r15
    movq $16, %rcx
    movq %r13, %r12
    imulq %rcx, %r12
    addq %r12, %rbx
    subq $64, %rsp
    movq %r15, %r10
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
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_compare
    addq $64, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_40
.L3_39:
    leaq 1216(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 416(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_18(%rip), %r13
    leaq 952(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 400(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 936(%rbp), %r12
    movq 152(%rbp), %r10
    movq (%r10), %r13
    movq 440(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_43
    jmp .L3_42
.L3_43:
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
.L3_42:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L3_44:
    jmp .L3_41
.L3_40:
.L3_41:
.L3_37:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L3_35
.L3_38:
.L3_23:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq 400(%rbp), %rax
    movq %rax, 120(%rbp)
    movq %rbx, %r14
    jmp .L3_21
.L3_24:
    leaq 928(%rbp), %rbx
    subq $32, %rsp
    movq 160(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 136(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %rbx, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r12d
    leaq 912(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 392(%rbp)
    movq 392(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    movq %r13, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_45
    jmp .L3_46
.L3_45:
    jmp .L3_47
.L3_46:
    leaq 1216(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_20(%rip), %r13
    leaq 896(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 880(%rbp), %r12
    movq 152(%rbp), %r10
    movq (%r10), %r13
    movq 152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_49
    jmp .L3_48
.L3_49:
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
.L3_48:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L3_50:
.L3_47:
    leaq 864(%rbp), %rax
    movq %rax, 112(%rbp)
    leaq 816(%rbp), %rax
    movq %rax, 104(%rbp)
    movq 392(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L3_52
.L3_51:
    movq 104(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_10(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_53
.L3_52:
    movq 392(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq 144(%rbp), %r10
    movq (%r10), %r12
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_54
    jmp .L3_55
.L3_55:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_54:
    movq %r15, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 792(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %rbx, %r11
    call *%r11
    addq $32, %rsp
    leaq 792(%rbp), %r14
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, 384(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl 384(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L3_56
    jmp .L3_57
.L3_56:
    movq 104(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_13(%rip), %r12
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
    movq 104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_53
.L3_57:
    movq %r14, %r10
    movq (%r10), %rbx
    movq 104(%rbp), %r10
    movq %rbx, (%r10)
    movq 104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 392(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L3_53:
    movq 104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_59
    jmp .L3_58
.L3_59:
    movq 104(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1216(%rbp), %r12
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
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 776(%rbp), %rbx
    movq 152(%rbp), %r10
    movq (%r10), %r13
    movq 152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_61
    jmp .L3_60
.L3_61:
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
.L3_60:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L3_62:
.L3_58:
    movq 104(%rbp), %r10
    movq 112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 760(%rbp), %rax
    movq %rax, 368(%rbp)
    leaq 744(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 360(%rbp)
    movq 152(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 352(%rbp)
    movq 112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 344(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq $0, %rax
    movq %rax, 96(%rbp)
.L3_63:
    movq $2, %rcx
    movq %r15, %r14
    imulq %rcx, %r14
    movq 168(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzwl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_65
.L3_64:
    movq %r15, %rbx
.L3_66:
    movq $2, %rcx
    movq %rbx, %r13
    imulq %rcx, %r13
    movq 168(%rbp), %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movzwl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L3_68
.L3_67:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %rbx
    jmp .L3_66
.L3_68:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 376(%rbp)
    movq 376(%rbp), %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r14, (%r10)
    movq 360(%rbp), %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq 368(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, %r13
.L3_69:
    movq 120(%rbp), %rcx
    cmpq %rcx, %r13
    jb .L3_70
.L3_139:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L3_72
.L3_70:
    movq 152(%rbp), %r10
    movq (%r10), %rbx
    movq 352(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    movq %r13, %r14
    imulq %rcx, %r14
    addq %r14, %rbx
    subq $64, %rsp
    movq 368(%rbp), %r10
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
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_compare
    addq $64, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_74
.L3_73:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L3_72
.L3_76:
    jmp .L3_75
.L3_74:
.L3_75:
.L3_71:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L3_69
.L3_72:
    movzbl %bl, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L3_78
.L3_77:
    movq 112(%rbp), %r10
    movq (%r10), %rbx
    movq 344(%rbp), %r10
    movq (%r10), %r13
    movq 96(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 96(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    addq %r13, %rbx
    movq 368(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 96(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    jmp .L3_79
.L3_78:
    movq 96(%rbp), %rax
    movq %rax, %rbx
.L3_79:
    movq 376(%rbp), %rax
    movq %rax, %r15
    movq %rbx, %rax
    movq %rax, 96(%rbp)
    jmp .L3_63
.L3_65:
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 96(%rbp), %rax
    movq %rax, 88(%rbp)
    movq $0, %rax
    movq %rax, 80(%rbp)
.L3_80:
    movq 80(%rbp), %rax
    movq 120(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L3_83
.L3_81:
    movq 112(%rbp), %r10
    movq (%r10), %r15
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 336(%rbp)
    movq 88(%rbp), %rax
    movq 336(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 88(%rbp), %rax
    movq $16, %rcx
    imulq %rcx, %rax
    movq %rax, 328(%rbp)
    movq 328(%rbp), %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 320(%rbp)
    movq 152(%rbp), %r10
    movq (%r10), %r15
    movq %r12, %r10
    movq (%r10), %r14
    movq 80(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 80(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq 320(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 88(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
.L3_82:
    movq 80(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r14, %rax
    movq %rax, 88(%rbp)
    movq %r15, %rax
    movq %rax, 80(%rbp)
    jmp .L3_80
.L3_83:
    leaq 728(%rbp), %rax
    movq %rax, 312(%rbp)
    movq 112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 304(%rbp)
    movq $1, %rax
    movq %rax, 72(%rbp)
.L3_84:
    movq 72(%rbp), %rax
    movq 88(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L3_87
.L3_85:
    movq 112(%rbp), %r10
    movq (%r10), %r15
    movq 304(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 296(%rbp)
    movq 72(%rbp), %rax
    movq 296(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 72(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq 312(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 72(%rbp), %rax
    movq %rax, %r13
.L3_88:
    movq $0, %rcx
    cmpq %rcx, %r13
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L3_91
    jmp .L3_140
.L3_140:
    movl %r12d, %r14d
    jmp .L3_92
.L3_91:
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 296(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    subq $64, %rsp
    movq 312(%rbp), %r10
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
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_compare
    addq $64, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    setl %al
    movzbl %al, %r14d
.L3_92:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L3_89
    jmp .L3_90
.L3_89:
    movq 296(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    movq %r13, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 296(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    movq %r14, %rbx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r13
    jmp .L3_88
.L3_90:
    movq 296(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    movq %r13, %rbx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq 312(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L3_86:
    movq 72(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 72(%rbp)
    jmp .L3_84
.L3_87:
    movq 112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 280(%rbp)
    leaq 720(%rbp), %rax
    movq %rax, 264(%rbp)
    leaq 704(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 256(%rbp)
    movq $1, %rax
    movq %rax, %r14
    movq $0, %rax
    movq %rax, %r15
.L3_93:
    movq 88(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L3_96
.L3_94:
    movq 112(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 288(%rbp)
    movq 280(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 272(%rbp)
    movq 272(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    movq %r15, %r12
    imulq %rcx, %r12
    movq 288(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 264(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r12d
    movq 264(%rbp), %r10
    movq (%r10), %r13
    movq 24(%rbp), %r10
    movq %r13, (%r10)
    movq 256(%rbp), %r10
    movb %r12b, (%r10)
    movq 256(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_97
    jmp .L3_98
.L3_97:
    jmp .L3_99
.L3_98:
    leaq 1216(%rbp), %rax
    movq %rax, 248(%rbp)
    movq 248(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_20(%rip), %r13
    leaq 688(%rbp), %r14
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
    movq 248(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 672(%rbp), %r12
    movq 272(%rbp), %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 288(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_101
    jmp .L3_100
.L3_101:
    movq $16, %rcx
    movq %r15, %rbx
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
.L3_100:
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 656(%rbp), %rbx
    movq 152(%rbp), %r10
    movq (%r10), %r12
    movq 152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_103
    jmp .L3_102
.L3_103:
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
.L3_102:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    movq 248(%rbp), %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L3_104:
.L3_99:
.L3_95:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r13, %r14
    movq %rbx, %r15
    jmp .L3_93
.L3_96:
    leaq 640(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 88(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jbe .L3_106
.L3_105:
    movq %r14, %rax
    movq %rax, 56(%rbp)
    jmp .L3_107
.L3_106:
    movq $2, %rax
    movq %rax, 56(%rbp)
.L3_107:
    leaq 592(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 56(%rbp), %rax
    movabsq $2305843009213693952, %rcx
    cmpq %rcx, %rax
    jbe .L3_109
.L3_108:
    movq 48(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_10(%rip), %r13
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
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_110
.L3_109:
    movq 56(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_111
    jmp .L3_112
.L3_112:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_111:
    movq %r15, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $2, %rax
    movq %rax, 24(%rsp)
    leaq 568(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %rbx, %r11
    call *%r11
    addq $32, %rsp
    leaq 568(%rbp), %r14
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, 240(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl 240(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L3_113
    jmp .L3_114
.L3_113:
    movq 48(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_13(%rip), %r12
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
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_110
.L3_114:
    movq %r14, %r10
    movq (%r10), %rbx
    movq 48(%rbp), %r10
    movq %rbx, (%r10)
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L3_110:
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_116
    jmp .L3_115
.L3_116:
    movq 48(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1216(%rbp), %rax
    movq %rax, 232(%rbp)
    movq 232(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 232(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 552(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_118
    jmp .L3_117
.L3_118:
    movq $16, %rcx
    movq %r15, %r12
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
.L3_117:
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 536(%rbp), %rbx
    movq 152(%rbp), %r10
    movq (%r10), %r12
    movq 152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_120
    jmp .L3_119
.L3_120:
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
.L3_119:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    movq 232(%rbp), %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L3_121:
.L3_115:
    movq 48(%rbp), %r10
    movq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 112(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 224(%rbp)
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq 64(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 208(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 200(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq $0, %rax
    movq %rax, %r13
.L3_122:
    movq 88(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L3_125
.L3_123:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    movq %r13, %r14
    imulq %rcx, %r14
    movq 224(%rbp), %rax
    movq %r14, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 216(%rbp)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r15, %rax
    movq %rax, 40(%rbp)
    movq $0, %rax
    movq %rax, 32(%rbp)
.L3_126:
    movq 32(%rbp), %rax
    cmpq %r14, %rax
    jae .L3_129
.L3_127:
    movq 32(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq 216(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzwl (%r10), %r15d
    movq 40(%rbp), %rax
    movq 200(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq $2, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq 208(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movzwl %r15w, %r15d
    movq %rbx, %r10
    movw %r15w, (%r10)
    movq 40(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
.L3_128:
    movq 32(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %rbx, %rax
    movq %rax, 40(%rbp)
    movq %r15, %rax
    movq %rax, 32(%rbp)
    jmp .L3_126
.L3_129:
.L3_124:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq 40(%rbp), %rax
    movq %rax, %r15
    movq %rbx, %r13
    jmp .L3_122
.L3_125:
    movq 64(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 192(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $2, %rcx
    movq %r15, %r12
    imulq %rcx, %r12
    movq 192(%rbp), %rax
    addq %r12, %rax
    movq %rax, 184(%rbp)
    movl $0, %eax
    movq 184(%rbp), %r10
    movw %ax, (%r10)
    leaq 1216(%rbp), %rax
    movq %rax, 176(%rbp)
    movq 64(%rbp), %r10
    movq 176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 176(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 520(%rbp), %r12
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L3_131
    jmp .L3_130
.L3_131:
    movq $16, %rcx
    movq %rbx, %r15
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
.L3_130:
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 504(%rbp), %rbx
    movq 152(%rbp), %r10
    movq (%r10), %r12
    movq 152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_133
    jmp .L3_132
.L3_133:
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
.L3_132:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    movq 176(%rbp), %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L3_134:
    leaq 864(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 488(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L3_136
    jmp .L3_135
.L3_136:
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
.L3_135:
    leaq 1168(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 1168(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 472(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L3_138
    jmp .L3_137
.L3_138:
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
.L3_137:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_27environment_windows_release
lb_process_27environment_windows_release:
    .seh_proc lb_process_27environment_windows_release
    pushq %rbp
    .seh_pushreg %rbp
    subq $320, %rsp
    .seh_stackalloc 320
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 136(%rbp)
    .seh_savereg %rbx, 136
    movq %r12, 128(%rbp)
    .seh_savereg %r12, 128
    movq %r13, 120(%rbp)
    .seh_savereg %r13, 120
    movq %r14, 112(%rbp)
    .seh_savereg %r14, 112
    movq %r15, 104(%rbp)
    .seh_savereg %r15, 104
    .seh_endprologue
    movq %rcx, 336(%rbp)
    movq %rdx, 344(%rbp)
    movq %r8, 352(%rbp)
    movq %r9, 360(%rbp)
    movq 336(%rbp), %r10
    leaq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 344(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    leaq 88(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq 56(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L4_1:
    movq 48(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L4_4
.L4_2:
    movq 40(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq %r13, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r15
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    movq %r15, %rbx
    imulq %rcx, %rbx
    movq 32(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 24(%rbp)
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
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 16(%rbp), %r10
    movq %r14, (%r10)
    movq 8(%rbp), %r10
    movq %rbx, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L4_6
    jmp .L4_5
.L4_6:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 16(%rbp), %r10
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
.L4_5:
.L4_3:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L4_1
.L4_4:
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
    movq 136(%rbp), %rbx
    movq 128(%rbp), %r12
    movq 120(%rbp), %r13
    movq 112(%rbp), %r14
    movq 104(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_process_19environment_windows_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/process/environment/windows.lucb:10:5"
.Ltext_1:
    .asciz "src/std/process/environment/windows.lucb:11:9"
.Ltext_2:
    .asciz "src/std/process/environment/windows.lucb:12:5"
.Ltext_3:
    .asciz "index out of bounds"
.Ltext_4:
    .asciz "unreachable"
.Ltext_5:
    .asciz "src/std/process/environment/windows.lucb:17:5"
.Ltext_6:
    .asciz "the inherited environment is unavailable"
.Ltext_7:
    .asciz "src/std/process/environment/windows.lucb:25:9"
.Ltext_8:
    .asciz "src/std/process/environment/windows.lucb:27:13"
.Ltext_9:
    .asciz "src/std/process/environment/windows.lucb:28:9"
.Ltext_10:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_11:
    .asciz "memory.unset"
.Ltext_12:
    .asciz "src/std/process/environment/windows.lucb:29:5"
.Ltext_13:
    .asciz "memory.exhausted"
.Ltext_14:
    .asciz "src/std/process/environment/windows.lucb:34:9"
.Ltext_15:
    .asciz "src/std/process/environment/windows.lucb:35:9"
.Ltext_16:
    .asciz "src/std/process/environment/windows.lucb:36:9"
.Ltext_17:
    .asciz "src/std/process/environment/windows.lucb:38:13"
.Ltext_18:
    .asciz "an environment override repeats a name"
.Ltext_19:
    .asciz "src/std/process/environment/windows.lucb:39:17"
.Ltext_20:
    .asciz "the environment is too large"
.Ltext_21:
    .asciz "src/std/process/environment/windows.lucb:40:5"
.Ltext_22:
    .asciz "src/std/process/environment/windows.lucb:41:5"
.Ltext_23:
    .asciz "src/std/process/environment/windows.lucb:48:13"
.Ltext_24:
    .asciz "src/std/process/environment/windows.lucb:49:9"
.Ltext_25:
    .asciz "src/std/process/environment/windows.lucb:50:9"
.Ltext_26:
    .asciz "src/std/process/environment/windows.lucb:53:13"
.Ltext_27:
    .asciz "src/std/process/environment/windows.lucb:57:13"
.Ltext_28:
    .asciz "src/std/process/environment/windows.lucb:58:13"
.Ltext_29:
    .asciz "src/std/process/environment/windows.lucb:60:9"
.Ltext_30:
    .asciz "src/std/process/environment/windows.lucb:61:9"
.Ltext_31:
    .asciz "src/std/process/environment/windows.lucb:63:9"
.Ltext_32:
    .asciz "src/std/process/environment/windows.lucb:65:9"
.Ltext_33:
    .asciz "src/std/process/environment/windows.lucb:66:13"
.Ltext_34:
    .asciz "src/std/process/environment/windows.lucb:67:13"
.Ltext_35:
    .asciz "src/std/process/environment/windows.lucb:68:9"
.Ltext_36:
    .asciz "src/std/process/environment/windows.lucb:71:9"
.Ltext_37:
    .asciz "src/std/process/environment/windows.lucb:72:5"
.Ltext_38:
    .asciz "src/std/process/environment/windows.lucb:75:9"
.Ltext_39:
    .asciz "src/std/process/environment/windows.lucb:76:13"
.Ltext_40:
    .asciz "src/std/process/environment/windows.lucb:77:13"
.Ltext_41:
    .asciz "src/std/process/environment/windows.lucb:78:5"
.Ltext_42:
    .asciz "src/std/process/environment/windows.lucb:79:5"
.Ltext_43:
    .asciz "src/std/process/environment/windows.lucb:83:9"
.Ltext_44:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3
