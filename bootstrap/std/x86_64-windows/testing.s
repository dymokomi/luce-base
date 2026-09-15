    .weak lb_vt_memory_FixedBuffer_Allocator
    .text

    .p2align 4
    .globl lb_testing_0init
lb_testing_0init:
    .seh_proc lb_testing_0init
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
    leaq lb_testing_12current_seed(%rip), %rbx
    movq $1, %rax
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
    .globl lb_testing_begin
lb_testing_begin:
    .seh_proc lb_testing_begin
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
    leaq lb_testing_arena(%rip), %rbx
    leaq lb_testing_11arena_bytes(%rip), %r12
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $1048576, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 24(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_memory_FixedBuffer_over
    addq $48, %rsp
    leaq 24(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq lb_testing_saved(%rip), %r12
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq lb_vt_memory_FixedBuffer_Allocator(%rip), %rbx
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_testing_12current_seed(%rip), %rbx
    leaq 64(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movabsq $2654435761, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
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
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
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
    .globl lb_testing_end
lb_testing_end:
    .seh_proc lb_testing_end
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
    leaq lb_testing_saved(%rip), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
    .globl lb_testing_seed
lb_testing_seed:
    .seh_proc lb_testing_seed
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
    leaq lb_testing_12current_seed(%rip), %rbx
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
.L3_1:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_testing_random
lb_testing_random:
    .seh_proc lb_testing_random
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
    movq %r13, 8(%rbp)
    .seh_savereg %r13, 8
    .seh_endprologue
    movq %rcx, 224(%rbp)
    movq %rdx, 232(%rbp)
    movq %r8, 240(%rbp)
    movq %r9, 248(%rbp)
    leaq lb_testing_12current_seed(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
.L4_2:
    movq $13, %rcx
    movq %r12, %r13
    shlq %cl, %r13
    movq %r13, %rcx
    movq %r12, %r13
    xorq %rcx, %r13
.L4_4:
    movq $7, %rcx
    movq %r13, %r12
    shrq %cl, %r12
    movq %r12, %rcx
    movq %r13, %r12
    xorq %rcx, %r12
.L4_6:
    movq $17, %rcx
    movq %r12, %r13
    shlq %cl, %r13
    movq %r13, %rcx
    movq %r12, %r13
    xorq %rcx, %r13
    movq %rbx, %r10
    movq %r13, (%r10)
    movq %r13, %rax
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
    movq 8(%rbp), %r13
    leaq 208(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_testing_expect
lb_testing_expect:
    .seh_proc lb_testing_expect
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
    movl %eax, 16(%rbp)
    movq 248(%rbp), %r10
    leaq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_2
.L5_1:
    leaq 0(%rbp), %rbx
    leaq .Ltext_8(%rip), %r12
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
    call lb_core_12trap_text_at
    addq $48, %rsp
    jmp .L5_3
.L5_2:
.L5_3:
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
    .globl lb_testing_12expect_equal
lb_testing_12expect_equal:
    .seh_proc lb_testing_12expect_equal
    pushq %rbp
    .seh_pushreg %rbp
    subq $1392, %rsp
    .seh_stackalloc 1392
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 1384(%rbp)
    .seh_savereg %rdi, 1384
    movq %rsi, 1376(%rbp)
    .seh_savereg %rsi, 1376
    movdqu %xmm6, 1360(%rbp)
    .seh_savexmm %xmm6, 1360
    movdqu %xmm7, 1344(%rbp)
    .seh_savexmm %xmm7, 1344
    movdqu %xmm8, 1328(%rbp)
    .seh_savexmm %xmm8, 1328
    movdqu %xmm9, 1312(%rbp)
    .seh_savexmm %xmm9, 1312
    movdqu %xmm10, 1296(%rbp)
    .seh_savexmm %xmm10, 1296
    movdqu %xmm11, 1280(%rbp)
    .seh_savexmm %xmm11, 1280
    movdqu %xmm12, 1264(%rbp)
    .seh_savexmm %xmm12, 1264
    movdqu %xmm13, 1248(%rbp)
    .seh_savexmm %xmm13, 1248
    movdqu %xmm14, 1232(%rbp)
    .seh_savexmm %xmm14, 1232
    movdqu %xmm15, 1216(%rbp)
    .seh_savexmm %xmm15, 1216
    movq %rbx, 1208(%rbp)
    .seh_savereg %rbx, 1208
    movq %r12, 1200(%rbp)
    .seh_savereg %r12, 1200
    movq %r13, 1192(%rbp)
    .seh_savereg %r13, 1192
    movq %r14, 1184(%rbp)
    .seh_savereg %r14, 1184
    movq %r15, 1176(%rbp)
    .seh_savereg %r15, 1176
    .seh_endprologue
    movq %rcx, 1408(%rbp)
    movq %rdx, 1416(%rbp)
    movq %r8, 1424(%rbp)
    movq %r9, 1432(%rbp)
    movq 1408(%rbp), %rax
    movq %rax, 1160(%rbp)
    movq 1416(%rbp), %rax
    movq %rax, 1144(%rbp)
    movq 1424(%rbp), %r10
    leaq 1128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1160(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 1144(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L6_2
.L6_1:
    leaq 104(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 80(%rbp), %r14
    movq 56(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq $1024, %rax
    movq 48(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq $0, %rax
    movq 40(%rbp), %r10
    movq %rax, (%r10)
    leaq .Ltext_9(%rip), %rax
    movq %rax, 32(%rbp)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 32(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $9, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_10format_i64
    addq $32, %rsp
    movl %eax, %r12d
    leaq .Ltext_10(%rip), %rax
    movq %rax, 24(%rbp)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 24(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $6, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_10format_i64
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_11(%rip), %rax
    movq %rax, 16(%rbp)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 16(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $2, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    leaq 1128(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %r10
    movq (%r10), %r15
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    leaq 64(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_13format_finish
    addq $32, %rsp
    leaq 64(%rbp), %r13
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_9print_str
    addq $48, %rsp
    leaq .Ltext_12(%rip), %r13
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_12trap_text_at
    addq $48, %rsp
    jmp .L6_3
.L6_2:
.L6_3:
    movq 1384(%rbp), %rdi
    movq 1376(%rbp), %rsi
    movdqu 1360(%rbp), %xmm6
    movdqu 1344(%rbp), %xmm7
    movdqu 1328(%rbp), %xmm8
    movdqu 1312(%rbp), %xmm9
    movdqu 1296(%rbp), %xmm10
    movdqu 1280(%rbp), %xmm11
    movdqu 1264(%rbp), %xmm12
    movdqu 1248(%rbp), %xmm13
    movdqu 1232(%rbp), %xmm14
    movdqu 1216(%rbp), %xmm15
    movq 1208(%rbp), %rbx
    movq 1200(%rbp), %r12
    movq 1192(%rbp), %r13
    movq 1184(%rbp), %r14
    movq 1176(%rbp), %r15
    leaq 1392(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_testing_11expect_text
lb_testing_11expect_text:
    .seh_proc lb_testing_11expect_text
    pushq %rbp
    .seh_pushreg %rbp
    subq $1424, %rsp
    .seh_stackalloc 1424
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 1416(%rbp)
    .seh_savereg %rdi, 1416
    movq %rsi, 1408(%rbp)
    .seh_savereg %rsi, 1408
    movdqu %xmm6, 1392(%rbp)
    .seh_savexmm %xmm6, 1392
    movdqu %xmm7, 1376(%rbp)
    .seh_savexmm %xmm7, 1376
    movdqu %xmm8, 1360(%rbp)
    .seh_savexmm %xmm8, 1360
    movdqu %xmm9, 1344(%rbp)
    .seh_savexmm %xmm9, 1344
    movdqu %xmm10, 1328(%rbp)
    .seh_savexmm %xmm10, 1328
    movdqu %xmm11, 1312(%rbp)
    .seh_savexmm %xmm11, 1312
    movdqu %xmm12, 1296(%rbp)
    .seh_savexmm %xmm12, 1296
    movdqu %xmm13, 1280(%rbp)
    .seh_savexmm %xmm13, 1280
    movdqu %xmm14, 1264(%rbp)
    .seh_savexmm %xmm14, 1264
    movdqu %xmm15, 1248(%rbp)
    .seh_savexmm %xmm15, 1248
    movq %rbx, 1240(%rbp)
    .seh_savereg %rbx, 1240
    movq %r12, 1232(%rbp)
    .seh_savereg %r12, 1232
    movq %r13, 1224(%rbp)
    .seh_savereg %r13, 1224
    movq %r14, 1216(%rbp)
    .seh_savereg %r14, 1216
    movq %r15, 1208(%rbp)
    .seh_savereg %r15, 1208
    .seh_endprologue
    movq %rcx, 1440(%rbp)
    movq %rdx, 1448(%rbp)
    movq %r8, 1456(%rbp)
    movq %r9, 1464(%rbp)
    movq 1440(%rbp), %r10
    leaq 1192(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1448(%rbp), %r10
    leaq 1176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1456(%rbp), %r10
    leaq 1160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1192(%rbp), %r14
    leaq 1176(%rbp), %r15
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_4
    jmp .L7_6
.L7_6:
    movl %r13d, %r12d
    jmp .L7_5
.L7_4:
    movq %r14, %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
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
.L7_5:
    movzbl %r12b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L7_2
.L7_1:
    leaq 136(%rbp), %rax
    movq %rax, 80(%rbp)
    leaq 112(%rbp), %r13
    movq 80(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq $1024, %rax
    movq 72(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    movq $0, %rax
    movq 64(%rbp), %r10
    movq %rax, (%r10)
    leaq .Ltext_13(%rip), %rax
    movq %rax, 56(%rbp)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 56(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $10, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r12d
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 48(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 88(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r12d
    leaq .Ltext_14(%rip), %rax
    movq %rax, 40(%rbp)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $8, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r12d
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 32(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_15(%rip), %rax
    movq %rax, 24(%rbp)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 24(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $3, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    leaq 1160(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 8(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_13format_finish
    addq $32, %rsp
    leaq 96(%rbp), %r12
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_9print_str
    addq $48, %rsp
    leaq .Ltext_16(%rip), %r12
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 16(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_12trap_text_at
    addq $48, %rsp
    jmp .L7_3
.L7_2:
.L7_3:
    movq 1416(%rbp), %rdi
    movq 1408(%rbp), %rsi
    movdqu 1392(%rbp), %xmm6
    movdqu 1376(%rbp), %xmm7
    movdqu 1360(%rbp), %xmm8
    movdqu 1344(%rbp), %xmm9
    movdqu 1328(%rbp), %xmm10
    movdqu 1312(%rbp), %xmm11
    movdqu 1296(%rbp), %xmm12
    movdqu 1280(%rbp), %xmm13
    movdqu 1264(%rbp), %xmm14
    movdqu 1248(%rbp), %xmm15
    movq 1240(%rbp), %rbx
    movq 1232(%rbp), %r12
    movq 1224(%rbp), %r13
    movq 1216(%rbp), %r14
    movq 1208(%rbp), %r15
    leaq 1424(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_testing_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/testing.lucb:17:5"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/testing.lucb:25:5"
.Ltext_3:
    .asciz "shift count out of range"
.Ltext_4:
    .asciz "src/std/testing.lucb:30:5"
.Ltext_5:
    .asciz "src/std/testing.lucb:31:5"
.Ltext_6:
    .asciz "src/std/testing.lucb:32:5"
.Ltext_7:
    .asciz "src/std/testing.lucb:34:5"
.Ltext_8:
    .asciz "src/std/testing.lucb:38:9"
.Ltext_9:
    .asciz "expected "
.Ltext_10:
    .asciz ", got "
.Ltext_11:
    .asciz ": "
.Ltext_12:
    .asciz "src/std/testing.lucb:43:9"
.Ltext_13:
    .asciz "expected `"
.Ltext_14:
    .asciz "`, got `"
.Ltext_15:
    .asciz "`: "
.Ltext_16:
    .asciz "src/std/testing.lucb:48:9"
.Ltext_17:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3

    .section .rdata$lb_vt_memory_FixedBuffer_Allocator,"dr"
    .p2align 3
    .globl lb_vt_memory_FixedBuffer_Allocator
lb_vt_memory_FixedBuffer_Allocator:
    .quad lb_memory_FixedBuffer_allocate
    .quad lb_memory_FixedBuffer_resize
    .quad lb_memory_FixedBuffer_release

    .bss
    .globl lb_testing_11arena_bytes
    .p2align 0
lb_testing_11arena_bytes:
    .zero 1048576

    .bss
    .globl lb_testing_arena
    .p2align 3
lb_testing_arena:
    .zero 24

    .bss
    .globl lb_testing_saved
    .p2align 3
lb_testing_saved:
    .zero 16

    .bss
    .globl lb_testing_12current_seed
    .p2align 3
lb_testing_12current_seed:
    .zero 8
