    .text

    .p2align 4
    .globl lb_fonts_14windows_native_0init
lb_fonts_14windows_native_0init:
    .seh_proc lb_fonts_14windows_native_0init
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
    .globl lb_fonts_8win_face
lb_fonts_8win_face:
    .seh_proc lb_fonts_8win_face
    pushq %rbp
    .seh_pushreg %rbp
    subq $1440, %rsp
    .seh_stackalloc 1440
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 1256(%rbp)
    movq %rdi, 1432(%rbp)
    .seh_savereg %rdi, 1432
    movq %rsi, 1424(%rbp)
    .seh_savereg %rsi, 1424
    movdqu %xmm6, 1408(%rbp)
    .seh_savexmm %xmm6, 1408
    movdqu %xmm7, 1392(%rbp)
    .seh_savexmm %xmm7, 1392
    movdqu %xmm8, 1376(%rbp)
    .seh_savexmm %xmm8, 1376
    movdqu %xmm9, 1360(%rbp)
    .seh_savexmm %xmm9, 1360
    movdqu %xmm10, 1344(%rbp)
    .seh_savexmm %xmm10, 1344
    movdqu %xmm11, 1328(%rbp)
    .seh_savexmm %xmm11, 1328
    movdqu %xmm12, 1312(%rbp)
    .seh_savexmm %xmm12, 1312
    movdqu %xmm13, 1296(%rbp)
    .seh_savexmm %xmm13, 1296
    movdqu %xmm14, 1280(%rbp)
    .seh_savexmm %xmm14, 1280
    movdqu %xmm15, 1264(%rbp)
    .seh_savexmm %xmm15, 1264
    movq %rbx, 1248(%rbp)
    .seh_savereg %rbx, 1248
    movq %r12, 1240(%rbp)
    .seh_savereg %r12, 1240
    movq %r13, 1232(%rbp)
    .seh_savereg %r13, 1232
    movq %r14, 1224(%rbp)
    .seh_savereg %r14, 1224
    movq %r15, 1216(%rbp)
    .seh_savereg %r15, 1216
    .seh_endprologue
    movq %rcx, 1456(%rbp)
    movq %rdx, 1464(%rbp)
    movq %r8, 1472(%rbp)
    movq %r9, 1480(%rbp)
    movsd %xmm1, 1464(%rbp)
    movq 1464(%rbp), %rax
    movq %rax, 1128(%rbp)
    movq 1472(%rbp), %r10
    leaq 1112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1096(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 1112(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L1_2
.L1_1:
    leaq .Ltext_0(%rip), %rbx
    leaq 1064(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $8, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 1080(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_3
.L1_2:
    leaq 1080(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L1_3:
    leaq 1080(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 1016(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_fonts_12family_bytes
    addq $48, %rsp
    leaq 1016(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_5
    jmp .L1_4
.L1_5:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 1144(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
    movq 1432(%rbp), %rdi
    movq 1424(%rbp), %rsi
    movdqu 1408(%rbp), %xmm6
    movdqu 1392(%rbp), %xmm7
    movdqu 1376(%rbp), %xmm8
    movdqu 1360(%rbp), %xmm9
    movdqu 1344(%rbp), %xmm10
    movdqu 1328(%rbp), %xmm11
    movdqu 1312(%rbp), %xmm12
    movdqu 1296(%rbp), %xmm13
    movdqu 1280(%rbp), %xmm14
    movdqu 1264(%rbp), %xmm15
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L1_6:
.L1_4:
    movq %r12, %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1000(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 24(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 336(%rbp)
    leaq lb_fonts_failed(%rip), %rax
    movq %rax, 328(%rbp)
    movq 328(%rbp), %r10
    movl (%r10), %r15d
    subq $32, %rsp
    movq 336(%rbp), %rax
    movq %rax, 8(%rsp)
    movl %r15d, %eax
    movq %rax, 16(%rsp)
    leaq 952(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_wide
    addq $32, %rsp
    leaq 952(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L1_8
    jmp .L1_7
.L1_8:
    movq $16, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 320(%rbp)
    leaq 1144(%rbp), %rax
    movq %rax, 312(%rbp)
    movq 312(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 320(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 312(%rbp), %rax
    movq $64, %rcx
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
    leaq 936(%rbp), %rax
    movq %rax, 304(%rbp)
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq 336(%rbp), %rax
    movq 304(%rbp), %r10
    movq %rax, (%r10)
    movq 304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_10
    jmp .L1_9
.L1_10:
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 304(%rbp), %r10
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
.L1_9:
    movq 312(%rbp), %rsi
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
    movq 1432(%rbp), %rdi
    movq 1424(%rbp), %rsi
    movdqu 1408(%rbp), %xmm6
    movdqu 1392(%rbp), %xmm7
    movdqu 1376(%rbp), %xmm8
    movdqu 1360(%rbp), %xmm9
    movdqu 1344(%rbp), %xmm10
    movdqu 1328(%rbp), %xmm11
    movdqu 1312(%rbp), %xmm12
    movdqu 1296(%rbp), %xmm13
    movdqu 1280(%rbp), %xmm14
    movdqu 1264(%rbp), %xmm15
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L1_11:
.L1_7:
    movq %r14, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 296(%rbp)
    movq 296(%rbp), %rax
    movq $32, %rcx
    cmpq %rcx, %rax
    jbe .L1_13
.L1_12:
    leaq 1144(%rbp), %rax
    movq %rax, 288(%rbp)
    movq 288(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 328(%rbp), %r10
    movl (%r10), %eax
    movl %eax, 280(%rbp)
    movl 280(%rbp), %eax
    movq %r14, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %rax
    movq %rax, 272(%rbp)
    leaq 920(%rbp), %r13
    movq 272(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 264(%rbp)
    movq $53, %rax
    movq 264(%rbp), %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 288(%rbp), %rax
    movq $64, %rcx
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
    leaq 904(%rbp), %r14
    movq 16(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 256(%rbp)
    movq 296(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 256(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 248(%rbp)
    movq 248(%rbp), %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 240(%rbp)
    movq 240(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L1_16
    jmp .L1_15
.L1_16:
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
.L1_15:
    leaq 888(%rbp), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq 336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq (%r10), %r12
    movq 240(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_18
    jmp .L1_17
.L1_18:
    movq $16, %rcx
    movq %r14, %r13
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
.L1_17:
    movq 288(%rbp), %rsi
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
    movq 1432(%rbp), %rdi
    movq 1424(%rbp), %rsi
    movdqu 1408(%rbp), %xmm6
    movdqu 1392(%rbp), %xmm7
    movdqu 1376(%rbp), %xmm8
    movdqu 1360(%rbp), %xmm9
    movdqu 1344(%rbp), %xmm10
    movdqu 1328(%rbp), %xmm11
    movdqu 1312(%rbp), %xmm12
    movdqu 1296(%rbp), %xmm13
    movdqu 1280(%rbp), %xmm14
    movdqu 1264(%rbp), %xmm15
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L1_19:
    jmp .L1_14
.L1_13:
.L1_14:
    leaq 796(%rbp), %rax
    movq %rax, 232(%rbp)
    leaq 704(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movq $0, 80(%r11)
    movl $0, 88(%r11)
    leaq 1128(%rbp), %r14
    movq %r14, %r10
    movsd (%r10), %xmm12
    movabsq $4634204016564240384, %rax
    movq %rax, %xmm8
    movsd %xmm8, 224(%rbp)
    movsd 224(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    call lb_math_round
    addq $32, %rsp
    movapd %xmm0, %xmm12
    leaq .Ltext_4(%rip), %r14
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6f_to_s
    addq $32, %rsp
    movq %rax, %r14
    movl $0, %eax
    movl %r14d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
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
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $400, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $23, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $4, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq $26, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $4, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq $27, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $49, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq 232(%rbp), %r11
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
    movl 88(%r10), %eax
    movl %eax, 88(%r11)
    movq 232(%rbp), %rax
    movq $28, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rax
    movq %rax, %r15
.L1_20:
    movq 296(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L1_23
.L1_21:
    movq $2, %rcx
    movq %r15, %r12
    imulq %rcx, %r12
    movq %r13, %rbx
    addq %r12, %rbx
    addq %r14, %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movq %rbx, %r10
    movw %r12w, (%r10)
.L1_22:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L1_20
.L1_23:
    subq $32, %rsp
    movq 232(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CreateFontIndirectW
    addq $32, %rsp
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    testq %rax, %rax
    jne .L1_24
    jmp .L1_25
.L1_24:
    jmp .L1_26
.L1_25:
    leaq 1144(%rbp), %rax
    movq %rax, 216(%rbp)
    movq 216(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 328(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_6(%rip), %r13
    leaq 688(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $30, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 216(%rbp), %rax
    movq $64, %rcx
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
    leaq 672(%rbp), %r13
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 296(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 208(%rbp)
    movq 208(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_28
    jmp .L1_27
.L1_28:
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L1_27:
    leaq 656(%rbp), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq (%r10), %r13
    movq 208(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_30
    jmp .L1_29
.L1_30:
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
.L1_29:
    movq 216(%rbp), %rsi
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
    movq 1432(%rbp), %rdi
    movq 1424(%rbp), %rsi
    movdqu 1408(%rbp), %xmm6
    movdqu 1392(%rbp), %xmm7
    movdqu 1376(%rbp), %xmm8
    movdqu 1360(%rbp), %xmm9
    movdqu 1344(%rbp), %xmm10
    movdqu 1328(%rbp), %xmm11
    movdqu 1312(%rbp), %xmm12
    movdqu 1296(%rbp), %xmm13
    movdqu 1280(%rbp), %xmm14
    movdqu 1264(%rbp), %xmm15
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L1_31:
.L1_26:
    subq $32, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CreateCompatibleDC
    addq $32, %rsp
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    testq %rax, %rax
    jne .L1_32
    jmp .L1_33
.L1_32:
    jmp .L1_34
.L1_33:
    leaq 1144(%rbp), %rax
    movq %rax, 200(%rbp)
    movq 200(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 328(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_8(%rip), %r13
    leaq 640(%rbp), %r14
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
    movq 200(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %ebx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 624(%rbp), %r13
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 296(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 192(%rbp)
    movq 192(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_36
    jmp .L1_35
.L1_36:
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L1_35:
    leaq 608(%rbp), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq (%r10), %r13
    movq 192(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_38
    jmp .L1_37
.L1_38:
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
.L1_37:
    movq 200(%rbp), %rsi
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
    movq 1432(%rbp), %rdi
    movq 1424(%rbp), %rsi
    movdqu 1408(%rbp), %xmm6
    movdqu 1392(%rbp), %xmm7
    movdqu 1376(%rbp), %xmm8
    movdqu 1360(%rbp), %xmm9
    movdqu 1344(%rbp), %xmm10
    movdqu 1328(%rbp), %xmm11
    movdqu 1312(%rbp), %xmm12
    movdqu 1296(%rbp), %xmm13
    movdqu 1280(%rbp), %xmm14
    movdqu 1264(%rbp), %xmm15
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L1_39:
.L1_34:
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 8(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SelectObject
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L1_40
    jmp .L1_41
.L1_40:
    jmp .L1_42
.L1_41:
    leaq 1144(%rbp), %rax
    movq %rax, 184(%rbp)
    movq 184(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 328(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_10(%rip), %r13
    leaq 592(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $25, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 184(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteDC
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %ebx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 576(%rbp), %r13
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 296(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 176(%rbp)
    movq 176(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_44
    jmp .L1_43
.L1_44:
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L1_43:
    leaq 560(%rbp), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq (%r10), %r13
    movq 176(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_46
    jmp .L1_45
.L1_46:
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
.L1_45:
    movq 184(%rbp), %rsi
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
    movq 1432(%rbp), %rdi
    movq 1424(%rbp), %rsi
    movdqu 1408(%rbp), %xmm6
    movdqu 1392(%rbp), %xmm7
    movdqu 1376(%rbp), %xmm8
    movdqu 1360(%rbp), %xmm9
    movdqu 1344(%rbp), %xmm10
    movdqu 1328(%rbp), %xmm11
    movdqu 1312(%rbp), %xmm12
    movdqu 1296(%rbp), %xmm13
    movdqu 1280(%rbp), %xmm14
    movdqu 1264(%rbp), %xmm15
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L1_47:
.L1_42:
    leaq 500(%rbp), %rax
    movq %rax, 168(%rbp)
    movq 168(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $0, 56(%r11)
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 168(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetTextMetricsW
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_67
    jmp .L1_51
.L1_67:
    movl %r12d, %r13d
    jmp .L1_52
.L1_51:
    movq 168(%rbp), %rax
    movq $55, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $1, %ecx
    andl %ecx, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L1_52:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_48
    jmp .L1_49
.L1_48:
    leaq 1144(%rbp), %rax
    movq %rax, 160(%rbp)
    movq 160(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 328(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_12(%rip), %r13
    leaq 480(%rbp), %r14
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
    movq 160(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteDC
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %ebx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 464(%rbp), %r13
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 296(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    movq 152(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_54
    jmp .L1_53
.L1_54:
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L1_53:
    leaq 448(%rbp), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq (%r10), %r13
    movq 152(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_56
    jmp .L1_55
.L1_56:
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
.L1_55:
    movq 160(%rbp), %rsi
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
    movq 1432(%rbp), %rdi
    movq 1424(%rbp), %rsi
    movdqu 1408(%rbp), %xmm6
    movdqu 1392(%rbp), %xmm7
    movdqu 1376(%rbp), %xmm8
    movdqu 1360(%rbp), %xmm9
    movdqu 1344(%rbp), %xmm10
    movdqu 1328(%rbp), %xmm11
    movdqu 1312(%rbp), %xmm12
    movdqu 1296(%rbp), %xmm13
    movdqu 1280(%rbp), %xmm14
    movdqu 1264(%rbp), %xmm15
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L1_57:
    jmp .L1_50
.L1_49:
.L1_50:
    leaq 408(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq 0(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    movq 8(%rbp), %rax
    movq 144(%rbp), %r10
    movq %rax, (%r10)
    movq 168(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, 128(%rbp)
    movl 128(%rbp), %eax
    movslq %eax, %rax
    movq %rax, 120(%rbp)
    movq 120(%rbp), %rax
    cvtsi2sdq %rax, %xmm8
    movapd %xmm8, %xmm12
    movsd 224(%rbp), %xmm9
    movaps %xmm12, %xmm8
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $16, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %r10
    movsd %xmm12, (%r10)
    movq 168(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq 104(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, 96(%rbp)
    movl 96(%rbp), %eax
    movslq %eax, %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rax
    cvtsi2sdq %rax, %xmm8
    movapd %xmm8, %xmm12
    movsd 224(%rbp), %xmm9
    movaps %xmm12, %xmm8
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $24, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %r10
    movsd %xmm12, (%r10)
    movq 168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, 64(%rbp)
    movl 64(%rbp), %eax
    movslq %eax, %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %rax
    cvtsi2sdq %rax, %xmm8
    movapd %xmm8, %xmm12
    movsd 224(%rbp), %xmm9
    movaps %xmm12, %xmm8
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $32, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movsd %xmm12, (%r10)
    leaq 1144(%rbp), %rax
    movq %rax, 40(%rbp)
    movq %rbx, %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq 40(%rbp), %rax
    movq $64, %rcx
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
    leaq 392(%rbp), %r13
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 296(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L1_59
    jmp .L1_58
.L1_59:
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L1_58:
    leaq 376(%rbp), %r12
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 336(%rbp), %rax
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
    jne .L1_61
    jmp .L1_60
.L1_61:
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
.L1_60:
    movq 40(%rbp), %rsi
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
    movq 1432(%rbp), %rdi
    movq 1424(%rbp), %rsi
    movdqu 1408(%rbp), %xmm6
    movdqu 1392(%rbp), %xmm7
    movdqu 1376(%rbp), %xmm8
    movdqu 1360(%rbp), %xmm9
    movdqu 1344(%rbp), %xmm10
    movdqu 1328(%rbp), %xmm11
    movdqu 1312(%rbp), %xmm12
    movdqu 1296(%rbp), %xmm13
    movdqu 1280(%rbp), %xmm14
    movdqu 1264(%rbp), %xmm15
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L1_62:
    leaq 1000(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 360(%rbp), %r13
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
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
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
    jne .L1_64
    jmp .L1_63
.L1_64:
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
.L1_63:
    leaq 1096(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 344(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
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
    jne .L1_66
    jmp .L1_65
.L1_66:
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
.L1_65:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_fonts_9win_close
lb_fonts_9win_close:
    .seh_proc lb_fonts_9win_close
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
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 248(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteDC
    addq $32, %rsp
    movl %eax, %ebx
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L2_4
    jmp .L2_2
.L2_4:
.L2_1:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %ebx
    jmp .L2_3
.L2_2:
.L2_3:
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
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_fonts_10win_raster
lb_fonts_10win_raster:
    .seh_proc lb_fonts_10win_raster
    pushq %rbp
    .seh_pushreg %rbp
    subq $1456, %rsp
    .seh_stackalloc 1456
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 1272(%rbp)
    movq %rdi, 1448(%rbp)
    .seh_savereg %rdi, 1448
    movq %rsi, 1440(%rbp)
    .seh_savereg %rsi, 1440
    movdqu %xmm6, 1424(%rbp)
    .seh_savexmm %xmm6, 1424
    movdqu %xmm7, 1408(%rbp)
    .seh_savexmm %xmm7, 1408
    movdqu %xmm8, 1392(%rbp)
    .seh_savexmm %xmm8, 1392
    movdqu %xmm9, 1376(%rbp)
    .seh_savexmm %xmm9, 1376
    movdqu %xmm10, 1360(%rbp)
    .seh_savexmm %xmm10, 1360
    movdqu %xmm11, 1344(%rbp)
    .seh_savexmm %xmm11, 1344
    movdqu %xmm12, 1328(%rbp)
    .seh_savexmm %xmm12, 1328
    movdqu %xmm13, 1312(%rbp)
    .seh_savexmm %xmm13, 1312
    movdqu %xmm14, 1296(%rbp)
    .seh_savexmm %xmm14, 1296
    movdqu %xmm15, 1280(%rbp)
    .seh_savexmm %xmm15, 1280
    movq %rbx, 1264(%rbp)
    .seh_savereg %rbx, 1264
    movq %r12, 1256(%rbp)
    .seh_savereg %r12, 1256
    movq %r13, 1248(%rbp)
    .seh_savereg %r13, 1248
    movq %r14, 1240(%rbp)
    .seh_savereg %r14, 1240
    movq %r15, 1232(%rbp)
    .seh_savereg %r15, 1232
    .seh_endprologue
    movq %rcx, 1472(%rbp)
    movq %rdx, 1480(%rbp)
    movq %r8, 1488(%rbp)
    movq %r9, 1496(%rbp)
    movsd %xmm3, 1496(%rbp)
    movq 1480(%rbp), %r10
    leaq 1152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 1488(%rbp), %r10
    leaq 1136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1496(%rbp), %rax
    movq %rax, 1120(%rbp)
    movq 1504(%rbp), %rax
    movq %rax, 1104(%rbp)
    leaq 1152(%rbp), %rax
    movq %rax, 608(%rbp)
    movq 608(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %rax
    testq %rax, %rax
    jne .L3_1
    jmp .L3_2
.L3_1:
    jmp .L3_3
.L3_2:
    leaq 1200(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_16(%rip), %r12
    leaq 1088(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L3_3:
    movq 608(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 104(%rbp)
    movq 104(%rbp), %rax
    testq %rax, %rax
    jne .L3_5
    jmp .L3_6
.L3_5:
    jmp .L3_7
.L3_6:
    leaq 1200(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_16(%rip), %r12
    leaq 1072(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L3_7:
    leaq 980(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movq $0, 80(%r11)
    movl $0, 88(%r11)
    subq $32, %rsp
    movq 104(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $92, %eax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call GetObjectW
    addq $32, %rsp
    movl %eax, %r15d
    movl $92, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L3_10
.L3_9:
    leaq 1200(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_17(%rip), %r12
    leaq 960(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $30, %rax
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
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L3_10:
.L3_11:
    movq 608(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    leaq 1120(%rbp), %r15
    movq %r15, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, 600(%rbp)
    movsd 600(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    call lb_math_round
    addq $32, %rsp
    movapd %xmm0, %xmm12
    leaq .Ltext_18(%rip), %r15
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq %r15, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6f_to_s
    addq $32, %rsp
    movq %rax, %r15
    movl $0, %eax
    movl %r15d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CreateFontIndirectW
    addq $32, %rsp
    movq %rax, 96(%rbp)
    movq 96(%rbp), %rax
    testq %rax, %rax
    jne .L3_13
    jmp .L3_14
.L3_13:
    jmp .L3_15
.L3_14:
    leaq 1200(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_19(%rip), %r12
    leaq 944(%rbp), %r13
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
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L3_15:
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 96(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SelectObject
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L3_17
    jmp .L3_18
.L3_17:
    jmp .L3_19
.L3_18:
    leaq 1200(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_20(%rip), %r12
    leaq 928(%rbp), %r13
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
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L3_19:
    leaq 912(%rbp), %rax
    movq %rax, 592(%rbp)
    leaq 896(%rbp), %rax
    movq %rax, 584(%rbp)
    movq 584(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movl $65536, %eax
    movq 584(%rbp), %r10
    movl %eax, (%r10)
    movq 584(%rbp), %rax
    movq $12, %rcx
    addq %rcx, %rax
    movq %rax, 576(%rbp)
    movl $65536, %eax
    movq 576(%rbp), %r10
    movl %eax, (%r10)
    movq 584(%rbp), %r10
    movq 592(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1136(%rbp), %rax
    movq %rax, 568(%rbp)
    movq 568(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 560(%rbp)
    leaq 880(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 856(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 552(%rbp)
    leaq 840(%rbp), %rax
    movq %rax, 544(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 536(%rbp)
    leaq 804(%rbp), %rax
    movq %rax, 512(%rbp)
    leaq 768(%rbp), %rax
    movq %rax, 48(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 40(%rbp)
    leaq 720(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 40(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 456(%rbp)
    leaq 696(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 448(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 400(%rbp)
    movq 32(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 392(%rbp)
    movq 32(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 440(%rbp)
    leaq .Ltext_28(%rip), %rax
    movq %rax, 432(%rbp)
    movq 440(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 424(%rbp)
    movq 440(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 416(%rbp)
    movq 32(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 408(%rbp)
    movq 32(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 496(%rbp)
    leaq .Ltext_25(%rip), %rax
    movq %rax, 488(%rbp)
    movq 496(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 480(%rbp)
    movq 496(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 472(%rbp)
    movq 32(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 464(%rbp)
    movq 32(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 384(%rbp)
    movq 512(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 360(%rbp)
    movq 48(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 352(%rbp)
    movq 608(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 328(%rbp)
    leaq .Ltext_36(%rip), %rax
    movq %rax, 320(%rbp)
    movq 512(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 312(%rbp)
    movq 608(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 296(%rbp)
    leaq .Ltext_37(%rip), %rax
    movq %rax, 288(%rbp)
    movq 512(%rbp), %rax
    movq $12, %rcx
    addq %rcx, %rax
    movq %rax, 280(%rbp)
    leaq 1104(%rbp), %rax
    movq %rax, 240(%rbp)
    leaq 1104(%rbp), %rax
    movq %rax, 224(%rbp)
    leaq 1104(%rbp), %rax
    movq %rax, 176(%rbp)
    leaq 616(%rbp), %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq 40(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    movq $0, %rax
    movq %rax, 88(%rbp)
    movq $0, %rax
    movq %rax, 80(%rbp)
.L3_21:
    movq 560(%rbp), %r10
    movq (%r10), %r13
    movq 88(%rbp), %rax
    cmpq %r13, %rax
    jae .L3_23
.L3_22:
    subq $48, %rsp
    movq 568(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 88(%rbp), %rax
    movq %rax, 16(%rsp)
    leaq 856(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_utf8_decode
    addq $48, %rsp
    movq 552(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L3_24
    jmp .L3_25
.L3_24:
    movq 64(%rbp), %r10
    movq 544(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_26
.L3_25:
    leaq .Ltext_21(%rip), %rbx
    leaq 824(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $22, %rax
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
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_26:
    movq 544(%rbp), %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 536(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 528(%rbp)
    movq 528(%rbp), %rax
    movq 88(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 520(%rbp)
    movq 512(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movl $0, 16(%r11)
    movq 72(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    movl $65535, %ecx
    cmpl %ecx, %r13d
    ja .L3_28
.L3_27:
    movl %r13d, %eax
    movl %eax, 56(%rbp)
    jmp .L3_29
.L3_28:
    movl $65533, %eax
    movl %eax, 56(%rbp)
.L3_29:
    subq $64, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movl 56(%rbp), %eax
    movq %rax, 8(%rsp)
    movl $6, %eax
    movq %rax, 16(%rsp)
    movq 512(%rbp), %rax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movq $0, %rax
    movq %rax, 40(%rsp)
    movq 592(%rbp), %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call GetGlyphOutlineW
    addq $64, %rsp
    movl %eax, 504(%rbp)
    movl 504(%rbp), %eax
    movl $4294967295, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L3_87
    jmp .L3_33
.L3_87:
    movl %r15d, %ebx
    jmp .L3_34
.L3_33:
    movl 504(%rbp), %eax
    movl $1048576, %ecx
    cmpl %ecx, %eax
    seta %al
    movzbl %al, %ebx
.L3_34:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L3_30
    jmp .L3_31
.L3_30:
    leaq 1200(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_24(%rip), %r12
    leaq 784(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $34, %rax
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
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 104(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SelectObject
    addq $32, %rsp
    movq %rax, %r12
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L3_31:
.L3_32:
    movl 504(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jbe .L3_37
.L3_36:
    movl 504(%rbp), %eax
    movl %eax, %r15d
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r15
    jbe .L3_40
.L3_39:
    movl $208273409, %eax
    movq 496(%rbp), %r10
    movl %eax, (%r10)
    movq 488(%rbp), %rax
    movq 480(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq 472(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 464(%rbp), %r10
    movb %al, (%r10)
    jmp .L3_41
.L3_40:
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    movq 456(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L3_42
    jmp .L3_43
.L3_43:
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_42:
    movq %r12, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 696(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    movq 448(%rbp), %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r15
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
    jne .L3_44
    jmp .L3_45
.L3_44:
    movl $208273409, %eax
    movq 440(%rbp), %r10
    movl %eax, (%r10)
    movq 432(%rbp), %rax
    movq 424(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq 416(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 408(%rbp), %r10
    movb %al, (%r10)
    jmp .L3_41
.L3_45:
    movq 24(%rbp), %r10
    movq (%r10), %rbx
    movq 32(%rbp), %r10
    movq %rbx, (%r10)
    movq 400(%rbp), %r10
    movq %r15, (%r10)
    movl $0, %eax
    movq 392(%rbp), %r10
    movb %al, (%r10)
.L3_41:
    movq 384(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_47
    jmp .L3_46
.L3_47:
    movq 32(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1200(%rbp), %r12
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
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 104(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SelectObject
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L3_46:
    movq 32(%rbp), %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 48(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 376(%rbp)
    subq $64, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movl 56(%rbp), %eax
    movq %rax, 8(%rsp)
    movl $6, %eax
    movq %rax, 16(%rsp)
    movq 512(%rbp), %rax
    movq %rax, 24(%rsp)
    movl 504(%rbp), %eax
    movq %rax, 32(%rsp)
    movq 376(%rbp), %rax
    movq %rax, 40(%rsp)
    movq 592(%rbp), %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call GetGlyphOutlineW
    addq $64, %rsp
    movl %eax, %r12d
    movl $4294967295, %ecx
    cmpl %ecx, %r12d
    jne .L3_50
.L3_49:
    leaq 1200(%rbp), %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_29(%rip), %r13
    leaq 680(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $28, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 664(%rbp), %r13
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq 376(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 40(%rbp), %r10
    movq (%r10), %r14
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_53
    jmp .L3_52
.L3_53:
    movq $16, %rcx
    movq %r15, %rbx
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
.L3_52:
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 104(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SelectObject
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L3_50:
.L3_51:
    movq 512(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    movq $3, %rcx
    addq %rcx, %r12
.L3_56:
    movq $4, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r13
    movq %r13, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 368(%rbp)
    movq 360(%rbp), %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    movq 368(%rbp), %rax
    movq %r14, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 352(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 344(%rbp)
    movq 344(%rbp), %rcx
    cmpq %rcx, %r14
    jbe .L3_58
.L3_57:
    leaq 1200(%rbp), %rax
    movq %rax, 336(%rbp)
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq 336(%rbp), %r10
    movl %r13d, (%r10)
    leaq .Ltext_34(%rip), %r13
    leaq 648(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $41, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 336(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 336(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 632(%rbp), %r13
    movq 376(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq 344(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 40(%rbp), %r10
    movq (%r10), %r14
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L3_61
    jmp .L3_60
.L3_61:
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
.L3_60:
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 104(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SelectObject
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %ebx
    movq 336(%rbp), %rsi
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L3_58:
.L3_59:
    movq 80(%rbp), %rax
    movq %rax, %rcx
    testq %rcx, %rcx
    js 1f
    cvtsi2sdq %rcx, %xmm8
    jmp 2f
1:
    movq %rcx, %rax
    shrq $1, %rax
    andl $1, %ecx
    orq %rcx, %rax
    cvtsi2sdq %rax, %xmm8
    addsd %xmm8, %xmm8
2:
    movapd %xmm8, %xmm12
    movq 328(%rbp), %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movsd 600(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    call lb_math_round
    addq $32, %rsp
    movapd %xmm0, %xmm12
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movl $64, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq 320(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6f_to_s
    addq $32, %rsp
    movq %rax, %r12
    movq %r12, %rax
    movq $2, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 312(%rbp), %r10
    movslq (%r10), %r14
    movslq %r14d, %r14
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 304(%rbp)
    movq 296(%rbp), %r10
    movsd (%r10), %xmm12
    movsd 600(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    call lb_math_ceil
    addq $32, %rsp
    movapd %xmm0, %xmm12
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movl $64, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq 288(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6f_to_s
    addq $32, %rsp
    movq %rax, %r14
    movq %r14, %rax
    movq $2, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 280(%rbp), %r10
    movslq (%r10), %rbx
    movslq %ebx, %rbx
    movq %r14, %rax
    movq %rbx, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 272(%rbp)
    movq 360(%rbp), %r10
    movl (%r10), %r14d
    movl %r14d, %eax
    movq %rax, 264(%rbp)
    movq 240(%rbp), %r10
    movq (%r10), %r15
    movq $16, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 232(%rbp)
    movq 224(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 216(%rbp)
    movq 216(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, 208(%rbp)
    movq 176(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 168(%rbp)
    movq 168(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    movq 168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    movq $0, %rax
    movq %rax, 16(%rbp)
.L3_63:
    movq 16(%rbp), %rax
    movq 264(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L3_66
.L3_64:
    movq 512(%rbp), %r10
    movl (%r10), %r15d
    movl %r15d, %eax
    movq %rax, 256(%rbp)
    movq $0, %rax
    movq %rax, 8(%rbp)
.L3_67:
    movq 8(%rbp), %rax
    movq 256(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L3_70
.L3_68:
    movq 304(%rbp), %rax
    movq 8(%rbp), %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 248(%rbp)
    movq 272(%rbp), %rax
    movq 16(%rbp), %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 248(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setge %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L3_74
    jmp .L3_88
.L3_88:
    movl %ebx, %r12d
    jmp .L3_75
.L3_74:
    movq $0, %rcx
    cmpq %rcx, %r15
    setge %al
    movzbl %al, %r12d
.L3_75:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_76
    jmp .L3_89
.L3_89:
    movl %ebx, %r12d
    jmp .L3_77
.L3_76:
    movq 232(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq 248(%rbp), %rax
    cmpq %rbx, %rax
    setl %al
    movzbl %al, %r12d
.L3_77:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_78
    jmp .L3_90
.L3_90:
    movl %ebx, %r12d
    jmp .L3_79
.L3_78:
    movq 208(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    cmpq %rbx, %r15
    setl %al
    movzbl %al, %r12d
.L3_79:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_71
    jmp .L3_72
.L3_71:
    movq 368(%rbp), %rax
    movq 16(%rbp), %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq 8(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 344(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 376(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %ebx
    movl %ebx, %eax
    movl $255, %ecx
    mull %ecx
    jnc 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %ebx
    movl %ebx, %eax
    movl $32, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %ebx
.L3_81:
    movl $64, %ecx
    movl %ebx, %eax
    xorl %edx, %edx
    divl %ecx
    movl %eax, 200(%rbp)
    movl 200(%rbp), %eax
    movl %eax, %eax
    movq %rax, 192(%rbp)
    movl 192(%rbp), %eax
    movzbl %al, %eax
    movl %eax, 184(%rbp)
    movq 160(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    movq %r15, %rax
    movq %r13, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 248(%rbp), %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movl 184(%rbp), %eax
    movzbl %al, %eax
    movl %eax, 152(%rbp)
    movq 168(%rbp), %r10
    movq (%r10), %r14
    movq 144(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r13, %r12
    addq %r14, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl 152(%rbp), %eax
    cmpl %r12d, %eax
    jbe .L3_83
.L3_82:
    movq 168(%rbp), %r10
    movq (%r10), %rbx
    movq 144(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
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
    movl 152(%rbp), %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_84
.L3_83:
.L3_84:
    jmp .L3_73
.L3_72:
.L3_73:
.L3_69:
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 8(%rbp)
    jmp .L3_67
.L3_70:
.L3_65:
    movq 16(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 16(%rbp)
    jmp .L3_63
.L3_66:
    movq 376(%rbp), %rax
    movq 136(%rbp), %r10
    movq %rax, (%r10)
    movq 344(%rbp), %rax
    movq 128(%rbp), %r10
    movq %rax, (%r10)
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    movq 120(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L3_86
    jmp .L3_85
.L3_86:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 136(%rbp), %r10
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
.L3_85:
    jmp .L3_38
.L3_37:
.L3_38:
    movq 80(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_45(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 520(%rbp), %rax
    movq %rax, 88(%rbp)
    movq %rbx, %rax
    movq %rax, 80(%rbp)
    jmp .L3_21
.L3_23:
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 104(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SelectObject
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %ebx
    leaq 1200(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_fonts_14windows_native_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "Consolas"
.Ltext_1:
    .asciz "src/std/fonts/windows/native.lucb:63:5"
.Ltext_2:
    .asciz "Windows font families support at most 31 UTF-16 units"
.Ltext_3:
    .asciz "src/std/fonts/windows/native.lucb:66:9"
.Ltext_4:
    .asciz "src/std/fonts/windows/native.lucb:67:5"
.Ltext_5:
    .asciz "src/std/fonts/windows/native.lucb:69:9"
.Ltext_6:
    .asciz "could not load the font family"
.Ltext_7:
    .asciz "src/std/fonts/windows/native.lucb:70:5"
.Ltext_8:
    .asciz "could not create a font context"
.Ltext_9:
    .asciz "src/std/fonts/windows/native.lucb:72:5"
.Ltext_10:
    .asciz "could not select the font"
.Ltext_11:
    .asciz "src/std/fonts/windows/native.lucb:74:5"
.Ltext_12:
    .asciz "the requested font must be monospace"
.Ltext_13:
    .asciz "src/std/fonts/windows/native.lucb:77:9"
.Ltext_14:
    .asciz "src/std/fonts/windows/native.lucb:78:5"
.Ltext_15:
    .asciz "unreachable"
.Ltext_16:
    .asciz "the font is closed"
.Ltext_17:
    .asciz "could not read font attributes"
.Ltext_18:
    .asciz "src/std/fonts/windows/native.lucb:91:5"
.Ltext_19:
    .asciz "could not scale the font"
.Ltext_20:
    .asciz "could not select the scaled font"
.Ltext_21:
    .asciz "validated text changed"
.Ltext_22:
    .asciz "src/std/fonts/windows/native.lucb:100:9"
.Ltext_23:
    .asciz "src/std/fonts/windows/native.lucb:101:9"
.Ltext_24:
    .asciz "could not rasterize the font glyph"
.Ltext_25:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_26:
    .asciz "memory.unset"
.Ltext_27:
    .asciz "src/std/fonts/windows/native.lucb:108:13"
.Ltext_28:
    .asciz "memory.exhausted"
.Ltext_29:
    .asciz "could not read font coverage"
.Ltext_30:
    .asciz "src/std/fonts/windows/native.lucb:111:17"
.Ltext_31:
    .asciz "src/std/fonts/windows/native.lucb:112:13"
.Ltext_32:
    .asciz "division by zero"
.Ltext_33:
    .asciz "src/std/fonts/windows/native.lucb:113:13"
.Ltext_34:
    .asciz "native glyph dimensions exceed its buffer"
.Ltext_35:
    .asciz "src/std/fonts/windows/native.lucb:114:17"
.Ltext_36:
    .asciz "src/std/fonts/windows/native.lucb:115:13"
.Ltext_37:
    .asciz "src/std/fonts/windows/native.lucb:116:13"
.Ltext_38:
    .asciz "src/std/fonts/windows/native.lucb:119:21"
.Ltext_39:
    .asciz "src/std/fonts/windows/native.lucb:120:21"
.Ltext_40:
    .asciz "src/std/fonts/windows/native.lucb:122:25"
.Ltext_41:
    .asciz "src/std/fonts/windows/native.lucb:123:25"
.Ltext_42:
    .asciz "src/std/fonts/windows/native.lucb:124:25"
.Ltext_43:
    .asciz "src/std/fonts/windows/native.lucb:125:29"
.Ltext_44:
    .asciz "src/std/fonts/windows/native.lucb:126:9"
.Ltext_45:
    .asciz "integer overflow"
.Ltext_46:
    .asciz "index out of bounds"

    .section .rdata,"dr"
    .p2align 3
