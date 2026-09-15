    .weak lb_memory_copy_0g1_files_WalkFrame
    .text

    .p2align 4
    .globl lb_files_walk_0init
lb_files_walk_0init:
    .seh_proc lb_files_walk_0init
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
    leaq lb_files_15directory_cycle(%rip), %rbx
    movl $208273441, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_11depth_limit(%rip), %rbx
    movl $208273442, %eax
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
    .globl lb_files_walk
lb_files_walk:
    .seh_proc lb_files_walk
    pushq %rbp
    .seh_pushreg %rbp
    subq $3520, %rsp
    .seh_stackalloc 3520
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 3336(%rbp)
    movq %rdi, 3512(%rbp)
    .seh_savereg %rdi, 3512
    movq %rsi, 3504(%rbp)
    .seh_savereg %rsi, 3504
    movdqu %xmm6, 3488(%rbp)
    .seh_savexmm %xmm6, 3488
    movdqu %xmm7, 3472(%rbp)
    .seh_savexmm %xmm7, 3472
    movdqu %xmm8, 3456(%rbp)
    .seh_savexmm %xmm8, 3456
    movdqu %xmm9, 3440(%rbp)
    .seh_savexmm %xmm9, 3440
    movdqu %xmm10, 3424(%rbp)
    .seh_savexmm %xmm10, 3424
    movdqu %xmm11, 3408(%rbp)
    .seh_savexmm %xmm11, 3408
    movdqu %xmm12, 3392(%rbp)
    .seh_savexmm %xmm12, 3392
    movdqu %xmm13, 3376(%rbp)
    .seh_savexmm %xmm13, 3376
    movdqu %xmm14, 3360(%rbp)
    .seh_savexmm %xmm14, 3360
    movdqu %xmm15, 3344(%rbp)
    .seh_savexmm %xmm15, 3344
    movq %rbx, 3328(%rbp)
    .seh_savereg %rbx, 3328
    movq %r12, 3320(%rbp)
    .seh_savereg %r12, 3320
    movq %r13, 3312(%rbp)
    .seh_savereg %r13, 3312
    movq %r14, 3304(%rbp)
    .seh_savereg %r14, 3304
    movq %r15, 3296(%rbp)
    .seh_savereg %r15, 3296
    .seh_endprologue
    movq %rcx, 3536(%rbp)
    movq %rdx, 3544(%rbp)
    movq %r8, 3552(%rbp)
    movq %r9, 3560(%rbp)
    movq 3544(%rbp), %rax
    movq %rax, 3248(%rbp)
    movq 3552(%rbp), %r10
    leaq 3232(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 3560(%rbp), %rax
    movq %rax, 3216(%rbp)
    leaq 3200(%rbp), %rax
    movq %rax, 1016(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 1008(%rbp)
    movq 1008(%rbp), %r10
    movq 1016(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 3072(%rbp), %r15
    leaq 3248(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    leaq 2912(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_metadata
    addq $32, %rsp
    leaq 2912(%rbp), %r12
    movq $152, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_2
    jmp .L1_1
.L1_2:
    movq $128, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 3264(%rbp), %r13
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
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_3:
.L1_1:
    movq %r12, %r10
    movq %r15, %r11
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
    leaq 3232(%rbp), %rax
    movq %rax, 1000(%rbp)
    movq 1000(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 992(%rbp)
    movq 1000(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 984(%rbp)
    movq 984(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 976(%rbp)
    movq 976(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 968(%rbp)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %rbx
    leaq 2896(%rbp), %rax
    movq %rax, 960(%rbp)
    movq 960(%rbp), %r10
    movq %r13, (%r10)
    movq 960(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    subq $192, %rsp
    movq 992(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 960(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %r15, %r10
    leaq 64(%rsp), %r11
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
    leaq 64(%rsp), %rax
    movq %rax, 24(%rsp)
    movq $0, %rax
    movq %rax, 32(%rsp)
    leaq 2856(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq 968(%rbp), %r11
    call *%r11
    addq $192, %rsp
    leaq 2856(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_5
    jmp .L1_4
.L1_5:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 3264(%rbp), %r12
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
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_6:
.L1_4:
    movq %r14, %r10
    movzbl (%r10), %ebx
    movq %r15, %r10
    movzbl (%r10), %r12d
    movl $2, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_128
    jmp .L1_10
.L1_128:
    movl %r12d, %ebx
    jmp .L1_11
.L1_10:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L1_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_7
    jmp .L1_8
.L1_7:
    leaq 3264(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_12:
    jmp .L1_9
.L1_8:
.L1_9:
    leaq 2776(%rbp), %rax
    movq %rax, 184(%rbp)
    subq $176, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r15, %r10
    leaq 32(%rsp), %r11
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
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 1016(%rbp), %r10
    leaq 160(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 160(%rsp), %rax
    movq %rax, 24(%rsp)
    leaq 2664(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_WalkState_start
    addq $176, %rsp
    leaq 2664(%rbp), %r14
    movq $104, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_14
    jmp .L1_13
.L1_14:
    movq $80, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 3264(%rbp), %r12
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
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_15:
.L1_13:
    movq %r14, %r10
    movq 184(%rbp), %r11
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
    movq 184(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 952(%rbp)
    leaq 2640(%rbp), %rax
    movq %rax, 176(%rbp)
    movq 184(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 936(%rbp)
    leaq 2584(%rbp), %rax
    movq %rax, 168(%rbp)
    movq 168(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, 920(%rbp)
    movq 176(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 912(%rbp)
    leaq 2536(%rbp), %rax
    movq %rax, 160(%rbp)
    leaq 2520(%rbp), %rax
    movq %rax, 896(%rbp)
    leaq 3216(%rbp), %rax
    movq %rax, 880(%rbp)
    leaq 2376(%rbp), %rax
    movq %rax, 152(%rbp)
    leaq 2216(%rbp), %rax
    movq %rax, 144(%rbp)
    movq 144(%rbp), %rax
    movq $152, %rcx
    addq %rcx, %rax
    movq %rax, 872(%rbp)
    movq 184(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 864(%rbp)
    leaq 2200(%rbp), %rax
    movq %rax, 856(%rbp)
    movq 856(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 848(%rbp)
    leaq 2184(%rbp), %rax
    movq %rax, 840(%rbp)
    movq 840(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 832(%rbp)
    leaq .Ltext_5(%rip), %rax
    movq %rax, 824(%rbp)
    leaq 2168(%rbp), %rax
    movq %rax, 816(%rbp)
    movq 816(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 808(%rbp)
    leaq 2136(%rbp), %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 800(%rbp)
    leaq 2104(%rbp), %rax
    movq %rax, 128(%rbp)
    movq 128(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 792(%rbp)
    leaq 2088(%rbp), %rax
    movq %rax, 784(%rbp)
    leaq 2048(%rbp), %rax
    movq %rax, 120(%rbp)
    movq 120(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 776(%rbp)
    movq 152(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 760(%rbp)
    movq 152(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 744(%rbp)
    leaq 1448(%rbp), %rax
    movq %rax, 576(%rbp)
    movq 576(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 568(%rbp)
    leaq 1416(%rbp), %rax
    movq %rax, 560(%rbp)
    movq 560(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 552(%rbp)
    movq 560(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 544(%rbp)
    leaq 1992(%rbp), %rax
    movq %rax, 104(%rbp)
    leaq 1952(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 96(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 728(%rbp)
    leaq 1824(%rbp), %rax
    movq %rax, 88(%rbp)
    leaq 1664(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $152, %rcx
    addq %rcx, %rax
    movq %rax, 720(%rbp)
    movq 88(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 712(%rbp)
    movq 88(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 696(%rbp)
    leaq 1224(%rbp), %rax
    movq %rax, 536(%rbp)
    leaq 1208(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 520(%rbp)
    leaq 1376(%rbp), %rax
    movq %rax, 512(%rbp)
    leaq lb_memory_exhausted(%rip), %rax
    movq %rax, 504(%rbp)
    leaq .Ltext_20(%rip), %rax
    movq %rax, 496(%rbp)
    leaq 1192(%rbp), %rax
    movq %rax, 488(%rbp)
    movq 488(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 480(%rbp)
    movq 512(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 472(%rbp)
    movq 512(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 464(%rbp)
    leaq 1176(%rbp), %rax
    movq %rax, 456(%rbp)
    movq 184(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, 448(%rbp)
    leaq 1160(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 1112(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 1008(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 400(%rbp)
    leaq 1088(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 392(%rbp)
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 344(%rbp)
    movq 56(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 336(%rbp)
    movq 56(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 384(%rbp)
    leaq .Ltext_13(%rip), %rax
    movq %rax, 376(%rbp)
    movq 384(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 368(%rbp)
    movq 384(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 360(%rbp)
    movq 56(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 352(%rbp)
    movq 56(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 440(%rbp)
    leaq .Ltext_10(%rip), %rax
    movq %rax, 432(%rbp)
    movq 440(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 424(%rbp)
    movq 440(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 416(%rbp)
    movq 56(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 408(%rbp)
    movq 56(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 328(%rbp)
    leaq 1072(%rbp), %rax
    movq %rax, 296(%rbp)
    movq 296(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 288(%rbp)
    movq 1008(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 280(%rbp)
    leaq 1040(%rbp), %rax
    movq %rax, 272(%rbp)
    leaq 1360(%rbp), %rax
    movq %rax, 264(%rbp)
    leaq 1232(%rbp), %rax
    movq %rax, 256(%rbp)
    movq 272(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 248(%rbp)
    movq 256(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 240(%rbp)
    movq 272(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 232(%rbp)
    leaq 1024(%rbp), %rax
    movq %rax, 224(%rbp)
    movq 224(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 216(%rbp)
    movq 272(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 208(%rbp)
    leaq 1376(%rbp), %rax
    movq %rax, 200(%rbp)
    movq 200(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 192(%rbp)
    movq 56(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 320(%rbp)
    leaq 1376(%rbp), %rax
    movq %rax, 312(%rbp)
    movq 312(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 304(%rbp)
    leaq 1616(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 688(%rbp)
    leaq 2016(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 768(%rbp)
    leaq 1528(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 680(%rbp)
    movq 184(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 632(%rbp)
    leaq 1496(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 624(%rbp)
    leaq 1584(%rbp), %rax
    movq %rax, 600(%rbp)
    movq 600(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 592(%rbp)
    leaq 1584(%rbp), %rax
    movq %rax, 616(%rbp)
    movq 616(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 608(%rbp)
    leaq 1560(%rbp), %rax
    movq %rax, 672(%rbp)
    leaq 1584(%rbp), %rax
    movq %rax, 664(%rbp)
    movq 672(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 656(%rbp)
    movq 664(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 648(%rbp)
    movq 664(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 640(%rbp)
    leaq 2552(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 904(%rbp)
.L1_16:
    movq 952(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L1_18
.L1_17:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 944(%rbp)
    movq 184(%rbp), %r10
    movq (%r10), %r13
    movq 936(%rbp), %r10
    movq (%r10), %r15
    movq 944(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 944(%rbp), %rax
    movq $32, %rcx
    imulq %rcx, %rax
    movq %rax, 928(%rbp)
    movq 928(%rbp), %rcx
    addq %rcx, %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 2584(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_Directory_next
    addq $32, %rsp
    movq 920(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_20
    jmp .L1_19
.L1_20:
    movq 168(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 3264(%rbp), %r13
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
    subq $32, %rsp
    movq 184(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_WalkState_destroy
    addq $32, %rsp
    movq %r13, %rsi
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_21:
.L1_19:
    movq 168(%rbp), %r10
    movq 176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 912(%rbp), %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L1_23
.L1_22:
    movq 952(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 184(%rbp), %r10
    movq (%r10), %r13
    movq 936(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
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
    movq %r13, %rbx
    addq %rcx, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 1528(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_Directory_close
    addq $32, %rsp
    movq 680(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_85
    jmp .L1_84
.L1_85:
    movq 24(%rbp), %r10
    movq 672(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L1_82
.L1_84:
    jmp .L1_83
.L1_82:
    movq 952(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 952(%rbp), %r10
    movq %rbx, (%r10)
    movq 672(%rbp), %r10
    movl (%r10), %ebx
    movq 664(%rbp), %r10
    movl %ebx, (%r10)
    movq 656(%rbp), %r10
    movq 648(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    movq 640(%rbp), %r10
    movb %al, (%r10)
    movq 664(%rbp), %r10
    leaq 2552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L1_93
.L1_86:
.L1_83:
    movq 952(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 952(%rbp), %r10
    movq %rbx, (%r10)
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L1_88
.L1_87:
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 184(%rbp), %r10
    movq (%r10), %r14
    movq 936(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $32, %rcx
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $24, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq 632(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    leaq 1496(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_Builder_truncate
    addq $32, %rsp
    movq 624(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_91
    jmp .L1_90
.L1_91:
    movq 16(%rbp), %r10
    movq 616(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl $1, %eax
    movq 608(%rbp), %r10
    movb %al, (%r10)
    movq 616(%rbp), %r10
    leaq 2552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L1_93
.L1_92:
.L1_90:
    jmp .L1_89
.L1_88:
.L1_89:
    movl $0, %eax
    movq 592(%rbp), %r10
    movb %al, (%r10)
    movq 600(%rbp), %r10
    leaq 2552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L1_93:
    movq 904(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_26
    jmp .L1_25
.L1_26:
    leaq 3264(%rbp), %rbx
    movq 8(%rbp), %r10
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
    movq 184(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_WalkState_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_27:
.L1_25:
    jmp .L1_16
.L1_28:
    jmp .L1_24
.L1_23:
.L1_24:
    testl %r13d, %r13d
    jne .L1_29
    jmp .L1_30
.L1_29:
    movq 176(%rbp), %r10
    movq 896(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_31
.L1_30:
    jmp .L1_16
.L1_32:
.L1_31:
    movq 896(%rbp), %r10
    movq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 952(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 888(%rbp)
    movq 880(%rbp), %r10
    movq (%r10), %r14
    movq 888(%rbp), %rax
    cmpq %r14, %rax
    jbe .L1_34
.L1_33:
    leaq 3264(%rbp), %rbx
    leaq lb_files_11depth_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq 2504(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $44, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 184(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_WalkState_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_36:
    jmp .L1_35
.L1_34:
.L1_35:
    movq 184(%rbp), %r10
    movq (%r10), %r14
    movq 936(%rbp), %r10
    movq (%r10), %r13
    movq 944(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 928(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq 160(%rbp), %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    leaq 2216(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_Directory_14entry_metadata
    addq $32, %rsp
    movq 872(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_38
    jmp .L1_37
.L1_38:
    movq 144(%rbp), %rax
    movq $128, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 3264(%rbp), %r13
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
    subq $32, %rsp
    movq 184(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_WalkState_destroy
    addq $32, %rsp
    movq %r13, %rsi
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_39:
.L1_37:
    movq 144(%rbp), %r10
    movq 152(%rbp), %r11
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
    subq $32, %rsp
    movq 864(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 2200(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_Builder_view
    addq $32, %rsp
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_43
    jmp .L1_129
.L1_129:
    movl %r14d, %r15d
    jmp .L1_44
.L1_43:
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    subq $32, %rsp
    movq 864(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 2184(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_Builder_view
    addq $32, %rsp
    movq 840(%rbp), %r10
    movq (%r10), %r15
    movq 832(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r14, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $47, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L1_44:
    movzbl %r15b, %ebx
    testl %ebx, %ebx
    jne .L1_40
    jmp .L1_41
.L1_40:
    movq 824(%rbp), %rax
    movq 816(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq 808(%rbp), %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq 864(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 816(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 2136(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_Builder_put
    addq $48, %rsp
    movq 800(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_46
    jmp .L1_45
.L1_46:
    leaq 3264(%rbp), %rbx
    movq 136(%rbp), %r10
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
    movq 184(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_WalkState_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_47:
.L1_45:
    jmp .L1_42
.L1_41:
.L1_42:
    subq $48, %rsp
    movq 864(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 160(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 2104(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_Builder_put
    addq $48, %rsp
    movq 792(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_49
    jmp .L1_48
.L1_49:
    leaq 3264(%rbp), %rbx
    movq 128(%rbp), %r10
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
    movq 184(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_WalkState_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_50:
.L1_48:
    movq 976(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq 864(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 2088(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_Builder_view
    addq $32, %rsp
    subq $192, %rsp
    movq 992(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 784(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 152(%rbp), %r10
    leaq 64(%rsp), %r11
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
    leaq 64(%rsp), %rax
    movq %rax, 24(%rsp)
    movq 888(%rbp), %rax
    movq %rax, 32(%rsp)
    leaq 2048(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %rbx, %r11
    call *%r11
    addq $192, %rsp
    movq 776(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_52
    jmp .L1_51
.L1_52:
    movq 120(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 3264(%rbp), %r13
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
    subq $32, %rsp
    movq 184(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_WalkState_destroy
    addq $32, %rsp
    movq %r13, %rsi
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_53:
.L1_51:
    movq 120(%rbp), %r10
    movzbl (%r10), %ebx
    movq 152(%rbp), %r10
    movzbl (%r10), %r14d
    movl $2, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_130
    jmp .L1_57
.L1_130:
    movl %r14d, %ebx
    jmp .L1_58
.L1_57:
    movzbl %bl, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %ebx
.L1_58:
    movzbl %bl, %r14d
    testl %r14d, %r14d
    jne .L1_54
    jmp .L1_55
.L1_54:
    subq $32, %rsp
    movq 864(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    leaq 2016(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_Builder_truncate
    addq $32, %rsp
    movq 768(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_60
    jmp .L1_59
.L1_60:
    leaq 3264(%rbp), %rbx
    movq 32(%rbp), %r10
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
    movq 184(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_WalkState_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_61:
.L1_59:
    jmp .L1_16
.L1_62:
    jmp .L1_56
.L1_55:
.L1_56:
    movq 760(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 752(%rbp)
    movq 744(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 736(%rbp)
    movq 752(%rbp), %rax
    leaq 1480(%rbp), %r10
    movq %rax, (%r10)
    movq 736(%rbp), %rax
    leaq 1464(%rbp), %r10
    movq %rax, (%r10)
    movq 184(%rbp), %r10
    movq (%r10), %r13
    movq 936(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 584(%rbp)
    movq 952(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 112(%rbp)
    movq 584(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 112(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 112(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L1_98
.L1_99:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_98:
    movq 576(%rbp), %r10
    movq %r13, (%r10)
    movq 112(%rbp), %rax
    movq 568(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, %r15
.L1_94:
    movq 112(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L1_97
.L1_95:
    movq $32, %rcx
    movq %r15, %r14
    imulq %rcx, %r14
    addq %r13, %r14
    movq %r14, %r10
    movq 560(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 552(%rbp), %r10
    movq (%r10), %r14
    movq 752(%rbp), %rax
    cmpq %r14, %rax
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_103
    jmp .L1_131
.L1_131:
    movl %r14d, %ebx
    jmp .L1_104
.L1_103:
    movq 544(%rbp), %r10
    movq (%r10), %rbx
    movq 736(%rbp), %rax
    cmpq %rbx, %rax
    sete %al
    movzbl %al, %ebx
.L1_104:
    movzbl %bl, %r14d
    testl %r14d, %r14d
    jne .L1_100
    jmp .L1_101
.L1_100:
    movl $1, %eax
    leaq 1408(%rbp), %r10
    movl %eax, (%r10)
    movl $1, %eax
    movl %eax, %ebx
    jmp .L1_107
.L1_105:
    jmp .L1_102
.L1_101:
.L1_102:
.L1_96:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L1_94
.L1_97:
    movl $0, %eax
    leaq 1408(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %ebx
    jmp .L1_107
.L1_106:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_107:
    testl %ebx, %ebx
    jne .L1_63
    jmp .L1_64
.L1_63:
    leaq 3264(%rbp), %rbx
    leaq lb_files_15directory_cycle(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_6(%rip), %r13
    leaq 2000(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $49, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 184(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_WalkState_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_66:
    jmp .L1_65
.L1_64:
.L1_65:
    movq 944(%rbp), %rax
    movq 584(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 928(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq 160(%rbp), %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    leaq 1952(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_Directory_14open_directory
    addq $32, %rsp
    movq 728(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_68
    jmp .L1_67
.L1_68:
    movq 96(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 3264(%rbp), %r13
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
    subq $32, %rsp
    movq 184(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_WalkState_destroy
    addq $32, %rsp
    movq %r13, %rsi
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_69:
.L1_67:
    movq 96(%rbp), %r10
    movq 104(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    subq $32, %rsp
    movq 104(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 1664(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_Directory_metadata
    addq $32, %rsp
    movq 720(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_71
    jmp .L1_70
.L1_71:
    movq 80(%rbp), %rax
    movq $128, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 3264(%rbp), %r13
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
    subq $32, %rsp
    movq 104(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_Directory_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 184(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_WalkState_destroy
    addq $32, %rsp
    movq %r13, %rsi
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_72:
.L1_70:
    movq 80(%rbp), %r10
    movq 88(%rbp), %r11
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
    movq 712(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 704(%rbp)
    movq 760(%rbp), %r10
    movq (%r10), %r13
    movq 704(%rbp), %rax
    cmpq %r13, %rax
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_132
    jmp .L1_76
.L1_132:
    movl %r13d, %r14d
    jmp .L1_77
.L1_76:
    movq 696(%rbp), %r10
    movq (%r10), %r13
    movq 744(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L1_77:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_73
    jmp .L1_74
.L1_73:
    leaq 3264(%rbp), %rbx
    leaq lb_files_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_8(%rip), %r13
    leaq 1648(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $51, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 104(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_Directory_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 184(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_WalkState_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_78:
    jmp .L1_75
.L1_74:
.L1_75:
    movq 104(%rbp), %r10
    leaq 1360(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq 88(%rbp), %r10
    leaq 1232(%rbp), %r11
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
    movq 952(%rbp), %r10
    movq (%r10), %r13
    movq 936(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jne .L1_109
.L1_108:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq $2, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 536(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qmul_u
    addq $32, %rsp
    movl %eax, %r13d
    movq 536(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 528(%rbp)
    movq 528(%rbp), %rax
    movq 72(%rbp), %r10
    movq %rax, (%r10)
    movq 520(%rbp), %r10
    movb %r13b, (%r10)
    movq 520(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_111
    jmp .L1_112
.L1_111:
    jmp .L1_113
.L1_112:
    movq 504(%rbp), %r10
    movl (%r10), %ebx
    movq 512(%rbp), %r10
    movl %ebx, (%r10)
    movq 496(%rbp), %rax
    movq 488(%rbp), %r10
    movq %rax, (%r10)
    movq $32, %rax
    movq 480(%rbp), %r10
    movq %rax, (%r10)
    movq 488(%rbp), %r10
    movq 472(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    movq 464(%rbp), %r10
    movb %al, (%r10)
    movq 512(%rbp), %r10
    leaq 1616(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L1_127
.L1_114:
.L1_113:
    movq 1008(%rbp), %r10
    movq 456(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 448(%rbp), %r10
    movq 1008(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 528(%rbp), %rax
    movabsq $144115188075855872, %rcx
    cmpq %rcx, %rax
    jbe .L1_116
.L1_115:
    movl $208273409, %eax
    movq 440(%rbp), %r10
    movl %eax, (%r10)
    movq 432(%rbp), %rax
    movq 424(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq 416(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 408(%rbp), %r10
    movb %al, (%r10)
    jmp .L1_117
.L1_116:
    movq 528(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 1008(%rbp), %r10
    movq (%r10), %r13
    movq 400(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_118
    jmp .L1_119
.L1_119:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_118:
    movq %rbx, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 1088(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    movq 392(%rbp), %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r14
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
    jne .L1_120
    jmp .L1_121
.L1_120:
    movl $208273409, %eax
    movq 384(%rbp), %r10
    movl %eax, (%r10)
    movq 376(%rbp), %rax
    movq 368(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq 360(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 352(%rbp), %r10
    movb %al, (%r10)
    jmp .L1_117
.L1_121:
    movq 48(%rbp), %r10
    movq (%r10), %rbx
    movq 56(%rbp), %r10
    movq %rbx, (%r10)
    movq 528(%rbp), %rax
    movq 344(%rbp), %r10
    movq %rax, (%r10)
    movl $0, %eax
    movq 336(%rbp), %r10
    movb %al, (%r10)
.L1_117:
    movq 328(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_123
    jmp .L1_122
.L1_123:
    movq 320(%rbp), %r10
    movq 312(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl $1, %eax
    movq 304(%rbp), %r10
    movb %al, (%r10)
    movq 456(%rbp), %r10
    movq 1008(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 312(%rbp), %r10
    leaq 1616(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L1_127
.L1_124:
.L1_122:
    movq 56(%rbp), %r10
    movq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 952(%rbp), %r10
    movq (%r10), %rbx
    subq $64, %rsp
    movq 64(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 184(%rbp), %r10
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
    call lb_memory_copy_0g1_files_WalkFrame
    addq $64, %rsp
    movq 184(%rbp), %r10
    movq (%r10), %rbx
    movq 936(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 296(%rbp), %r10
    movq %rbx, (%r10)
    movq 288(%rbp), %r10
    movq %r12, (%r10)
    movq 1008(%rbp), %r10
    movq (%r10), %rbx
    movq 280(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L1_126
    jmp .L1_125
.L1_126:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 296(%rbp), %r10
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
.L1_125:
    movq 64(%rbp), %r10
    movq 184(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 456(%rbp), %r10
    movq 1008(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_110
.L1_109:
.L1_110:
    movq 952(%rbp), %r10
    movq (%r10), %rbx
    movq 184(%rbp), %r10
    movq (%r10), %r12
    movq 936(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
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
    movq 272(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq 264(%rbp), %r10
    movq 272(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq 704(%rbp), %rax
    movq 248(%rbp), %r10
    movq %rax, (%r10)
    movq 240(%rbp), %r10
    movq (%r10), %r12
    movq 232(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq 864(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 1024(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_Builder_view
    addq $32, %rsp
    movq 216(%rbp), %r10
    movq (%r10), %r12
    movq 208(%rbp), %r10
    movq %r12, (%r10)
    movq 272(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 952(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 952(%rbp), %r10
    movq %rbx, (%r10)
    movl $0, %eax
    movq 192(%rbp), %r10
    movb %al, (%r10)
    movq 200(%rbp), %r10
    leaq 1616(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L1_127:
    movq 688(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_80
    jmp .L1_79
.L1_80:
    leaq 3264(%rbp), %rbx
    movq 40(%rbp), %r10
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
    subq $32, %rsp
    movq 104(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_Directory_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 184(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_WalkState_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
.L1_81:
.L1_79:
    jmp .L1_16
.L1_18:
    subq $32, %rsp
    movq 184(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_WalkState_destroy
    addq $32, %rsp
    leaq 3264(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 3336(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3336(%rbp), %rax
    movq 3512(%rbp), %rdi
    movq 3504(%rbp), %rsi
    movdqu 3488(%rbp), %xmm6
    movdqu 3472(%rbp), %xmm7
    movdqu 3456(%rbp), %xmm8
    movdqu 3440(%rbp), %xmm9
    movdqu 3424(%rbp), %xmm10
    movdqu 3408(%rbp), %xmm11
    movdqu 3392(%rbp), %xmm12
    movdqu 3376(%rbp), %xmm13
    movdqu 3360(%rbp), %xmm14
    movdqu 3344(%rbp), %xmm15
    movq 3328(%rbp), %rbx
    movq 3320(%rbp), %r12
    movq 3312(%rbp), %r13
    movq 3304(%rbp), %r14
    movq 3296(%rbp), %r15
    leaq 3520(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_files_WalkState_start
lb_files_WalkState_start:
    .seh_proc lb_files_WalkState_start
    pushq %rbp
    .seh_pushreg %rbp
    subq $1312, %rsp
    .seh_stackalloc 1312
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 1128(%rbp)
    movq %rdi, 1304(%rbp)
    .seh_savereg %rdi, 1304
    movq %rsi, 1296(%rbp)
    .seh_savereg %rsi, 1296
    movdqu %xmm6, 1280(%rbp)
    .seh_savexmm %xmm6, 1280
    movdqu %xmm7, 1264(%rbp)
    .seh_savexmm %xmm7, 1264
    movdqu %xmm8, 1248(%rbp)
    .seh_savexmm %xmm8, 1248
    movdqu %xmm9, 1232(%rbp)
    .seh_savexmm %xmm9, 1232
    movdqu %xmm10, 1216(%rbp)
    .seh_savexmm %xmm10, 1216
    movdqu %xmm11, 1200(%rbp)
    .seh_savexmm %xmm11, 1200
    movdqu %xmm12, 1184(%rbp)
    .seh_savexmm %xmm12, 1184
    movdqu %xmm13, 1168(%rbp)
    .seh_savexmm %xmm13, 1168
    movdqu %xmm14, 1152(%rbp)
    .seh_savexmm %xmm14, 1152
    movdqu %xmm15, 1136(%rbp)
    .seh_savexmm %xmm15, 1136
    movq %rbx, 1120(%rbp)
    .seh_savereg %rbx, 1120
    movq %r12, 1112(%rbp)
    .seh_savereg %r12, 1112
    movq %r13, 1104(%rbp)
    .seh_savereg %r13, 1104
    movq %r14, 1096(%rbp)
    .seh_savereg %r14, 1096
    movq %r15, 1088(%rbp)
    .seh_savereg %r15, 1088
    .seh_endprologue
    movq %rcx, 1328(%rbp)
    movq %rdx, 1336(%rbp)
    movq %r8, 1344(%rbp)
    movq %r9, 1352(%rbp)
    movq 1336(%rbp), %rax
    movq %rax, 960(%rbp)
    movq 1344(%rbp), %r10
    leaq 832(%rbp), %r11
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
    movq 1352(%rbp), %r10
    leaq 816(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 808(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 960(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 64(%rbp)
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    leaq 768(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_Directory_open
    addq $32, %rsp
    leaq 768(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_2
    jmp .L2_1
.L2_2:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 976(%rbp), %r12
    movq $80, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $104, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 1128(%rbp), %rdi
    movq $112, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1128(%rbp), %rax
    movq 1304(%rbp), %rdi
    movq 1296(%rbp), %rsi
    movdqu 1280(%rbp), %xmm6
    movdqu 1264(%rbp), %xmm7
    movdqu 1248(%rbp), %xmm8
    movdqu 1232(%rbp), %xmm9
    movdqu 1216(%rbp), %xmm10
    movdqu 1200(%rbp), %xmm11
    movdqu 1184(%rbp), %xmm12
    movdqu 1168(%rbp), %xmm13
    movdqu 1152(%rbp), %xmm14
    movdqu 1136(%rbp), %xmm15
    movq 1120(%rbp), %rbx
    movq 1112(%rbp), %r12
    movq 1104(%rbp), %r13
    movq 1096(%rbp), %r14
    movq 1088(%rbp), %r15
    leaq 1312(%rbp), %rsp
    popq %rbp
    ret
.L2_1:
    movq %r14, %r10
    movq 24(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq 640(%rbp), %rax
    movq %rax, 16(%rbp)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 480(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_Directory_metadata
    addq $32, %rsp
    leaq 480(%rbp), %rbx
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_5
    jmp .L2_4
.L2_5:
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq 976(%rbp), %r14
    movq $80, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $104, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_Directory_destroy
    addq $32, %rsp
    movq %r14, %rsi
    movq 1128(%rbp), %rdi
    movq $112, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1128(%rbp), %rax
    movq 1304(%rbp), %rdi
    movq 1296(%rbp), %rsi
    movdqu 1280(%rbp), %xmm6
    movdqu 1264(%rbp), %xmm7
    movdqu 1248(%rbp), %xmm8
    movdqu 1232(%rbp), %xmm9
    movdqu 1216(%rbp), %xmm10
    movdqu 1200(%rbp), %xmm11
    movdqu 1184(%rbp), %xmm12
    movdqu 1168(%rbp), %xmm13
    movdqu 1152(%rbp), %xmm14
    movdqu 1136(%rbp), %xmm15
    movq 1120(%rbp), %rbx
    movq 1112(%rbp), %r12
    movq 1104(%rbp), %r13
    movq 1096(%rbp), %r14
    movq 1088(%rbp), %r15
    leaq 1312(%rbp), %rsp
    popq %rbp
    ret
.L2_4:
    movq %rbx, %r10
    movq 16(%rbp), %r11
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
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    leaq 832(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 56(%rbp), %rax
    cmpq %r13, %rax
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_30
    jmp .L2_10
.L2_30:
    movl %r13d, %ebx
    jmp .L2_11
.L2_10:
    movq 16(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L2_11:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L2_7
    jmp .L2_8
.L2_7:
    leaq 976(%rbp), %rbx
    movq $80, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_9(%rip), %r13
    leaq 464(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $52, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $104, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_Directory_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 1128(%rbp), %rdi
    movq $112, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1128(%rbp), %rax
    movq 1304(%rbp), %rdi
    movq 1296(%rbp), %rsi
    movdqu 1280(%rbp), %xmm6
    movdqu 1264(%rbp), %xmm7
    movdqu 1248(%rbp), %xmm8
    movdqu 1232(%rbp), %xmm9
    movdqu 1216(%rbp), %xmm10
    movdqu 1200(%rbp), %xmm11
    movdqu 1184(%rbp), %xmm12
    movdqu 1168(%rbp), %xmm13
    movdqu 1152(%rbp), %xmm14
    movdqu 1136(%rbp), %xmm15
    movq 1120(%rbp), %rbx
    movq 1112(%rbp), %r12
    movq 1104(%rbp), %r13
    movq 1096(%rbp), %r14
    movq 1088(%rbp), %r15
    leaq 1312(%rbp), %rsp
    popq %rbp
    ret
.L2_8:
.L2_9:
    leaq 448(%rbp), %rax
    movq %rax, 48(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 816(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 408(%rbp), %rax
    movq %rax, 8(%rbp)
    subq $32, %rsp
    movq $64, %rax
    movq %rax, 8(%rsp)
    leaq 336(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_Builder_create
    addq $32, %rsp
    leaq 336(%rbp), %r12
    movq $64, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_14
    jmp .L2_13
.L2_14:
    movq $40, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    leaq 976(%rbp), %r15
    movq $80, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $104, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq 48(%rbp), %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_Directory_destroy
    addq $32, %rsp
    movq %r15, %rsi
    movq 1128(%rbp), %rdi
    movq $112, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1128(%rbp), %rax
    movq 1304(%rbp), %rdi
    movq 1296(%rbp), %rsi
    movdqu 1280(%rbp), %xmm6
    movdqu 1264(%rbp), %xmm7
    movdqu 1248(%rbp), %xmm8
    movdqu 1232(%rbp), %xmm9
    movdqu 1216(%rbp), %xmm10
    movdqu 1200(%rbp), %xmm11
    movdqu 1184(%rbp), %xmm12
    movdqu 1168(%rbp), %xmm13
    movdqu 1152(%rbp), %xmm14
    movdqu 1136(%rbp), %xmm15
    movq 1120(%rbp), %rbx
    movq 1112(%rbp), %r12
    movq 1104(%rbp), %r13
    movq 1096(%rbp), %r14
    movq 1088(%rbp), %r15
    leaq 1312(%rbp), %rsp
    popq %rbp
    ret
.L2_13:
    movq %r12, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %rbx
    leaq 320(%rbp), %r14
    movq 64(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    subq $48, %rsp
    movq 8(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 288(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_Builder_put
    addq $48, %rsp
    leaq 288(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_17
    jmp .L2_16
.L2_17:
    leaq 976(%rbp), %rbx
    movq $80, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $104, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 48(%rbp), %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_Directory_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 1128(%rbp), %rdi
    movq $112, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1128(%rbp), %rax
    movq 1304(%rbp), %rdi
    movq 1296(%rbp), %rsi
    movdqu 1280(%rbp), %xmm6
    movdqu 1264(%rbp), %xmm7
    movdqu 1248(%rbp), %xmm8
    movdqu 1232(%rbp), %xmm9
    movdqu 1216(%rbp), %xmm10
    movdqu 1200(%rbp), %xmm11
    movdqu 1184(%rbp), %xmm12
    movdqu 1168(%rbp), %xmm13
    movdqu 1152(%rbp), %xmm14
    movdqu 1136(%rbp), %xmm15
    movq 1120(%rbp), %rbx
    movq 1112(%rbp), %r12
    movq 1104(%rbp), %r13
    movq 1096(%rbp), %r14
    movq 1088(%rbp), %r15
    leaq 1312(%rbp), %rsp
    popq %rbp
    ret
.L2_16:
    leaq 272(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 224(%rbp), %r12
.L2_20:
    movq 40(%rbp), %r10
    movq (%r10), %r13
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_22
    jmp .L2_23
.L2_23:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_22:
    movq %r14, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq $256, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 200(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %rbx, %r11
    call *%r11
    addq $32, %rsp
    leaq 200(%rbp), %r15
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $1, %ecx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L2_24
    jmp .L2_25
.L2_24:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_13(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_21
.L2_25:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $8, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_21:
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_27
    jmp .L2_26
.L2_27:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 976(%rbp), %r13
    movq $80, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $104, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 48(%rbp), %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_Directory_destroy
    addq $32, %rsp
    movq %r13, %rsi
    movq 1128(%rbp), %rdi
    movq $112, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1128(%rbp), %rax
    movq 1304(%rbp), %rdi
    movq 1296(%rbp), %rsi
    movdqu 1280(%rbp), %xmm6
    movdqu 1264(%rbp), %xmm7
    movdqu 1248(%rbp), %xmm8
    movdqu 1232(%rbp), %xmm9
    movdqu 1216(%rbp), %xmm10
    movdqu 1200(%rbp), %xmm11
    movdqu 1184(%rbp), %xmm12
    movdqu 1168(%rbp), %xmm13
    movdqu 1152(%rbp), %xmm14
    movdqu 1136(%rbp), %xmm15
    movq 1120(%rbp), %rbx
    movq 1112(%rbp), %r12
    movq 1104(%rbp), %r13
    movq 1096(%rbp), %r14
    movq 1088(%rbp), %r15
    leaq 1312(%rbp), %rsp
    popq %rbp
    ret
.L2_26:
    movq %r12, %r10
    movq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 0(%rbp), %r10
    movq (%r10), %rbx
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    leaq 168(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq 24(%rbp), %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq 56(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 16(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $16, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 152(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_Builder_view
    addq $32, %rsp
    leaq 152(%rbp), %r14
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $24, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 72(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movq 0(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $1, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq 8(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq 32(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 976(%rbp), %r13
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
    movq $104, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq 48(%rbp), %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rsi
    movq 1128(%rbp), %rdi
    movq $112, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1128(%rbp), %rax
    movq 1304(%rbp), %rdi
    movq 1296(%rbp), %rsi
    movdqu 1280(%rbp), %xmm6
    movdqu 1264(%rbp), %xmm7
    movdqu 1248(%rbp), %xmm8
    movdqu 1232(%rbp), %xmm9
    movdqu 1216(%rbp), %xmm10
    movdqu 1200(%rbp), %xmm11
    movdqu 1184(%rbp), %xmm12
    movdqu 1168(%rbp), %xmm13
    movdqu 1152(%rbp), %xmm14
    movdqu 1136(%rbp), %xmm15
    movq 1120(%rbp), %rbx
    movq 1112(%rbp), %r12
    movq 1104(%rbp), %r13
    movq 1096(%rbp), %r14
    movq 1088(%rbp), %r15
    leaq 1312(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_files_WalkState_destroy
lb_files_WalkState_destroy:
    .seh_proc lb_files_WalkState_destroy
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
    movq %rax, 64(%rbp)
    leaq 64(%rbp), %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
.L3_1:
    movq %rbx, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L3_3
.L3_2:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
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
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $32, %rcx
    imulq %rcx, %r15
    movq 24(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_Directory_destroy
    addq $32, %rsp
    jmp .L3_1
.L3_3:
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L3_5
.L3_4:
    movq $64, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    leaq 48(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq %rbx, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq 8(%rbp), %r10
    movq (%r10), %r12
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_8
    jmp .L3_7
.L3_8:
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
.L3_7:
    leaq 32(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_6
.L3_5:
.L3_6:
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

    .section .text$lb_memory_copy_0g1_files_WalkFrame,"xr"
    .p2align 4
    .globl lb_memory_copy_0g1_files_WalkFrame
lb_memory_copy_0g1_files_WalkFrame:
    .seh_proc lb_memory_copy_0g1_files_WalkFrame
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
    movq 304(%rbp), %r10
    leaq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 312(%rbp), %r10
    leaq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 320(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 56(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L4_11
    jmp .L4_4
.L4_11:
    movl %r13d, %r14d
    jmp .L4_5
.L4_4:
    leaq 40(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L4_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L4_1
    jmp .L4_2
.L4_1:
    leaq .Ltext_18(%rip), %r13
    leaq 8(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_32(%rip), %r13
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
    jmp .L4_3
.L4_2:
.L4_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L4_7
.L4_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq 40(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L4_9
    jmp .L4_10
.L4_10:
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_9:
    jmp .L4_8
.L4_7:
.L4_8:
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

    .text

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_files_walk_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/files/walk.lucb:30:9"
.Ltext_1:
    .asciz "src/std/files/walk.lucb:31:9"
.Ltext_2:
    .asciz "directory traversal exceeded its depth limit"
.Ltext_3:
    .asciz "src/std/files/walk.lucb:39:9"
.Ltext_4:
    .asciz "src/std/files/walk.lucb:41:9"
.Ltext_5:
    .asciz "/"
.Ltext_6:
    .asciz "directory traversal encountered an ancestor again"
.Ltext_7:
    .asciz "src/std/files/walk.lucb:50:9"
.Ltext_8:
    .asciz "a directory changed before traversal could enter it"
.Ltext_9:
    .asciz "the traversal root changed before it could be opened"
.Ltext_10:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_11:
    .asciz "memory.unset"
.Ltext_12:
    .asciz "src/std/files/walk.lucb:82:13"
.Ltext_13:
    .asciz "memory.exhausted"
.Ltext_14:
    .asciz "src/std/files/walk.lucb:83:13"
.Ltext_15:
    .asciz "unreachable"
.Ltext_16:
    .asciz "src/std/files/walk.lucb:85:13"
.Ltext_17:
    .asciz "src/std/files/walk.lucb:88:9"
.Ltext_18:
    .asciz "index out of bounds"
.Ltext_19:
    .asciz "src/std/files/walk.lucb:91:9"
.Ltext_20:
    .asciz "the traversal stack is too large"
.Ltext_21:
    .asciz "src/std/files/walk.lucb:99:17"
.Ltext_22:
    .asciz "src/std/files/walk.lucb:101:17"
.Ltext_23:
    .asciz "src/std/files/walk.lucb:103:9"
.Ltext_24:
    .asciz "src/std/files/walk.lucb:105:9"
.Ltext_25:
    .asciz "src/std/files/walk.lucb:108:9"
.Ltext_26:
    .asciz "src/std/files/walk.lucb:112:9"
.Ltext_27:
    .asciz "src/std/files/walk.lucb:110:13"
.Ltext_28:
    .asciz "src/std/files/walk.lucb:114:13"
.Ltext_29:
    .asciz "src/std/files/walk.lucb:118:13"
.Ltext_30:
    .asciz "src/std/files/walk.lucb:119:13"
.Ltext_31:
    .asciz "src/std/files/walk.lucb:122:13"
.Ltext_32:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_33:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_34:
    .asciz "null_foreign"
.Ltext_35:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_files_15directory_cycle
    .p2align 2
lb_files_15directory_cycle:
    .zero 4

    .bss
    .globl lb_files_11depth_limit
    .p2align 2
lb_files_11depth_limit:
    .zero 4
