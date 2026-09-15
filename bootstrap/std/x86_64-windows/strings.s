    .weak lb_memory_copy_0g1_u8
    .weak lb_memory_read_0g1_f64
    .weak lb_memory_read_0g1_u64
    .weak lb_memory_read_0g1_f32
    .weak lb_memory_read_0g1_u32
    .weak lb_memory_move_0g1_u8
    .text

    .p2align 4
    .globl lb_strings_0init
lb_strings_0init:
    .seh_proc lb_strings_0init
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
    leaq lb_strings_17invalid_separator(%rip), %rbx
    movl $208273456, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_strings_16output_too_large(%rip), %rbx
    movl $208273457, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_strings_13invalid_radix(%rip), %rbx
    movl $208273458, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_strings_14invalid_number(%rip), %rbx
    movl $208273459, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_strings_19number_out_of_range(%rip), %rbx
    movl $208273460, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_strings_17conversion_failed(%rip), %rbx
    movl $208273461, %eax
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
    .globl lb_strings_11starts_with
lb_strings_11starts_with:
    .seh_proc lb_strings_11starts_with
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
    leaq 40(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 56(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jbe .L1_2
.L1_1:
    movl $0, %eax
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
.L1_2:
.L1_3:
    movq %r13, %r10
    movq (%r10), %rbx
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r15, %r12
    jb 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L1_5
.L1_6:
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_5:
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
.L1_7:
    movq 0(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
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
.L1_8:
    movzbl %r13b, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
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
    .globl lb_strings_9ends_with
lb_strings_9ends_with:
    .seh_proc lb_strings_9ends_with
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
    movq 320(%rbp), %r10
    leaq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 328(%rbp), %r10
    leaq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 56(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    leaq 72(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq 8(%rbp), %rax
    cmpq %r14, %rax
    jbe .L2_2
.L2_1:
    movl $0, %eax
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
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    movq 8(%rbp), %rcx
    movq %r14, %rbx
    subq %rcx, %rbx
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    cmpq %r15, %rbx
    jb 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %rbx
    jbe .L2_5
.L2_6:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_5:
    movq 0(%rbp), %rax
    movq %rax, %r13
    addq %rbx, %r13
    movq %r14, %r15
    subq %rbx, %r15
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    leaq 24(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq 8(%rbp), %rax
    cmpq %r15, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_7
    jmp .L2_10
.L2_10:
    movl %r12d, %ebx
    jmp .L2_8
.L2_7:
    movq 16(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r13, %rax
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
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L2_8:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
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
.L2_9:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_9find_from
lb_strings_9find_from:
    .seh_proc lb_strings_9find_from
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
    leaq 128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 416(%rbp), %r10
    leaq 112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 424(%rbp), %rax
    movq %rax, 96(%rbp)
    leaq 96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 128(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jbe .L3_2
.L3_1:
    leaq 80(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 144(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 200(%rbp), %rdi
    movq $16, %rdx
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
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    movq %r12, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r13, %rbx
    jbe .L3_5
.L3_6:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_5:
    movq %rbx, %r12
    addq %r15, %r12
    movq %r13, %rax
    subq %rbx, %rax
    movq %rax, 8(%rbp)
    leaq 64(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq 8(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 112(%rbp), %r12
    subq $64, %rsp
    movq %r14, %r10
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
    movl $0, %eax
    movq %rax, 24(%rsp)
    leaq 48(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_12search_bytes
    addq $64, %rsp
    leaq 48(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_7
    jmp .L3_8
.L3_7:
    movq %r14, %r10
    movq (%r10), %r12
    jmp .L3_9
.L3_8:
    leaq 32(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 144(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 200(%rbp), %rdi
    movq $16, %rdx
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
.L3_10:
.L3_9:
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    leaq 16(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 144(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rsi
    movq 200(%rbp), %rdi
    movq $16, %rdx
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
.L3_11:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_last
lb_strings_last:
    .seh_proc lb_strings_last
    pushq %rbp
    .seh_pushreg %rbp
    subq $320, %rsp
    .seh_stackalloc 320
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 136(%rbp)
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
    movq %rbx, 128(%rbp)
    .seh_savereg %rbx, 128
    movq %r12, 120(%rbp)
    .seh_savereg %r12, 120
    movq %r13, 112(%rbp)
    .seh_savereg %r13, 112
    movq %r14, 104(%rbp)
    .seh_savereg %r14, 104
    movq %r15, 96(%rbp)
    .seh_savereg %r15, 96
    .seh_endprologue
    movq %rcx, 336(%rbp)
    movq %rdx, 344(%rbp)
    movq %r8, 352(%rbp)
    movq %r9, 360(%rbp)
    movq 344(%rbp), %r10
    leaq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 352(%rbp), %rax
    movl %eax, 48(%rbp)
    leaq 64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq %r12, %r14
.L4_1:
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L4_3
.L4_2:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    movq %rax, %r15
    addq %rbx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    cmpl %r13d, %r15d
    jne .L4_5
.L4_4:
    leaq 32(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 136(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
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
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    movq 96(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L4_7:
    jmp .L4_6
.L4_5:
.L4_6:
    movq 8(%rbp), %rax
    movq %rax, %r14
    jmp .L4_1
.L4_3:
    leaq 16(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 136(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
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
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    movq 96(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L4_8:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_contains
lb_strings_contains:
    .seh_proc lb_strings_contains
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
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 320(%rbp), %r10
    leaq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 328(%rbp), %r10
    leaq 80(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 96(%rbp), %rbx
    leaq 80(%rbp), %r12
    movq %rbx, %r10
    leaq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rbp), %rbx
    leaq 16(%rbp), %r12
    subq $64, %rsp
    movq %rbx, %r10
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
    movl $0, %eax
    movq %rax, 24(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_12search_bytes
    addq $64, %rsp
    leaq 0(%rbp), %rbx
    leaq 48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L5_3
.L5_2:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_3:
    leaq 64(%rbp), %rbx
    movq $8, %rcx
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
    movzbl %al, %ebx
    movzbl %bl, %ebx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L5_1:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_12search_bytes
lb_strings_12search_bytes:
    .seh_proc lb_strings_12search_bytes
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
    movq 520(%rbp), %r10
    leaq 240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 528(%rbp), %r10
    leaq 224(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 536(%rbp), %rax
    movl %eax, 208(%rbp)
    leaq 224(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq 104(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L6_2
.L6_1:
    leaq 192(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 256(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 312(%rbp), %rdi
    movq $16, %rdx
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
.L6_4:
    jmp .L6_3
.L6_2:
.L6_3:
    leaq 240(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 96(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jbe .L6_6
.L6_5:
    leaq 176(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 256(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 312(%rbp), %rdi
    movq $16, %rdx
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
.L6_8:
    jmp .L6_7
.L6_6:
.L6_7:
    leaq 208(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, 72(%rbp)
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movl 72(%rbp), %eax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    leaq 160(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_14maximal_suffix
    addq $48, %rsp
    leaq 160(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movq (%r10), %r15
    movq 64(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movl 72(%rbp), %eax
    movq %rax, 16(%rsp)
    movl $1, %eax
    movq %rax, 24(%rsp)
    leaq 144(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_14maximal_suffix
    addq $48, %rsp
    leaq 144(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r15, %r12
    jbe .L6_10
.L6_9:
    movq %r12, %rax
    movq %rax, 40(%rbp)
    movq %r13, %rax
    movq %rax, 32(%rbp)
    jmp .L6_11
.L6_10:
    movq %r15, %rax
    movq %rax, 40(%rbp)
    movq 48(%rbp), %rax
    movq %rax, 32(%rbp)
.L6_11:
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq 32(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 40(%rbp), %rax
    cmpq %r12, %rax
    setbe %al
    movzbl %al, %r12d
    movl %r12d, %eax
    movl %eax, 24(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L6_12:
    movl 24(%rbp), %eax
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L6_15
    jmp .L6_51
.L6_51:
    movl %r15d, %r12d
    jmp .L6_16
.L6_15:
    movq 40(%rbp), %rcx
    cmpq %rcx, %r13
    setb %al
    movzbl %al, %r12d
.L6_16:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L6_13
    jmp .L6_14
.L6_13:
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movl 72(%rbp), %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_11search_byte
    addq $48, %rsp
    movl %eax, %r12d
    movq 32(%rbp), %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movl 72(%rbp), %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_11search_byte
    addq $48, %rsp
    movl %eax, %r14d
    cmpl %r14d, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L6_18
.L6_17:
    movl $0, %eax
    movl %eax, %r12d
    jmp .L6_19
.L6_18:
    movl 24(%rbp), %eax
    movl %eax, %r12d
.L6_19:
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movl %r12d, %eax
    movl %eax, 24(%rbp)
    movq %r14, %r13
    jmp .L6_12
.L6_14:
    testl %r15d, %r15d
    jne .L6_20
    jmp .L6_21
.L6_20:
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq 32(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 32(%rbp), %rax
    movq %rax, 16(%rbp)
    movq %r12, %rax
    movq %rax, 8(%rbp)
    jmp .L6_22
.L6_21:
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq 40(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 40(%rbp), %rax
    cmpq %r12, %rax
    jbe .L6_24
.L6_23:
    movq 40(%rbp), %rax
    movq %rax, %r12
    jmp .L6_25
.L6_24:
.L6_25:
    movq %r12, %rax
    movq %rax, 16(%rbp)
    movq $0, %rax
    movq %rax, 8(%rbp)
.L6_22:
    movq $0, %rax
    movq %rax, %r14
    movq $0, %rax
    movq %rax, 0(%rbp)
.L6_26:
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 88(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    cmpq %r13, %r12
    ja .L6_28
.L6_27:
    movq 40(%rbp), %rax
    movq 0(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L6_30
.L6_29:
    movq 40(%rbp), %rax
    movq %rax, %r12
    jmp .L6_31
.L6_30:
    movq 0(%rbp), %rax
    movq %rax, %r12
.L6_31:
    movq %r12, %r13
.L6_32:
    movq 104(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_35
    jmp .L6_52
.L6_52:
    movl %r12d, %r15d
    jmp .L6_36
.L6_35:
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movl 72(%rbp), %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_11search_byte
    addq $48, %rsp
    movl %eax, %r12d
    movq %r14, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    subq $48, %rsp
    movq 96(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movl 72(%rbp), %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_11search_byte
    addq $48, %rsp
    movl %eax, %r15d
    cmpl %r15d, %r12d
    sete %al
    movzbl %al, %r15d
.L6_36:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L6_33
    jmp .L6_34
.L6_33:
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %r13
    jmp .L6_32
.L6_34:
    movq 104(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jae .L6_38
.L6_37:
    movq %r13, %rax
    movq 40(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %r14
    movq $0, %rax
    movq %rax, 0(%rbp)
    jmp .L6_26
.L6_40:
    jmp .L6_39
.L6_38:
.L6_39:
    movq 40(%rbp), %rax
    movq %rax, %r12
.L6_41:
    movq 0(%rbp), %rcx
    cmpq %rcx, %r12
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L6_44
    jmp .L6_53
.L6_53:
    movl %r13d, %r15d
    jmp .L6_45
.L6_44:
    movq %r12, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movl 72(%rbp), %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_11search_byte
    addq $48, %rsp
    movl %eax, %r13d
    movq %r14, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %r15, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    subq $48, %rsp
    movq 96(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movl 72(%rbp), %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_11search_byte
    addq $48, %rsp
    movl %eax, %r15d
    cmpl %r15d, %r13d
    sete %al
    movzbl %al, %r15d
.L6_45:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L6_42
    jmp .L6_43
.L6_42:
    movq %r12, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %r12
    jmp .L6_41
.L6_43:
    movq 0(%rbp), %rcx
    cmpq %rcx, %r12
    ja .L6_47
.L6_46:
    leaq 128(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 256(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 312(%rbp), %rdi
    movq $16, %rdx
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
.L6_49:
    jmp .L6_48
.L6_47:
.L6_48:
    movq 16(%rbp), %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %r14
    movq 8(%rbp), %rax
    movq %rax, 0(%rbp)
    jmp .L6_26
.L6_28:
    leaq 112(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 256(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 312(%rbp), %rdi
    movq $16, %rdx
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
.L6_50:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_14maximal_suffix
lb_strings_14maximal_suffix:
    .seh_proc lb_strings_14maximal_suffix
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
    leaq 128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 416(%rbp), %rax
    movl %eax, 112(%rbp)
    movq 424(%rbp), %rax
    movl %eax, 96(%rbp)
    leaq 128(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    leaq 112(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 96(%rbp), %rax
    movq %rax, 48(%rbp)
    movq $0, %rax
    movq %rax, 40(%rbp)
    movq $1, %rax
    movq %rax, 32(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq $1, %rax
    movq %rax, 24(%rbp)
.L7_1:
    movq 64(%rbp), %r10
    movq (%r10), %rbx
    movq 32(%rbp), %rax
    cmpq %rbx, %rax
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_4
    jmp .L7_16
.L7_16:
    movl %r13d, %ebx
    jmp .L7_5
.L7_4:
    movq 32(%rbp), %rcx
    movq %rbx, %r13
    subq %rcx, %r13
    cmpq %r13, %r15
    setb %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_5:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L7_2
    jmp .L7_3
.L7_2:
    movq 32(%rbp), %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 56(%rbp), %r10
    movzbl (%r10), %r13d
    subq $48, %rsp
    movq 72(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_11search_byte
    addq $48, %rsp
    movl %eax, %ebx
    movq 40(%rbp), %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    subq $48, %rsp
    movq 72(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_11search_byte
    addq $48, %rsp
    movl %eax, %r12d
    movzbl %bl, %ebx
    movzbl %r12b, %r12d
    cmpl %r12d, %ebx
    jne .L7_7
.L7_6:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 24(%rbp), %rcx
    cmpq %rcx, %rbx
    jne .L7_10
.L7_9:
    movq 32(%rbp), %rax
    movq 24(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %rbx, %r12
    movq $0, %rax
    movq %rax, %rbx
    jmp .L7_11
.L7_10:
    movq 32(%rbp), %rax
    movq %rax, %r12
.L7_11:
    movq 40(%rbp), %rax
    movq %rax, %r13
    movq %r12, %rax
    movq %rax, 16(%rbp)
    movq %rbx, %r15
    movq 24(%rbp), %rax
    movq %rax, 8(%rbp)
    jmp .L7_8
.L7_7:
    cmpl %r12d, %ebx
    setb %al
    movzbl %al, %r13d
    movq 48(%rbp), %r10
    movzbl (%r10), %r14d
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L7_13
.L7_12:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq 32(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq 40(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 40(%rbp), %rax
    movq %rax, %r13
    jmp .L7_14
.L7_13:
    movq 32(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 32(%rbp), %rax
    movq %rax, %r13
    movq $1, %rax
    movq %rax, %r12
.L7_14:
    movq %rbx, %rax
    movq %rax, 16(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq %r12, %rax
    movq %rax, 8(%rbp)
.L7_8:
    movq %r13, %rax
    movq %rax, 40(%rbp)
    movq 16(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 8(%rbp), %rax
    movq %rax, 24(%rbp)
    jmp .L7_1
.L7_3:
    leaq 80(%rbp), %rbx
    movq 40(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 24(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 144(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 200(%rbp), %rdi
    movq $16, %rdx
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
.L7_15:
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_11search_byte
lb_strings_11search_byte:
    .seh_proc lb_strings_11search_byte
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
    movq 272(%rbp), %r10
    leaq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 280(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 288(%rbp), %rax
    movl %eax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_1
    jmp .L8_2
.L8_1:
    leaq 40(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq (%r10), %rbx
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rbx, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    jmp .L8_3
.L8_2:
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r13, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
.L8_3:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
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
.L8_4:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_split
lb_strings_split:
    .seh_proc lb_strings_split
    pushq %rbp
    .seh_pushreg %rbp
    subq $656, %rsp
    .seh_stackalloc 656
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 472(%rbp)
    movq %rdi, 648(%rbp)
    .seh_savereg %rdi, 648
    movq %rsi, 640(%rbp)
    .seh_savereg %rsi, 640
    movdqu %xmm6, 624(%rbp)
    .seh_savexmm %xmm6, 624
    movdqu %xmm7, 608(%rbp)
    .seh_savexmm %xmm7, 608
    movdqu %xmm8, 592(%rbp)
    .seh_savexmm %xmm8, 592
    movdqu %xmm9, 576(%rbp)
    .seh_savexmm %xmm9, 576
    movdqu %xmm10, 560(%rbp)
    .seh_savexmm %xmm10, 560
    movdqu %xmm11, 544(%rbp)
    .seh_savexmm %xmm11, 544
    movdqu %xmm12, 528(%rbp)
    .seh_savexmm %xmm12, 528
    movdqu %xmm13, 512(%rbp)
    .seh_savexmm %xmm13, 512
    movdqu %xmm14, 496(%rbp)
    .seh_savexmm %xmm14, 496
    movdqu %xmm15, 480(%rbp)
    .seh_savexmm %xmm15, 480
    movq %rbx, 464(%rbp)
    .seh_savereg %rbx, 464
    movq %r12, 456(%rbp)
    .seh_savereg %r12, 456
    movq %r13, 448(%rbp)
    .seh_savereg %r13, 448
    movq %r14, 440(%rbp)
    .seh_savereg %r14, 440
    movq %r15, 432(%rbp)
    .seh_savereg %r15, 432
    .seh_endprologue
    movq %rcx, 672(%rbp)
    movq %rdx, 680(%rbp)
    movq %r8, 688(%rbp)
    movq %r9, 696(%rbp)
    movq 680(%rbp), %r10
    leaq 368(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 688(%rbp), %rax
    movl %eax, 352(%rbp)
    leaq 368(%rbp), %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 128(%rbp)
    movq 136(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 120(%rbp)
    leaq 352(%rbp), %r14
    leaq 344(%rbp), %rax
    movq %rax, 112(%rbp)
    leaq 328(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq $1, %rax
    movq %rax, 40(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L9_1:
    movq 120(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L9_4
.L9_2:
    movq 128(%rbp), %rax
    movq %rax, %r15
    addq %rbx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movq %r14, %r10
    movzbl (%r10), %r13d
    cmpl %r13d, %r15d
    jne .L9_6
.L9_5:
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq $1, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 112(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r13d
    movq 112(%rbp), %r10
    movq (%r10), %r15
    movq 0(%rbp), %r10
    movq %r15, (%r10)
    movq 104(%rbp), %r10
    movb %r13b, (%r10)
    movq 104(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L9_8
    jmp .L9_9
.L9_8:
    jmp .L9_10
.L9_9:
    leaq 384(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_36(%rip), %r13
    leaq 312(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L9_11:
.L9_10:
    movq %r15, %r13
    jmp .L9_7
.L9_6:
    movq 40(%rbp), %rax
    movq %rax, %r13
.L9_7:
.L9_3:
    movq $1, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r13, %rax
    movq %rax, 40(%rbp)
    movq %r15, %rbx
    jmp .L9_1
.L9_4:
    leaq 296(%rbp), %rax
    movq %rax, 32(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r14
    leaq 248(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 40(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L9_13
.L9_12:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_37(%rip), %r14
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L9_14
.L9_13:
    movq 40(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq %r14, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L9_15
    jmp .L9_16
.L9_16:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_38(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_15:
    movq %r12, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 224(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 224(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, 96(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl 96(%rbp), %eax
    movl %r14d, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L9_17
    jmp .L9_18
.L9_17:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_40(%rip), %r12
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
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L9_14
.L9_18:
    movq %r15, %r10
    movq (%r10), %rbx
    movq 24(%rbp), %r10
    movq %rbx, (%r10)
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 40(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L9_14:
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_20
    jmp .L9_19
.L9_20:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 384(%rbp), %r12
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
    movq 472(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L9_21:
.L9_19:
    movq 24(%rbp), %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 208(%rbp), %rbx
    movq 136(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 352(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 120(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    leaq 192(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    leaq 176(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq $0, %rax
    movq %rax, 16(%rbp)
    movq $0, %rax
    movq %rax, 8(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L9_22:
    movq 120(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L9_24
.L9_23:
    movq 128(%rbp), %rax
    movq %rax, %r14
    addq %r13, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq 88(%rbp), %r10
    movzbl (%r10), %r15d
    cmpl %r15d, %r14d
    jne .L9_26
.L9_25:
    movq 32(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r15
    movq 16(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r15, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq 8(%rbp), %rax
    movq 80(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 80(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    cmpq %r13, %rax
    jbe .L9_28
.L9_29:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_28:
    movq 128(%rbp), %rax
    movq 8(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 8(%rbp), %rcx
    movq %r13, %rbx
    subq %rcx, %rbx
    movq 72(%rbp), %r10
    movq %r14, (%r10)
    movq 64(%rbp), %r10
    movq %rbx, (%r10)
    movq 56(%rbp), %r10
    movq %r14, (%r10)
    movq 48(%rbp), %r10
    movq %rbx, (%r10)
    movq 56(%rbp), %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    jmp .L9_27
.L9_26:
    movq 16(%rbp), %rax
    movq %rax, %rbx
    movq 8(%rbp), %rax
    movq %rax, %r14
.L9_27:
    movq $1, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %rbx, %rax
    movq %rax, 16(%rbp)
    movq %r14, %rax
    movq %rax, 8(%rbp)
    movq %r15, %r13
    jmp .L9_22
.L9_24:
    movq 32(%rbp), %r10
    movq (%r10), %rbx
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq 16(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 120(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 120(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    movq 120(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L9_30
.L9_31:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_30:
    movq 128(%rbp), %rax
    movq 8(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 120(%rbp), %rax
    movq 8(%rbp), %rcx
    movq %rax, %r13
    subq %rcx, %r13
    leaq 160(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    leaq 144(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 384(%rbp), %rbx
    movq 32(%rbp), %r10
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
    movq 472(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L9_32:
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_SplitIterator_next
lb_strings_SplitIterator_next:
    .seh_proc lb_strings_SplitIterator_next
    pushq %rbp
    .seh_pushreg %rbp
    subq $528, %rsp
    .seh_stackalloc 528
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 344(%rbp)
    movq %rdi, 520(%rbp)
    .seh_savereg %rdi, 520
    movq %rsi, 512(%rbp)
    .seh_savereg %rsi, 512
    movdqu %xmm6, 496(%rbp)
    .seh_savexmm %xmm6, 496
    movdqu %xmm7, 480(%rbp)
    .seh_savexmm %xmm7, 480
    movdqu %xmm8, 464(%rbp)
    .seh_savexmm %xmm8, 464
    movdqu %xmm9, 448(%rbp)
    .seh_savexmm %xmm9, 448
    movdqu %xmm10, 432(%rbp)
    .seh_savexmm %xmm10, 432
    movdqu %xmm11, 416(%rbp)
    .seh_savexmm %xmm11, 416
    movdqu %xmm12, 400(%rbp)
    .seh_savexmm %xmm12, 400
    movdqu %xmm13, 384(%rbp)
    .seh_savexmm %xmm13, 384
    movdqu %xmm14, 368(%rbp)
    .seh_savexmm %xmm14, 368
    movdqu %xmm15, 352(%rbp)
    .seh_savexmm %xmm15, 352
    movq %rbx, 336(%rbp)
    .seh_savereg %rbx, 336
    movq %r12, 328(%rbp)
    .seh_savereg %r12, 328
    movq %r13, 320(%rbp)
    .seh_savereg %r13, 320
    movq %r14, 312(%rbp)
    .seh_savereg %r14, 312
    movq %r15, 304(%rbp)
    .seh_savereg %r15, 304
    .seh_endprologue
    movq %rcx, 544(%rbp)
    movq %rdx, 552(%rbp)
    movq %r8, 560(%rbp)
    movq %r9, 568(%rbp)
    movq 552(%rbp), %rax
    movq %rax, 272(%rbp)
    leaq 272(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L10_2
.L10_1:
    leaq 248(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 280(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq 344(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 344(%rbp), %rax
    movq 520(%rbp), %rdi
    movq 512(%rbp), %rsi
    movdqu 496(%rbp), %xmm6
    movdqu 480(%rbp), %xmm7
    movdqu 464(%rbp), %xmm8
    movdqu 448(%rbp), %xmm9
    movdqu 432(%rbp), %xmm10
    movdqu 416(%rbp), %xmm11
    movdqu 400(%rbp), %xmm12
    movdqu 384(%rbp), %xmm13
    movdqu 368(%rbp), %xmm14
    movdqu 352(%rbp), %xmm15
    movq 336(%rbp), %rbx
    movq 328(%rbp), %r12
    movq 320(%rbp), %r13
    movq 312(%rbp), %r14
    movq 304(%rbp), %r15
    leaq 528(%rbp), %rsp
    popq %rbp
    ret
.L10_4:
    jmp .L10_3
.L10_2:
.L10_3:
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    cmpq %rcx, %r14
    jne .L10_6
.L10_5:
    movl $0, %eax
    movq 40(%rbp), %r10
    movb %al, (%r10)
    movq 8(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r15
    movq 8(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r14
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r15, %r14
    jbe .L10_8
.L10_9:
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L10_8:
    movq 0(%rbp), %rax
    movq %rax, %rbx
    addq %r14, %rbx
    movq %r15, %r12
    subq %r14, %r12
    leaq 232(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq 216(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq 192(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 280(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq 344(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 344(%rbp), %rax
    movq 520(%rbp), %rdi
    movq 512(%rbp), %rsi
    movdqu 496(%rbp), %xmm6
    movdqu 480(%rbp), %xmm7
    movdqu 464(%rbp), %xmm8
    movdqu 448(%rbp), %xmm9
    movdqu 432(%rbp), %xmm10
    movdqu 416(%rbp), %xmm11
    movdqu 400(%rbp), %xmm12
    movdqu 384(%rbp), %xmm13
    movdqu 368(%rbp), %xmm14
    movdqu 352(%rbp), %xmm15
    movq 336(%rbp), %rbx
    movq 328(%rbp), %r12
    movq 320(%rbp), %r13
    movq 312(%rbp), %r14
    movq 304(%rbp), %r15
    leaq 528(%rbp), %rsp
    popq %rbp
    ret
.L10_10:
    jmp .L10_7
.L10_6:
.L10_7:
    leaq 176(%rbp), %r14
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq 8(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    subq $64, %rsp
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r15, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    leaq 160(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_9find_from
    addq $64, %rsp
    leaq 160(%rbp), %r12
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L10_14
    jmp .L10_12
.L10_14:
    movq %r14, %r10
    movq (%r10), %r12
.L10_11:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r14, (%r10)
    movq 32(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    cmpq %rcx, %r14
    jbe .L10_16
.L10_15:
    movq $1, %rcx
    movq %r14, %rbx
    subq %rcx, %rbx
    movq 32(%rbp), %r10
    movq %rbx, (%r10)
    jmp .L10_17
.L10_16:
.L10_17:
    movq 8(%rbp), %r10
    movq (%r10), %r13
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq 24(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rax
    cmpq %r12, %rax
    jbe .L10_18
.L10_19:
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L10_18:
    movq 24(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq 24(%rbp), %rcx
    movq %r12, %r14
    subq %rcx, %r14
    leaq 144(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    leaq 128(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    leaq 104(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    leaq 280(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r14, %rsi
    movq 344(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 344(%rbp), %rax
    movq 520(%rbp), %rdi
    movq 512(%rbp), %rsi
    movdqu 496(%rbp), %xmm6
    movdqu 480(%rbp), %xmm7
    movdqu 464(%rbp), %xmm8
    movdqu 448(%rbp), %xmm9
    movdqu 432(%rbp), %xmm10
    movdqu 416(%rbp), %xmm11
    movdqu 400(%rbp), %xmm12
    movdqu 384(%rbp), %xmm13
    movdqu 368(%rbp), %xmm14
    movdqu 352(%rbp), %xmm15
    movq 336(%rbp), %rbx
    movq 328(%rbp), %r12
    movq 320(%rbp), %r13
    movq 312(%rbp), %r14
    movq 304(%rbp), %r15
    leaq 528(%rbp), %rsp
    popq %rbp
    ret
.L10_20:
    jmp .L10_13
.L10_12:
.L10_13:
    movl $0, %eax
    movq 40(%rbp), %r10
    movb %al, (%r10)
    movq 8(%rbp), %r10
    movq (%r10), %r13
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %r15
    jbe .L10_21
.L10_22:
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L10_21:
    movq %r13, %rbx
    addq %r15, %rbx
    movq %r14, %rax
    subq %r15, %rax
    movq %rax, 16(%rbp)
    leaq 88(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq 16(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 72(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq 16(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 48(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 280(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq 344(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 344(%rbp), %rax
    movq 520(%rbp), %rdi
    movq 512(%rbp), %rsi
    movdqu 496(%rbp), %xmm6
    movdqu 480(%rbp), %xmm7
    movdqu 464(%rbp), %xmm8
    movdqu 448(%rbp), %xmm9
    movdqu 432(%rbp), %xmm10
    movdqu 416(%rbp), %xmm11
    movdqu 400(%rbp), %xmm12
    movdqu 384(%rbp), %xmm13
    movdqu 368(%rbp), %xmm14
    movdqu 352(%rbp), %xmm15
    movq 336(%rbp), %rbx
    movq 328(%rbp), %r12
    movq 320(%rbp), %r13
    movq 312(%rbp), %r14
    movq 304(%rbp), %r15
    leaq 528(%rbp), %rsp
    popq %rbp
    ret
.L10_23:
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_8split_by
lb_strings_8split_by:
    .seh_proc lb_strings_8split_by
    pushq %rbp
    .seh_pushreg %rbp
    subq $1072, %rsp
    .seh_stackalloc 1072
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 888(%rbp)
    movq %rdi, 1064(%rbp)
    .seh_savereg %rdi, 1064
    movq %rsi, 1056(%rbp)
    .seh_savereg %rsi, 1056
    movdqu %xmm6, 1040(%rbp)
    .seh_savexmm %xmm6, 1040
    movdqu %xmm7, 1024(%rbp)
    .seh_savexmm %xmm7, 1024
    movdqu %xmm8, 1008(%rbp)
    .seh_savexmm %xmm8, 1008
    movdqu %xmm9, 992(%rbp)
    .seh_savexmm %xmm9, 992
    movdqu %xmm10, 976(%rbp)
    .seh_savexmm %xmm10, 976
    movdqu %xmm11, 960(%rbp)
    .seh_savexmm %xmm11, 960
    movdqu %xmm12, 944(%rbp)
    .seh_savexmm %xmm12, 944
    movdqu %xmm13, 928(%rbp)
    .seh_savexmm %xmm13, 928
    movdqu %xmm14, 912(%rbp)
    .seh_savexmm %xmm14, 912
    movdqu %xmm15, 896(%rbp)
    .seh_savexmm %xmm15, 896
    movq %rbx, 880(%rbp)
    .seh_savereg %rbx, 880
    movq %r12, 872(%rbp)
    .seh_savereg %r12, 872
    movq %r13, 864(%rbp)
    .seh_savereg %r13, 864
    movq %r14, 856(%rbp)
    .seh_savereg %r14, 856
    movq %r15, 848(%rbp)
    .seh_savereg %r15, 848
    .seh_endprologue
    movq %rcx, 1088(%rbp)
    movq %rdx, 1096(%rbp)
    movq %r8, 1104(%rbp)
    movq %r9, 1112(%rbp)
    movq 1096(%rbp), %r10
    leaq 784(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1104(%rbp), %r10
    leaq 768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1112(%rbp), %rax
    movq %rax, 752(%rbp)
    leaq 696(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 784(%rbp), %rbx
    leaq 768(%rbp), %r12
    leaq 752(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    leaq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq 184(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 168(%rbp), %r10
    movq %r13, (%r10)
    leaq 184(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L11_27
.L11_26:
    leaq 216(%rbp), %rbx
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_17invalid_separator(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_48(%rip), %r13
    leaq 152(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $46, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $80, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 608(%rbp), %r11
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
    movq 80(%r10), %rax
    movq %rax, 80(%r11)
    jmp .L11_31
.L11_29:
    jmp .L11_28
.L11_27:
.L11_28:
    leaq 96(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    leaq 200(%rbp), %r15
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $48, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    leaq 216(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $80, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r15, %r10
    leaq 608(%rbp), %r11
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
    movq 80(%r10), %rax
    movq %rax, 80(%r11)
    jmp .L11_31
.L11_30:
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_31:
    leaq 608(%rbp), %r12
    movq $80, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_2
    jmp .L11_1
.L11_2:
    movq $56, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 800(%rbp), %r13
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
    movq 888(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 888(%rbp), %rax
    movq 1064(%rbp), %rdi
    movq 1056(%rbp), %rsi
    movdqu 1040(%rbp), %xmm6
    movdqu 1024(%rbp), %xmm7
    movdqu 1008(%rbp), %xmm8
    movdqu 992(%rbp), %xmm9
    movdqu 976(%rbp), %xmm10
    movdqu 960(%rbp), %xmm11
    movdqu 944(%rbp), %xmm12
    movdqu 928(%rbp), %xmm13
    movdqu 912(%rbp), %xmm14
    movdqu 896(%rbp), %xmm15
    movq 880(%rbp), %rbx
    movq 872(%rbp), %r12
    movq 864(%rbp), %r13
    movq 856(%rbp), %r14
    movq 848(%rbp), %r15
    leaq 1072(%rbp), %rsp
    popq %rbp
    ret
.L11_3:
.L11_1:
    movq %r12, %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 552(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 40(%rbp), %r10
    movq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 528(%rbp), %r13
    movq $16, %rcx
    addq %rcx, %r13
    leaq 520(%rbp), %rax
    movq %rax, 80(%rbp)
    leaq 504(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq $0, %rax
    movq %rax, 32(%rbp)
.L11_4:
    subq $32, %rsp
    movq 88(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 528(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_SplitIterator_next
    addq $32, %rsp
    movq %r13, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L11_6
.L11_5:
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq $1, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 80(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r12d
    movq 80(%rbp), %r10
    movq (%r10), %rbx
    movq %r15, %r10
    movq %rbx, (%r10)
    movq 72(%rbp), %r10
    movb %r12b, (%r10)
    movq 72(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L11_7
    jmp .L11_8
.L11_7:
    jmp .L11_9
.L11_8:
    leaq 800(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_36(%rip), %r13
    leaq 488(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 888(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 888(%rbp), %rax
    movq 1064(%rbp), %rdi
    movq 1056(%rbp), %rsi
    movdqu 1040(%rbp), %xmm6
    movdqu 1024(%rbp), %xmm7
    movdqu 1008(%rbp), %xmm8
    movdqu 992(%rbp), %xmm9
    movdqu 976(%rbp), %xmm10
    movdqu 960(%rbp), %xmm11
    movdqu 944(%rbp), %xmm12
    movdqu 928(%rbp), %xmm13
    movdqu 912(%rbp), %xmm14
    movdqu 896(%rbp), %xmm15
    movq 880(%rbp), %rbx
    movq 872(%rbp), %r12
    movq 864(%rbp), %r13
    movq 856(%rbp), %r14
    movq 848(%rbp), %r15
    leaq 1072(%rbp), %rsp
    popq %rbp
    ret
.L11_10:
.L11_9:
    movq %rbx, %rax
    movq %rax, 32(%rbp)
    jmp .L11_4
.L11_6:
    leaq 472(%rbp), %rax
    movq %rax, 24(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 424(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 32(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L11_12
.L11_11:
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_37(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 16(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L11_13
.L11_12:
    movq 32(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L11_14
    jmp .L11_15
.L11_15:
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_38(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_14:
    movq %r14, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 400(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 400(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, 64(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl 64(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L11_16
    jmp .L11_17
.L11_16:
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_40(%rip), %r12
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
    movq 16(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L11_13
.L11_17:
    movq %r15, %r10
    movq (%r10), %rbx
    movq 16(%rbp), %r10
    movq %rbx, (%r10)
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 32(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 16(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L11_13:
    movq 16(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_19
    jmp .L11_18
.L11_19:
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 800(%rbp), %r12
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
    movq 888(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 888(%rbp), %rax
    movq 1064(%rbp), %rdi
    movq 1056(%rbp), %rsi
    movdqu 1040(%rbp), %xmm6
    movdqu 1024(%rbp), %xmm7
    movdqu 1008(%rbp), %xmm8
    movdqu 992(%rbp), %xmm9
    movdqu 976(%rbp), %xmm10
    movdqu 960(%rbp), %xmm11
    movdqu 944(%rbp), %xmm12
    movdqu 928(%rbp), %xmm13
    movdqu 912(%rbp), %xmm14
    movdqu 896(%rbp), %xmm15
    movq 880(%rbp), %rbx
    movq 872(%rbp), %r12
    movq 864(%rbp), %r13
    movq 856(%rbp), %r14
    movq 848(%rbp), %r15
    leaq 1072(%rbp), %rsp
    popq %rbp
    ret
.L11_20:
.L11_18:
    movq 16(%rbp), %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 344(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 40(%rbp), %r10
    movq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 320(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 304(%rbp), %r13
    movq 24(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq $0, %rax
    movq %rax, 8(%rbp)
.L11_21:
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 320(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_SplitIterator_next
    addq $32, %rsp
    movq %r12, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L11_24
    jmp .L11_23
.L11_24:
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L11_22:
    movq 24(%rbp), %r10
    movq (%r10), %r14
    movq 48(%rbp), %r10
    movq (%r10), %rbx
    movq 8(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 8(%rbp)
    jmp .L11_21
.L11_23:
    leaq 800(%rbp), %rbx
    movq 24(%rbp), %r10
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
    movq 888(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 888(%rbp), %rax
    movq 1064(%rbp), %rdi
    movq 1056(%rbp), %rsi
    movdqu 1040(%rbp), %xmm6
    movdqu 1024(%rbp), %xmm7
    movdqu 1008(%rbp), %xmm8
    movdqu 992(%rbp), %xmm9
    movdqu 976(%rbp), %xmm10
    movdqu 960(%rbp), %xmm11
    movdqu 944(%rbp), %xmm12
    movdqu 928(%rbp), %xmm13
    movdqu 912(%rbp), %xmm14
    movdqu 896(%rbp), %xmm15
    movq 880(%rbp), %rbx
    movq 872(%rbp), %r12
    movq 864(%rbp), %r13
    movq 856(%rbp), %r14
    movq 848(%rbp), %r15
    leaq 1072(%rbp), %rsp
    popq %rbp
    ret
.L11_25:
    leaq .Ltext_58(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_10split_once
lb_strings_10split_once:
    .seh_proc lb_strings_10split_once
    pushq %rbp
    .seh_pushreg %rbp
    subq $592, %rsp
    .seh_stackalloc 592
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 408(%rbp)
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
    movq %rbx, 400(%rbp)
    .seh_savereg %rbx, 400
    movq %r12, 392(%rbp)
    .seh_savereg %r12, 392
    movq %r13, 384(%rbp)
    .seh_savereg %r13, 384
    movq %r14, 376(%rbp)
    .seh_savereg %r14, 376
    movq %r15, 368(%rbp)
    .seh_savereg %r15, 368
    .seh_endprologue
    movq %rcx, 608(%rbp)
    movq %rdx, 616(%rbp)
    movq %r8, 624(%rbp)
    movq %r9, 632(%rbp)
    movq 616(%rbp), %r10
    leaq 312(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 624(%rbp), %r10
    leaq 296(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 312(%rbp), %rbx
    leaq 296(%rbp), %rax
    movq %rax, 32(%rbp)
    movq %rbx, %r10
    leaq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %r10
    leaq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 72(%rbp), %r13
    leaq 56(%rbp), %r14
    subq $64, %rsp
    movq %r13, %r10
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
    movl $0, %eax
    movq %rax, 24(%rsp)
    leaq 40(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_12search_bytes
    addq $64, %rsp
    leaq 40(%rbp), %r13
    leaq 88(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    leaq 280(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L12_11
.L12_10:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L12_11:
    leaq 280(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L12_1
    jmp .L12_2
.L12_1:
    movq %r14, %r10
    movq (%r10), %r13
    jmp .L12_3
.L12_2:
    leaq 240(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq 328(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %r12, %rsi
    movq 408(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 408(%rbp), %rax
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
    movq 400(%rbp), %rbx
    movq 392(%rbp), %r12
    movq 384(%rbp), %r13
    movq 376(%rbp), %r14
    movq 368(%rbp), %r15
    leaq 592(%rbp), %rsp
    popq %rbp
    ret
.L12_4:
.L12_3:
    leaq 208(%rbp), %rax
    movq %rax, 8(%rbp)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L12_5
.L12_6:
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L12_5:
    leaq 192(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    leaq 176(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rax
    movq %rbx, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 16(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 16(%rbp), %rcx
    cmpq %rcx, %r14
    jbe .L12_7
.L12_8:
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L12_7:
    movq %r12, %rbx
    addq %r14, %rbx
    movq 16(%rbp), %rax
    movq %rax, %r13
    subq %r14, %r13
    leaq 160(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    leaq 144(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 104(%rbp), %rbx
    movq 8(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 328(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %r13, %rsi
    movq 408(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 408(%rbp), %rax
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
    movq 400(%rbp), %rbx
    movq 392(%rbp), %r12
    movq 384(%rbp), %r13
    movq 376(%rbp), %r14
    movq 368(%rbp), %r15
    leaq 592(%rbp), %rsp
    popq %rbp
    ret
.L12_9:
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_10split_last
lb_strings_10split_last:
    .seh_proc lb_strings_10split_last
    pushq %rbp
    .seh_pushreg %rbp
    subq $656, %rsp
    .seh_stackalloc 656
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 472(%rbp)
    movq %rdi, 648(%rbp)
    .seh_savereg %rdi, 648
    movq %rsi, 640(%rbp)
    .seh_savereg %rsi, 640
    movdqu %xmm6, 624(%rbp)
    .seh_savexmm %xmm6, 624
    movdqu %xmm7, 608(%rbp)
    .seh_savexmm %xmm7, 608
    movdqu %xmm8, 592(%rbp)
    .seh_savexmm %xmm8, 592
    movdqu %xmm9, 576(%rbp)
    .seh_savexmm %xmm9, 576
    movdqu %xmm10, 560(%rbp)
    .seh_savexmm %xmm10, 560
    movdqu %xmm11, 544(%rbp)
    .seh_savexmm %xmm11, 544
    movdqu %xmm12, 528(%rbp)
    .seh_savexmm %xmm12, 528
    movdqu %xmm13, 512(%rbp)
    .seh_savexmm %xmm13, 512
    movdqu %xmm14, 496(%rbp)
    .seh_savexmm %xmm14, 496
    movdqu %xmm15, 480(%rbp)
    .seh_savexmm %xmm15, 480
    movq %rbx, 464(%rbp)
    .seh_savereg %rbx, 464
    movq %r12, 456(%rbp)
    .seh_savereg %r12, 456
    movq %r13, 448(%rbp)
    .seh_savereg %r13, 448
    movq %r14, 440(%rbp)
    .seh_savereg %r14, 440
    movq %r15, 432(%rbp)
    .seh_savereg %r15, 432
    .seh_endprologue
    movq %rcx, 672(%rbp)
    movq %rdx, 680(%rbp)
    movq %r8, 688(%rbp)
    movq %r9, 696(%rbp)
    movq 680(%rbp), %r10
    leaq 376(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 688(%rbp), %r10
    leaq 360(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 376(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 360(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 64(%rbp), %r10
    leaq 136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 56(%rbp), %r10
    leaq 120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 136(%rbp), %r13
    leaq 120(%rbp), %r14
    subq $64, %rsp
    movq %r13, %r10
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
    movl $1, %eax
    movq %rax, 24(%rsp)
    leaq 104(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_12search_bytes
    addq $64, %rsp
    leaq 104(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L13_10
    jmp .L13_11
.L13_10:
    movq %r12, %r10
    movq (%r10), %r15
    jmp .L13_12
.L13_11:
    leaq 88(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 152(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    leaq 344(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, 8(%rbp)
    jmp .L13_15
.L13_13:
.L13_12:
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq 32(%rbp), %rax
    movq %rbx, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 24(%rbp)
    leaq 72(%rbp), %rbx
    movq 24(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 152(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq 344(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 24(%rbp), %rax
    movq %rax, 8(%rbp)
    jmp .L13_15
.L13_14:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L13_15:
    leaq 344(%rbp), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_1
    jmp .L13_2
.L13_1:
    jmp .L13_3
.L13_2:
    leaq 304(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq 392(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %r12, %rsi
    movq 472(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L13_4:
.L13_3:
    leaq 272(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 64(%rbp), %r10
    movq (%r10), %r15
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 8(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L13_5
.L13_6:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L13_5:
    leaq 256(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq 8(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 240(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq 8(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
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
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 48(%rbp), %rcx
    cmpq %rcx, %r13
    jbe .L13_7
.L13_8:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L13_7:
    movq %r15, %rbx
    addq %r13, %rbx
    movq 48(%rbp), %rax
    movq %rax, %r12
    subq %r13, %r12
    leaq 224(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq 208(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 168(%rbp), %rbx
    movq 16(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 392(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %r12, %rsi
    movq 472(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L13_9:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_8is_space
lb_strings_8is_space:
    .seh_proc lb_strings_8is_space
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
    movzbl (%r10), %ebx
    movl $32, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L14_8
    jmp .L14_1
.L14_8:
    movl %r12d, %r13d
    jmp .L14_2
.L14_1:
    movl $10, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L14_2:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L14_9
    jmp .L14_3
.L14_9:
    movl %r12d, %r13d
    jmp .L14_4
.L14_3:
    movl $9, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L14_4:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L14_10
    jmp .L14_5
.L14_10:
    movl %r12d, %ebx
    jmp .L14_6
.L14_5:
    movl $13, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L14_6:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
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
.L14_7:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_trim
lb_strings_trim:
    .seh_proc lb_strings_trim
    pushq %rbp
    .seh_pushreg %rbp
    subq $320, %rsp
    .seh_stackalloc 320
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 136(%rbp)
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
    movq %rbx, 128(%rbp)
    .seh_savereg %rbx, 128
    movq %r12, 120(%rbp)
    .seh_savereg %r12, 120
    movq %r13, 112(%rbp)
    .seh_savereg %r13, 112
    movq %r14, 104(%rbp)
    .seh_savereg %r14, 104
    movq %r15, 96(%rbp)
    .seh_savereg %r15, 96
    .seh_endprologue
    movq %rcx, 336(%rbp)
    movq %rdx, 344(%rbp)
    movq %r8, 352(%rbp)
    movq %r9, 360(%rbp)
    movq 344(%rbp), %r10
    leaq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 48(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, 8(%rbp)
.L15_1:
    movq 8(%rbp), %rax
    cmpq %r12, %rax
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L15_4
    jmp .L15_14
.L15_14:
    movl %r14d, %r15d
    jmp .L15_5
.L15_4:
    movq %r13, %r10
    movq (%r10), %r14
    movq 8(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    subq $32, %rsp
    movl %r14d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_8is_space
    addq $32, %rsp
    movl %eax, %r15d
.L15_5:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L15_2
    jmp .L15_3
.L15_2:
    movq 8(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r14, %rax
    movq %rax, 8(%rbp)
    jmp .L15_1
.L15_3:
    movq %r12, %r14
.L15_6:
    movq 8(%rbp), %rcx
    cmpq %rcx, %r14
    seta %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L15_9
    jmp .L15_15
.L15_15:
    movl %r15d, %ebx
    jmp .L15_10
.L15_9:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq (%r10), %r15
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_8is_space
    addq $32, %rsp
    movl %eax, %ebx
.L15_10:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L15_7
    jmp .L15_8
.L15_7:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_65(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %rbx, %r14
    jmp .L15_6
.L15_8:
    movq %r13, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    cmpq %r14, %rax
    jbe .L15_11
.L15_12:
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L15_11:
    movq 8(%rbp), %rax
    movq %rax, %rbx
    addq %r15, %rbx
    movq 8(%rbp), %rcx
    movq %r14, %r12
    subq %rcx, %r12
    leaq 32(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq 80(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq 136(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
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
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    movq 96(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L15_13:
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_join
lb_strings_join:
    .seh_proc lb_strings_join
    pushq %rbp
    .seh_pushreg %rbp
    subq $688, %rsp
    .seh_stackalloc 688
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 504(%rbp)
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
    movq %rbx, 496(%rbp)
    .seh_savereg %rbx, 496
    movq %r12, 488(%rbp)
    .seh_savereg %r12, 488
    movq %r13, 480(%rbp)
    .seh_savereg %r13, 480
    movq %r14, 472(%rbp)
    .seh_savereg %r14, 472
    movq %r15, 464(%rbp)
    .seh_savereg %r15, 464
    .seh_endprologue
    movq %rcx, 704(%rbp)
    movq %rdx, 712(%rbp)
    movq %r8, 720(%rbp)
    movq %r9, 728(%rbp)
    movq 712(%rbp), %r10
    leaq 400(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 720(%rbp), %r10
    leaq 384(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 400(%rbp), %rax
    movq %rax, 168(%rbp)
    movq 168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    leaq 376(%rbp), %rax
    movq %rax, 144(%rbp)
    leaq 360(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    leaq 384(%rbp), %rax
    movq %rax, 128(%rbp)
    movq 128(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    leaq 336(%rbp), %rax
    movq %rax, 112(%rbp)
    leaq 320(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq $0, %rax
    movq %rax, %r14
.L16_1:
    movq 160(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 152(%rbp)
    movq 152(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L16_3
.L16_2:
    movq 168(%rbp), %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r14, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 144(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r12d
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 8(%rbp), %r10
    movq %r13, (%r10)
    movq 136(%rbp), %r10
    movb %r12b, (%r10)
    movq 136(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_4
    jmp .L16_5
.L16_4:
    jmp .L16_6
.L16_5:
    leaq 416(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_68(%rip), %r13
    leaq 344(%rbp), %r14
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
    movq %rbx, %rsi
    movq 504(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 504(%rbp), %rax
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
    movq 496(%rbp), %rbx
    movq 488(%rbp), %r12
    movq 480(%rbp), %r13
    movq 472(%rbp), %r14
    movq 464(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
.L16_7:
.L16_6:
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq 152(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L16_9
.L16_8:
    movq 120(%rbp), %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 112(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r14d
    movq 112(%rbp), %r10
    movq (%r10), %r15
    movq 0(%rbp), %r10
    movq %r15, (%r10)
    movq 104(%rbp), %r10
    movb %r14b, (%r10)
    movq 104(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L16_11
    jmp .L16_12
.L16_11:
    jmp .L16_13
.L16_12:
    leaq 416(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_68(%rip), %r13
    leaq 304(%rbp), %r14
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
    movq %rbx, %rsi
    movq 504(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 504(%rbp), %rax
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
    movq 496(%rbp), %rbx
    movq 488(%rbp), %r12
    movq 480(%rbp), %r13
    movq 472(%rbp), %r14
    movq 464(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
.L16_14:
.L16_13:
    movq %r15, %r13
    jmp .L16_10
.L16_9:
.L16_10:
    movq %r13, %r15
    movq %r12, %r14
    jmp .L16_1
.L16_3:
    leaq 288(%rbp), %rax
    movq %rax, 32(%rbp)
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    leaq 240(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_17terminated_buffer
    addq $32, %rsp
    leaq 240(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_16
    jmp .L16_15
.L16_16:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 416(%rbp), %r12
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
    movq 504(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 504(%rbp), %rax
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
    movq 496(%rbp), %rbx
    movq 488(%rbp), %r12
    movq 480(%rbp), %r13
    movq 472(%rbp), %r14
    movq 464(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
.L16_17:
.L16_15:
    movq %r14, %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 96(%rbp)
    leaq 224(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    leaq 208(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    leaq 384(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq $0, %rax
    movq %rax, 24(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L16_18:
    movq 24(%rbp), %rax
    movq 152(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L16_20
.L16_19:
    movq 32(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq 96(%rbp), %r10
    movq (%r10), %rbx
    movq $1, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 88(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r15
    jbe .L16_21
.L16_22:
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L16_21:
    movq 16(%rbp), %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %rbx, %r12
    subq %r15, %r12
    movq 80(%rbp), %r10
    movq %r14, (%r10)
    movq 72(%rbp), %r10
    movq %r12, (%r10)
    movq 168(%rbp), %r10
    movq (%r10), %r12
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    addq %r14, %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r13
    subq $64, %rsp
    movq 80(%rbp), %r10
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
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq %r14, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_72(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 24(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq 152(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L16_24
.L16_23:
    movq 88(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r12
    jbe .L16_26
.L16_27:
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L16_26:
    movq 16(%rbp), %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r15
    subq %r12, %r15
    movq 64(%rbp), %r10
    movq %r14, (%r10)
    movq 56(%rbp), %r10
    movq %r15, (%r10)
    movq 40(%rbp), %r10
    movq (%r10), %r14
    subq $64, %rsp
    movq 64(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 48(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq 40(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    jmp .L16_25
.L16_24:
    movq %r12, %r14
.L16_25:
    movq %r13, %rax
    movq %rax, 24(%rbp)
    movq %r14, %r15
    jmp .L16_18
.L16_20:
    movq 32(%rbp), %r10
    movq (%r10), %rbx
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_77(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rbx, %r13
    addq %r15, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L16_28
.L16_29:
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L16_28:
    leaq 192(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    leaq 176(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    leaq 416(%rbp), %r13
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
    movq %r13, %rsi
    movq 504(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 504(%rbp), %rax
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
    movq 496(%rbp), %rbx
    movq 488(%rbp), %r12
    movq 480(%rbp), %r13
    movq 472(%rbp), %r14
    movq 464(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
.L16_30:
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_copy
lb_strings_copy:
    .seh_proc lb_strings_copy
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
    leaq 144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 128(%rbp), %r14
    leaq 144(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 80(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_17terminated_buffer
    addq $32, %rsp
    leaq 80(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L17_2
    jmp .L17_1
.L17_2:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 160(%rbp), %r12
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
    movq 248(%rbp), %rdi
    movq $48, %rdx
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
.L17_3:
.L17_1:
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    subq $64, %rsp
    movq %r14, %r10
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
    movq 40(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq 32(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_79(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 32(%rbp), %rax
    movq 24(%rbp), %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_80(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 0(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_80(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 0(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L17_4
.L17_5:
    leaq .Ltext_80(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L17_4:
    leaq 64(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq 0(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 48(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 0(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 160(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 248(%rbp), %rdi
    movq $48, %rdx
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
.L17_6:
    leaq .Ltext_80(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_8to_upper
lb_strings_8to_upper:
    .seh_proc lb_strings_8to_upper
    pushq %rbp
    .seh_pushreg %rbp
    subq $448, %rsp
    .seh_stackalloc 448
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 264(%rbp)
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
    movq %rbx, 256(%rbp)
    .seh_savereg %rbx, 256
    movq %r12, 248(%rbp)
    .seh_savereg %r12, 248
    movq %r13, 240(%rbp)
    .seh_savereg %r13, 240
    movq %r14, 232(%rbp)
    .seh_savereg %r14, 232
    movq %r15, 224(%rbp)
    .seh_savereg %r15, 224
    .seh_endprologue
    movq %rcx, 464(%rbp)
    movq %rdx, 472(%rbp)
    movq %r8, 480(%rbp)
    movq %r9, 488(%rbp)
    movq 472(%rbp), %r10
    leaq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 144(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 160(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_17terminated_buffer
    addq $32, %rsp
    leaq 96(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L18_2
    jmp .L18_1
.L18_2:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 176(%rbp), %r12
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
    movq 264(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 264(%rbp), %rax
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
    movq 256(%rbp), %rbx
    movq 248(%rbp), %r12
    movq 240(%rbp), %r13
    movq 232(%rbp), %r14
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L18_3:
.L18_1:
    movq %r15, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq $0, %rax
    movq %rax, 8(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L18_4:
    movq 56(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L18_7
.L18_5:
    movq 48(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq 8(%rbp), %rax
    movq 24(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq 8(%rbp), %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movzbl %bl, %ebx
    movl $97, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L18_11
    jmp .L18_18
.L18_18:
    movl %r15d, %r14d
    jmp .L18_12
.L18_11:
    movl $122, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r14d
.L18_12:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L18_8
    jmp .L18_9
.L18_8:
    movl $32, %ecx
    movl %ebx, %r15d
    subl %ecx, %r15d
    movzbl %r15b, %r14d
    cmpl %r15d, %r14d
    je .L18_13
.L18_14:
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L18_13:
    movl %r15d, %ebx
    jmp .L18_10
.L18_9:
.L18_10:
    movzbl %bl, %r14d
    movq %r12, %r10
    movb %r14b, (%r10)
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
.L18_6:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %r14, %rax
    movq %rax, 8(%rbp)
    movq %rbx, %r13
    jmp .L18_4
.L18_7:
    movq 16(%rbp), %r10
    movq (%r10), %rbx
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq 8(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_84(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_85(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_85(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 8(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L18_15
.L18_16:
    leaq .Ltext_85(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L18_15:
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq 8(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 64(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq 8(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 176(%rbp), %r13
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
    movq %r13, %rsi
    movq 264(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 264(%rbp), %rax
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
    movq 256(%rbp), %rbx
    movq 248(%rbp), %r12
    movq 240(%rbp), %r13
    movq 232(%rbp), %r14
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L18_17:
    leaq .Ltext_85(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_8to_lower
lb_strings_8to_lower:
    .seh_proc lb_strings_8to_lower
    pushq %rbp
    .seh_pushreg %rbp
    subq $448, %rsp
    .seh_stackalloc 448
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 264(%rbp)
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
    movq %rbx, 256(%rbp)
    .seh_savereg %rbx, 256
    movq %r12, 248(%rbp)
    .seh_savereg %r12, 248
    movq %r13, 240(%rbp)
    .seh_savereg %r13, 240
    movq %r14, 232(%rbp)
    .seh_savereg %r14, 232
    movq %r15, 224(%rbp)
    .seh_savereg %r15, 224
    .seh_endprologue
    movq %rcx, 464(%rbp)
    movq %rdx, 472(%rbp)
    movq %r8, 480(%rbp)
    movq %r9, 488(%rbp)
    movq 472(%rbp), %r10
    leaq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 144(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 160(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_17terminated_buffer
    addq $32, %rsp
    leaq 96(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L19_2
    jmp .L19_1
.L19_2:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 176(%rbp), %r12
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
    movq 264(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 264(%rbp), %rax
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
    movq 256(%rbp), %rbx
    movq 248(%rbp), %r12
    movq 240(%rbp), %r13
    movq 232(%rbp), %r14
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L19_3:
.L19_1:
    movq %r15, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq $0, %rax
    movq %rax, 8(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L19_4:
    movq 56(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L19_7
.L19_5:
    movq 48(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq 8(%rbp), %rax
    movq 24(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_86(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq 8(%rbp), %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movzbl %bl, %ebx
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L19_11
    jmp .L19_18
.L19_18:
    movl %r15d, %r14d
    jmp .L19_12
.L19_11:
    movl $90, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r14d
.L19_12:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L19_8
    jmp .L19_9
.L19_8:
    movl $32, %ecx
    movl %ebx, %r15d
    addl %ecx, %r15d
    movzbl %r15b, %r14d
    cmpl %r15d, %r14d
    je .L19_13
.L19_14:
    leaq .Ltext_86(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L19_13:
    movl %r15d, %ebx
    jmp .L19_10
.L19_9:
.L19_10:
    movzbl %bl, %r14d
    movq %r12, %r10
    movb %r14b, (%r10)
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
.L19_6:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %r14, %rax
    movq %rax, 8(%rbp)
    movq %rbx, %r13
    jmp .L19_4
.L19_7:
    movq 16(%rbp), %r10
    movq (%r10), %rbx
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq 8(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_88(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 8(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L19_15
.L19_16:
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L19_15:
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq 8(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 64(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq 8(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 176(%rbp), %r13
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
    movq %r13, %rsi
    movq 264(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 264(%rbp), %rax
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
    movq 256(%rbp), %rbx
    movq 248(%rbp), %r12
    movq 240(%rbp), %r13
    movq 232(%rbp), %r14
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L19_17:
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_release
lb_strings_release:
    .seh_proc lb_strings_release
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
    movq 272(%rbp), %r10
    leaq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_90(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L20_2
    jmp .L20_1
.L20_2:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
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
    movq %r13, %r11
    call *%r11
    addq $48, %rsp
.L20_1:
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
    .globl lb_strings_17terminated_buffer
lb_strings_17terminated_buffer:
    .seh_proc lb_strings_17terminated_buffer
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
    movq %rax, 128(%rbp)
    leaq 128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 120(%rbp), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq $1, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %ebx
    leaq 104(%rbp), %r13
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movb %bl, (%r10)
    movq %r13, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L21_1
    jmp .L21_2
.L21_1:
    jmp .L21_3
.L21_2:
    leaq 144(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_91(%rip), %r13
    leaq 88(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 232(%rbp), %rdi
    movq $48, %rdx
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
.L21_4:
.L21_3:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 40(%rbp), %rax
    movq %rax, 0(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r12
    jbe .L21_6
.L21_5:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_37(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L21_7
.L21_6:
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L21_8
    jmp .L21_9
.L21_9:
    leaq .Ltext_92(%rip), %rdi
    leaq .Ltext_38(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L21_8:
    movq %r15, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 16(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, 8(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl 8(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L21_10
    jmp .L21_11
.L21_10:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_40(%rip), %r12
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
    jmp .L21_7
.L21_11:
    movq %r14, %r10
    movq (%r10), %rbx
    movq 0(%rbp), %r10
    movq %rbx, (%r10)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L21_7:
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L21_13
    jmp .L21_12
.L21_13:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 144(%rbp), %r12
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
    movq 232(%rbp), %rdi
    movq $48, %rdx
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
.L21_14:
.L21_12:
    leaq 144(%rbp), %rbx
    movq 0(%rbp), %r10
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
    movq 232(%rbp), %rdi
    movq $48, %rdx
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
.L21_15:
    leaq .Ltext_92(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_replace
lb_strings_replace:
    .seh_proc lb_strings_replace
    pushq %rbp
    .seh_pushreg %rbp
    subq $976, %rsp
    .seh_stackalloc 976
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 792(%rbp)
    movq %rdi, 968(%rbp)
    .seh_savereg %rdi, 968
    movq %rsi, 960(%rbp)
    .seh_savereg %rsi, 960
    movdqu %xmm6, 944(%rbp)
    .seh_savexmm %xmm6, 944
    movdqu %xmm7, 928(%rbp)
    .seh_savexmm %xmm7, 928
    movdqu %xmm8, 912(%rbp)
    .seh_savexmm %xmm8, 912
    movdqu %xmm9, 896(%rbp)
    .seh_savexmm %xmm9, 896
    movdqu %xmm10, 880(%rbp)
    .seh_savexmm %xmm10, 880
    movdqu %xmm11, 864(%rbp)
    .seh_savexmm %xmm11, 864
    movdqu %xmm12, 848(%rbp)
    .seh_savexmm %xmm12, 848
    movdqu %xmm13, 832(%rbp)
    .seh_savexmm %xmm13, 832
    movdqu %xmm14, 816(%rbp)
    .seh_savexmm %xmm14, 816
    movdqu %xmm15, 800(%rbp)
    .seh_savexmm %xmm15, 800
    movq %rbx, 784(%rbp)
    .seh_savereg %rbx, 784
    movq %r12, 776(%rbp)
    .seh_savereg %r12, 776
    movq %r13, 768(%rbp)
    .seh_savereg %r13, 768
    movq %r14, 760(%rbp)
    .seh_savereg %r14, 760
    movq %r15, 752(%rbp)
    .seh_savereg %r15, 752
    .seh_endprologue
    movq %rcx, 992(%rbp)
    movq %rdx, 1000(%rbp)
    movq %r8, 1008(%rbp)
    movq %r9, 1016(%rbp)
    movq 1000(%rbp), %r10
    leaq 688(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1008(%rbp), %r10
    leaq 672(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1016(%rbp), %r10
    leaq 656(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1024(%rbp), %rax
    movq %rax, 640(%rbp)
    movq 1032(%rbp), %r10
    leaq 624(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 672(%rbp), %rax
    movq %rax, 320(%rbp)
    movq 320(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 312(%rbp)
    movq 312(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L22_2
.L22_1:
    leaq 704(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_17invalid_separator(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_93(%rip), %r13
    leaq 608(%rbp), %r14
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
    movq %rbx, %rsi
    movq 792(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 792(%rbp), %rax
    movq 968(%rbp), %rdi
    movq 960(%rbp), %rsi
    movdqu 944(%rbp), %xmm6
    movdqu 928(%rbp), %xmm7
    movdqu 912(%rbp), %xmm8
    movdqu 896(%rbp), %xmm9
    movdqu 880(%rbp), %xmm10
    movdqu 864(%rbp), %xmm11
    movdqu 848(%rbp), %xmm12
    movdqu 832(%rbp), %xmm13
    movdqu 816(%rbp), %xmm14
    movdqu 800(%rbp), %xmm15
    movq 784(%rbp), %rbx
    movq 776(%rbp), %r12
    movq 768(%rbp), %r13
    movq 760(%rbp), %r14
    movq 752(%rbp), %r15
    leaq 976(%rbp), %rsp
    popq %rbp
    ret
.L22_4:
    jmp .L22_3
.L22_2:
.L22_3:
    leaq 688(%rbp), %rax
    movq %rax, 304(%rbp)
    movq 304(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 296(%rbp)
    movq 296(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 288(%rbp)
    leaq 640(%rbp), %rax
    movq %rax, 280(%rbp)
    leaq 592(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 272(%rbp)
    leaq 656(%rbp), %rax
    movq %rax, 264(%rbp)
    movq 264(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 256(%rbp)
    leaq 584(%rbp), %rax
    movq %rax, 248(%rbp)
    leaq 568(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 240(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 112(%rbp)
    movq $0, %rax
    movq %rax, 104(%rbp)
    movq $0, %rax
    movq %rax, 96(%rbp)
.L22_5:
    movq 280(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L22_51
    jmp .L22_8
.L22_51:
    movl %r12d, %ebx
    jmp .L22_9
.L22_8:
    movq 104(%rbp), %rax
    cmpq %rbx, %rax
    setb %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L22_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L22_6
    jmp .L22_7
.L22_6:
    subq $64, %rsp
    movq 304(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 320(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 96(%rbp), %rax
    movq %rax, 24(%rsp)
    leaq 592(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_9find_from
    addq $64, %rsp
    movq 272(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L22_10
    jmp .L22_11
.L22_10:
    movq 88(%rbp), %r10
    movq (%r10), %rbx
    jmp .L22_12
.L22_11:
    jmp .L22_7
.L22_13:
.L22_12:
    movq 256(%rbp), %r10
    movq (%r10), %r12
    movq 312(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jb .L22_15
.L22_14:
    movq %r12, %r13
    subq %r14, %r13
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 248(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r13d
    movq 248(%rbp), %r10
    movq (%r10), %r15
    movq 80(%rbp), %r10
    movq %r15, (%r10)
    movq 240(%rbp), %r10
    movb %r13b, (%r10)
    movq 240(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L22_17
    jmp .L22_18
.L22_17:
    jmp .L22_19
.L22_18:
    leaq 704(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_95(%rip), %r13
    leaq 552(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 792(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 792(%rbp), %rax
    movq 968(%rbp), %rdi
    movq 960(%rbp), %rsi
    movdqu 944(%rbp), %xmm6
    movdqu 928(%rbp), %xmm7
    movdqu 912(%rbp), %xmm8
    movdqu 896(%rbp), %xmm9
    movdqu 880(%rbp), %xmm10
    movdqu 864(%rbp), %xmm11
    movdqu 848(%rbp), %xmm12
    movdqu 832(%rbp), %xmm13
    movdqu 816(%rbp), %xmm14
    movdqu 800(%rbp), %xmm15
    movq 784(%rbp), %rbx
    movq 776(%rbp), %r12
    movq 768(%rbp), %r13
    movq 760(%rbp), %r14
    movq 752(%rbp), %r15
    leaq 976(%rbp), %rsp
    popq %rbp
    ret
.L22_20:
.L22_19:
    movq %r15, %r12
    jmp .L22_16
.L22_15:
    movq %r14, %r13
    subq %r12, %r13
    movq 112(%rbp), %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_96(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %r12
.L22_16:
    movq 312(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_97(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 104(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_98(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r12, %rax
    movq %rax, 112(%rbp)
    movq %r14, %rax
    movq %rax, 104(%rbp)
    movq %r13, %rax
    movq %rax, 96(%rbp)
    jmp .L22_5
.L22_7:
    leaq 624(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L22_24
    jmp .L22_22
.L22_24:
    movq %r12, %r10
    movq (%r10), %rbx
.L22_21:
    movq 112(%rbp), %rax
    cmpq %rbx, %rax
    jbe .L22_26
.L22_25:
    leaq 704(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_16output_too_large(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_99(%rip), %r13
    leaq 536(%rbp), %r14
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
    movq %rbx, %rsi
    movq 792(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 792(%rbp), %rax
    movq 968(%rbp), %rdi
    movq 960(%rbp), %rsi
    movdqu 944(%rbp), %xmm6
    movdqu 928(%rbp), %xmm7
    movdqu 912(%rbp), %xmm8
    movdqu 896(%rbp), %xmm9
    movdqu 880(%rbp), %xmm10
    movdqu 864(%rbp), %xmm11
    movdqu 848(%rbp), %xmm12
    movdqu 832(%rbp), %xmm13
    movdqu 816(%rbp), %xmm14
    movdqu 800(%rbp), %xmm15
    movq 784(%rbp), %rbx
    movq 776(%rbp), %r12
    movq 768(%rbp), %r13
    movq 760(%rbp), %r14
    movq 752(%rbp), %r15
    leaq 976(%rbp), %rsp
    popq %rbp
    ret
.L22_28:
    jmp .L22_27
.L22_26:
.L22_27:
    jmp .L22_23
.L22_22:
.L22_23:
    leaq 520(%rbp), %rax
    movq %rax, 72(%rbp)
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 472(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_17terminated_buffer
    addq $32, %rsp
    leaq 472(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L22_30
    jmp .L22_29
.L22_30:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 704(%rbp), %r12
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
    movq 792(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 792(%rbp), %rax
    movq 968(%rbp), %rdi
    movq 960(%rbp), %rsi
    movdqu 944(%rbp), %xmm6
    movdqu 928(%rbp), %xmm7
    movdqu 912(%rbp), %xmm8
    movdqu 896(%rbp), %xmm9
    movdqu 880(%rbp), %xmm10
    movdqu 864(%rbp), %xmm11
    movdqu 848(%rbp), %xmm12
    movdqu 832(%rbp), %xmm13
    movdqu 816(%rbp), %xmm14
    movdqu 800(%rbp), %xmm15
    movq 784(%rbp), %rbx
    movq 776(%rbp), %r12
    movq 768(%rbp), %r13
    movq 760(%rbp), %r14
    movq 752(%rbp), %r15
    leaq 976(%rbp), %rsp
    popq %rbp
    ret
.L22_31:
.L22_29:
    movq %r13, %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 456(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 232(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 216(%rbp)
    leaq 424(%rbp), %rax
    movq %rax, 200(%rbp)
    movq 200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 192(%rbp)
    leaq 408(%rbp), %rax
    movq %rax, 184(%rbp)
    movq 184(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 176(%rbp)
    leaq 392(%rbp), %rax
    movq %rax, 168(%rbp)
    movq 168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    leaq 656(%rbp), %rax
    movq %rax, 152(%rbp)
    movq 152(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    movq $0, %rax
    movq %rax, 64(%rbp)
    movq $0, %rax
    movq %rax, 56(%rbp)
    movq $0, %rax
    movq %rax, 48(%rbp)
.L22_32:
    movq 48(%rbp), %rax
    movq 104(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L22_34
.L22_33:
    subq $64, %rsp
    movq 304(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 320(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 24(%rsp)
    leaq 456(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_9find_from
    addq $64, %rsp
    movq 232(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L22_35
    jmp .L22_36
.L22_35:
    movq 24(%rbp), %r10
    movq (%r10), %r13
    jmp .L22_37
.L22_36:
    leaq .Ltext_100(%rip), %rbx
    leaq 440(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $39, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_101(%rip), %rbx
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
    leaq .Ltext_101(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_37:
    movq %r13, %rax
    movq 64(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 224(%rbp)
    movq 72(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq 216(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, 208(%rbp)
    movq 56(%rbp), %rax
    movq 208(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    movq 208(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 56(%rbp), %rax
    movq 8(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L22_38
.L22_39:
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_38:
    movq 56(%rbp), %rax
    movq 16(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 8(%rbp), %rax
    movq 56(%rbp), %rcx
    movq %rax, %r12
    subq %rcx, %r12
    movq 200(%rbp), %r10
    movq %r14, (%r10)
    movq 192(%rbp), %r10
    movq %r12, (%r10)
    movq 304(%rbp), %r10
    movq (%r10), %r14
    movq 296(%rbp), %r10
    movq (%r10), %r12
    movq $1, %rcx
    addq %rcx, %r12
    movq 64(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 64(%rbp), %rax
    cmpq %r13, %rax
    jbe .L22_40
.L22_41:
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_40:
    movq 64(%rbp), %rax
    movq %rax, %r12
    addq %r14, %r12
    movq 64(%rbp), %rcx
    movq %r13, %rbx
    subq %rcx, %rbx
    movq 184(%rbp), %r10
    movq %r12, (%r10)
    movq 176(%rbp), %r10
    movq %rbx, (%r10)
    subq $64, %rsp
    movq 200(%rbp), %r10
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
    movq 224(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq 224(%rbp), %rax
    movq 56(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_104(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 208(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_105(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rcx
    cmpq %rcx, %rbx
    jbe .L22_42
.L22_43:
    leaq .Ltext_105(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_42:
    movq 16(%rbp), %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 8(%rbp), %rax
    movq %rax, %r14
    subq %rbx, %r14
    movq 168(%rbp), %r10
    movq %r12, (%r10)
    movq 160(%rbp), %r10
    movq %r14, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r12
    subq $64, %rsp
    movq 168(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 152(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq 144(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_106(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 312(%rbp), %r10
    movq (%r10), %r14
    movq %r13, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 48(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r15, %rax
    movq %rax, 64(%rbp)
    movq %r12, %rax
    movq %rax, 56(%rbp)
    movq %r14, %rax
    movq %rax, 48(%rbp)
    jmp .L22_32
.L22_34:
    movq 296(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %rax
    movq 64(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 128(%rbp)
    movq 72(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    movq 56(%rbp), %rax
    movq 120(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 32(%rbp), %rax
    movq 120(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 56(%rbp), %rax
    movq 32(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L22_44
.L22_45:
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_44:
    movq 56(%rbp), %rax
    movq 40(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 32(%rbp), %rax
    movq 56(%rbp), %rcx
    movq %rax, %r13
    subq %rcx, %r13
    leaq 376(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 304(%rbp), %r10
    movq (%r10), %r14
    movq 136(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq 64(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 136(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 64(%rbp), %rax
    movq 136(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L22_46
.L22_47:
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_46:
    movq 64(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq 136(%rbp), %rax
    movq 64(%rbp), %rcx
    movq %rax, %r12
    subq %rcx, %r12
    leaq 360(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
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
    movq 128(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq 128(%rbp), %rax
    movq 56(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_111(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 32(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_112(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $0, %rax
    movq 120(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L22_48
.L22_49:
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_48:
    leaq 344(%rbp), %r12
    movq 40(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq 328(%rbp), %r12
    movq 40(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    leaq 704(%rbp), %r13
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
    movq %r13, %rsi
    movq 792(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 792(%rbp), %rax
    movq 968(%rbp), %rdi
    movq 960(%rbp), %rsi
    movdqu 944(%rbp), %xmm6
    movdqu 928(%rbp), %xmm7
    movdqu 912(%rbp), %xmm8
    movdqu 896(%rbp), %xmm9
    movdqu 880(%rbp), %xmm10
    movdqu 864(%rbp), %xmm11
    movdqu 848(%rbp), %xmm12
    movdqu 832(%rbp), %xmm13
    movdqu 816(%rbp), %xmm14
    movdqu 800(%rbp), %xmm15
    movq 784(%rbp), %rbx
    movq 776(%rbp), %r12
    movq 768(%rbp), %r13
    movq 760(%rbp), %r14
    movq 752(%rbp), %r15
    leaq 976(%rbp), %rsp
    popq %rbp
    ret
.L22_50:
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_9parse_i64
lb_strings_9parse_i64:
    .seh_proc lb_strings_9parse_i64
    pushq %rbp
    .seh_pushreg %rbp
    subq $640, %rsp
    .seh_stackalloc 640
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 456(%rbp)
    movq %rdi, 632(%rbp)
    .seh_savereg %rdi, 632
    movq %rsi, 624(%rbp)
    .seh_savereg %rsi, 624
    movdqu %xmm6, 608(%rbp)
    .seh_savexmm %xmm6, 608
    movdqu %xmm7, 592(%rbp)
    .seh_savexmm %xmm7, 592
    movdqu %xmm8, 576(%rbp)
    .seh_savexmm %xmm8, 576
    movdqu %xmm9, 560(%rbp)
    .seh_savexmm %xmm9, 560
    movdqu %xmm10, 544(%rbp)
    .seh_savexmm %xmm10, 544
    movdqu %xmm11, 528(%rbp)
    .seh_savexmm %xmm11, 528
    movdqu %xmm12, 512(%rbp)
    .seh_savexmm %xmm12, 512
    movdqu %xmm13, 496(%rbp)
    .seh_savexmm %xmm13, 496
    movdqu %xmm14, 480(%rbp)
    .seh_savexmm %xmm14, 480
    movdqu %xmm15, 464(%rbp)
    .seh_savexmm %xmm15, 464
    movq %rbx, 448(%rbp)
    .seh_savereg %rbx, 448
    movq %r12, 440(%rbp)
    .seh_savereg %r12, 440
    movq %r13, 432(%rbp)
    .seh_savereg %r13, 432
    movq %r14, 424(%rbp)
    .seh_savereg %r14, 424
    movq %r15, 416(%rbp)
    .seh_savereg %r15, 416
    .seh_endprologue
    movq %rcx, 656(%rbp)
    movq %rdx, 664(%rbp)
    movq %r8, 672(%rbp)
    movq %r9, 680(%rbp)
    movq 664(%rbp), %r10
    leaq 384(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 672(%rbp), %rax
    movl %eax, 368(%rbp)
    leaq 368(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %eax
    movl %eax, 152(%rbp)
    movl 152(%rbp), %eax
    movl $2, %ecx
    cmpl %ecx, %eax
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L23_41
    jmp .L23_4
.L23_41:
    movl %r12d, %r13d
    jmp .L23_5
.L23_4:
    movl 152(%rbp), %eax
    movl $36, %ecx
    cmpl %ecx, %eax
    seta %al
    movzbl %al, %r13d
.L23_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L23_42
    jmp .L23_6
.L23_42:
    movl %r12d, %r13d
    jmp .L23_7
.L23_6:
    leaq 384(%rbp), %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
.L23_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L23_1
    jmp .L23_2
.L23_1:
    leaq 352(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 400(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 456(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L23_8:
    jmp .L23_3
.L23_2:
.L23_3:
    leaq 384(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 144(%rbp)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 136(%rbp)
    movq $0, %rax
    movq 136(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_114(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 144(%rbp), %r10
    movzbl (%r10), %r14d
    movl $45, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L23_43
    jmp .L23_12
.L23_43:
    movl %r14d, %r15d
    jmp .L23_13
.L23_12:
    movq 144(%rbp), %r10
    movzbl (%r10), %r14d
    movl $43, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L23_13:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L23_9
    jmp .L23_10
.L23_9:
    movq 144(%rbp), %r10
    movzbl (%r10), %r14d
    movl $45, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movq $1, %rax
    movq %rax, %r15
    jmp .L23_11
.L23_10:
    movq $0, %rax
    movq %rax, %r15
    movl $0, %eax
    movl %eax, %r14d
.L23_11:
    movq 136(%rbp), %rax
    cmpq %r15, %rax
    jne .L23_15
.L23_14:
    leaq 336(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 400(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 456(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L23_17:
    jmp .L23_16
.L23_15:
.L23_16:
    leaq 328(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movl 152(%rbp), %eax
    movl %eax, %eax
    movq %rax, 120(%rbp)
    leaq 288(%rbp), %rax
    movq %rax, 112(%rbp)
    leaq 272(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movzbl %r14b, %eax
    movl %eax, 96(%rbp)
    leaq 208(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 192(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    leaq 240(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 232(%rbp), %rax
    movq %rax, 88(%rbp)
    leaq 216(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    leaq 240(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 240(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    movq %r15, %r12
    movq $0, %rax
    movq %rax, 16(%rbp)
.L23_18:
    movq 136(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L23_20
.L23_19:
    movq 144(%rbp), %rax
    movq %rax, %r14
    addq %r12, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    subq $32, %rsp
    movl %r14d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_13integer_digit
    addq $32, %rsp
    leaq 328(%rbp), %r10
    movq %rax, 0(%r10)
    movq 128(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L23_21
    jmp .L23_22
.L23_21:
    movq 8(%rbp), %r10
    movl (%r10), %r14d
    jmp .L23_23
.L23_22:
    leaq 312(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 400(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 456(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L23_24:
.L23_23:
    movl 152(%rbp), %ecx
    cmpl %ecx, %r14d
    jb .L23_26
.L23_25:
    leaq 296(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 400(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 456(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L23_28:
    jmp .L23_27
.L23_26:
.L23_27:
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 112(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qmul_s
    addq $32, %rsp
    movl %eax, %r15d
    movq 112(%rbp), %r10
    movq (%r10), %rbx
    movq 0(%rbp), %r10
    movq %rbx, (%r10)
    movq 104(%rbp), %r10
    movb %r15b, (%r10)
    movq 104(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L23_29
    jmp .L23_30
.L23_29:
    jmp .L23_31
.L23_30:
    leaq 256(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 400(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 456(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L23_32:
.L23_31:
    movl 96(%rbp), %eax
    testl %eax, %eax
    jne .L23_33
    jmp .L23_34
.L23_33:
    movl %r14d, %r15d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 88(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qsub_s
    addq $32, %rsp
    movl %eax, %r15d
    movq 88(%rbp), %r10
    movq (%r10), %r13
    movq 80(%rbp), %r10
    movq %r13, (%r10)
    movq 72(%rbp), %r10
    movb %r15b, (%r10)
    movq 80(%rbp), %r10
    movq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L23_35
.L23_34:
    movl %r14d, %r13d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 56(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_s
    addq $32, %rsp
    movl %eax, %r13d
    movq 56(%rbp), %r10
    movq (%r10), %r15
    movq 48(%rbp), %r10
    movq %r15, (%r10)
    movq 40(%rbp), %r10
    movb %r13b, (%r10)
    movq 48(%rbp), %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r15, %r13
.L23_35:
    movq 24(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L23_36
    jmp .L23_37
.L23_36:
    jmp .L23_38
.L23_37:
    leaq 176(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 400(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 456(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L23_39:
.L23_38:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r12
    movq %r13, %rax
    movq %rax, 16(%rbp)
    jmp .L23_18
.L23_20:
    leaq 160(%rbp), %rbx
    movq 16(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 400(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 456(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L23_40:
    leaq .Ltext_118(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_9parse_u64
lb_strings_9parse_u64:
    .seh_proc lb_strings_9parse_u64
    pushq %rbp
    .seh_pushreg %rbp
    subq $544, %rsp
    .seh_stackalloc 544
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 360(%rbp)
    movq %rdi, 536(%rbp)
    .seh_savereg %rdi, 536
    movq %rsi, 528(%rbp)
    .seh_savereg %rsi, 528
    movdqu %xmm6, 512(%rbp)
    .seh_savexmm %xmm6, 512
    movdqu %xmm7, 496(%rbp)
    .seh_savexmm %xmm7, 496
    movdqu %xmm8, 480(%rbp)
    .seh_savexmm %xmm8, 480
    movdqu %xmm9, 464(%rbp)
    .seh_savexmm %xmm9, 464
    movdqu %xmm10, 448(%rbp)
    .seh_savexmm %xmm10, 448
    movdqu %xmm11, 432(%rbp)
    .seh_savexmm %xmm11, 432
    movdqu %xmm12, 416(%rbp)
    .seh_savexmm %xmm12, 416
    movdqu %xmm13, 400(%rbp)
    .seh_savexmm %xmm13, 400
    movdqu %xmm14, 384(%rbp)
    .seh_savexmm %xmm14, 384
    movdqu %xmm15, 368(%rbp)
    .seh_savexmm %xmm15, 368
    movq %rbx, 352(%rbp)
    .seh_savereg %rbx, 352
    movq %r12, 344(%rbp)
    .seh_savereg %r12, 344
    movq %r13, 336(%rbp)
    .seh_savereg %r13, 336
    movq %r14, 328(%rbp)
    .seh_savereg %r14, 328
    movq %r15, 320(%rbp)
    .seh_savereg %r15, 320
    .seh_endprologue
    movq %rcx, 560(%rbp)
    movq %rdx, 568(%rbp)
    movq %r8, 576(%rbp)
    movq %r9, 584(%rbp)
    movq 568(%rbp), %r10
    leaq 288(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 576(%rbp), %rax
    movl %eax, 272(%rbp)
    leaq 272(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %eax
    movl %eax, 96(%rbp)
    movl 96(%rbp), %eax
    movl $2, %ecx
    cmpl %ecx, %eax
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L24_36
    jmp .L24_4
.L24_36:
    movl %r12d, %r13d
    jmp .L24_5
.L24_4:
    movl 96(%rbp), %eax
    movl $36, %ecx
    cmpl %ecx, %eax
    seta %al
    movzbl %al, %r13d
.L24_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L24_37
    jmp .L24_6
.L24_37:
    movl %r12d, %r13d
    jmp .L24_7
.L24_6:
    leaq 288(%rbp), %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
.L24_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L24_1
    jmp .L24_2
.L24_1:
    leaq 256(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 304(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 360(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
.L24_8:
    jmp .L24_3
.L24_2:
.L24_3:
    leaq 288(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 88(%rbp)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 80(%rbp)
    movq $0, %rax
    movq 80(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_119(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 88(%rbp), %r10
    movzbl (%r10), %r14d
    movl $43, %ecx
    cmpl %ecx, %r14d
    jne .L24_10
.L24_9:
    movq $1, %rax
    movq %rax, %r14
    jmp .L24_11
.L24_10:
    movq $0, %rax
    movq %rax, %r14
.L24_11:
    movq 80(%rbp), %rax
    cmpq %r14, %rax
    jne .L24_13
.L24_12:
    leaq 240(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 304(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 360(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
.L24_15:
    jmp .L24_14
.L24_13:
.L24_14:
    leaq 232(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movl 96(%rbp), %eax
    movl %eax, %eax
    movq %rax, 64(%rbp)
    leaq 192(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 176(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    leaq 152(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 136(%rbp), %r13
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq %r14, %rax
    movq %rax, 24(%rbp)
    movq $0, %rax
    movq %rax, 16(%rbp)
.L24_16:
    movq 24(%rbp), %rax
    movq 80(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L24_18
.L24_17:
    movq 88(%rbp), %rax
    movq 24(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    subq $32, %rsp
    movl %r14d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_13integer_digit
    addq $32, %rsp
    leaq 232(%rbp), %r10
    movq %rax, 0(%r10)
    movq 72(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L24_19
    jmp .L24_20
.L24_19:
    movq 8(%rbp), %r10
    movl (%r10), %r14d
    jmp .L24_21
.L24_20:
    leaq 216(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 304(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 360(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
.L24_22:
.L24_21:
    movl 96(%rbp), %ecx
    cmpl %ecx, %r14d
    jb .L24_24
.L24_23:
    leaq 200(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 304(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 360(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
.L24_26:
    jmp .L24_25
.L24_24:
.L24_25:
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 56(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qmul_u
    addq $32, %rsp
    movl %eax, %r12d
    movq 56(%rbp), %r10
    movq (%r10), %rbx
    movq 0(%rbp), %r10
    movq %rbx, (%r10)
    movq 48(%rbp), %r10
    movb %r12b, (%r10)
    movq 48(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L24_27
    jmp .L24_28
.L24_27:
    jmp .L24_29
.L24_28:
    leaq 160(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 304(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 360(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
.L24_30:
.L24_29:
    movl %r14d, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 40(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r12d
    movq 40(%rbp), %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq %r15, (%r10)
    movq 32(%rbp), %r10
    movb %r12b, (%r10)
    movq 32(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L24_31
    jmp .L24_32
.L24_31:
    jmp .L24_33
.L24_32:
    leaq 120(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 304(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 360(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
.L24_34:
.L24_33:
    movq 24(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 24(%rbp)
    movq %r15, %rax
    movq %rax, 16(%rbp)
    jmp .L24_16
.L24_18:
    leaq 104(%rbp), %rbx
    movq 16(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 304(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 360(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
.L24_35:
    leaq .Ltext_122(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_10format_i64
lb_strings_10format_i64:
    .seh_proc lb_strings_10format_i64
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
    movq 392(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 400(%rbp), %r10
    leaq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 408(%rbp), %rax
    movl %eax, 56(%rbp)
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    setl %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L25_1
    jmp .L25_2
.L25_1:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_123(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq $0, %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_123(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_123(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    jmp .L25_3
.L25_2:
    movq %rbx, %r13
.L25_3:
    leaq 72(%rbp), %rbx
    leaq 56(%rbp), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    subq $64, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movl %r12d, %eax
    movq %rax, 16(%rsp)
    movq %rbx, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 24(%rsp)
    movl %r14d, %eax
    movq %rax, 32(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_14format_integer
    addq $64, %rsp
    leaq 8(%rbp), %r14
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L25_5
    jmp .L25_4
.L25_5:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 104(%rbp), %r12
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
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L25_6:
.L25_4:
    leaq 104(%rbp), %rbx
    movq %r14, %r10
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
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L25_7:
    leaq .Ltext_124(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_10format_u64
lb_strings_10format_u64:
    .seh_proc lb_strings_10format_u64
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
    movq 392(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 400(%rbp), %r10
    leaq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 408(%rbp), %rax
    movl %eax, 56(%rbp)
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 72(%rbp), %r12
    leaq 56(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    subq $64, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movq %r12, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 24(%rsp)
    movl %r13d, %eax
    movq %rax, 32(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_14format_integer
    addq $64, %rsp
    leaq 8(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L26_2
    jmp .L26_1
.L26_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 104(%rbp), %r13
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
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L26_3:
.L26_1:
    leaq 104(%rbp), %rbx
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
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L26_4:
    leaq .Ltext_125(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_13integer_digit
lb_strings_13integer_digit:
    .seh_proc lb_strings_13integer_digit
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
    movl %eax, 32(%rbp)
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $48, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L27_4
    jmp .L27_26
.L27_26:
    movl %r12d, %r13d
    jmp .L27_5
.L27_4:
    movl $57, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L27_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L27_1
    jmp .L27_2
.L27_1:
    movl $48, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L27_6
.L27_7:
    leaq .Ltext_126(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L27_6:
    movl %r13d, %ebx
    leaq 24(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 48(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
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
.L27_8:
    jmp .L27_3
.L27_2:
.L27_3:
    movl $97, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L27_12
    jmp .L27_27
.L27_27:
    movl %r12d, %r13d
    jmp .L27_13
.L27_12:
    movl $122, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L27_13:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L27_9
    jmp .L27_10
.L27_9:
    movl $97, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L27_14
.L27_15:
    leaq .Ltext_127(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L27_14:
    movl %r13d, %ebx
    movl $10, %ecx
    addl %ecx, %ebx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 48(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
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
.L27_16:
    jmp .L27_11
.L27_10:
.L27_11:
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L27_20
    jmp .L27_28
.L27_28:
    movl %r12d, %r13d
    jmp .L27_21
.L27_20:
    movl $90, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L27_21:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L27_17
    jmp .L27_18
.L27_17:
    movl $65, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L27_22
.L27_23:
    leaq .Ltext_128(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L27_22:
    movl %r13d, %ebx
    movl $10, %ecx
    addl %ecx, %ebx
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 48(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
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
.L27_24:
    jmp .L27_19
.L27_18:
.L27_19:
    leaq 0(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq 48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
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
.L27_25:
    leaq .Ltext_129(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_14format_integer
lb_strings_14format_integer:
    .seh_proc lb_strings_14format_integer
    pushq %rbp
    .seh_pushreg %rbp
    subq $560, %rsp
    .seh_stackalloc 560
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 376(%rbp)
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
    movq %rbx, 368(%rbp)
    .seh_savereg %rbx, 368
    movq %r12, 360(%rbp)
    .seh_savereg %r12, 360
    movq %r13, 352(%rbp)
    .seh_savereg %r13, 352
    movq %r14, 344(%rbp)
    .seh_savereg %r14, 344
    movq %r15, 336(%rbp)
    .seh_savereg %r15, 336
    .seh_endprologue
    movq %rcx, 576(%rbp)
    movq %rdx, 584(%rbp)
    movq %r8, 592(%rbp)
    movq %r9, 600(%rbp)
    movq 584(%rbp), %rax
    movq %rax, 272(%rbp)
    movq 592(%rbp), %rax
    movl %eax, 256(%rbp)
    movq 600(%rbp), %r10
    leaq 240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 608(%rbp), %rax
    movl %eax, 224(%rbp)
    leaq 224(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L28_31
    jmp .L28_4
.L28_31:
    movl %r12d, %r13d
    jmp .L28_5
.L28_4:
    movl $36, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %r13d
.L28_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L28_1
    jmp .L28_2
.L28_1:
    leaq 288(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_13invalid_radix(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_130(%rip), %r13
    leaq 208(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $41, %rax
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
    movq 376(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
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
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L28_2:
.L28_3:
    leaq 192(%rbp), %r12
    leaq .Ltext_131(%rip), %rax
    movq %rax, 48(%rbp)
    leaq 176(%rbp), %r14
    movq 48(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq $36, %rax
    movq 40(%rbp), %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 111(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movb $0, 64(%r11)
    leaq 272(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movl %ebx, %r15d
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %eax
    movl %eax, 24(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L28_7:
.L28_8:
    movq $65, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_132(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 32(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movl 24(%rbp), %eax
    testl %eax, %eax
    jne .L28_10
    jmp .L28_11
.L28_10:
    leaq .Ltext_132(%rip), %rdi
    leaq .Ltext_133(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L28_11:
    movq %r14, %rax
    xorl %edx, %edx
    divq %r15
    movq %rdx, %r12
    movq $36, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_132(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 48(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %rbx, %r10
    movb %r12b, (%r10)
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl 24(%rbp), %eax
    testl %eax, %eax
    jne .L28_12
    jmp .L28_13
.L28_12:
    leaq .Ltext_135(%rip), %rdi
    leaq .Ltext_133(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L28_13:
    movq %r14, %rax
    xorl %edx, %edx
    divq %r15
    movq %rax, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L28_15
.L28_14:
    movq %r12, %rbx
    jmp .L28_9
.L28_15:
.L28_16:
    movq %r12, %r13
    movq %rbx, %r14
    jmp .L28_7
.L28_9:
    leaq 256(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L28_18
    jmp .L28_19
.L28_18:
    movq $65, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_136(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 32(%rbp), %rax
    movq %rax, %r12
    addq %rbx, %r12
    movl $45, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    jmp .L28_20
.L28_19:
    movq %rbx, %r12
.L28_20:
    leaq 240(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    cmpq %r12, %rax
    jae .L28_22
.L28_21:
    leaq 288(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_138(%rip), %r13
    leaq 88(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $49, %rax
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
    movq 376(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
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
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L28_22:
.L28_23:
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rax
    movq %rax, %r15
.L28_25:
    cmpq %r12, %r15
    jae .L28_27
.L28_26:
    movq %r14, %r13
    addq %r15, %r13
    movq %r12, %rbx
    subq %r15, %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_139(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq $65, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_139(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 32(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq %r13, %r10
    movb %bl, (%r10)
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L28_25
.L28_27:
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_141(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_141(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L28_28
.L28_29:
    leaq .Ltext_141(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L28_28:
    leaq 72(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq 288(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r14, %rsi
    movq 376(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
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
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_strings_9parse_f64
lb_strings_9parse_f64:
    .seh_proc lb_strings_9parse_f64
    pushq %rbp
    .seh_pushreg %rbp
    subq $608, %rsp
    .seh_stackalloc 608
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 424(%rbp)
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
    movq %rbx, 416(%rbp)
    .seh_savereg %rbx, 416
    movq %r12, 408(%rbp)
    .seh_savereg %r12, 408
    movq %r13, 400(%rbp)
    .seh_savereg %r13, 400
    movq %r14, 392(%rbp)
    .seh_savereg %r14, 392
    movq %r15, 384(%rbp)
    .seh_savereg %r15, 384
    .seh_endprologue
    movq %rcx, 624(%rbp)
    movq %rdx, 632(%rbp)
    movq %r8, 640(%rbp)
    movq %r9, 648(%rbp)
    movq 632(%rbp), %r10
    leaq 328(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 328(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_12float_syntax
    addq $48, %rsp
    leaq 326(%rbp), %r10
    movw %ax, 0(%r10)
    leaq 326(%rbp), %r13
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L29_1
    jmp .L29_2
.L29_1:
    movq %r13, %r10
    movzbl (%r10), %r12d
    jmp .L29_3
.L29_2:
    leaq 344(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_14invalid_number(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_144(%rip), %r13
    leaq 304(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 424(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
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
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L29_4:
.L29_3:
    movzbl %r12b, %r13d
    movzbl %r13b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L29_6
.L29_5:
    leaq 296(%rbp), %r14
    movl $1, %ecx
    cmpl %ecx, %r13d
    jne .L29_9
.L29_8:
    movabsq $9218868437227405312, %rax
    movq %rax, %r12
    jmp .L29_10
.L29_9:
    movabsq $9221120237041090560, %rax
    movq %rax, %r12
.L29_10:
    movq %r14, %r10
    movq %r12, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_145(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $45, %ecx
    cmpl %ecx, %r13d
    jne .L29_12
.L29_11:
    movabsq $-9223372036854775808, %rcx
    movq %r12, %rbx
    orq %rcx, %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    jmp .L29_13
.L29_12:
.L29_13:
    leaq 104(%rbp), %r10
    movq %r14, (%r10)
    leaq 96(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $8, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L29_33
    jmp .L29_34
.L29_34:
    leaq .Ltext_222(%rip), %rdi
    leaq .Ltext_221(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L29_33:
    movq %rbx, %r10
    movsd (%r10), %xmm12
    jmp .L29_36
.L29_35:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L29_36:
    leaq 344(%rbp), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 424(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
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
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L29_14:
    jmp .L29_7
.L29_6:
.L29_7:
    leaq 288(%rbp), %r13
    subq $32, %rsp
    leaq 248(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_NumericLocale_create
    addq $32, %rsp
    leaq 248(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L29_16
    jmp .L29_15
.L29_16:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 344(%rbp), %r12
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
    movq 424(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
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
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L29_17:
.L29_15:
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq 232(%rbp), %rax
    movq %rax, 16(%rbp)
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 184(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_copy
    addq $48, %rsp
    leaq 184(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L29_19
    jmp .L29_18
.L29_19:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 344(%rbp), %r12
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
    movq %r13, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L29_40
    jmp .L29_38
.L29_40:
.L29_37:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L29_39
.L29_38:
.L29_39:
.L29_41:
    movq %r12, %rsi
    movq 424(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
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
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L29_20:
.L29_18:
    movq %r15, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 176(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movl $0, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_c_9set_errno
    addq $32, %rsp
    leaq 168(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_NumericLocale_handle
    addq $32, %rsp
    movq %rax, %r14
    leaq 80(%rbp), %r10
    movq %r12, (%r10)
    leaq 64(%rbp), %r10
    movq %rbx, (%r10)
    leaq 48(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call _strtod_l
    addq $32, %rsp
    movapd %xmm0, %xmm12
    jmp .L29_43
.L29_42:
    leaq .Ltext_142(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L29_43:
    movq 8(%rbp), %r10
    movsd %xmm12, (%r10)
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq 16(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movl %r12d, %eax
    movq %rax, 24(%rsp)
    leaq 136(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_22check_float_conversion
    addq $48, %rsp
    leaq 136(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L29_22
    jmp .L29_21
.L29_22:
    leaq 344(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
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
    subq $48, %rsp
    movq 16(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L29_47
    jmp .L29_45
.L29_47:
.L29_44:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L29_46
.L29_45:
.L29_46:
.L29_48:
    movq %rbx, %rsi
    movq 424(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
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
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L29_23:
.L29_21:
    movq 8(%rbp), %rax
    leaq 32(%rbp), %r10
    movq %rax, (%r10)
    leaq 24(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 8(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $8, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L29_49
    jmp .L29_50
.L29_50:
    leaq .Ltext_222(%rip), %rdi
    leaq .Ltext_221(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L29_49:
    movq %rbx, %r10
    movq (%r10), %r14
    jmp .L29_52
.L29_51:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L29_52:
    movabsq $9223372036854775807, %rcx
    movq %r14, %rbx
    andq %rcx, %rbx
    movabsq $9218868437227405312, %rcx
    cmpq %rcx, %rbx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L29_68
    jmp .L29_27
.L29_68:
    movl %r15d, %ebx
    jmp .L29_28
.L29_27:
    movl $34, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L29_29
    jmp .L29_69
.L29_69:
    movl %r14d, %ebx
    jmp .L29_30
.L29_29:
    movabsq $4607182418800017408, %rcx
    cmpq %rcx, %rbx
    setae %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L29_30:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L29_28:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L29_24
    jmp .L29_25
.L29_24:
    leaq 344(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_19number_out_of_range(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_146(%rip), %r14
    leaq 120(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $35, %rax
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
    subq $48, %rsp
    movq 16(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L29_56
    jmp .L29_54
.L29_56:
.L29_53:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L29_55
.L29_54:
.L29_55:
.L29_57:
    movq %rbx, %rsi
    movq 424(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
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
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L29_31:
    jmp .L29_26
.L29_25:
.L29_26:
    movq 8(%rbp), %r10
    movsd (%r10), %xmm12
    leaq 344(%rbp), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 16(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L29_61
    jmp .L29_59
.L29_61:
.L29_58:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L29_60
.L29_59:
.L29_60:
.L29_62:
    movq %rbx, %rsi
    movq 424(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
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
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L29_32:
    leaq 232(%rbp), %rbx
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
    leaq 288(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L29_66
    jmp .L29_64
.L29_66:
    movq %rbx, %r12
.L29_63:
    movq %rbx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L29_65
.L29_64:
.L29_65:
.L29_67:
    leaq .Ltext_147(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_9parse_f32
lb_strings_9parse_f32:
    .seh_proc lb_strings_9parse_f32
    pushq %rbp
    .seh_pushreg %rbp
    subq $624, %rsp
    .seh_stackalloc 624
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 440(%rbp)
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
    movq %rbx, 432(%rbp)
    .seh_savereg %rbx, 432
    movq %r12, 424(%rbp)
    .seh_savereg %r12, 424
    movq %r13, 416(%rbp)
    .seh_savereg %r13, 416
    movq %r14, 408(%rbp)
    .seh_savereg %r14, 408
    movq %r15, 400(%rbp)
    .seh_savereg %r15, 400
    .seh_endprologue
    movq %rcx, 640(%rbp)
    movq %rdx, 648(%rbp)
    movq %r8, 656(%rbp)
    movq %r9, 664(%rbp)
    movq 648(%rbp), %r10
    leaq 344(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 344(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_12float_syntax
    addq $48, %rsp
    leaq 342(%rbp), %r10
    movw %ax, 0(%r10)
    leaq 342(%rbp), %r13
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L30_1
    jmp .L30_2
.L30_1:
    movq %r13, %r10
    movzbl (%r10), %r12d
    jmp .L30_3
.L30_2:
    leaq 360(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_14invalid_number(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_144(%rip), %r13
    leaq 320(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 440(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 440(%rbp), %rax
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
    movq 432(%rbp), %rbx
    movq 424(%rbp), %r12
    movq 416(%rbp), %r13
    movq 408(%rbp), %r14
    movq 400(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
.L30_4:
.L30_3:
    movzbl %r12b, %r13d
    movzbl %r13b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L30_6
.L30_5:
    leaq 316(%rbp), %r14
    movl $1, %ecx
    cmpl %ecx, %r13d
    jne .L30_9
.L30_8:
    movl $2139095040, %eax
    movl %eax, %r12d
    jmp .L30_10
.L30_9:
    movl $2143289344, %eax
    movl %eax, %r12d
.L30_10:
    movq %r14, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_148(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $45, %ecx
    cmpl %ecx, %r13d
    jne .L30_12
.L30_11:
    movl $2147483648, %ecx
    movl %r12d, %ebx
    orl %ecx, %ebx
    movq %r14, %r10
    movl %ebx, (%r10)
    jmp .L30_13
.L30_12:
.L30_13:
    leaq 120(%rbp), %r10
    movq %r14, (%r10)
    leaq 116(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $4, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L30_33
    jmp .L30_34
.L30_34:
    leaq .Ltext_222(%rip), %rdi
    leaq .Ltext_221(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L30_33:
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq 104(%rbp), %r10
    movss %xmm12, (%r10)
    jmp .L30_36
.L30_35:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L30_36:
    leaq 360(%rbp), %rbx
    movq %rbx, %r10
    movss %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 440(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 440(%rbp), %rax
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
    movq 432(%rbp), %rbx
    movq 424(%rbp), %r12
    movq 416(%rbp), %r13
    movq 408(%rbp), %r14
    movq 400(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
.L30_14:
    jmp .L30_7
.L30_6:
.L30_7:
    leaq 304(%rbp), %r13
    subq $32, %rsp
    leaq 264(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_NumericLocale_create
    addq $32, %rsp
    leaq 264(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L30_16
    jmp .L30_15
.L30_16:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 360(%rbp), %r12
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
    movq 440(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 440(%rbp), %rax
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
    movq 432(%rbp), %rbx
    movq 424(%rbp), %r12
    movq 416(%rbp), %r13
    movq 408(%rbp), %r14
    movq 400(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
.L30_17:
.L30_15:
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq 248(%rbp), %rax
    movq %rax, 8(%rbp)
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 200(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_copy
    addq $48, %rsp
    leaq 200(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L30_19
    jmp .L30_18
.L30_19:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 360(%rbp), %r12
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
    movq %r13, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L30_40
    jmp .L30_38
.L30_40:
.L30_37:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L30_39
.L30_38:
.L30_39:
.L30_41:
    movq %r12, %rsi
    movq 440(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 440(%rbp), %rax
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
    movq 432(%rbp), %rbx
    movq 424(%rbp), %r12
    movq 416(%rbp), %r13
    movq 408(%rbp), %r14
    movq 400(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
.L30_20:
.L30_18:
    movq %r15, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 192(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movl $0, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_c_9set_errno
    addq $32, %rsp
    leaq 188(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 8(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_NumericLocale_handle
    addq $32, %rsp
    movq %rax, %r14
    leaq 88(%rbp), %r10
    movq %r12, (%r10)
    leaq 72(%rbp), %r10
    movq %rbx, (%r10)
    leaq 56(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call _strtof_l
    addq $32, %rsp
    movaps %xmm0, %xmm12
    leaq 48(%rbp), %r10
    movss %xmm12, (%r10)
    jmp .L30_43
.L30_42:
    leaq .Ltext_143(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L30_43:
    movq 0(%rbp), %r10
    movss %xmm12, (%r10)
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movl %r12d, %eax
    movq %rax, 24(%rsp)
    leaq 152(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_22check_float_conversion
    addq $48, %rsp
    leaq 152(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L30_22
    jmp .L30_21
.L30_22:
    leaq 360(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
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
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L30_47
    jmp .L30_45
.L30_47:
.L30_44:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L30_46
.L30_45:
.L30_46:
.L30_48:
    movq %rbx, %rsi
    movq 440(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 440(%rbp), %rax
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
    movq 432(%rbp), %rbx
    movq 424(%rbp), %r12
    movq 416(%rbp), %r13
    movq 408(%rbp), %r14
    movq 400(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
.L30_23:
.L30_21:
    movq 0(%rbp), %rax
    leaq 32(%rbp), %r10
    movq %rax, (%r10)
    leaq 28(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $4, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L30_49
    jmp .L30_50
.L30_50:
    leaq .Ltext_222(%rip), %rdi
    leaq .Ltext_221(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L30_49:
    movq %rbx, %r10
    movl (%r10), %r14d
    leaq 16(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L30_52
.L30_51:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L30_52:
    movl $2147483647, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl $2139095040, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L30_68
    jmp .L30_27
.L30_68:
    movl %r15d, %ebx
    jmp .L30_28
.L30_27:
    movl $34, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L30_29
    jmp .L30_69
.L30_69:
    movl %r14d, %ebx
    jmp .L30_30
.L30_29:
    movl $1065353216, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L30_30:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L30_28:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L30_24
    jmp .L30_25
.L30_24:
    leaq 360(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_19number_out_of_range(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_149(%rip), %r14
    leaq 136(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $35, %rax
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
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L30_56
    jmp .L30_54
.L30_56:
.L30_53:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L30_55
.L30_54:
.L30_55:
.L30_57:
    movq %rbx, %rsi
    movq 440(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 440(%rbp), %rax
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
    movq 432(%rbp), %rbx
    movq 424(%rbp), %r12
    movq 416(%rbp), %r13
    movq 408(%rbp), %r14
    movq 400(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
.L30_31:
    jmp .L30_26
.L30_25:
.L30_26:
    movq 0(%rbp), %r10
    movss (%r10), %xmm12
    leaq 360(%rbp), %rbx
    movq %rbx, %r10
    movss %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
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
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L30_61
    jmp .L30_59
.L30_61:
.L30_58:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L30_60
.L30_59:
.L30_60:
.L30_62:
    movq %rbx, %rsi
    movq 440(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 440(%rbp), %rax
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
    movq 432(%rbp), %rbx
    movq 424(%rbp), %r12
    movq 416(%rbp), %r13
    movq 408(%rbp), %r14
    movq 400(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
.L30_32:
    leaq 248(%rbp), %rbx
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
    leaq 304(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L30_66
    jmp .L30_64
.L30_66:
    movq %rbx, %r12
.L30_63:
    movq %rbx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L30_65
.L30_64:
.L30_65:
.L30_67:
    leaq .Ltext_150(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_10format_f64
lb_strings_10format_f64:
    .seh_proc lb_strings_10format_f64
    pushq %rbp
    .seh_pushreg %rbp
    subq $352, %rsp
    .seh_stackalloc 352
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 168(%rbp)
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
    movq %rbx, 160(%rbp)
    .seh_savereg %rbx, 160
    movq %r12, 152(%rbp)
    .seh_savereg %r12, 152
    movq %r13, 144(%rbp)
    .seh_savereg %r13, 144
    movq %r14, 136(%rbp)
    .seh_savereg %r14, 136
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movsd %xmm1, 376(%rbp)
    movq 376(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 384(%rbp), %r10
    leaq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 72(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq 56(%rbp), %rbx
    subq $48, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 8(%rsp)
    movl $17, %eax
    movq %rax, 16(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 24(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rdx, %xmm1
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_12format_float
    addq $48, %rsp
    leaq 8(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L31_2
    jmp .L31_1
.L31_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 88(%rbp), %r13
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
    movq 168(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 168(%rbp), %rax
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
    movq 160(%rbp), %rbx
    movq 152(%rbp), %r12
    movq 144(%rbp), %r13
    movq 136(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L31_3:
.L31_1:
    leaq 88(%rbp), %rbx
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
    movq 168(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 168(%rbp), %rax
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
    movq 160(%rbp), %rbx
    movq 152(%rbp), %r12
    movq 144(%rbp), %r13
    movq 136(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L31_4:
    leaq .Ltext_151(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_10format_f32
lb_strings_10format_f32:
    .seh_proc lb_strings_10format_f32
    pushq %rbp
    .seh_pushreg %rbp
    subq $352, %rsp
    .seh_stackalloc 352
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 168(%rbp)
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
    movq %rbx, 160(%rbp)
    .seh_savereg %rbx, 160
    movq %r12, 152(%rbp)
    .seh_savereg %r12, 152
    movq %r13, 144(%rbp)
    .seh_savereg %r13, 144
    movq %r14, 136(%rbp)
    .seh_savereg %r14, 136
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movsd %xmm1, 376(%rbp)
    movq 376(%rbp), %rax
    movl %eax, 72(%rbp)
    movq 384(%rbp), %r10
    leaq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 72(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    cvtss2sd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    leaq 56(%rbp), %rbx
    subq $48, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 8(%rsp)
    movl $9, %eax
    movq %rax, 16(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 24(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rdx, %xmm1
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_12format_float
    addq $48, %rsp
    leaq 8(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L32_2
    jmp .L32_1
.L32_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 88(%rbp), %r13
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
    movq 168(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 168(%rbp), %rax
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
    movq 160(%rbp), %rbx
    movq 152(%rbp), %r12
    movq 144(%rbp), %r13
    movq 136(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L32_3:
.L32_1:
    leaq 88(%rbp), %rbx
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
    movq 168(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 168(%rbp), %rax
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
    movq 160(%rbp), %rbx
    movq 152(%rbp), %r12
    movq 144(%rbp), %r13
    movq 136(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L32_4:
    leaq .Ltext_152(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_NumericLocale_create
lb_strings_NumericLocale_create:
    .seh_proc lb_strings_NumericLocale_create
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
    leaq .Ltext_153(%rip), %rbx
    subq $32, %rsp
    movl $4, %eax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call _create_locale
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L33_1
    jmp .L33_2
.L33_1:
    jmp .L33_3
.L33_2:
    leaq 24(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r12d
    movl $12, %ecx
    cmpl %ecx, %r12d
    jne .L33_5
.L33_4:
    leaq lb_memory_exhausted(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    jmp .L33_6
.L33_5:
    leaq lb_strings_17conversion_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
.L33_6:
    movq %r13, %r10
    movl %r12d, (%r10)
    leaq .Ltext_154(%rip), %r14
    leaq 8(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $41, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
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
    movq 64(%rbp), %r15
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L33_7:
.L33_3:
    leaq 0(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq 24(%rbp), %r13
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
    movq %r13, %rsi
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
    movq 64(%rbp), %r15
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L33_8:
    leaq .Ltext_155(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_NumericLocale_handle
lb_strings_NumericLocale_handle:
    .seh_proc lb_strings_NumericLocale_handle
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
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 24(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L34_1
    jmp .L34_2
.L34_1:
    jmp .L34_3
.L34_2:
    leaq .Ltext_156(%rip), %rbx
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $28, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_157(%rip), %rbx
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
    leaq .Ltext_157(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_3:
    movq %rbx, %rax
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
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L34_4:
    leaq .Ltext_157(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_12format_float
lb_strings_12format_float:
    .seh_proc lb_strings_12format_float
    pushq %rbp
    .seh_pushreg %rbp
    subq $736, %rsp
    .seh_stackalloc 736
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 552(%rbp)
    movq %rdi, 728(%rbp)
    .seh_savereg %rdi, 728
    movq %rsi, 720(%rbp)
    .seh_savereg %rsi, 720
    movdqu %xmm6, 704(%rbp)
    .seh_savexmm %xmm6, 704
    movdqu %xmm7, 688(%rbp)
    .seh_savexmm %xmm7, 688
    movdqu %xmm8, 672(%rbp)
    .seh_savexmm %xmm8, 672
    movdqu %xmm9, 656(%rbp)
    .seh_savexmm %xmm9, 656
    movdqu %xmm10, 640(%rbp)
    .seh_savexmm %xmm10, 640
    movdqu %xmm11, 624(%rbp)
    .seh_savexmm %xmm11, 624
    movdqu %xmm12, 608(%rbp)
    .seh_savexmm %xmm12, 608
    movdqu %xmm13, 592(%rbp)
    .seh_savexmm %xmm13, 592
    movdqu %xmm14, 576(%rbp)
    .seh_savexmm %xmm14, 576
    movdqu %xmm15, 560(%rbp)
    .seh_savexmm %xmm15, 560
    movq %rbx, 544(%rbp)
    .seh_savereg %rbx, 544
    movq %r12, 536(%rbp)
    .seh_savereg %r12, 536
    movq %r13, 528(%rbp)
    .seh_savereg %r13, 528
    movq %r14, 520(%rbp)
    .seh_savereg %r14, 520
    movq %r15, 512(%rbp)
    .seh_savereg %r15, 512
    .seh_endprologue
    movq %rcx, 752(%rbp)
    movq %rdx, 760(%rbp)
    movq %r8, 768(%rbp)
    movq %r9, 776(%rbp)
    movsd %xmm1, 760(%rbp)
    movq 760(%rbp), %rax
    movq %rax, 448(%rbp)
    movq 768(%rbp), %rax
    movl %eax, 432(%rbp)
    movq 776(%rbp), %r10
    leaq 416(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 448(%rbp), %rbx
    leaq 64(%rbp), %r10
    movq %rbx, (%r10)
    leaq 56(%rbp), %rax
    movq %rax, 24(%rbp)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $8, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L35_35
    jmp .L35_36
.L35_36:
    leaq .Ltext_222(%rip), %rdi
    leaq .Ltext_221(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L35_35:
    movq 24(%rbp), %r10
    movq (%r10), %r13
.L35_38:
    movabsq $9223372036854775807, %rcx
    movq %r13, %r14
    andq %rcx, %r14
    movabsq $9218868437227405312, %rcx
    cmpq %rcx, %r14
    jb .L35_2
.L35_1:
    leaq 400(%rbp), %r12
    movabsq $9218868437227405312, %rcx
    cmpq %rcx, %r14
    jbe .L35_5
.L35_4:
    leaq .Ltext_158(%rip), %rbx
    leaq 368(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $3, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 384(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $3, %rax
    movq %rax, %rbx
    jmp .L35_6
.L35_5:
.L35_11:
    movq $63, %rcx
    movq %r13, %rbx
    shrq %cl, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L35_8
.L35_7:
    leaq .Ltext_161(%rip), %rbx
    leaq 336(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $4, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 352(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $4, %rax
    movq %rax, %rbx
    jmp .L35_9
.L35_8:
    leaq .Ltext_162(%rip), %rbx
    leaq 320(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $3, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 352(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $3, %rax
    movq %rax, %rbx
.L35_9:
    leaq 352(%rbp), %r13
    leaq 384(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L35_6:
    leaq 384(%rbp), %r13
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 416(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    cmpq %rbx, %r15
    jae .L35_13
.L35_12:
    leaq 464(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_163(%rip), %r13
    leaq 304(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $62, %rax
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
    movq 552(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 552(%rbp), %rax
    movq 728(%rbp), %rdi
    movq 720(%rbp), %rsi
    movdqu 704(%rbp), %xmm6
    movdqu 688(%rbp), %xmm7
    movdqu 672(%rbp), %xmm8
    movdqu 656(%rbp), %xmm9
    movdqu 640(%rbp), %xmm10
    movdqu 624(%rbp), %xmm11
    movdqu 608(%rbp), %xmm12
    movdqu 592(%rbp), %xmm13
    movdqu 576(%rbp), %xmm14
    movdqu 560(%rbp), %xmm15
    movq 544(%rbp), %rbx
    movq 536(%rbp), %r12
    movq 528(%rbp), %r13
    movq 520(%rbp), %r14
    movq 512(%rbp), %r15
    leaq 736(%rbp), %rsp
    popq %rbp
    ret
.L35_13:
.L35_14:
    subq $64, %rsp
    movq %r13, %r10
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
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq %r14, %r10
    movq (%r10), %r15
    movq 48(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    movq $1, %rcx
    addq %rcx, %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_164(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 0(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_164(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 0(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L35_16
.L35_17:
    leaq .Ltext_164(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L35_16:
    leaq 288(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq 0(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 272(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 0(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 464(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 552(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 552(%rbp), %rax
    movq 728(%rbp), %rdi
    movq 720(%rbp), %rsi
    movdqu 704(%rbp), %xmm6
    movdqu 688(%rbp), %xmm7
    movdqu 672(%rbp), %xmm8
    movdqu 656(%rbp), %xmm9
    movdqu 640(%rbp), %xmm10
    movdqu 624(%rbp), %xmm11
    movdqu 608(%rbp), %xmm12
    movdqu 592(%rbp), %xmm13
    movdqu 576(%rbp), %xmm14
    movdqu 560(%rbp), %xmm15
    movq 544(%rbp), %rbx
    movq 536(%rbp), %r12
    movq 528(%rbp), %r13
    movq 520(%rbp), %r14
    movq 512(%rbp), %r15
    leaq 736(%rbp), %rsp
    popq %rbp
    ret
.L35_2:
.L35_3:
    leaq 264(%rbp), %r14
    subq $32, %rsp
    leaq 224(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_NumericLocale_create
    addq $32, %rsp
    leaq 224(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L35_20
    jmp .L35_19
.L35_20:
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 464(%rbp), %r12
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
    movq 552(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 552(%rbp), %rax
    movq 728(%rbp), %rdi
    movq 720(%rbp), %rsi
    movdqu 704(%rbp), %xmm6
    movdqu 688(%rbp), %xmm7
    movdqu 672(%rbp), %xmm8
    movdqu 656(%rbp), %xmm9
    movdqu 640(%rbp), %xmm10
    movdqu 624(%rbp), %xmm11
    movdqu 608(%rbp), %xmm12
    movdqu 592(%rbp), %xmm13
    movdqu 576(%rbp), %xmm14
    movdqu 560(%rbp), %xmm15
    movq 544(%rbp), %rbx
    movq 536(%rbp), %r12
    movq 528(%rbp), %r13
    movq 520(%rbp), %r14
    movq 512(%rbp), %r15
    leaq 736(%rbp), %rsp
    popq %rbp
    ret
.L35_19:
    movq %r15, %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq 192(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq 176(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 160(%rbp), %r12
    leaq 432(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movslq %r13d, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    leaq 64(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $8, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L35_39
    jmp .L35_40
.L35_40:
    leaq .Ltext_222(%rip), %rdi
    leaq .Ltext_221(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L35_39:
    movq 24(%rbp), %r10
    movq (%r10), %rbx
.L35_42:
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_166(%rip), %r13
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_NumericLocale_handle
    addq $32, %rsp
    movq %rax, %r15
    subq $48, %rsp
    movq $2, %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $32, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    movq 16(%rbp), %rax
    movq %rax, 40(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call __stdio_common_vsprintf
    addq $48, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    setl %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L35_63
    jmp .L35_25
.L35_63:
    movl %r15d, %ebx
    jmp .L35_26
.L35_25:
    movslq %r13d, %rbx
    movq $32, %rcx
    cmpq %rcx, %rbx
    setae %al
    movzbl %al, %ebx
.L35_26:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L35_22
    jmp .L35_23
.L35_22:
    leaq 464(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_17conversion_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_167(%rip), %r13
    leaq 144(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $32, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L35_46
    jmp .L35_44
.L35_46:
.L35_43:
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L35_45
.L35_44:
.L35_45:
.L35_47:
    movq %rbx, %rsi
    movq 552(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 552(%rbp), %rax
    movq 728(%rbp), %rdi
    movq 720(%rbp), %rsi
    movdqu 704(%rbp), %xmm6
    movdqu 688(%rbp), %xmm7
    movdqu 672(%rbp), %xmm8
    movdqu 656(%rbp), %xmm9
    movdqu 640(%rbp), %xmm10
    movdqu 624(%rbp), %xmm11
    movdqu 608(%rbp), %xmm12
    movdqu 592(%rbp), %xmm13
    movdqu 576(%rbp), %xmm14
    movdqu 560(%rbp), %xmm15
    movq 544(%rbp), %rbx
    movq 536(%rbp), %r12
    movq 528(%rbp), %r13
    movq 520(%rbp), %r14
    movq 512(%rbp), %r15
    leaq 736(%rbp), %rsp
    popq %rbp
    ret
.L35_23:
.L35_24:
    leaq 416(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %r15
    movslq %r13d, %r12
    cmpq %r12, %r15
    jae .L35_29
.L35_28:
    leaq 464(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_163(%rip), %r13
    leaq 128(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $62, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L35_51
    jmp .L35_49
.L35_51:
.L35_48:
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L35_50
.L35_49:
.L35_50:
.L35_52:
    movq %rbx, %rsi
    movq 552(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 552(%rbp), %rax
    movq 728(%rbp), %rdi
    movq 720(%rbp), %rsi
    movdqu 704(%rbp), %xmm6
    movdqu 688(%rbp), %xmm7
    movdqu 672(%rbp), %xmm8
    movdqu 656(%rbp), %xmm9
    movdqu 640(%rbp), %xmm10
    movdqu 624(%rbp), %xmm11
    movdqu 608(%rbp), %xmm12
    movdqu 592(%rbp), %xmm13
    movdqu 576(%rbp), %xmm14
    movdqu 560(%rbp), %xmm15
    movq 544(%rbp), %rbx
    movq 536(%rbp), %r12
    movq 528(%rbp), %r13
    movq 520(%rbp), %r14
    movq 512(%rbp), %r15
    leaq 736(%rbp), %rsp
    popq %rbp
    ret
.L35_29:
.L35_30:
    leaq 112(%rbp), %r13
    movq 40(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $32, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq %rbx, %r10
    movq (%r10), %r15
    movq 32(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_168(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_168(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L35_32
.L35_33:
    leaq .Ltext_168(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L35_32:
    leaq 96(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq 464(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L35_56
    jmp .L35_54
.L35_56:
.L35_53:
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L35_55
.L35_54:
.L35_55:
.L35_57:
    movq %r13, %rsi
    movq 552(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 552(%rbp), %rax
    movq 728(%rbp), %rdi
    movq 720(%rbp), %rsi
    movdqu 704(%rbp), %xmm6
    movdqu 688(%rbp), %xmm7
    movdqu 672(%rbp), %xmm8
    movdqu 656(%rbp), %xmm9
    movdqu 640(%rbp), %xmm10
    movdqu 624(%rbp), %xmm11
    movdqu 608(%rbp), %xmm12
    movdqu 592(%rbp), %xmm13
    movdqu 576(%rbp), %xmm14
    movdqu 560(%rbp), %xmm15
    movq 544(%rbp), %rbx
    movq 536(%rbp), %r12
    movq 528(%rbp), %r13
    movq 520(%rbp), %r14
    movq 512(%rbp), %r15
    leaq 736(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_strings_22restore_numeric_locale
lb_strings_22restore_numeric_locale:
    .seh_proc lb_strings_22restore_numeric_locale
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
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call uselocale
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L36_1
    jmp .L36_2
.L36_1:
    jmp .L36_3
.L36_2:
    leaq .Ltext_169(%rip), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $43, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_170(%rip), %rbx
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
    leaq .Ltext_170(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L36_3:
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
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_strings_22check_float_conversion
lb_strings_22check_float_conversion:
    .seh_proc lb_strings_22check_float_conversion
    pushq %rbp
    .seh_pushreg %rbp
    subq $352, %rsp
    .seh_stackalloc 352
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 168(%rbp)
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
    movq %rbx, 160(%rbp)
    .seh_savereg %rbx, 160
    movq %r12, 152(%rbp)
    .seh_savereg %r12, 152
    movq %r13, 144(%rbp)
    .seh_savereg %r13, 144
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 376(%rbp), %r10
    leaq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 384(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 392(%rbp), %rax
    movl %eax, 64(%rbp)
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $12, %ecx
    cmpl %ecx, %ebx
    jne .L37_2
.L37_1:
    leaq 112(%rbp), %rbx
    leaq lb_memory_exhausted(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_171(%rip), %r12
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $43, %rax
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
    movq 168(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 168(%rbp), %rax
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
    movq 160(%rbp), %rbx
    movq 152(%rbp), %r12
    movq 144(%rbp), %r13
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L37_4:
    jmp .L37_3
.L37_2:
.L37_3:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L37_8
    jmp .L37_19
.L37_19:
    movl %r12d, %ebx
    jmp .L37_9
.L37_8:
    movl $34, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L37_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L37_5
    jmp .L37_6
.L37_5:
    leaq 112(%rbp), %rbx
    leaq lb_strings_17conversion_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_172(%rip), %r12
    leaq 32(%rbp), %r13
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
    movq 168(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 168(%rbp), %rax
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
    movq 160(%rbp), %rbx
    movq 152(%rbp), %r12
    movq 144(%rbp), %r13
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L37_10:
    jmp .L37_7
.L37_6:
.L37_7:
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L37_11
    jmp .L37_12
.L37_11:
    jmp .L37_13
.L37_12:
    leaq 112(%rbp), %rbx
    leaq lb_strings_14invalid_number(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_173(%rip), %r12
    leaq 16(%rbp), %r13
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
    movq 168(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 168(%rbp), %rax
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
    movq 160(%rbp), %rbx
    movq 152(%rbp), %r12
    movq 144(%rbp), %r13
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L37_14:
.L37_13:
    leaq 96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_174(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    cmpq %rbx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L37_16
.L37_15:
    leaq 112(%rbp), %rbx
    leaq lb_strings_14invalid_number(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_175(%rip), %r12
    leaq 0(%rbp), %r13
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
    movq 168(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 168(%rbp), %rax
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
    movq 160(%rbp), %rbx
    movq 152(%rbp), %r12
    movq 144(%rbp), %r13
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L37_18:
    jmp .L37_17
.L37_16:
.L37_17:
    leaq 112(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 168(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 168(%rbp), %rax
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
    movq 160(%rbp), %rbx
    movq 152(%rbp), %r12
    movq 144(%rbp), %r13
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_strings_12float_syntax
lb_strings_12float_syntax:
    .seh_proc lb_strings_12float_syntax
    pushq %rbp
    .seh_pushreg %rbp
    subq $480, %rsp
    .seh_stackalloc 480
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 472(%rbp)
    .seh_savereg %rdi, 472
    movq %rsi, 464(%rbp)
    .seh_savereg %rsi, 464
    movdqu %xmm6, 448(%rbp)
    .seh_savexmm %xmm6, 448
    movdqu %xmm7, 432(%rbp)
    .seh_savexmm %xmm7, 432
    movdqu %xmm8, 416(%rbp)
    .seh_savexmm %xmm8, 416
    movdqu %xmm9, 400(%rbp)
    .seh_savexmm %xmm9, 400
    movdqu %xmm10, 384(%rbp)
    .seh_savexmm %xmm10, 384
    movdqu %xmm11, 368(%rbp)
    .seh_savexmm %xmm11, 368
    movdqu %xmm12, 352(%rbp)
    .seh_savexmm %xmm12, 352
    movdqu %xmm13, 336(%rbp)
    .seh_savexmm %xmm13, 336
    movdqu %xmm14, 320(%rbp)
    .seh_savexmm %xmm14, 320
    movdqu %xmm15, 304(%rbp)
    .seh_savexmm %xmm15, 304
    movq %rbx, 296(%rbp)
    .seh_savereg %rbx, 296
    movq %r12, 288(%rbp)
    .seh_savereg %r12, 288
    movq %r13, 280(%rbp)
    .seh_savereg %r13, 280
    movq %r14, 272(%rbp)
    .seh_savereg %r14, 272
    movq %r15, 264(%rbp)
    .seh_savereg %r15, 264
    .seh_endprologue
    movq %rcx, 496(%rbp)
    movq %rdx, 504(%rbp)
    movq %r8, 512(%rbp)
    movq %r9, 520(%rbp)
    movq 496(%rbp), %r10
    leaq 240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 240(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L38_2
.L38_1:
    leaq 238(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq 262(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 296(%rbp), %rbx
    movq 288(%rbp), %r12
    movq 280(%rbp), %r13
    movq 272(%rbp), %r14
    movq 264(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L38_4:
    jmp .L38_3
.L38_2:
.L38_3:
    movq %rbx, %r10
    movq (%r10), %r13
    movq $0, %rax
    movq 64(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_176(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r13, %r10
    movzbl (%r10), %r14d
    movl $43, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L38_84
    jmp .L38_8
.L38_84:
    movl %r14d, %ebx
    jmp .L38_9
.L38_8:
    movq %r13, %r10
    movzbl (%r10), %ebx
    movl $45, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L38_9:
    movzbl %bl, %r14d
    testl %r14d, %r14d
    jne .L38_5
    jmp .L38_6
.L38_5:
    movq $1, %rax
    movq %rax, %rbx
    jmp .L38_7
.L38_6:
    movq $0, %rax
    movq %rax, %rbx
.L38_7:
    movq 64(%rbp), %rax
    cmpq %rbx, %rax
    jne .L38_11
.L38_10:
    leaq 236(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq 262(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 296(%rbp), %rbx
    movq 288(%rbp), %r12
    movq 280(%rbp), %r13
    movq 272(%rbp), %r14
    movq 264(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L38_13:
    jmp .L38_12
.L38_11:
.L38_12:
    leaq 216(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 64(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_177(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 64(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_177(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 64(%rbp), %rcx
    cmpq %rcx, %rbx
    jbe .L38_14
.L38_15:
    leaq .Ltext_177(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L38_14:
    movq %r13, %r14
    addq %rbx, %r14
    movq 64(%rbp), %rax
    subq %rbx, %rax
    movq %rax, 56(%rbp)
    leaq 200(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq 56(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq 184(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq 56(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_162(%rip), %r14
    leaq 168(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $3, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r15, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_10ascii_word
    addq $64, %rsp
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L38_85
    jmp .L38_19
.L38_85:
    movl %r14d, %r15d
    jmp .L38_20
.L38_19:
    leaq .Ltext_178(%rip), %r14
    leaq 152(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $8, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r15, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_10ascii_word
    addq $64, %rsp
    movl %eax, %r15d
.L38_20:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L38_16
    jmp .L38_17
.L38_16:
    leaq 150(%rbp), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 262(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 296(%rbp), %rbx
    movq 288(%rbp), %r12
    movq 280(%rbp), %r13
    movq 272(%rbp), %r14
    movq 264(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L38_21:
    jmp .L38_18
.L38_17:
.L38_18:
    leaq .Ltext_158(%rip), %r14
    leaq 128(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $3, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r15, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_10ascii_word
    addq $64, %rsp
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L38_22
    jmp .L38_23
.L38_22:
    leaq 126(%rbp), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 262(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 296(%rbp), %rbx
    movq 288(%rbp), %r12
    movq 280(%rbp), %r13
    movq 272(%rbp), %r14
    movq 264(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L38_25:
    jmp .L38_24
.L38_23:
.L38_24:
    leaq 96(%rbp), %r14
    movq %rbx, %r15
    movq $0, %rax
    movq %rax, 32(%rbp)
.L38_26:
    movq 64(%rbp), %rcx
    cmpq %rcx, %r15
    setb %al
    movzbl %al, %eax
    movl %eax, 48(%rbp)
    movl 48(%rbp), %eax
    testl %eax, %eax
    jne .L38_29
    jmp .L38_86
.L38_86:
    movl 48(%rbp), %eax
    movl %eax, %r12d
    jmp .L38_30
.L38_29:
    movq %r13, %r12
    addq %r15, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 96(%rbp), %r10
    movl %r12d, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r12d
    movl $48, %ecx
    cmpl %ecx, %r12d
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L38_72
    jmp .L38_87
.L38_87:
    movl %ebx, %r12d
    jmp .L38_73
.L38_72:
    movl $57, %ecx
    cmpl %ecx, %r12d
    setbe %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L38_73:
    movzbl %r12b, %ebx
    movzbl %bl, %ebx
    leaq 88(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L38_75
.L38_74:
    leaq .Ltext_194(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L38_75:
    movl %ebx, %r12d
.L38_30:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L38_27
    jmp .L38_28
.L38_27:
    movq 32(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_180(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_181(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %r15
    movq %rbx, %rax
    movq %rax, 32(%rbp)
    jmp .L38_26
.L38_28:
    movl 48(%rbp), %eax
    testl %eax, %eax
    jne .L38_34
    jmp .L38_88
.L38_88:
    movl 48(%rbp), %eax
    movl %eax, %ebx
    jmp .L38_35
.L38_34:
    movq %r13, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $46, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L38_35:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L38_31
    jmp .L38_32
.L38_31:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_183(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    leaq 96(%rbp), %r12
    movq 32(%rbp), %rax
    movq %rax, 24(%rbp)
.L38_36:
    movq 64(%rbp), %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L38_39
    jmp .L38_89
.L38_89:
    movl %r15d, %r14d
    jmp .L38_40
.L38_39:
    movq %r13, %r14
    addq %rbx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    leaq 96(%rbp), %r10
    movl %r14d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r14d
    movl $48, %ecx
    cmpl %ecx, %r14d
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L38_76
    jmp .L38_90
.L38_90:
    movl %r15d, %r14d
    jmp .L38_77
.L38_76:
    movl $57, %ecx
    cmpl %ecx, %r14d
    setbe %al
    movzbl %al, %r15d
    movl %r15d, %r14d
.L38_77:
    movzbl %r14b, %r15d
    movzbl %r15b, %r15d
    leaq 80(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L38_79
.L38_78:
    leaq .Ltext_194(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L38_79:
    movl %r15d, %r14d
.L38_40:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L38_37
    jmp .L38_38
.L38_37:
    movq 24(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_185(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_186(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %r15, %rbx
    movq %r14, %rax
    movq %rax, 24(%rbp)
    jmp .L38_36
.L38_38:
    movq %rbx, %rax
    movq %rax, 16(%rbp)
    movq 24(%rbp), %rax
    movq %rax, %r14
    jmp .L38_33
.L38_32:
    movq %r15, %rax
    movq %rax, 16(%rbp)
    movq 32(%rbp), %rax
    movq %rax, %r14
.L38_33:
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L38_42
.L38_41:
    leaq 124(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq 262(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 296(%rbp), %rbx
    movq 288(%rbp), %r12
    movq 280(%rbp), %r13
    movq 272(%rbp), %r14
    movq 264(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L38_44:
    jmp .L38_43
.L38_42:
.L38_43:
    movq 16(%rbp), %rax
    movq 64(%rbp), %rcx
    cmpq %rcx, %rax
    setb %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L38_48
    jmp .L38_91
.L38_91:
    movl %ebx, %r14d
    jmp .L38_49
.L38_48:
    movq 16(%rbp), %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r14d
    movl $101, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L38_92
    jmp .L38_50
.L38_92:
    movl %r14d, %ebx
    jmp .L38_51
.L38_50:
    movq %rbx, %r10
    movzbl (%r10), %r14d
    movl $69, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %ebx
.L38_51:
    movzbl %bl, %r14d
.L38_49:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L38_45
    jmp .L38_46
.L38_45:
    movq 16(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_188(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 64(%rbp), %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L38_55
    jmp .L38_93
.L38_93:
    movl %r14d, %r12d
    jmp .L38_56
.L38_55:
    movq %r13, %r12
    addq %rbx, %r12
    movq %r12, %r10
    movzbl (%r10), %r14d
    movl $43, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L38_94
    jmp .L38_57
.L38_94:
    movl %r14d, %r12d
    jmp .L38_58
.L38_57:
    movq %r12, %r10
    movzbl (%r10), %r14d
    movl $45, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L38_58:
    movzbl %r12b, %r14d
    movl %r14d, %r12d
.L38_56:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L38_52
    jmp .L38_53
.L38_52:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_190(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
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
    jmp .L38_54
.L38_53:
    movq %rbx, %rax
    movq %rax, 8(%rbp)
.L38_54:
    leaq 96(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rax, %r14
.L38_59:
    movq 64(%rbp), %rcx
    cmpq %rcx, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L38_62
    jmp .L38_95
.L38_95:
    movl %r15d, %r12d
    jmp .L38_63
.L38_62:
    movq %r13, %r12
    addq %r14, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 96(%rbp), %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $48, %ecx
    cmpl %ecx, %r12d
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L38_80
    jmp .L38_96
.L38_96:
    movl %r15d, %r12d
    jmp .L38_81
.L38_80:
    movl $57, %ecx
    cmpl %ecx, %r12d
    setbe %al
    movzbl %al, %r15d
    movl %r15d, %r12d
.L38_81:
    movzbl %r12b, %r15d
    movzbl %r15b, %r15d
    leaq 72(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L38_83
.L38_82:
    leaq .Ltext_194(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L38_83:
    movl %r15d, %r12d
.L38_63:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L38_60
    jmp .L38_61
.L38_60:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_192(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %r14
    jmp .L38_59
.L38_61:
    movq 8(%rbp), %rax
    cmpq %r14, %rax
    jne .L38_65
.L38_64:
    leaq 122(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq 262(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 296(%rbp), %rbx
    movq 288(%rbp), %r12
    movq 280(%rbp), %r13
    movq 272(%rbp), %r14
    movq 264(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L38_67:
    jmp .L38_66
.L38_65:
.L38_66:
    movq %r14, %rbx
    jmp .L38_47
.L38_46:
    movq 16(%rbp), %rax
    movq %rax, %rbx
.L38_47:
    movq 64(%rbp), %rax
    cmpq %rbx, %rax
    jne .L38_69
.L38_68:
    leaq 118(%rbp), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 120(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    jmp .L38_70
.L38_69:
    leaq 116(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq 120(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
.L38_70:
    leaq 120(%rbp), %rbx
    leaq 262(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 296(%rbp), %rbx
    movq 288(%rbp), %r12
    movq 280(%rbp), %r13
    movq 272(%rbp), %r14
    movq 264(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L38_71:
    leaq .Ltext_193(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_10ascii_word
lb_strings_10ascii_word:
    .seh_proc lb_strings_10ascii_word
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
    movq %r15, 56(%rbp)
    .seh_savereg %r15, 56
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 288(%rbp), %r10
    leaq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 296(%rbp), %r10
    leaq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 40(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    leaq 24(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq 16(%rbp), %rax
    movq 8(%rbp), %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L39_2
.L39_1:
    movl $0, %eax
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
    movq 56(%rbp), %r15
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L39_4:
    jmp .L39_3
.L39_2:
.L39_3:
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L39_5:
    movq 16(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L39_7
.L39_6:
    movq %r15, %rbx
    addq %r14, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L39_11
    jmp .L39_20
.L39_20:
    movl %r13d, %r12d
    jmp .L39_12
.L39_11:
    movl $90, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r12d
.L39_12:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L39_8
    jmp .L39_9
.L39_8:
    movl $32, %ecx
    movl %ebx, %r13d
    addl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L39_13
.L39_14:
    leaq .Ltext_196(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L39_13:
    movl %r13d, %ebx
    jmp .L39_10
.L39_9:
.L39_10:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movq 8(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_197(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 0(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L39_16
.L39_15:
    movl $0, %eax
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
    movq 56(%rbp), %r15
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L39_18:
    jmp .L39_17
.L39_16:
.L39_17:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L39_5
.L39_7:
    movl $1, %eax
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
    movq 56(%rbp), %r15
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L39_19:
    leaq .Ltext_199(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_Builder_create
lb_strings_Builder_create:
    .seh_proc lb_strings_Builder_create
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
    movq %rax, 184(%rbp)
    leaq 184(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L40_2
.L40_1:
    movq %rbx, %r12
    jmp .L40_3
.L40_2:
    movq $64, %rax
    movq %rax, %r12
.L40_3:
    leaq 176(%rbp), %rbx
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq $1, %rax
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
    movl %eax, %r13d
    leaq 160(%rbp), %r14
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L40_4
    jmp .L40_5
.L40_4:
    jmp .L40_6
.L40_5:
    leaq 200(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_200(%rip), %r13
    leaq 144(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $33, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $72, %rdx
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
.L40_7:
.L40_6:
    leaq 104(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 8(%rbp)
    leaq 56(%rbp), %rax
    movq %rax, 0(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rbx
    jbe .L40_9
.L40_8:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_37(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L40_10
.L40_9:
    movq 8(%rbp), %r10
    movq (%r10), %r12
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L40_11
    jmp .L40_12
.L40_12:
    leaq .Ltext_201(%rip), %rdi
    leaq .Ltext_38(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L40_11:
    movq %r13, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 32(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 32(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, 24(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl 24(%rbp), %eax
    movl %r14d, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L40_13
    jmp .L40_14
.L40_13:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_40(%rip), %r12
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
    jmp .L40_10
.L40_14:
    movq %r15, %r10
    movq (%r10), %r12
    movq 0(%rbp), %r10
    movq %r12, (%r10)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L40_10:
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L40_16
    jmp .L40_15
.L40_16:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 200(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 312(%rbp), %rdi
    movq $72, %rdx
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
.L40_17:
.L40_15:
    movq 0(%rbp), %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 16(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 200(%rbp), %rbx
    movq 16(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $72, %rdx
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
.L40_18:
    leaq .Ltext_201(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_Builder_capacity
lb_strings_Builder_capacity:
    .seh_proc lb_strings_Builder_capacity
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
    movq 224(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 8(%rbp), %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L41_2
.L41_1:
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_202(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    jmp .L41_3
.L41_2:
    movq $0, %rax
    movq %rax, %r12
.L41_3:
    movq %r12, %rax
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
.L41_4:
    leaq .Ltext_202(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_Builder_length
lb_strings_Builder_length:
    .seh_proc lb_strings_Builder_length
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
    movq 208(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 0(%rbp), %r10
    movq (%r10), %rbx
    movq $16, %rcx
    addq %rcx, %rbx
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
.L42_1:
    leaq .Ltext_203(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_Builder_write
lb_strings_Builder_write:
    .seh_proc lb_strings_Builder_write
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
    movq %rax, 528(%rbp)
    movq 832(%rbp), %r10
    leaq 512(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 528(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 104(%rbp)
    movq 104(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %eax
    movl %eax, 96(%rbp)
    movl 96(%rbp), %eax
    testl %eax, %eax
    jne .L43_1
    jmp .L43_2
.L43_1:
    leaq 536(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_204(%rip), %r13
    leaq 496(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
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
.L43_4:
    jmp .L43_3
.L43_2:
.L43_3:
    leaq 512(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L43_6
.L43_5:
    leaq 536(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
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
.L43_8:
    jmp .L43_7
.L43_6:
.L43_7:
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq 88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 64(%rbp)
    leaq 480(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 464(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 64(%rbp), %rax
    cmpq %r13, %rax
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L43_12
    jmp .L43_60
.L43_60:
    movl %ebx, %r15d
    jmp .L43_13
.L43_12:
    movq 64(%rbp), %rax
    movq %rax, %rbx
    subq %r13, %rbx
    movq 104(%rbp), %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r15d
.L43_13:
    movzbl %r15b, %ebx
    testl %ebx, %ebx
    jne .L43_9
    jmp .L43_10
.L43_9:
    movq 64(%rbp), %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_207(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    cmpq %r15, %rbx
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L43_61
    jmp .L43_17
.L43_61:
    movl %r12d, %r13d
    jmp .L43_18
.L43_17:
    movq %r15, %r12
    subq %rbx, %r12
    movq 72(%rbp), %rax
    cmpq %r12, %rax
    seta %al
    movzbl %al, %r13d
.L43_18:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L43_14
    jmp .L43_15
.L43_14:
    leaq 536(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_14invalid_buffer(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_209(%rip), %r13
    leaq 448(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $49, %rax
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
.L43_19:
    jmp .L43_16
.L43_15:
.L43_16:
    leaq 432(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rax
    movq %rax, 8(%rbp)
    jmp .L43_11
.L43_10:
    movq $0, %rax
    movq %rax, 8(%rbp)
.L43_11:
    movq 72(%rbp), %rax
    leaq 304(%rbp), %r10
    movq %rax, (%r10)
    movl 96(%rbp), %eax
    testl %eax, %eax
    jne .L43_34
    jmp .L43_35
.L43_34:
    leaq 320(%rbp), %rbx
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_204(%rip), %r13
    leaq 288(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 400(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L43_59
.L43_37:
    jmp .L43_36
.L43_35:
.L43_36:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 280(%rbp), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 72(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %ebx
    leaq 264(%rbp), %r15
    movq %r13, %r10
    movq (%r10), %r13
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %bl, (%r10)
    movq %r15, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L43_38
    jmp .L43_39
.L43_38:
    jmp .L43_40
.L43_39:
    leaq 320(%rbp), %rbx
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_205(%rip), %r13
    leaq 248(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $26, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 400(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L43_59
.L43_41:
.L43_40:
    leaq 240(%rbp), %rbx
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq $1, %rax
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
    movl %eax, %r15d
    leaq 224(%rbp), %r12
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movb %r15b, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L43_42
    jmp .L43_43
.L43_42:
    jmp .L43_44
.L43_43:
    leaq 320(%rbp), %rbx
    leaq lb_memory_exhausted(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_205(%rip), %r12
    leaq 208(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $26, %rax
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
    movq %rbx, %r10
    leaq 400(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L43_59
.L43_45:
.L43_44:
    movq 112(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    ja .L43_47
.L43_46:
    leaq 320(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 400(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L43_59
.L43_49:
    jmp .L43_48
.L43_47:
.L43_48:
    leaq 200(%rbp), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq $2, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qmul_u
    addq $32, %rsp
    movl %eax, %r15d
    leaq 184(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movb %r15b, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L43_50
    jmp .L43_51
.L43_50:
    movq %r13, %r12
    jmp .L43_52
.L43_51:
    movq %rbx, %r12
.L43_52:
    cmpq %rbx, %r12
    jae .L43_54
.L43_53:
    movq %rbx, %r12
    jmp .L43_55
.L43_54:
.L43_55:
    leaq 168(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 24(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq 24(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    leaq 120(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_grow
    addq $48, %rsp
    leaq 120(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L43_57
    jmp .L43_56
.L43_57:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 320(%rbp), %r14
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
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    leaq 400(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L43_59
.L43_58:
.L43_56:
    movq %r15, %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 320(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %r10
    leaq 400(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L43_59:
    leaq 400(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L43_21
    jmp .L43_20
.L43_21:
    leaq 536(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
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
.L43_22:
.L43_20:
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L43_26
    jmp .L43_24
.L43_26:
.L43_23:
    movq 24(%rbp), %r10
    movq (%r10), %r12
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r14
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_210(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_210(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r13, %r14
    jbe .L43_27
.L43_28:
    leaq .Ltext_210(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L43_27:
    movq %r12, %rbx
    addq %r14, %rbx
    movq %r13, %rax
    subq %r14, %rax
    movq %rax, 48(%rbp)
    leaq 384(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movq %rbx, (%r10)
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 48(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq 112(%rbp), %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_210(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r15
    jb 1f
    leaq .Ltext_210(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    cmpq %r15, %rax
    jbe .L43_29
.L43_30:
    leaq .Ltext_210(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L43_29:
    movq 16(%rbp), %rax
    movq 8(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %rcx
    movq %r15, %r12
    subq %rcx, %r12
    leaq 368(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq 80(%rbp), %r10
    movq (%r10), %rbx
    subq $64, %rsp
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
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
    call lb_memory_move_0g1_u8
    addq $64, %rsp
    jmp .L43_25
.L43_24:
    movq 24(%rbp), %r10
    movq (%r10), %r12
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r14
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_211(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_211(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r13, %r14
    jbe .L43_31
.L43_32:
    leaq .Ltext_211(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L43_31:
    movq %r12, %rbx
    addq %r14, %rbx
    movq %r13, %rax
    subq %r14, %rax
    movq %rax, 32(%rbp)
    leaq 352(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq 32(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 80(%rbp), %r10
    movq (%r10), %rbx
    subq $64, %rsp
    movq %r15, %r10
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
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_move_0g1_u8
    addq $64, %rsp
.L43_25:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq 80(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_212(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq 80(%rbp), %r10
    movq (%r10), %rbx
    leaq 536(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
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
.L43_33:
    leaq .Ltext_213(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_Builder_put
lb_strings_Builder_put:
    .seh_proc lb_strings_Builder_put
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
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 328(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 336(%rbp), %r10
    leaq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 56(%rbp), %r10
    movq (%r10), %r12
    leaq 40(%rbp), %rbx
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_Builder_write
    addq $48, %rsp
    leaq 0(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L44_2
    jmp .L44_1
.L44_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 64(%rbp), %r13
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L44_3:
.L44_1:
    leaq 64(%rbp), %rbx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_strings_Builder_view
lb_strings_Builder_view:
    .seh_proc lb_strings_Builder_view
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
    movq 312(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 40(%rbp), %r10
    movq (%r10), %r15
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jae .L45_2
.L45_1:
    movq %r15, %r10
    movq (%r10), %r14
    movq %r14, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    jmp .L45_3
.L45_2:
.L45_3:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    movq %r13, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq (%r10), %r14
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_215(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_215(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L45_4
.L45_5:
    leaq .Ltext_215(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L45_4:
    leaq 24(%rbp), %rbx
    movq 0(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    leaq 8(%rbp), %rbx
    movq 0(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
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
.L45_6:
    leaq .Ltext_215(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_Builder_clear
lb_strings_Builder_clear:
    .seh_proc lb_strings_Builder_clear
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
    movq 208(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 0(%rbp), %r10
    movq (%r10), %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
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
    .globl lb_strings_Builder_truncate
lb_strings_Builder_truncate:
    .seh_proc lb_strings_Builder_truncate
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
    movq %r15, 112(%rbp)
    .seh_savereg %r15, 112
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 72(%rbp), %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L47_2
.L47_1:
    leaq 80(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_204(%rip), %r12
    leaq 40(%rbp), %r13
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
    movq 152(%rbp), %rdi
    movq $32, %rdx
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
    movq 112(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L47_4:
    jmp .L47_3
.L47_2:
.L47_3:
    leaq 56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    cmpq %r15, %r12
    jbe .L47_6
.L47_5:
    leaq 80(%rbp), %rbx
    leaq lb_io_14invalid_buffer(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_216(%rip), %r12
    leaq 24(%rbp), %r13
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
    movq 152(%rbp), %rdi
    movq $32, %rdx
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
    movq 112(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L47_8:
    jmp .L47_7
.L47_6:
.L47_7:
    movq %r14, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_217(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 16(%rbp), %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movl $0, %eax
    movq 8(%rbp), %r10
    movb %al, (%r10)
    leaq 80(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movl $0, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq 0(%rbp), %rsi
    movq 152(%rbp), %rdi
    movq $32, %rdx
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
    movq 112(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_strings_Builder_destroy
lb_strings_Builder_destroy:
    .seh_proc lb_strings_Builder_destroy
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
    movq 272(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 32(%rbp), %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L48_2
.L48_1:
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq 16(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L48_5
    jmp .L48_4
.L48_5:
    movq $16, %rcx
    movq %r12, %rbx
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
.L48_4:
    jmp .L48_3
.L48_2:
.L48_3:
    leaq 0(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
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
    jne .L49_11
    jmp .L49_4
.L49_11:
    movl %r13d, %r14d
    jmp .L49_5
.L49_4:
    leaq 32(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L49_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L49_1
    jmp .L49_2
.L49_1:
    leaq .Ltext_1(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_219(%rip), %r13
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
    jmp .L49_3
.L49_2:
.L49_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L49_7
.L49_6:
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
    jne .L49_9
    jmp .L49_10
.L49_10:
    leaq .Ltext_220(%rip), %rdi
    leaq .Ltext_221(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L49_9:
    jmp .L49_8
.L49_7:
.L49_8:
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

    .section .text$lb_memory_read_0g1_f64,"xr"
    .p2align 4
    .globl lb_memory_read_0g1_f64
lb_memory_read_0g1_f64:
    .seh_proc lb_memory_read_0g1_f64
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
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 8(%rbp), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $8, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L50_1
    jmp .L50_2
.L50_2:
    leaq .Ltext_222(%rip), %rdi
    leaq .Ltext_221(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L50_1:
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
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
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L50_3:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .text

    .section .text$lb_memory_read_0g1_u64,"xr"
    .p2align 4
    .globl lb_memory_read_0g1_u64
lb_memory_read_0g1_u64:
    .seh_proc lb_memory_read_0g1_u64
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
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 8(%rbp), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $8, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L51_1
    jmp .L51_2
.L51_2:
    leaq .Ltext_222(%rip), %rdi
    leaq .Ltext_221(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L51_1:
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
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L51_3:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .text

    .section .text$lb_memory_read_0g1_f32,"xr"
    .p2align 4
    .globl lb_memory_read_0g1_f32
lb_memory_read_0g1_f32:
    .seh_proc lb_memory_read_0g1_f32
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
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 12(%rbp), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $4, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L52_1
    jmp .L52_2
.L52_2:
    leaq .Ltext_222(%rip), %rdi
    leaq .Ltext_221(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L52_1:
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
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
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L52_3:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .text

    .section .text$lb_memory_read_0g1_u32,"xr"
    .p2align 4
    .globl lb_memory_read_0g1_u32
lb_memory_read_0g1_u32:
    .seh_proc lb_memory_read_0g1_u32
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
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 12(%rbp), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $4, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L53_1
    jmp .L53_2
.L53_2:
    leaq .Ltext_222(%rip), %rdi
    leaq .Ltext_221(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L53_1:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
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
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L53_3:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .text

    .section .text$lb_memory_move_0g1_u8,"xr"
    .p2align 4
    .globl lb_memory_move_0g1_u8
lb_memory_move_0g1_u8:
    .seh_proc lb_memory_move_0g1_u8
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
    jne .L54_11
    jmp .L54_4
.L54_11:
    movl %r13d, %r14d
    jmp .L54_5
.L54_4:
    leaq 32(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L54_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L54_1
    jmp .L54_2
.L54_1:
    leaq .Ltext_1(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_224(%rip), %r13
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
    jmp .L54_3
.L54_2:
.L54_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L54_7
.L54_6:
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
    call memmove
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L54_9
    jmp .L54_10
.L54_10:
    leaq .Ltext_225(%rip), %rdi
    leaq .Ltext_221(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_9:
    jmp .L54_8
.L54_7:
.L54_8:
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
    .quad lb_strings_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/strings/search.lucb:4:5"
.Ltext_1:
    .asciz "index out of bounds"
.Ltext_2:
    .asciz "unreachable"
.Ltext_3:
    .asciz "src/std/strings/search.lucb:9:5"
.Ltext_4:
    .asciz "src/std/strings/search.lucb:15:5"
.Ltext_5:
    .asciz "src/std/strings/search.lucb:22:5"
.Ltext_6:
    .asciz "src/std/strings/search.lucb:23:5"
.Ltext_7:
    .asciz "src/std/strings/search.lucb:29:5"
.Ltext_8:
    .asciz "src/std/strings/search.lucb:35:9"
.Ltext_9:
    .asciz "src/std/strings/search.lucb:36:9"
.Ltext_10:
    .asciz "src/std/strings/search.lucb:38:5"
.Ltext_11:
    .asciz "src/std/strings/search.lucb:41:5"
.Ltext_12:
    .asciz "src/std/strings/search.lucb:59:5"
.Ltext_13:
    .asciz "src/std/strings/search.lucb:62:9"
.Ltext_14:
    .asciz "src/std/strings/search.lucb:64:9"
.Ltext_15:
    .asciz "src/std/strings/search.lucb:67:9"
.Ltext_16:
    .asciz "src/std/strings/search.lucb:69:9"
.Ltext_17:
    .asciz "src/std/strings/search.lucb:73:5"
.Ltext_18:
    .asciz "src/std/strings/search.lucb:75:9"
.Ltext_19:
    .asciz "src/std/strings/search.lucb:76:13"
.Ltext_20:
    .asciz "src/std/strings/search.lucb:78:13"
.Ltext_21:
    .asciz "src/std/strings/search.lucb:82:9"
.Ltext_22:
    .asciz "src/std/strings/search.lucb:83:13"
.Ltext_23:
    .asciz "src/std/strings/search.lucb:86:9"
.Ltext_24:
    .asciz "src/std/strings/search.lucb:88:5"
.Ltext_25:
    .asciz "src/std/strings/search.lucb:97:5"
.Ltext_26:
    .asciz "src/std/strings/search.lucb:98:9"
.Ltext_27:
    .asciz "src/std/strings/search.lucb:99:9"
.Ltext_28:
    .asciz "src/std/strings/search.lucb:101:13"
.Ltext_29:
    .asciz "src/std/strings/search.lucb:102:17"
.Ltext_30:
    .asciz "src/std/strings/search.lucb:105:17"
.Ltext_31:
    .asciz "src/std/strings/search.lucb:107:13"
.Ltext_32:
    .asciz "src/std/strings/search.lucb:109:13"
.Ltext_33:
    .asciz "src/std/strings/search.lucb:112:13"
.Ltext_34:
    .asciz "src/std/strings/search.lucb:115:5"
.Ltext_35:
    .asciz "src/std/strings/search.lucb:118:5"
.Ltext_36:
    .asciz "the split result is too large"
.Ltext_37:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_38:
    .asciz "memory.unset"
.Ltext_39:
    .asciz "src/std/strings/split.lucb:8:5"
.Ltext_40:
    .asciz "memory.exhausted"
.Ltext_41:
    .asciz "src/std/strings/split.lucb:14:9"
.Ltext_42:
    .asciz "src/std/strings/split.lucb:15:13"
.Ltext_43:
    .asciz "src/std/strings/split.lucb:16:13"
.Ltext_44:
    .asciz "src/std/strings/split.lucb:17:13"
.Ltext_45:
    .asciz "src/std/strings/split.lucb:18:9"
.Ltext_46:
    .asciz "src/std/strings/split.lucb:19:5"
.Ltext_47:
    .asciz "src/std/strings/split.lucb:20:5"
.Ltext_48:
    .asciz "a split iterator requires a nonempty separator"
.Ltext_49:
    .asciz "src/std/strings/split.lucb:37:9"
.Ltext_50:
    .asciz "src/std/strings/split.lucb:45:13"
.Ltext_51:
    .asciz "src/std/strings/split.lucb:49:13"
.Ltext_52:
    .asciz "src/std/strings/split.lucb:51:17"
.Ltext_53:
    .asciz "src/std/strings/split.lucb:52:13"
.Ltext_54:
    .asciz "src/std/strings/split.lucb:54:9"
.Ltext_55:
    .asciz "src/std/strings/split.lucb:65:5"
.Ltext_56:
    .asciz "src/std/strings/split.lucb:69:9"
.Ltext_57:
    .asciz "src/std/strings/split.lucb:70:9"
.Ltext_58:
    .asciz "src/std/strings/split.lucb:71:5"
.Ltext_59:
    .asciz "src/std/strings/split.lucb:77:5"
.Ltext_60:
    .asciz "src/std/strings/split.lucb:83:5"
.Ltext_61:
    .asciz "src/std/strings/transform.lucb:2:5"
.Ltext_62:
    .asciz "src/std/strings/transform.lucb:9:5"
.Ltext_63:
    .asciz "src/std/strings/transform.lucb:10:9"
.Ltext_64:
    .asciz "src/std/strings/transform.lucb:11:5"
.Ltext_65:
    .asciz "src/std/strings/transform.lucb:12:9"
.Ltext_66:
    .asciz "src/std/strings/transform.lucb:13:5"
.Ltext_67:
    .asciz "src/std/strings/transform.lucb:21:9"
.Ltext_68:
    .asciz "the joined text is too large"
.Ltext_69:
    .asciz "src/std/strings/transform.lucb:22:9"
.Ltext_70:
    .asciz "src/std/strings/transform.lucb:24:9"
.Ltext_71:
    .asciz "src/std/strings/transform.lucb:29:9"
.Ltext_72:
    .asciz "src/std/strings/transform.lucb:30:9"
.Ltext_73:
    .asciz "src/std/strings/transform.lucb:31:9"
.Ltext_74:
    .asciz "src/std/strings/transform.lucb:32:13"
.Ltext_75:
    .asciz "src/std/strings/transform.lucb:33:13"
.Ltext_76:
    .asciz "src/std/strings/transform.lucb:34:9"
.Ltext_77:
    .asciz "src/std/strings/transform.lucb:35:5"
.Ltext_78:
    .asciz "src/std/strings/transform.lucb:36:5"
.Ltext_79:
    .asciz "src/std/strings/transform.lucb:43:5"
.Ltext_80:
    .asciz "src/std/strings/transform.lucb:44:5"
.Ltext_81:
    .asciz "src/std/strings/transform.lucb:52:9"
.Ltext_82:
    .asciz "integer overflow"
.Ltext_83:
    .asciz "src/std/strings/transform.lucb:53:9"
.Ltext_84:
    .asciz "src/std/strings/transform.lucb:54:5"
.Ltext_85:
    .asciz "src/std/strings/transform.lucb:55:5"
.Ltext_86:
    .asciz "src/std/strings/transform.lucb:63:9"
.Ltext_87:
    .asciz "src/std/strings/transform.lucb:64:9"
.Ltext_88:
    .asciz "src/std/strings/transform.lucb:65:5"
.Ltext_89:
    .asciz "src/std/strings/transform.lucb:66:5"
.Ltext_90:
    .asciz "src/std/strings/transform.lucb:71:5"
.Ltext_91:
    .asciz "the text is too large"
.Ltext_92:
    .asciz "src/std/strings/transform.lucb:77:5"
.Ltext_93:
    .asciz "replacement requires a nonempty needle"
.Ltext_94:
    .asciz "src/std/strings/replace.lucb:16:13"
.Ltext_95:
    .asciz "the replacement result is too large"
.Ltext_96:
    .asciz "src/std/strings/replace.lucb:18:13"
.Ltext_97:
    .asciz "src/std/strings/replace.lucb:19:9"
.Ltext_98:
    .asciz "src/std/strings/replace.lucb:20:9"
.Ltext_99:
    .asciz "the replacement result exceeds its byte limit"
.Ltext_100:
    .asciz "replacement input changed between scans"
.Ltext_101:
    .asciz "src/std/strings/replace.lucb:29:9"
.Ltext_102:
    .asciz "src/std/strings/replace.lucb:30:9"
.Ltext_103:
    .asciz "src/std/strings/replace.lucb:31:9"
.Ltext_104:
    .asciz "src/std/strings/replace.lucb:32:9"
.Ltext_105:
    .asciz "src/std/strings/replace.lucb:33:9"
.Ltext_106:
    .asciz "src/std/strings/replace.lucb:34:9"
.Ltext_107:
    .asciz "src/std/strings/replace.lucb:35:9"
.Ltext_108:
    .asciz "src/std/strings/replace.lucb:36:9"
.Ltext_109:
    .asciz "src/std/strings/replace.lucb:37:5"
.Ltext_110:
    .asciz "src/std/strings/replace.lucb:38:5"
.Ltext_111:
    .asciz "src/std/strings/replace.lucb:39:5"
.Ltext_112:
    .asciz "src/std/strings/replace.lucb:40:5"
.Ltext_113:
    .asciz "src/std/strings/replace.lucb:41:5"
.Ltext_114:
    .asciz "src/std/strings/numbers.lucb:9:5"
.Ltext_115:
    .asciz "src/std/strings/numbers.lucb:10:9"
.Ltext_116:
    .asciz "src/std/strings/numbers.lucb:17:9"
.Ltext_117:
    .asciz "src/std/strings/numbers.lucb:22:9"
.Ltext_118:
    .asciz "src/std/strings/numbers.lucb:23:5"
.Ltext_119:
    .asciz "src/std/strings/numbers.lucb:30:5"
.Ltext_120:
    .asciz "src/std/strings/numbers.lucb:35:9"
.Ltext_121:
    .asciz "src/std/strings/numbers.lucb:40:9"
.Ltext_122:
    .asciz "src/std/strings/numbers.lucb:41:5"
.Ltext_123:
    .asciz "src/std/strings/numbers.lucb:47:5"
.Ltext_124:
    .asciz "src/std/strings/numbers.lucb:48:5"
.Ltext_125:
    .asciz "src/std/strings/numbers.lucb:53:5"
.Ltext_126:
    .asciz "src/std/strings/numbers.lucb:57:9"
.Ltext_127:
    .asciz "src/std/strings/numbers.lucb:59:9"
.Ltext_128:
    .asciz "src/std/strings/numbers.lucb:61:9"
.Ltext_129:
    .asciz "src/std/strings/numbers.lucb:62:5"
.Ltext_130:
    .asciz "an integer radix must be between 2 and 36"
.Ltext_131:
    .asciz "0123456789abcdefghijklmnopqrstuvwxyz"
.Ltext_132:
    .asciz "src/std/strings/numbers.lucb:72:9"
.Ltext_133:
    .asciz "division by zero"
.Ltext_134:
    .asciz "src/std/strings/numbers.lucb:73:9"
.Ltext_135:
    .asciz "src/std/strings/numbers.lucb:74:9"
.Ltext_136:
    .asciz "src/std/strings/numbers.lucb:78:9"
.Ltext_137:
    .asciz "src/std/strings/numbers.lucb:79:9"
.Ltext_138:
    .asciz "the destination cannot hold the formatted integer"
.Ltext_139:
    .asciz "src/std/strings/numbers.lucb:84:9"
.Ltext_140:
    .asciz "src/std/strings/numbers.lucb:85:9"
.Ltext_141:
    .asciz "src/std/strings/numbers.lucb:86:5"
.Ltext_142:
    .asciz "src/std/strings/floats.lucb:19:9"
.Ltext_143:
    .asciz "src/std/strings/floats.lucb:24:9"
.Ltext_144:
    .asciz "invalid floating-point text"
.Ltext_145:
    .asciz "src/std/strings/floats.lucb:38:9"
.Ltext_146:
    .asciz "the decimal value exceeds f64 range"
.Ltext_147:
    .asciz "src/std/strings/floats.lucb:53:5"
.Ltext_148:
    .asciz "src/std/strings/floats.lucb:61:9"
.Ltext_149:
    .asciz "the decimal value exceeds f32 range"
.Ltext_150:
    .asciz "src/std/strings/floats.lucb:76:5"
.Ltext_151:
    .asciz "src/std/strings/floats.lucb:85:5"
.Ltext_152:
    .asciz "src/std/strings/floats.lucb:90:5"
.Ltext_153:
    .asciz "C"
.Ltext_154:
    .asciz "the C numeric locale could not be created"
.Ltext_155:
    .asciz "src/std/strings/floats.lucb:98:13"
.Ltext_156:
    .asciz "the numeric locale is closed"
.Ltext_157:
    .asciz "src/std/strings/floats.lucb:103:9"
.Ltext_158:
    .asciz "nan"
.Ltext_159:
    .asciz "shift count out of range"
.Ltext_160:
    .asciz "src/std/strings/floats.lucb:119:9"
.Ltext_161:
    .asciz "-inf"
.Ltext_162:
    .asciz "inf"
.Ltext_163:
    .asciz "the destination cannot hold the formatted floating-point value"
.Ltext_164:
    .asciz "src/std/strings/floats.lucb:123:9"
.Ltext_165:
    .asciz "src/std/strings/floats.lucb:131:9"
.Ltext_166:
    .asciz "%.*g"
.Ltext_167:
    .asciz "floating-point formatting failed"
.Ltext_168:
    .asciz "src/std/strings/floats.lucb:145:5"
.Ltext_169:
    .asciz "a valid thread locale could not be restored"
.Ltext_170:
    .asciz "src/std/strings/floats.lucb:149:5"
.Ltext_171:
    .asciz "floating-point conversion ran out of memory"
.Ltext_172:
    .asciz "floating-point conversion failed"
.Ltext_173:
    .asciz "floating-point conversion did not return an end pointer"
.Ltext_174:
    .asciz "src/std/strings/floats.lucb:158:5"
.Ltext_175:
    .asciz "floating-point conversion did not consume the input"
.Ltext_176:
    .asciz "src/std/strings/floats.lucb:166:5"
.Ltext_177:
    .asciz "src/std/strings/floats.lucb:170:5"
.Ltext_178:
    .asciz "infinity"
.Ltext_179:
    .asciz "src/std/strings/floats.lucb:176:5"
.Ltext_180:
    .asciz "src/std/strings/floats.lucb:177:9"
.Ltext_181:
    .asciz "src/std/strings/floats.lucb:178:9"
.Ltext_182:
    .asciz "src/std/strings/floats.lucb:179:5"
.Ltext_183:
    .asciz "src/std/strings/floats.lucb:180:9"
.Ltext_184:
    .asciz "src/std/strings/floats.lucb:181:9"
.Ltext_185:
    .asciz "src/std/strings/floats.lucb:182:13"
.Ltext_186:
    .asciz "src/std/strings/floats.lucb:183:13"
.Ltext_187:
    .asciz "src/std/strings/floats.lucb:186:5"
.Ltext_188:
    .asciz "src/std/strings/floats.lucb:187:9"
.Ltext_189:
    .asciz "src/std/strings/floats.lucb:188:9"
.Ltext_190:
    .asciz "src/std/strings/floats.lucb:189:13"
.Ltext_191:
    .asciz "src/std/strings/floats.lucb:191:9"
.Ltext_192:
    .asciz "src/std/strings/floats.lucb:192:13"
.Ltext_193:
    .asciz "src/std/strings/floats.lucb:195:5"
.Ltext_194:
    .asciz "src/std/strings/floats.lucb:198:5"
.Ltext_195:
    .asciz "src/std/strings/floats.lucb:205:9"
.Ltext_196:
    .asciz "src/std/strings/floats.lucb:206:9"
.Ltext_197:
    .asciz "src/std/strings/floats.lucb:207:9"
.Ltext_198:
    .asciz "src/std/strings/floats.lucb:209:9"
.Ltext_199:
    .asciz "src/std/strings/floats.lucb:210:5"
.Ltext_200:
    .asciz "the builder capacity is too large"
.Ltext_201:
    .asciz "src/std/strings/builder.lucb:15:9"
.Ltext_202:
    .asciz "src/std/strings/builder.lucb:19:9"
.Ltext_203:
    .asciz "src/std/strings/builder.lucb:23:9"
.Ltext_204:
    .asciz "the string builder is destroyed"
.Ltext_205:
    .asciz "the builder size overflows"
.Ltext_206:
    .asciz "src/std/strings/builder.lucb:52:9"
.Ltext_207:
    .asciz "src/std/strings/builder.lucb:53:13"
.Ltext_208:
    .asciz "src/std/strings/builder.lucb:54:13"
.Ltext_209:
    .asciz "the builder input is outside its initialized text"
.Ltext_210:
    .asciz "src/std/strings/builder.lucb:59:13"
.Ltext_211:
    .asciz "src/std/strings/builder.lucb:61:13"
.Ltext_212:
    .asciz "src/std/strings/builder.lucb:62:9"
.Ltext_213:
    .asciz "src/std/strings/builder.lucb:63:9"
.Ltext_214:
    .asciz "src/std/strings/builder.lucb:72:13"
.Ltext_215:
    .asciz "src/std/strings/builder.lucb:73:9"
.Ltext_216:
    .asciz "truncation cannot extend the builder"
.Ltext_217:
    .asciz "src/std/strings/builder.lucb:87:9"
.Ltext_218:
    .asciz "src/std/strings/builder.lucb:92:13"
.Ltext_219:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_220:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_221:
    .asciz "null_foreign"
.Ltext_222:
    .asciz "src/std/memory.lucb:342:5"
.Ltext_223:
    .asciz "src/std/memory.lucb:343:5"
.Ltext_224:
    .asciz "src/std/memory.lucb:332:9"
.Ltext_225:
    .asciz "src/std/memory.lucb:334:9"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_strings_17invalid_separator
    .p2align 2
lb_strings_17invalid_separator:
    .zero 4

    .bss
    .globl lb_strings_16output_too_large
    .p2align 2
lb_strings_16output_too_large:
    .zero 4

    .bss
    .globl lb_strings_13invalid_radix
    .p2align 2
lb_strings_13invalid_radix:
    .zero 4

    .bss
    .globl lb_strings_14invalid_number
    .p2align 2
lb_strings_14invalid_number:
    .zero 4

    .bss
    .globl lb_strings_19number_out_of_range
    .p2align 2
lb_strings_19number_out_of_range:
    .zero 4

    .bss
    .globl lb_strings_17conversion_failed
    .p2align 2
lb_strings_17conversion_failed:
    .zero 4
