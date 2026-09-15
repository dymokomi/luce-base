    .text

    .p2align 4
    .globl lb_net_9http_head_0init
lb_net_9http_head_0init:
    .seh_proc lb_net_9http_head_0init
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
    .globl lb_net_18http_parse_request
lb_net_18http_parse_request:
    .seh_proc lb_net_18http_parse_request
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
    leaq 1120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1520(%rbp), %r10
    leaq 1104(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1528(%rbp), %r10
    leaq 1072(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 1064(%rbp), %rax
    movq %rax, 112(%rbp)
    movq $0, %rax
    movq 112(%rbp), %r10
    movq %rax, (%r10)
    leaq 1120(%rbp), %rax
    movq %rax, 104(%rbp)
    leaq 1072(%rbp), %rax
    movq %rax, 96(%rbp)
    subq $80, %rsp
    movq 104(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 96(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 1032(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_15http_check_head
    addq $80, %rsp
    leaq 1032(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_2
    jmp .L1_1
.L1_2:
    leaq 1136(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1304(%rbp), %rdi
    movq $128, %rdx
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
.L1_3:
.L1_1:
    leaq 1016(%rbp), %r15
    subq $48, %rsp
    movq 104(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 112(%rbp), %rax
    movq %rax, 16(%rsp)
    leaq 968(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_9http_line
    addq $48, %rsp
    leaq 968(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_5
    jmp .L1_4
.L1_5:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 1136(%rbp), %r12
    movq $96, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $120, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 1304(%rbp), %rdi
    movq $128, %rdx
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
.L1_6:
.L1_4:
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rbx
    movq 96(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jbe .L1_8
.L1_7:
    leaq 1136(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq 952(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1304(%rbp), %rdi
    movq $128, %rdx
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
.L1_10:
    jmp .L1_9
.L1_8:
.L1_9:
    leaq .Ltext_1(%rip), %rax
    movq %rax, 88(%rbp)
    leaq 936(%rbp), %r12
    movq 88(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $1, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %r15, %r10
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
    leaq 920(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_find
    addq $64, %rsp
    leaq 920(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_11
    jmp .L1_12
.L1_11:
    movq %r13, %r10
    movq (%r10), %r12
    jmp .L1_13
.L1_12:
    leaq 1136(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq 904(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $27, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1304(%rbp), %rdi
    movq $128, %rdx
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
.L1_14:
.L1_13:
    leaq 888(%rbp), %rax
    movq %rax, 40(%rbp)
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
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
    cmpq %rbx, %r12
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
    cmpq %r12, %rax
    jbe .L1_15
.L1_16:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_15:
    leaq 872(%rbp), %r13
    movq 32(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq 856(%rbp), %r13
    movq 32(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 840(%rbp), %r14
    movq $1, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    cmpq %rbx, %r15
    jb 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 80(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 80(%rbp), %rcx
    cmpq %rcx, %r15
    jbe .L1_17
.L1_18:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_17:
    movq 32(%rbp), %rax
    movq %rax, %rbx
    addq %r15, %rbx
    movq 80(%rbp), %rax
    movq %rax, %r12
    subq %r15, %r12
    leaq 824(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq 808(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 792(%rbp), %rbx
    movq 88(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $1, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 776(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_find
    addq $64, %rsp
    leaq 776(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_19
    jmp .L1_20
.L1_19:
    movq %r12, %r10
    movq (%r10), %rbx
    jmp .L1_21
.L1_20:
    leaq 1136(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_6(%rip), %r13
    leaq 760(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1304(%rbp), %rdi
    movq $128, %rdx
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
.L1_22:
.L1_21:
    leaq 744(%rbp), %rax
    movq %rax, 24(%rbp)
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L1_23
.L1_24:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_23:
    leaq 728(%rbp), %r14
    movq 16(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    leaq 712(%rbp), %r14
    movq 16(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movq %rbx, (%r10)
    movq %r14, %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 696(%rbp), %rax
    movq %rax, 8(%rbp)
    movq $1, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    cmpq %r13, %r15
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r15
    jbe .L1_25
.L1_26:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_25:
    movq 16(%rbp), %rax
    addq %r15, %rax
    movq %rax, 64(%rbp)
    movq %r12, %rax
    subq %r15, %rax
    movq %rax, 56(%rbp)
    leaq 680(%rbp), %r14
    movq 64(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq 56(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq 664(%rbp), %r14
    movq 64(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_10http_token
    addq $48, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_73
    jmp .L1_30
.L1_73:
    movl %ebx, %r12d
    jmp .L1_31
.L1_30:
    subq $64, %rsp
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 24(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_25http_request_target_valid
    addq $64, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L1_31:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_27
    jmp .L1_28
.L1_27:
    leaq 1136(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_9(%rip), %r13
    leaq 648(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1304(%rbp), %rdi
    movq $128, %rdx
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
.L1_32:
    jmp .L1_29
.L1_28:
.L1_29:
    leaq 552(%rbp), %rbx
    leaq 456(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movq 40(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq 24(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq 8(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
    leaq 1104(%rbp), %r12
    subq $112, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 104(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 112(%rbp), %rax
    movq %rax, 24(%rsp)
    movq %r12, %r10
    leaq 64(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 64(%rsp), %rax
    movq %rax, 32(%rsp)
    movq 96(%rbp), %r10
    leaq 80(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 80(%rsp), %rax
    movq %rax, 40(%rsp)
    leaq 424(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_16http_finish_head
    addq $112, %rsp
    leaq 424(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_34
    jmp .L1_33
.L1_34:
    leaq 1136(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1304(%rbp), %rdi
    movq $128, %rdx
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
.L1_35:
.L1_33:
    leaq .Ltext_10(%rip), %r12
    leaq 408(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq $8, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 56(%rbp), %rax
    movq $8, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %eax
    movl %eax, 48(%rbp)
    movl 48(%rbp), %eax
    testl %eax, %eax
    jne .L1_39
    jmp .L1_74
.L1_74:
    movl 48(%rbp), %eax
    movl %eax, %r15d
    jmp .L1_40
.L1_39:
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 56(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
.L1_40:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L1_41
    jmp .L1_75
.L1_75:
    movl %r13d, %r15d
    jmp .L1_42
.L1_41:
    leaq .Ltext_11(%rip), %r13
    leaq 392(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $4, %rax
    movq %r13, %r10
    movq %rax, (%r10)
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
    call lb_net_HttpHead_11field_count
    addq $48, %rsp
    movq %rax, %r13
    movq $1, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
.L1_42:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L1_36
    jmp .L1_37
.L1_36:
    leaq 1136(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_12(%rip), %r13
    leaq 376(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1304(%rbp), %rdi
    movq $128, %rdx
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
.L1_43:
    jmp .L1_38
.L1_37:
.L1_38:
    leaq .Ltext_11(%rip), %r13
    leaq 360(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $4, %rax
    movq %r14, %r10
    movq %rax, (%r10)
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
    call lb_net_HttpHead_11field_count
    addq $48, %rsp
    movq %rax, %r14
    movq $1, %rcx
    cmpq %rcx, %r14
    jbe .L1_45
.L1_44:
    leaq 1136(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_13(%rip), %r13
    leaq 344(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $20, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1304(%rbp), %rdi
    movq $128, %rdx
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
.L1_47:
    jmp .L1_46
.L1_45:
.L1_46:
    leaq 328(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $4, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 304(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_HttpHead_field
    addq $48, %rsp
    leaq 304(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_51
    jmp .L1_49
.L1_51:
    leaq 288(%rbp), %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L1_48:
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_15http_host_valid
    addq $48, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L1_53
.L1_52:
    leaq 1136(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
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
    movq $18, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1304(%rbp), %rdi
    movq $128, %rdx
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
.L1_55:
    jmp .L1_54
.L1_53:
.L1_54:
    jmp .L1_50
.L1_49:
.L1_50:
    leaq .Ltext_15(%rip), %r13
    leaq 256(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $6, %rax
    movq %r15, %r10
    movq %rax, (%r10)
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
    call lb_net_HttpHead_11field_count
    addq $48, %rsp
    movq %rax, %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L1_57
.L1_56:
    leaq 240(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq $8, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movl 48(%rbp), %eax
    testl %eax, %eax
    jne .L1_62
    jmp .L1_76
.L1_76:
    movl 48(%rbp), %eax
    movl %eax, %r12d
    jmp .L1_63
.L1_62:
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 56(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L1_63:
    movzbl %r12b, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_77
    jmp .L1_64
.L1_77:
    movl %r14d, %r12d
    jmp .L1_65
.L1_64:
    leaq 224(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $6, %rax
    movq %r14, %r10
    movq %rax, (%r10)
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
    call lb_net_HttpHead_11field_count
    addq $48, %rsp
    movq %rax, %r12
    movq $1, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L1_65:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L1_78
    jmp .L1_66
.L1_78:
    movl %r14d, %r12d
    jmp .L1_67
.L1_66:
    leaq 208(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $6, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 184(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_HttpHead_field
    addq $48, %rsp
    leaq 184(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_68
    jmp .L1_69
.L1_68:
    leaq 168(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_70
.L1_69:
    leaq .Ltext_16(%rip), %r12
    leaq 152(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 168(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L1_70:
    leaq 168(%rbp), %r12
    leaq .Ltext_17(%rip), %r13
    leaq 136(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $12, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r14, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_10http_equal
    addq $64, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L1_67:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L1_59
    jmp .L1_60
.L1_59:
    leaq 1136(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_16http_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_18(%rip), %r13
    leaq 120(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1304(%rbp), %rdi
    movq $128, %rdx
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
.L1_71:
    jmp .L1_61
.L1_60:
.L1_61:
    movq $89, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L1_58
.L1_57:
.L1_58:
    leaq 1136(%rbp), %r12
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
    movq $120, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 1304(%rbp), %rdi
    movq $128, %rdx
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
.L1_72:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_19http_parse_response
lb_net_19http_parse_response:
    .seh_proc lb_net_19http_parse_response
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
    movq 1080(%rbp), %r10
    leaq 688(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1088(%rbp), %r10
    leaq 672(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1096(%rbp), %r10
    leaq 656(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1104(%rbp), %r10
    leaq 624(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 616(%rbp), %rax
    movq %rax, 40(%rbp)
    movq $0, %rax
    movq 40(%rbp), %r10
    movq %rax, (%r10)
    leaq 688(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 624(%rbp), %rax
    movq %rax, 24(%rbp)
    subq $80, %rsp
    movq 32(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 24(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 584(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_15http_check_head
    addq $80, %rsp
    leaq 584(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_2
    jmp .L2_1
.L2_2:
    leaq 704(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 872(%rbp), %rdi
    movq $128, %rdx
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
.L2_1:
    leaq 568(%rbp), %r15
    subq $48, %rsp
    movq 32(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 40(%rbp), %rax
    movq %rax, 16(%rsp)
    leaq 520(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_9http_line
    addq $48, %rsp
    leaq 520(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_5
    jmp .L2_4
.L2_5:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 704(%rbp), %r12
    movq $96, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $120, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 872(%rbp), %rdi
    movq $128, %rdx
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
.L2_4:
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r14
    jbe .L2_8
.L2_7:
    leaq 704(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_21(%rip), %r13
    leaq 504(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 872(%rbp), %rdi
    movq $128, %rdx
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
.L2_8:
.L2_9:
    movq $13, %rcx
    cmpq %rcx, %r14
    setb %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L2_44
    jmp .L2_14
.L2_44:
    movl %ebx, %r13d
    jmp .L2_15
.L2_14:
    movq %r15, %r10
    movq (%r10), %rbx
    movq $8, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $32, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L2_15:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L2_45
    jmp .L2_16
.L2_45:
    movl %ebx, %r13d
    jmp .L2_17
.L2_16:
    movq %r15, %r10
    movq (%r10), %rbx
    movq $12, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $12, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $32, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L2_17:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L2_11
    jmp .L2_12
.L2_11:
    leaq 704(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_23(%rip), %r13
    leaq 488(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $24, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 872(%rbp), %rdi
    movq $128, %rdx
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
.L2_12:
.L2_13:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    movq $1, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq $9, %rax
    movq 16(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $12, %rax
    movq 16(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
.L2_19:
    movq 0(%rbp), %rax
    movq $9, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    leaq 472(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $3, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 456(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $3, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 416(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_11http_number
    addq $48, %rsp
    leaq 416(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_22
    jmp .L2_21
.L2_22:
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 704(%rbp), %r12
    movq $96, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $120, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 872(%rbp), %rdi
    movq $128, %rdx
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
.L2_21:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $100, %rcx
    cmpq %rcx, %rax
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_46
    jmp .L2_27
.L2_46:
    movl %r13d, %r15d
    jmp .L2_28
.L2_27:
    movq 8(%rbp), %rax
    movq $599, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r15d
.L2_28:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L2_47
    jmp .L2_29
.L2_47:
    movl %r13d, %r14d
    jmp .L2_30
.L2_29:
    leaq 384(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq .Ltext_25(%rip), %r13
    leaq 368(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $6, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $13, %rax
    movq 16(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 16(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $13, %rax
    cmpq %r14, %rax
    jbe .L2_31
.L2_32:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_31:
    movq 0(%rbp), %rax
    movq $13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $13, %rcx
    movq %r14, %r15
    subq %rcx, %r15
    leaq 352(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    leaq 336(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $64, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_16http_field_valid
    addq $64, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r14d
.L2_30:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L2_24
    jmp .L2_25
.L2_24:
    leaq 704(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_27(%rip), %r13
    leaq 320(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 872(%rbp), %rdi
    movq $128, %rdx
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
.L2_25:
.L2_26:
    leaq 656(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_10http_token
    addq $48, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_35
.L2_34:
    leaq 704(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_28(%rip), %r13
    leaq 304(%rbp), %r14
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
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 872(%rbp), %rdi
    movq $128, %rdx
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
.L2_35:
.L2_36:
    leaq 208(%rbp), %r12
    leaq 112(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq 16(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rax
    movq 16(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
.L2_38:
    leaq 96(%rbp), %rbx
    movq 0(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq $8, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 80(%rbp), %rbx
    movq 0(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $8, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl 8(%rbp), %eax
    movzwl %ax, %ebx
    movq $48, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movw %bx, (%r10)
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
    leaq 672(%rbp), %rbx
    subq $112, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 32(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 40(%rbp), %rax
    movq %rax, 24(%rsp)
    movq %rbx, %r10
    leaq 64(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 64(%rsp), %rax
    movq %rax, 32(%rsp)
    movq 24(%rbp), %r10
    leaq 80(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 80(%rsp), %rax
    movq %rax, 40(%rsp)
    leaq 48(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_16http_finish_head
    addq $112, %rsp
    leaq 48(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_41
    jmp .L2_40
.L2_41:
    leaq 704(%rbp), %rbx
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 872(%rbp), %rdi
    movq $128, %rdx
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
.L2_40:
    leaq 704(%rbp), %rbx
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
    movq $120, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 872(%rbp), %rdi
    movq $128, %rdx
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
    .globl lb_net_15http_check_head
lb_net_15http_check_head:
    .seh_proc lb_net_15http_check_head
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
    movq 392(%rbp), %r10
    leaq 104(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 400(%rbp), %r10
    leaq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 104(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    leaq 72(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jbe .L3_2
.L3_1:
    leaq 120(%rbp), %rbx
    leaq lb_net_10http_limit(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_31(%rip), %r12
    leaq 56(%rbp), %r13
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
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    leaq 40(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_13http_head_end
    addq $48, %rsp
    leaq 40(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L3_5
    jmp .L3_6
.L3_5:
    movq %r14, %r10
    movq (%r10), %rbx
    jmp .L3_7
.L3_6:
    leaq 120(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_32(%rip), %r12
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $20, %rax
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
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L3_8:
.L3_7:
    movq %r12, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L3_10
.L3_9:
    leaq 120(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_33(%rip), %r12
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $44, %rax
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
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L3_12:
    jmp .L3_11
.L3_10:
.L3_11:
    leaq 120(%rbp), %rbx
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
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_16http_finish_head
lb_net_16http_finish_head:
    .seh_proc lb_net_16http_finish_head
    pushq %rbp
    .seh_pushreg %rbp
    subq $1936, %rsp
    .seh_stackalloc 1936
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 1752(%rbp)
    movq %rdi, 1928(%rbp)
    .seh_savereg %rdi, 1928
    movq %rsi, 1920(%rbp)
    .seh_savereg %rsi, 1920
    movdqu %xmm6, 1904(%rbp)
    .seh_savexmm %xmm6, 1904
    movdqu %xmm7, 1888(%rbp)
    .seh_savexmm %xmm7, 1888
    movdqu %xmm8, 1872(%rbp)
    .seh_savexmm %xmm8, 1872
    movdqu %xmm9, 1856(%rbp)
    .seh_savexmm %xmm9, 1856
    movdqu %xmm10, 1840(%rbp)
    .seh_savexmm %xmm10, 1840
    movdqu %xmm11, 1824(%rbp)
    .seh_savexmm %xmm11, 1824
    movdqu %xmm12, 1808(%rbp)
    .seh_savexmm %xmm12, 1808
    movdqu %xmm13, 1792(%rbp)
    .seh_savexmm %xmm13, 1792
    movdqu %xmm14, 1776(%rbp)
    .seh_savexmm %xmm14, 1776
    movdqu %xmm15, 1760(%rbp)
    .seh_savexmm %xmm15, 1760
    movq %rbx, 1744(%rbp)
    .seh_savereg %rbx, 1744
    movq %r12, 1736(%rbp)
    .seh_savereg %r12, 1736
    movq %r13, 1728(%rbp)
    .seh_savereg %r13, 1728
    movq %r14, 1720(%rbp)
    .seh_savereg %r14, 1720
    movq %r15, 1712(%rbp)
    .seh_savereg %r15, 1712
    .seh_endprologue
    movq %rcx, 1952(%rbp)
    movq %rdx, 1960(%rbp)
    movq %r8, 1968(%rbp)
    movq %r9, 1976(%rbp)
    movq 1960(%rbp), %rax
    movq %rax, 1664(%rbp)
    movq 1968(%rbp), %r10
    leaq 1648(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1976(%rbp), %rax
    movq %rax, 1632(%rbp)
    movq 1984(%rbp), %r10
    leaq 1616(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1992(%rbp), %r10
    leaq 1584(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 1664(%rbp), %rax
    movq %rax, 584(%rbp)
    movq 584(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 576(%rbp)
    movq 576(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    leaq .Ltext_34(%rip), %r12
    leaq 1568(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq $8, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 568(%rbp)
    movq 568(%rbp), %r10
    movq (%r10), %r14
    movq $8, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L4_4
    jmp .L4_159
.L4_159:
    movl %r15d, %r12d
    jmp .L4_5
.L4_4:
    movq 112(%rbp), %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %r12d
.L4_5:
    movzbl %r12b, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L4_6
    jmp .L4_160
.L4_160:
    movl %r14d, %r12d
    jmp .L4_7
.L4_6:
    leaq .Ltext_10(%rip), %r12
    leaq 1552(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq $8, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 568(%rbp), %r10
    movq (%r10), %r14
    movq $8, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L4_8
    jmp .L4_161
.L4_161:
    movl %r15d, %r12d
    jmp .L4_9
.L4_8:
    movq 112(%rbp), %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %r12d
.L4_9:
    movzbl %r12b, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L4_7:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L4_1
    jmp .L4_2
.L4_1:
    leaq 1680(%rbp), %rbx
    leaq lb_net_16http_unsupported(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_35(%rip), %r12
    leaq 1536(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $24, %rax
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
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_10:
    jmp .L4_3
.L4_2:
.L4_3:
    leaq 1632(%rbp), %rax
    movq %rax, 560(%rbp)
    leaq 1648(%rbp), %rax
    movq %rax, 552(%rbp)
    movq 552(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 544(%rbp)
    leaq 1520(%rbp), %rax
    movq %rax, 96(%rbp)
    leaq 1472(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 536(%rbp)
    movq 96(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 528(%rbp)
    leaq 1584(%rbp), %rax
    movq %rax, 520(%rbp)
    movq 520(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 512(%rbp)
    leaq 1616(%rbp), %rax
    movq %rax, 504(%rbp)
    movq 504(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 496(%rbp)
    movq 520(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 488(%rbp)
    leaq .Ltext_37(%rip), %rax
    movq %rax, 480(%rbp)
    leaq 1440(%rbp), %rax
    movq %rax, 472(%rbp)
    movq 472(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 464(%rbp)
    leaq 1424(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 456(%rbp)
    leaq 1376(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 1344(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 1328(%rbp), %rax
    movq %rax, 448(%rbp)
    movq 448(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 440(%rbp)
    leaq 1312(%rbp), %rax
    movq %rax, 432(%rbp)
    movq 432(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 424(%rbp)
    leaq 1296(%rbp), %rax
    movq %rax, 408(%rbp)
    movq 408(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 400(%rbp)
    leaq 1280(%rbp), %rax
    movq %rax, 392(%rbp)
    movq 392(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 384(%rbp)
    leaq 1264(%rbp), %rax
    movq %rax, 376(%rbp)
    movq 64(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 368(%rbp)
    leaq 1616(%rbp), %rax
    movq %rax, 360(%rbp)
    movq 360(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 352(%rbp)
    movq $0, %rax
    movq %rax, 104(%rbp)
.L4_11:
    movq 560(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    movq 544(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L4_13
.L4_12:
    subq $48, %rsp
    movq 552(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    leaq 1472(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_9http_line
    addq $48, %rsp
    movq 536(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L4_15
    jmp .L4_14
.L4_15:
    movq 88(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1680(%rbp), %r12
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
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_16:
.L4_14:
    movq 88(%rbp), %r10
    movq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 528(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L4_18
.L4_17:
    jmp .L4_13
.L4_20:
    jmp .L4_19
.L4_18:
.L4_19:
    movq 512(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L4_162
    jmp .L4_24
.L4_162:
    movl %r13d, %ebx
    jmp .L4_25
.L4_24:
    movq 496(%rbp), %r10
    movq (%r10), %rbx
    movq 104(%rbp), %rax
    cmpq %rbx, %rax
    setae %al
    movzbl %al, %ebx
.L4_25:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L4_163
    jmp .L4_26
.L4_163:
    movl %r13d, %ebx
    jmp .L4_27
.L4_26:
    movq 488(%rbp), %r10
    movq (%r10), %rbx
    movq 104(%rbp), %rax
    cmpq %rbx, %rax
    setae %al
    movzbl %al, %ebx
.L4_27:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L4_21
    jmp .L4_22
.L4_21:
    leaq 1680(%rbp), %rbx
    leaq lb_net_10http_limit(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_36(%rip), %r12
    leaq 1456(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $54, %rax
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
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_28:
    jmp .L4_23
.L4_22:
.L4_23:
    movq 480(%rbp), %rax
    movq 472(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq 464(%rbp), %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 96(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 472(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 1424(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_find
    addq $64, %rsp
    movq 456(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_29
    jmp .L4_30
.L4_29:
    movq 80(%rbp), %r10
    movq (%r10), %rbx
    jmp .L4_31
.L4_30:
    leaq 1680(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_38(%rip), %r12
    leaq 1408(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $24, %rax
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
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_32:
.L4_31:
    movq 64(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq 96(%rbp), %r10
    movq (%r10), %r15
    movq 528(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L4_33
.L4_34:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_33:
    movq 448(%rbp), %r10
    movq %r15, (%r10)
    movq 440(%rbp), %r10
    movq %rbx, (%r10)
    movq 432(%rbp), %r10
    movq %r15, (%r10)
    movq 424(%rbp), %r10
    movq %rbx, (%r10)
    movq 432(%rbp), %r10
    movq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r13, %r12
    jbe .L4_35
.L4_36:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_35:
    movq %r15, %rbx
    addq %r12, %rbx
    movq %r13, %r14
    subq %r12, %r14
    movq 408(%rbp), %r10
    movq %rbx, (%r10)
    movq 400(%rbp), %r10
    movq %r14, (%r10)
    movq 392(%rbp), %r10
    movq %rbx, (%r10)
    movq 384(%rbp), %r10
    movq %r14, (%r10)
    subq $48, %rsp
    movq 392(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 1264(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_8http_ows
    addq $48, %rsp
    movq 376(%rbp), %r10
    movq 368(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 64(%rbp), %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    subq $64, %rsp
    movq 72(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_16http_field_valid
    addq $64, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L4_38
.L4_37:
    leaq 1680(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_40(%rip), %r12
    leaq 1248(%rbp), %r13
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
    movq %rbx, %rsi
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_40:
    jmp .L4_39
.L4_38:
.L4_39:
    movq 360(%rbp), %r10
    movq (%r10), %rbx
    movq 352(%rbp), %r10
    movq (%r10), %r12
    movq 104(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 104(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    addq %r12, %rbx
    movq 72(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 104(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 104(%rbp)
    jmp .L4_11
.L4_13:
    movq 576(%rbp), %rax
    movq $56, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    leaq 1616(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 104(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 104(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L4_41
.L4_42:
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_41:
    leaq 1232(%rbp), %rax
    movq %rax, 344(%rbp)
    movq 344(%rbp), %r10
    movq %r13, (%r10)
    movq 344(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 104(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 344(%rbp), %r10
    movq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 576(%rbp), %rax
    movq $90, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    leaq .Ltext_44(%rip), %rax
    movq %rax, 336(%rbp)
    leaq 1216(%rbp), %r14
    movq 336(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $10, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_45(%rip), %r15
    leaq 1200(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $7, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 576(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %rbx, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 24(%rsp)
    leaq 1160(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_HttpHead_9has_token
    addq $64, %rsp
    leaq 1160(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_44
    jmp .L4_43
.L4_44:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 1680(%rbp), %r12
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
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_45:
.L4_43:
    movq %r14, %r10
    movzbl (%r10), %ebx
    movq 48(%rbp), %r10
    movb %bl, (%r10)
    leaq 1144(%rbp), %rbx
    movq 336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $10, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_46(%rip), %r13
    leaq 1128(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $5, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 576(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %r15, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 24(%rsp)
    leaq 1088(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_HttpHead_9has_token
    addq $64, %rsp
    leaq 1088(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_47
    jmp .L4_46
.L4_47:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 1680(%rbp), %r12
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
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_48:
.L4_46:
    movq %r13, %r10
    movzbl (%r10), %ebx
    movq 576(%rbp), %rax
    movq $88, %rcx
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movzbl %bl, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L4_49
    jmp .L4_164
.L4_164:
    movl %ebx, %r13d
    jmp .L4_50
.L4_49:
    leaq .Ltext_10(%rip), %rbx
    leaq 1072(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq $8, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 568(%rbp), %r10
    movq (%r10), %r13
    movq $8, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L4_51
    jmp .L4_165
.L4_165:
    movl %r15d, %ebx
    jmp .L4_52
.L4_51:
    movq 112(%rbp), %r10
    movq (%r10), %r15
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
    call memcmp
    addq $32, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %ebx
.L4_52:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L4_166
    jmp .L4_53
.L4_166:
    movl %r13d, %ebx
    jmp .L4_54
.L4_53:
    leaq 1056(%rbp), %rbx
    movq 336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $10, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_47(%rip), %r13
    leaq 1040(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $10, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 576(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %r15, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 24(%rsp)
    leaq 1000(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_HttpHead_9has_token
    addq $64, %rsp
    leaq 1000(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_56
    jmp .L4_55
.L4_56:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 1680(%rbp), %r12
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
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_57:
.L4_55:
    movq %r13, %r10
    movzbl (%r10), %ebx
.L4_54:
    movzbl %bl, %r13d
.L4_50:
    movzbl %r13b, %ebx
    movq 40(%rbp), %r10
    movb %bl, (%r10)
    leaq .Ltext_48(%rip), %rbx
    leaq 984(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 328(%rbp)
    movq $7, %rax
    movq 328(%rbp), %r10
    movq %rax, (%r10)
    movq 576(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 320(%rbp)
    movq 320(%rbp), %r10
    movq (%r10), %r15
    movq $7, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_61
    jmp .L4_167
.L4_167:
    movl %r12d, %ebx
    jmp .L4_62
.L4_61:
    movq 576(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L4_62:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L4_63
    jmp .L4_168
.L4_168:
    movl %r12d, %ebx
    jmp .L4_64
.L4_63:
    movq 576(%rbp), %rax
    movq $48, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl $200, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %ebx
.L4_64:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L4_65
    jmp .L4_169
.L4_169:
    movl %r12d, %ebx
    jmp .L4_66
.L4_65:
    movq 576(%rbp), %rax
    movq $48, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl $300, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %ebx
.L4_66:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L4_58
    jmp .L4_59
.L4_58:
    movq 576(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $4, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 1680(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_67:
    jmp .L4_60
.L4_59:
.L4_60:
    leaq 968(%rbp), %rax
    movq %rax, 312(%rbp)
    leaq 952(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 312(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 56(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 304(%rbp)
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 296(%rbp)
    leaq 920(%rbp), %r15
    leaq .Ltext_49(%rip), %rax
    movq %rax, 288(%rbp)
    leaq 904(%rbp), %rax
    movq %rax, 280(%rbp)
    movq 280(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 272(%rbp)
    leaq 896(%rbp), %rax
    movq %rax, 264(%rbp)
    movq $16, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 256(%rbp)
    leaq 872(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 248(%rbp)
    leaq 856(%rbp), %rax
    movq %rax, 240(%rbp)
    leaq 816(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 232(%rbp)
    movq 312(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 224(%rbp)
    leaq 784(%rbp), %rax
    movq %rax, 216(%rbp)
    movq 216(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 208(%rbp)
    leaq .Ltext_51(%rip), %rax
    movq %rax, 200(%rbp)
    leaq 768(%rbp), %rax
    movq %rax, 192(%rbp)
    movq 192(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 184(%rbp)
    leaq 760(%rbp), %rax
    movq %rax, 176(%rbp)
    movq $16, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 168(%rbp)
    leaq 736(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    leaq 720(%rbp), %rax
    movq %rax, 152(%rbp)
    movq 152(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    leaq .Ltext_52(%rip), %rax
    movq %rax, 136(%rbp)
    leaq 704(%rbp), %rax
    movq %rax, 128(%rbp)
    movq 128(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    movq $0, %rax
    movq %rax, 32(%rbp)
    movq $0, %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rax, 0(%rbp)
.L4_68:
    movq 296(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L4_71
.L4_69:
    movq $32, %rcx
    movq %rbx, %r14
    imulq %rcx, %r14
    movq 304(%rbp), %rax
    movq %r14, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 288(%rbp), %rax
    movq 280(%rbp), %r10
    movq %rax, (%r10)
    movq $14, %rax
    movq 272(%rbp), %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %r15, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 280(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_10http_equal
    addq $64, %rsp
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L4_72
    jmp .L4_73
.L4_72:
    movq $0, %rax
    movq 264(%rbp), %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq %rax, %r14
.L4_75:
    subq $48, %rsp
    movq 256(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 264(%rbp), %rax
    movq %rax, 16(%rsp)
    leaq 872(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_14http_list_next
    addq $48, %rsp
    movq 248(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_78
    jmp .L4_77
.L4_78:
    movq 24(%rbp), %r10
    movq 240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L4_76:
    subq $48, %rsp
    movq 240(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 816(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_11http_number
    addq $48, %rsp
    movq 232(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_80
    jmp .L4_79
.L4_80:
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1680(%rbp), %r12
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
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_81:
.L4_79:
    movq 16(%rbp), %r10
    movq (%r10), %r12
    movq 224(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L4_85
    jmp .L4_83
.L4_85:
.L4_82:
    cmpq %r14, %r12
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L4_87
.L4_86:
    leaq 1680(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_50(%rip), %r12
    leaq 800(%rbp), %r13
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
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_89:
    jmp .L4_88
.L4_87:
.L4_88:
    jmp .L4_84
.L4_83:
.L4_84:
    movq 216(%rbp), %r10
    movq %r12, (%r10)
    movl $1, %eax
    movq 208(%rbp), %r10
    movb %al, (%r10)
    movq 216(%rbp), %r10
    movq 312(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r14
    jmp .L4_75
.L4_77:
    movq %r14, %r12
    jmp .L4_74
.L4_73:
    movq 0(%rbp), %rax
    movq %rax, %r12
.L4_74:
    movq 200(%rbp), %rax
    movq 192(%rbp), %r10
    movq %rax, (%r10)
    movq $17, %rax
    movq 184(%rbp), %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %r15, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 192(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_10http_equal
    addq $64, %rsp
    movl %eax, %r13d
    testl %r13d, %r13d
    jne .L4_90
    jmp .L4_91
.L4_90:
    movq $0, %rax
    movq 176(%rbp), %r10
    movq %rax, (%r10)
    movq 32(%rbp), %rax
    movq %rax, %r13
.L4_93:
    subq $48, %rsp
    movq 168(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 176(%rbp), %rax
    movq %rax, 16(%rsp)
    leaq 736(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_14http_list_next
    addq $48, %rsp
    movq 160(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L4_96
    jmp .L4_95
.L4_96:
    movq 8(%rbp), %r10
    movq 152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L4_94:
    movq 144(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L4_98
.L4_97:
    jmp .L4_93
.L4_100:
    jmp .L4_99
.L4_98:
.L4_99:
    movq 136(%rbp), %rax
    movq 128(%rbp), %r10
    movq %rax, (%r10)
    movq $7, %rax
    movq 120(%rbp), %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 128(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_10http_equal
    addq $64, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L4_102
.L4_101:
    leaq 1680(%rbp), %rbx
    leaq lb_net_16http_unsupported(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_53(%rip), %r12
    leaq 688(%rbp), %r13
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
    movq %rbx, %rsi
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_104:
    jmp .L4_103
.L4_102:
.L4_103:
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_59(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r14, %r13
    jmp .L4_93
.L4_95:
    movq %r13, %r14
    jmp .L4_92
.L4_91:
    movq 32(%rbp), %rax
    movq %rax, %r14
.L4_92:
.L4_70:
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %rax
    movq %rax, 32(%rbp)
    movq %r13, %rbx
    movq %r12, %rax
    movq %rax, 0(%rbp)
    jmp .L4_68
.L4_71:
    leaq .Ltext_51(%rip), %rbx
    leaq 672(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $17, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq 576(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_HttpHead_11field_count
    addq $48, %rsp
    movq %rax, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L4_106
.L4_105:
    movq 32(%rbp), %rax
    movq $1, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L4_170
    jmp .L4_111
.L4_170:
    movl %ebx, %r12d
    jmp .L4_112
.L4_111:
    movq 312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L4_112:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L4_171
    jmp .L4_113
.L4_171:
    movl %ebx, %r12d
    jmp .L4_114
.L4_113:
    leaq .Ltext_10(%rip), %rbx
    leaq 656(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $8, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 568(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L4_115
    jmp .L4_172
.L4_172:
    movl %r13d, %ebx
    jmp .L4_116
.L4_115:
    movq 112(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L4_116:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L4_114:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L4_108
    jmp .L4_109
.L4_108:
    leaq 1680(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_55(%rip), %r12
    leaq 640(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $31, %rax
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
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_117:
    jmp .L4_110
.L4_109:
.L4_110:
    jmp .L4_107
.L4_106:
.L4_107:
    movq 576(%rbp), %rax
    movq $48, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_121
    jmp .L4_173
.L4_173:
    movl %r12d, %r13d
    jmp .L4_122
.L4_121:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $200, %ecx
    cmpl %ecx, %r12d
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_174
    jmp .L4_123
.L4_174:
    movl %r12d, %r13d
    jmp .L4_124
.L4_123:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $204, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L4_124:
    movzbl %r13b, %r12d
    movl %r12d, %r13d
.L4_122:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L4_118
    jmp .L4_119
.L4_118:
    movq 312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_175
    jmp .L4_128
.L4_175:
    movl %r12d, %r13d
    jmp .L4_129
.L4_128:
    movq 32(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L4_129:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L4_125
    jmp .L4_126
.L4_125:
    leaq 1680(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_56(%rip), %r12
    leaq 624(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $50, %rax
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
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_130:
    jmp .L4_127
.L4_126:
.L4_127:
    jmp .L4_120
.L4_119:
.L4_120:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_134
    jmp .L4_176
.L4_176:
    movl %r12d, %r13d
    jmp .L4_135
.L4_134:
    leaq .Ltext_57(%rip), %r12
    leaq 608(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq $4, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 320(%rbp), %r10
    movq (%r10), %r13
    movq $4, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L4_136
    jmp .L4_177
.L4_177:
    movl %r14d, %r12d
    jmp .L4_137
.L4_136:
    movq 576(%rbp), %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L4_137:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L4_178
    jmp .L4_138
.L4_178:
    movl %r13d, %r12d
    jmp .L4_139
.L4_138:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $200, %ecx
    cmpl %ecx, %r12d
    setb %al
    movzbl %al, %r12d
.L4_139:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L4_179
    jmp .L4_140
.L4_179:
    movl %r13d, %r12d
    jmp .L4_141
.L4_140:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $204, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L4_141:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L4_180
    jmp .L4_142
.L4_180:
    movl %r13d, %r12d
    jmp .L4_143
.L4_142:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $304, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L4_143:
    movzbl %r12b, %r13d
.L4_135:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L4_131
    jmp .L4_132
.L4_131:
    movq 576(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 1680(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_144:
    jmp .L4_133
.L4_132:
.L4_133:
    movq 32(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L4_146
.L4_145:
    movq 576(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $2, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L4_147
.L4_146:
    movq 312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_151
    jmp .L4_149
.L4_151:
.L4_148:
    leaq 1584(%rbp), %rbx
    movq $24, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq 0(%rbp), %rax
    cmpq %rbx, %rax
    jbe .L4_153
.L4_152:
    leaq 1680(%rbp), %rbx
    leaq lb_net_10http_limit(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_58(%rip), %r12
    leaq 592(%rbp), %r13
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
    movq %rbx, %rsi
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
.L4_155:
    jmp .L4_154
.L4_153:
.L4_154:
    movq 576(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq 576(%rbp), %rax
    movq $80, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 0(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    jmp .L4_150
.L4_149:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jbe .L4_157
.L4_156:
    movq 576(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $3, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movl $0, %eax
    movq 40(%rbp), %r10
    movb %al, (%r10)
    jmp .L4_158
.L4_157:
    movq 576(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L4_158:
.L4_150:
.L4_147:
    leaq 1680(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1752(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1752(%rbp), %rax
    movq 1928(%rbp), %rdi
    movq 1920(%rbp), %rsi
    movdqu 1904(%rbp), %xmm6
    movdqu 1888(%rbp), %xmm7
    movdqu 1872(%rbp), %xmm8
    movdqu 1856(%rbp), %xmm9
    movdqu 1840(%rbp), %xmm10
    movdqu 1824(%rbp), %xmm11
    movdqu 1808(%rbp), %xmm12
    movdqu 1792(%rbp), %xmm13
    movdqu 1776(%rbp), %xmm14
    movdqu 1760(%rbp), %xmm15
    movq 1744(%rbp), %rbx
    movq 1736(%rbp), %r12
    movq 1728(%rbp), %r13
    movq 1720(%rbp), %r14
    movq 1712(%rbp), %r15
    leaq 1936(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_net_9http_head_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "HTTP request line exceeds its limit"
.Ltext_1:
    .asciz " "
.Ltext_2:
    .asciz "request line needs a method"
.Ltext_3:
    .asciz "src/std/net/http/head.lucb:10:5"
.Ltext_4:
    .asciz "index out of bounds"
.Ltext_5:
    .asciz "src/std/net/http/head.lucb:11:5"
.Ltext_6:
    .asciz "request line needs a version"
.Ltext_7:
    .asciz "src/std/net/http/head.lucb:13:5"
.Ltext_8:
    .asciz "src/std/net/http/head.lucb:14:5"
.Ltext_9:
    .asciz "invalid request method or target"
.Ltext_10:
    .asciz "HTTP/1.1"
.Ltext_11:
    .asciz "host"
.Ltext_12:
    .asciz "HTTP/1.1 requires exactly one Host field"
.Ltext_13:
    .asciz "duplicate Host field"
.Ltext_14:
    .asciz "invalid Host field"
.Ltext_15:
    .asciz "expect"
.Ltext_16:
    .asciz ""
.Ltext_17:
    .asciz "100-continue"
.Ltext_18:
    .asciz "unsupported HTTP expectation"
.Ltext_19:
    .asciz "unreachable"
.Ltext_20:
    .asciz "src/std/net/http/head.lucb:30:5"
.Ltext_21:
    .asciz "HTTP status line exceeds its limit"
.Ltext_22:
    .asciz "src/std/net/http/head.lucb:40:5"
.Ltext_23:
    .asciz "invalid HTTP status line"
.Ltext_24:
    .asciz "src/std/net/http/head.lucb:42:5"
.Ltext_25:
    .asciz "reason"
.Ltext_26:
    .asciz "src/std/net/http/head.lucb:43:5"
.Ltext_27:
    .asciz "invalid HTTP status or reason"
.Ltext_28:
    .asciz "invalid request method for response framing"
.Ltext_29:
    .asciz "src/std/net/http/head.lucb:47:5"
.Ltext_30:
    .asciz "src/std/net/http/head.lucb:49:5"
.Ltext_31:
    .asciz "HTTP head exceeds its byte limit"
.Ltext_32:
    .asciz "incomplete HTTP head"
.Ltext_33:
    .asciz "HTTP head parser does not consume body bytes"
.Ltext_34:
    .asciz "HTTP/1.0"
.Ltext_35:
    .asciz "unsupported HTTP version"
.Ltext_36:
    .asciz "HTTP fields exceed caller storage or configured limits"
.Ltext_37:
    .asciz ":"
.Ltext_38:
    .asciz "HTTP field needs a colon"
.Ltext_39:
    .asciz "src/std/net/http/head.lucb:69:9"
.Ltext_40:
    .asciz "invalid HTTP field name or value"
.Ltext_41:
    .asciz "src/std/net/http/head.lucb:72:9"
.Ltext_42:
    .asciz "src/std/net/http/head.lucb:73:9"
.Ltext_43:
    .asciz "src/std/net/http/head.lucb:74:5"
.Ltext_44:
    .asciz "connection"
.Ltext_45:
    .asciz "upgrade"
.Ltext_46:
    .asciz "close"
.Ltext_47:
    .asciz "keep-alive"
.Ltext_48:
    .asciz "CONNECT"
.Ltext_49:
    .asciz "content-length"
.Ltext_50:
    .asciz "conflicting Content-Length fields"
.Ltext_51:
    .asciz "transfer-encoding"
.Ltext_52:
    .asciz "chunked"
.Ltext_53:
    .asciz "unsupported HTTP transfer coding"
.Ltext_54:
    .asciz "src/std/net/http/head.lucb:101:17"
.Ltext_55:
    .asciz "ambiguous HTTP transfer framing"
.Ltext_56:
    .asciz "body framing is forbidden for this response status"
.Ltext_57:
    .asciz "HEAD"
.Ltext_58:
    .asciz "HTTP body exceeds its byte limit"
.Ltext_59:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3
