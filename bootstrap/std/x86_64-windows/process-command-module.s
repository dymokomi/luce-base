    .weak lb_memory_copy_0g1_u8
    .text

    .p2align 4
    .globl lb_process_14command_module_0init
lb_process_14command_module_0init:
    .seh_proc lb_process_14command_module_0init
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
    leaq 16(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq .Ltext_0(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $7, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_process_Command_close(%rip), %r12
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $33, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq lb_process_12command_type(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
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
    .globl lb_process_12command_text
lb_process_12command_text:
    .seh_proc lb_process_12command_text
    pushq %rbp
    .seh_pushreg %rbp
    subq $400, %rsp
    .seh_stackalloc 400
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 216(%rbp)
    movq %rdi, 392(%rbp)
    .seh_savereg %rdi, 392
    movq %rsi, 384(%rbp)
    .seh_savereg %rsi, 384
    movdqu %xmm6, 368(%rbp)
    .seh_savexmm %xmm6, 368
    movdqu %xmm7, 352(%rbp)
    .seh_savexmm %xmm7, 352
    movdqu %xmm8, 336(%rbp)
    .seh_savexmm %xmm8, 336
    movdqu %xmm9, 320(%rbp)
    .seh_savexmm %xmm9, 320
    movdqu %xmm10, 304(%rbp)
    .seh_savexmm %xmm10, 304
    movdqu %xmm11, 288(%rbp)
    .seh_savexmm %xmm11, 288
    movdqu %xmm12, 272(%rbp)
    .seh_savexmm %xmm12, 272
    movdqu %xmm13, 256(%rbp)
    .seh_savexmm %xmm13, 256
    movdqu %xmm14, 240(%rbp)
    .seh_savexmm %xmm14, 240
    movdqu %xmm15, 224(%rbp)
    .seh_savexmm %xmm15, 224
    movq %rbx, 208(%rbp)
    .seh_savereg %rbx, 208
    movq %r12, 200(%rbp)
    .seh_savereg %r12, 200
    movq %r13, 192(%rbp)
    .seh_savereg %r13, 192
    movq %r14, 184(%rbp)
    .seh_savereg %r14, 184
    movq %r15, 176(%rbp)
    .seh_savereg %r15, 176
    .seh_endprologue
    movq %rcx, 416(%rbp)
    movq %rdx, 424(%rbp)
    movq %r8, 432(%rbp)
    movq %r9, 440(%rbp)
    movq 424(%rbp), %r10
    leaq 112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 112(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_utf8_valid
    addq $48, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_2
.L1_1:
    leaq 128(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_1(%rip), %r13
    leaq 96(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 216(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 216(%rbp), %rax
    movq 392(%rbp), %rdi
    movq 384(%rbp), %rsi
    movdqu 368(%rbp), %xmm6
    movdqu 352(%rbp), %xmm7
    movdqu 336(%rbp), %xmm8
    movdqu 320(%rbp), %xmm9
    movdqu 304(%rbp), %xmm10
    movdqu 288(%rbp), %xmm11
    movdqu 272(%rbp), %xmm12
    movdqu 256(%rbp), %xmm13
    movdqu 240(%rbp), %xmm14
    movdqu 224(%rbp), %xmm15
    movq 208(%rbp), %rbx
    movq 200(%rbp), %r12
    movq 192(%rbp), %r13
    movq 184(%rbp), %r14
    movq 176(%rbp), %r15
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rax
    movq %rax, %r14
.L1_5:
    cmpq %r13, %r14
    jae .L1_8
.L1_6:
    movq %r12, %r15
    addq %r14, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L1_10
.L1_9:
    leaq 128(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq 80(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 216(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 216(%rbp), %rax
    movq 392(%rbp), %rdi
    movq 384(%rbp), %rsi
    movdqu 368(%rbp), %xmm6
    movdqu 352(%rbp), %xmm7
    movdqu 336(%rbp), %xmm8
    movdqu 320(%rbp), %xmm9
    movdqu 304(%rbp), %xmm10
    movdqu 288(%rbp), %xmm11
    movdqu 272(%rbp), %xmm12
    movdqu 256(%rbp), %xmm13
    movdqu 240(%rbp), %xmm14
    movdqu 224(%rbp), %xmm15
    movq 208(%rbp), %rbx
    movq 200(%rbp), %r12
    movq 192(%rbp), %r13
    movq 184(%rbp), %r14
    movq 176(%rbp), %r15
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
.L1_12:
    jmp .L1_11
.L1_10:
.L1_11:
.L1_7:
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r14
    jmp .L1_5
.L1_8:
    leaq 64(%rbp), %rax
    movq %rax, 8(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r14
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
    call lb_strings_copy
    addq $48, %rsp
    leaq 16(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_14
    jmp .L1_13
.L1_14:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 128(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq 8(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %rsi
    movq 216(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 216(%rbp), %rax
    movq 392(%rbp), %rdi
    movq 384(%rbp), %rsi
    movdqu 368(%rbp), %xmm6
    movdqu 352(%rbp), %xmm7
    movdqu 336(%rbp), %xmm8
    movdqu 320(%rbp), %xmm9
    movdqu 304(%rbp), %xmm10
    movdqu 288(%rbp), %xmm11
    movdqu 272(%rbp), %xmm12
    movdqu 256(%rbp), %xmm13
    movdqu 240(%rbp), %xmm14
    movdqu 224(%rbp), %xmm15
    movq 208(%rbp), %rbx
    movq 200(%rbp), %r12
    movq 192(%rbp), %r13
    movq 184(%rbp), %r14
    movq 176(%rbp), %r15
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
.L1_15:
.L1_13:
    leaq 128(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq 8(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq 216(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 216(%rbp), %rax
    movq 392(%rbp), %rdi
    movq 384(%rbp), %rsi
    movdqu 368(%rbp), %xmm6
    movdqu 352(%rbp), %xmm7
    movdqu 336(%rbp), %xmm8
    movdqu 320(%rbp), %xmm9
    movdqu 304(%rbp), %xmm10
    movdqu 288(%rbp), %xmm11
    movdqu 272(%rbp), %xmm12
    movdqu 256(%rbp), %xmm13
    movdqu 240(%rbp), %xmm14
    movdqu 224(%rbp), %xmm15
    movq 208(%rbp), %rbx
    movq 200(%rbp), %r12
    movq 192(%rbp), %r13
    movq 184(%rbp), %r14
    movq 176(%rbp), %r15
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
.L1_16:
    leaq 64(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_init
lb_process_Command_init:
    .seh_proc lb_process_Command_init
    pushq %rbp
    .seh_pushreg %rbp
    subq $1216, %rsp
    .seh_stackalloc 1216
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 1032(%rbp)
    movq %rdi, 1208(%rbp)
    .seh_savereg %rdi, 1208
    movq %rsi, 1200(%rbp)
    .seh_savereg %rsi, 1200
    movdqu %xmm6, 1184(%rbp)
    .seh_savexmm %xmm6, 1184
    movdqu %xmm7, 1168(%rbp)
    .seh_savexmm %xmm7, 1168
    movdqu %xmm8, 1152(%rbp)
    .seh_savexmm %xmm8, 1152
    movdqu %xmm9, 1136(%rbp)
    .seh_savexmm %xmm9, 1136
    movdqu %xmm10, 1120(%rbp)
    .seh_savexmm %xmm10, 1120
    movdqu %xmm11, 1104(%rbp)
    .seh_savexmm %xmm11, 1104
    movdqu %xmm12, 1088(%rbp)
    .seh_savexmm %xmm12, 1088
    movdqu %xmm13, 1072(%rbp)
    .seh_savexmm %xmm13, 1072
    movdqu %xmm14, 1056(%rbp)
    .seh_savexmm %xmm14, 1056
    movdqu %xmm15, 1040(%rbp)
    .seh_savexmm %xmm15, 1040
    movq %rbx, 1024(%rbp)
    .seh_savereg %rbx, 1024
    movq %r12, 1016(%rbp)
    .seh_savereg %r12, 1016
    movq %r13, 1008(%rbp)
    .seh_savereg %r13, 1008
    movq %r14, 1000(%rbp)
    .seh_savereg %r14, 1000
    movq %r15, 992(%rbp)
    .seh_savereg %r15, 992
    .seh_endprologue
    movq %rcx, 1232(%rbp)
    movq %rdx, 1240(%rbp)
    movq %r8, 1248(%rbp)
    movq %r9, 1256(%rbp)
    movq 1240(%rbp), %rax
    movq %rax, 952(%rbp)
    movq 1248(%rbp), %r10
    leaq 936(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1256(%rbp), %r10
    leaq 920(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1264(%rbp), %r10
    leaq 904(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1272(%rbp), %rax
    movq %rax, 888(%rbp)
    movq 1280(%rbp), %r10
    leaq 864(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 952(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 96(%rbp)
    leaq 936(%rbp), %rax
    movq %rax, 168(%rbp)
    movq 168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_64
    jmp .L2_4
.L2_64:
    movl %r12d, %r14d
    jmp .L2_5
.L2_4:
    leaq 888(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $1, %rcx
    cmpq %rcx, %r12
    setb %al
    movzbl %al, %r14d
.L2_5:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L2_65
    jmp .L2_6
.L2_65:
    movl %r12d, %r14d
    jmp .L2_7
.L2_6:
    leaq 888(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $16777216, %rcx
    cmpq %rcx, %r12
    seta %al
    movzbl %al, %r14d
.L2_7:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq 960(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq 848(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $58, %rax
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
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L2_8:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 160(%rbp)
    leaq 832(%rbp), %r14
    movq 160(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 792(%rbp), %rax
    movq %rax, 88(%rbp)
    movq %r14, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_9
    jmp .L2_10
.L2_10:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_9:
    movq %r14, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq $160, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 768(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    leaq 768(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_11
    jmp .L2_12
.L2_12:
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_8(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 88(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_13
.L2_11:
    movq %rbx, %r10
    movq (%r10), %r12
    leaq 608(%rbp), %r14
    movq %r14, %rdi
    xorl %esi, %esi
    movq $160, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    leaq 888(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $48, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $136, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $-1, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    movq %r14, %rsi
    movq $160, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 88(%rbp), %r10
    movq %r12, (%r10)
    movq 88(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L2_13:
    movq 88(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_15
    jmp .L2_14
.L2_15:
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 960(%rbp), %r12
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
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L2_16:
.L2_14:
    movq 88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 152(%rbp)
    movq 152(%rbp), %rax
    movq $56, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    subq $48, %rsp
    movq 168(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 560(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_12command_text
    addq $48, %rsp
    leaq 560(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_18
    jmp .L2_17
.L2_18:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq 960(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
    movq %r13, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L2_19:
.L2_17:
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 152(%rbp), %rax
    movq $72, %rcx
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    leaq 904(%rbp), %r12
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 512(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_12command_text
    addq $48, %rsp
    leaq 512(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_21
    jmp .L2_20
.L2_21:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 960(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
    movq %r13, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L2_22:
.L2_20:
    movq %r15, %r10
    movq 80(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 152(%rbp), %rax
    movq $88, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    leaq 920(%rbp), %rax
    movq %rax, 144(%rbp)
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 64(%rbp)
    leaq 464(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 64(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L2_24
.L2_23:
    movq 56(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $208273409, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq .Ltext_9(%rip), %r15
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 56(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_25
.L2_24:
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq 160(%rbp), %r10
    movq (%r10), %rbx
    movq 160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_26
    jmp .L2_27
.L2_27:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_26:
    movq %r13, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 440(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    leaq 440(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r15
    setne %al
    movzbl %al, %eax
    movl %eax, 136(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl 136(%rbp), %eax
    movl %r12d, %ecx
    movl %eax, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L2_28
    jmp .L2_29
.L2_28:
    movq 56(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_8(%rip), %r12
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
    movq 56(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_25
.L2_29:
    movq %r14, %r10
    movq (%r10), %rbx
    movq 56(%rbp), %r10
    movq %rbx, (%r10)
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 64(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 56(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_25:
    movq 56(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_31
    jmp .L2_30
.L2_31:
    movq 56(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 960(%rbp), %r12
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
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
    movq %r12, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L2_32:
.L2_30:
    movq 56(%rbp), %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 392(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 152(%rbp), %rax
    movq $104, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L2_33:
    movq 64(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L2_36
.L2_34:
    movq 72(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    movq %r13, %rax
    addq %r15, %rax
    movq %rax, 8(%rbp)
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    addq %r15, %r13
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 392(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_12command_text
    addq $48, %rsp
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L2_38
    jmp .L2_37
.L2_38:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 960(%rbp), %r12
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
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
    movq %r12, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L2_39:
.L2_37:
    movq 0(%rbp), %r10
    movq (%r10), %r13
    movq 8(%rbp), %r10
    movq %r13, (%r10)
    movq 128(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 128(%rbp), %r10
    movq %r13, (%r10)
.L2_35:
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r14
    jmp .L2_33
.L2_36:
    leaq 864(%rbp), %r12
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_43
    jmp .L2_41
.L2_43:
    leaq 376(%rbp), %rax
    movq %rax, 120(%rbp)
    movq %r12, %r10
    movq 120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L2_40:
    movq 152(%rbp), %rax
    movq $112, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 120(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    leaq 328(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 40(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L2_45
.L2_44:
    movq 32(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_9(%rip), %rbx
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 32(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_46
.L2_45:
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq 160(%rbp), %r10
    movq (%r10), %rbx
    movq 160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_47
    jmp .L2_48
.L2_48:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_47:
    movq %r12, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 304(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 304(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, 112(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl 112(%rbp), %eax
    movl %r14d, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L2_49
    jmp .L2_50
.L2_49:
    movq 32(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_8(%rip), %r12
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
    movq 32(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_46
.L2_50:
    movq %r15, %r10
    movq (%r10), %rbx
    movq 32(%rbp), %r10
    movq %rbx, (%r10)
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 40(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 32(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_46:
    movq 32(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_52
    jmp .L2_51
.L2_52:
    movq 32(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 960(%rbp), %r12
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
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
    movq %r12, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L2_53:
.L2_51:
    movq 32(%rbp), %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 256(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 152(%rbp), %rax
    movq $128, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L2_54:
    movq 40(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L2_57
.L2_55:
    movq 48(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    movq %r13, %rax
    addq %r15, %rax
    movq %rax, 24(%rbp)
    movq 120(%rbp), %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    addq %r15, %r13
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 256(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_12command_text
    addq $48, %rsp
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L2_59
    jmp .L2_58
.L2_59:
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 960(%rbp), %r12
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
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
    movq %r12, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L2_60:
.L2_58:
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq 24(%rbp), %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 104(%rbp), %r10
    movq %r13, (%r10)
.L2_56:
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r14
    jmp .L2_54
.L2_57:
    jmp .L2_42
.L2_41:
.L2_42:
    leaq 248(%rbp), %r14
    leaq lb_process_13command_entry(%rip), %rbx
    leaq .Ltext_16(%rip), %r12
    leaq 232(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $7, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 152(%rbp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 32(%rsp)
    leaq 192(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_thread_spawn
    addq $64, %rsp
    leaq 192(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_62
    jmp .L2_61
.L2_62:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 960(%rbp), %r13
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
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
    movq %r13, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L2_63:
.L2_61:
    movq %r12, %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq 152(%rbp), %rax
    movq 96(%rbp), %r10
    movq %rax, (%r10)
    movq 96(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 176(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 960(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_state
lb_process_Command_state:
    .seh_proc lb_process_Command_state
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
    jne .L3_1
    jmp .L3_2
.L3_1:
    jmp .L3_3
.L3_2:
    leaq .Ltext_17(%rip), %rbx
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $21, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_18(%rip), %rbx
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
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_3:
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
.L3_4:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_11is_finished
lb_process_Command_11is_finished:
    .seh_proc lb_process_Command_11is_finished
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
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %eax
    movl %eax, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
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
.L4_1:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_revision
lb_process_Command_revision:
    .seh_proc lb_process_Command_revision
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
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, %rbx
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
.L5_1:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_9exit_code
lb_process_Command_9exit_code:
    .seh_proc lb_process_Command_9exit_code
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
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 40(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_11is_finished
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L6_2
.L6_1:
    leaq 24(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rbp), %r12
    movq %rbx, %r10
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L6_4:
    jmp .L6_3
.L6_2:
.L6_3:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $136, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 48(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L6_5:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_output
lb_process_Command_output:
    .seh_proc lb_process_Command_output
    pushq %rbp
    .seh_pushreg %rbp
    subq $928, %rsp
    .seh_stackalloc 928
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 744(%rbp)
    movq %rdi, 920(%rbp)
    .seh_savereg %rdi, 920
    movq %rsi, 912(%rbp)
    .seh_savereg %rsi, 912
    movdqu %xmm6, 896(%rbp)
    .seh_savexmm %xmm6, 896
    movdqu %xmm7, 880(%rbp)
    .seh_savexmm %xmm7, 880
    movdqu %xmm8, 864(%rbp)
    .seh_savexmm %xmm8, 864
    movdqu %xmm9, 848(%rbp)
    .seh_savexmm %xmm9, 848
    movdqu %xmm10, 832(%rbp)
    .seh_savexmm %xmm10, 832
    movdqu %xmm11, 816(%rbp)
    .seh_savexmm %xmm11, 816
    movdqu %xmm12, 800(%rbp)
    .seh_savexmm %xmm12, 800
    movdqu %xmm13, 784(%rbp)
    .seh_savexmm %xmm13, 784
    movdqu %xmm14, 768(%rbp)
    .seh_savexmm %xmm14, 768
    movdqu %xmm15, 752(%rbp)
    .seh_savexmm %xmm15, 752
    movq %rbx, 736(%rbp)
    .seh_savereg %rbx, 736
    movq %r12, 728(%rbp)
    .seh_savereg %r12, 728
    movq %r13, 720(%rbp)
    .seh_savereg %r13, 720
    movq %r14, 712(%rbp)
    .seh_savereg %r14, 712
    movq %r15, 704(%rbp)
    .seh_savereg %r15, 704
    .seh_endprologue
    movq %rcx, 944(%rbp)
    movq %rdx, 952(%rbp)
    movq %r8, 960(%rbp)
    movq %r9, 968(%rbp)
    movq 952(%rbp), %rax
    movq %rax, 640(%rbp)
    leaq 640(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_lock
    addq $32, %rsp
    leaq 624(%rbp), %rax
    movq %rax, 208(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 200(%rbp)
    movq 200(%rbp), %r10
    movq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r13
    movq %r13, %r10
    movq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 584(%rbp), %rax
    movq %rax, 48(%rbp)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %r13
    movq $40, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 512(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_Builder_create
    addq $32, %rsp
    leaq 512(%rbp), %r15
    movq $64, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L7_2
    jmp .L7_1
.L7_2:
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    leaq 648(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq 208(%rbp), %r10
    movq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r14, %rsi
    movq 744(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 744(%rbp), %rax
    movq 920(%rbp), %rdi
    movq 912(%rbp), %rsi
    movdqu 896(%rbp), %xmm6
    movdqu 880(%rbp), %xmm7
    movdqu 864(%rbp), %xmm8
    movdqu 848(%rbp), %xmm9
    movdqu 832(%rbp), %xmm10
    movdqu 816(%rbp), %xmm11
    movdqu 800(%rbp), %xmm12
    movdqu 784(%rbp), %xmm13
    movdqu 768(%rbp), %xmm14
    movdqu 752(%rbp), %xmm15
    movq 736(%rbp), %rbx
    movq 728(%rbp), %r12
    movq 720(%rbp), %r13
    movq 712(%rbp), %r14
    movq 704(%rbp), %r15
    leaq 928(%rbp), %rsp
    popq %rbp
    ret
.L7_3:
.L7_1:
    movq %r15, %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq 496(%rbp), %rax
    movq %rax, 40(%rbp)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $24, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %r13
    movq $40, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L7_4
.L7_5:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L7_4:
    leaq 480(%rbp), %rax
    movq %rax, 192(%rbp)
    movq 192(%rbp), %r10
    movq %r12, (%r10)
    movq 192(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 184(%rbp)
    movq 184(%rbp), %r10
    movq %r13, (%r10)
    movq 192(%rbp), %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 40(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 176(%rbp)
    leaq 456(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 168(%rbp)
    leaq .Ltext_24(%rip), %rax
    movq %rax, 88(%rbp)
    leaq 320(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    leaq 288(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    leaq 440(%rbp), %rax
    movq %rax, 160(%rbp)
    movq 160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    leaq 376(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    leaq 336(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    leaq .Ltext_24(%rip), %rax
    movq %rax, 152(%rbp)
    leaq 424(%rbp), %rax
    movq %rax, 144(%rbp)
    movq 144(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    leaq 392(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq 160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 96(%rbp)
    movq $0, %rax
    movq %rax, 32(%rbp)
.L7_6:
    movq 176(%rbp), %r10
    movq (%r10), %r12
    movq 32(%rbp), %rax
    cmpq %r12, %rax
    jae .L7_8
.L7_7:
    subq $48, %rsp
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 32(%rbp), %rax
    movq %rax, 16(%rsp)
    leaq 456(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_utf8_decode
    addq $48, %rsp
    movq 168(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L7_12
    jmp .L7_10
.L7_12:
    movq 24(%rbp), %r10
    movq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L7_9:
    movq 160(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L7_14
.L7_13:
    movq 152(%rbp), %rax
    movq 144(%rbp), %r10
    movq %rax, (%r10)
    movq $3, %rax
    movq 136(%rbp), %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq 48(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 144(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 392(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_Builder_put
    addq $48, %rsp
    movq 128(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L7_17
    jmp .L7_16
.L7_17:
    leaq 648(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq 0(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 208(%rbp), %r10
    movq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %r13
    movq $16, %rcx
    addq %rcx, %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r12, %rsi
    movq 744(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 744(%rbp), %rax
    movq 920(%rbp), %rdi
    movq 912(%rbp), %rsi
    movdqu 896(%rbp), %xmm6
    movdqu 880(%rbp), %xmm7
    movdqu 864(%rbp), %xmm8
    movdqu 848(%rbp), %xmm9
    movdqu 832(%rbp), %xmm10
    movdqu 816(%rbp), %xmm11
    movdqu 800(%rbp), %xmm12
    movdqu 784(%rbp), %xmm13
    movdqu 768(%rbp), %xmm14
    movdqu 752(%rbp), %xmm15
    movq 736(%rbp), %rbx
    movq 728(%rbp), %r12
    movq 720(%rbp), %r13
    movq 712(%rbp), %r14
    movq 704(%rbp), %r15
    leaq 928(%rbp), %rsp
    popq %rbp
    ret
.L7_18:
.L7_16:
    jmp .L7_15
.L7_14:
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    movq 176(%rbp), %r10
    movq (%r10), %r12
    movq 120(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq 32(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq $1, %rcx
    addq %rcx, %r12
    movq 32(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 32(%rbp), %rax
    cmpq %r13, %rax
    jbe .L7_19
.L7_20:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L7_19:
    movq 32(%rbp), %rax
    movq %rax, %r12
    addq %rbx, %r12
    movq 32(%rbp), %rcx
    movq %r13, %r14
    subq %rcx, %r14
    movq %r15, %r10
    movq %r12, (%r10)
    movq 112(%rbp), %r10
    movq %r14, (%r10)
    subq $48, %rsp
    movq 48(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r15, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 336(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_Builder_write
    addq $48, %rsp
    movq 104(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L7_22
    jmp .L7_21
.L7_22:
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 648(%rbp), %r12
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
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 208(%rbp), %r10
    movq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r12, %rsi
    movq 744(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 744(%rbp), %rax
    movq 920(%rbp), %rdi
    movq 912(%rbp), %rsi
    movdqu 896(%rbp), %xmm6
    movdqu 880(%rbp), %xmm7
    movdqu 864(%rbp), %xmm8
    movdqu 848(%rbp), %xmm9
    movdqu 832(%rbp), %xmm10
    movdqu 816(%rbp), %xmm11
    movdqu 800(%rbp), %xmm12
    movdqu 784(%rbp), %xmm13
    movdqu 768(%rbp), %xmm14
    movdqu 752(%rbp), %xmm15
    movq 736(%rbp), %rbx
    movq 728(%rbp), %r12
    movq 720(%rbp), %r13
    movq 712(%rbp), %r14
    movq 704(%rbp), %r15
    leaq 928(%rbp), %rsp
    popq %rbp
    ret
.L7_23:
.L7_21:
.L7_15:
    movq 96(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq 32(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    jmp .L7_11
.L7_10:
    movq 88(%rbp), %rax
    movq 80(%rbp), %r10
    movq %rax, (%r10)
    movq $3, %rax
    movq 72(%rbp), %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq 48(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 80(%rbp), %r10
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
    movq 64(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_25
    jmp .L7_24
.L7_25:
    leaq 648(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 16(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 208(%rbp), %r10
    movq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %r12
    movq $16, %rcx
    addq %rcx, %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %rbx, %rsi
    movq 744(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 744(%rbp), %rax
    movq 920(%rbp), %rdi
    movq 912(%rbp), %rsi
    movdqu 896(%rbp), %xmm6
    movdqu 880(%rbp), %xmm7
    movdqu 864(%rbp), %xmm8
    movdqu 848(%rbp), %xmm9
    movdqu 832(%rbp), %xmm10
    movdqu 816(%rbp), %xmm11
    movdqu 800(%rbp), %xmm12
    movdqu 784(%rbp), %xmm13
    movdqu 768(%rbp), %xmm14
    movdqu 752(%rbp), %xmm15
    movq 736(%rbp), %rbx
    movq 728(%rbp), %r12
    movq 720(%rbp), %r13
    movq 712(%rbp), %r14
    movq 704(%rbp), %r15
    leaq 928(%rbp), %rsp
    popq %rbp
    ret
.L7_26:
.L7_24:
    movq 32(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
.L7_11:
    movq %rbx, %rax
    movq %rax, 32(%rbp)
    jmp .L7_6
.L7_8:
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 272(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_Builder_view
    addq $32, %rsp
    leaq 272(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 216(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_interop_9copy_text
    addq $48, %rsp
    leaq 216(%rbp), %r12
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_28
    jmp .L7_27
.L7_28:
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 648(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 208(%rbp), %r10
    movq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r13, %rsi
    movq 744(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 744(%rbp), %rax
    movq 920(%rbp), %rdi
    movq 912(%rbp), %rsi
    movdqu 896(%rbp), %xmm6
    movdqu 880(%rbp), %xmm7
    movdqu 864(%rbp), %xmm8
    movdqu 848(%rbp), %xmm9
    movdqu 832(%rbp), %xmm10
    movdqu 816(%rbp), %xmm11
    movdqu 800(%rbp), %xmm12
    movdqu 784(%rbp), %xmm13
    movdqu 768(%rbp), %xmm14
    movdqu 752(%rbp), %xmm15
    movq 736(%rbp), %rbx
    movq 728(%rbp), %r12
    movq 720(%rbp), %r13
    movq 712(%rbp), %r14
    movq 704(%rbp), %r15
    leaq 928(%rbp), %rsp
    popq %rbp
    ret
.L7_29:
.L7_27:
    leaq 648(%rbp), %rbx
    movq %r12, %r10
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
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 208(%rbp), %r10
    movq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %r13
    movq $16, %rcx
    addq %rcx, %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %rbx, %rsi
    movq 744(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 744(%rbp), %rax
    movq 920(%rbp), %rdi
    movq 912(%rbp), %rsi
    movdqu 896(%rbp), %xmm6
    movdqu 880(%rbp), %xmm7
    movdqu 864(%rbp), %xmm8
    movdqu 848(%rbp), %xmm9
    movdqu 832(%rbp), %xmm10
    movdqu 816(%rbp), %xmm11
    movdqu 800(%rbp), %xmm12
    movdqu 784(%rbp), %xmm13
    movdqu 768(%rbp), %xmm14
    movdqu 752(%rbp), %xmm15
    movq 736(%rbp), %rbx
    movq 728(%rbp), %r12
    movq 720(%rbp), %r13
    movq 712(%rbp), %r14
    movq 704(%rbp), %r15
    leaq 928(%rbp), %rsp
    popq %rbp
    ret
.L7_30:
    leaq 584(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    leaq 624(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_13error_message
lb_process_Command_13error_message:
    .seh_proc lb_process_Command_13error_message
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
    .seh_endprologue
    movq %rcx, 432(%rbp)
    movq %rdx, 440(%rbp)
    movq %r8, 448(%rbp)
    movq %r9, 456(%rbp)
    movq 440(%rbp), %rax
    movq %rax, 136(%rbp)
    leaq 136(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_11is_finished
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L8_2
.L8_1:
    leaq .Ltext_29(%rip), %rbx
    leaq 120(%rbp), %r12
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
    leaq 64(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_interop_9copy_text
    addq $48, %rsp
    leaq 64(%rbp), %r12
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_5
    jmp .L8_4
.L8_5:
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 144(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 232(%rbp), %rdi
    movq $56, %rdx
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
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L8_6:
.L8_4:
    leaq 144(%rbp), %rbx
    movq %r12, %r10
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
    movq 232(%rbp), %rdi
    movq $56, %rdx
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
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L8_7:
    jmp .L8_3
.L8_2:
.L8_3:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $144, %rcx
    addq %rcx, %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_interop_9copy_text
    addq $48, %rsp
    leaq 8(%rbp), %r13
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_9
    jmp .L8_8
.L8_9:
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 144(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
    movq 232(%rbp), %rdi
    movq $56, %rdx
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
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L8_10:
.L8_8:
    leaq 144(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 232(%rbp), %rdi
    movq $56, %rdx
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
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L8_11:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_cancel
lb_process_Command_cancel:
    .seh_proc lb_process_Command_cancel
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
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L9_4
    jmp .L9_2
.L9_4:
.L9_1:
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L9_3
.L9_2:
.L9_3:
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
    .globl lb_process_Command_close
lb_process_Command_close:
    .seh_proc lb_process_Command_close
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
    movq 352(%rbp), %rax
    movq %rax, 112(%rbp)
    leaq 112(%rbp), %r10
    movq (%r10), %r12
    leaq 104(%rbp), %r13
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_1
    jmp .L10_2
.L10_1:
    leaq 96(%rbp), %rbx
    movq 0(%rbp), %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    jmp .L10_3
.L10_2:
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
.L10_4:
.L10_3:
    movq %rbx, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_cancel
    addq $32, %rsp
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 40(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_thread_Handle_join
    addq $32, %rsp
    leaq 40(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L10_8
    jmp .L10_7
.L10_8:
    leaq 72(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L10_5
.L10_7:
    jmp .L10_6
.L10_5:
    leaq .Ltext_31(%rip), %rbx
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $36, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_32(%rip), %rbx
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
    call lb_core_12trap_text_at
    addq $48, %rsp
.L10_6:
    leaq 8(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L10_9
    jmp .L10_10
.L10_9:
    jmp .L10_11
.L10_10:
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
.L10_12:
.L10_11:
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
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

    .p2align 4
    .globl lb_process_15command_dispose
lb_process_15command_dispose:
    .seh_proc lb_process_15command_dispose
    pushq %rbp
    .seh_pushreg %rbp
    subq $464, %rsp
    .seh_stackalloc 464
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 456(%rbp)
    .seh_savereg %rdi, 456
    movq %rsi, 448(%rbp)
    .seh_savereg %rsi, 448
    movdqu %xmm6, 432(%rbp)
    .seh_savexmm %xmm6, 432
    movdqu %xmm7, 416(%rbp)
    .seh_savexmm %xmm7, 416
    movdqu %xmm8, 400(%rbp)
    .seh_savexmm %xmm8, 400
    movdqu %xmm9, 384(%rbp)
    .seh_savexmm %xmm9, 384
    movdqu %xmm10, 368(%rbp)
    .seh_savexmm %xmm10, 368
    movdqu %xmm11, 352(%rbp)
    .seh_savexmm %xmm11, 352
    movdqu %xmm12, 336(%rbp)
    .seh_savexmm %xmm12, 336
    movdqu %xmm13, 320(%rbp)
    .seh_savexmm %xmm13, 320
    movdqu %xmm14, 304(%rbp)
    .seh_savexmm %xmm14, 304
    movdqu %xmm15, 288(%rbp)
    .seh_savexmm %xmm15, 288
    movq %rbx, 280(%rbp)
    .seh_savereg %rbx, 280
    movq %r12, 272(%rbp)
    .seh_savereg %r12, 272
    movq %r13, 264(%rbp)
    .seh_savereg %r13, 264
    movq %r14, 256(%rbp)
    .seh_savereg %r14, 256
    movq %r15, 248(%rbp)
    .seh_savereg %r15, 248
    .seh_endprologue
    movq %rcx, 480(%rbp)
    movq %rdx, 488(%rbp)
    movq %r8, 496(%rbp)
    movq %r9, 504(%rbp)
    movq 480(%rbp), %rax
    movq %rax, 232(%rbp)
    leaq 216(%rbp), %rax
    movq %rax, 80(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movq 80(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r13
    movq %r13, %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 232(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $56, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L11_2
.L11_1:
    subq $48, %rsp
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    jmp .L11_3
.L11_2:
.L11_3:
    movq 64(%rbp), %rax
    movq $72, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L11_5
.L11_4:
    subq $48, %rsp
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    jmp .L11_6
.L11_5:
.L11_6:
    movq 64(%rbp), %rax
    movq $88, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movq (%r10), %rbx
    movq 64(%rbp), %rax
    movq $104, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
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
    jbe .L11_11
.L11_12:
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_11:
    leaq 200(%rbp), %rbx
    movq 16(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 184(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %rax, %r15
.L11_7:
    movq 8(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L11_10
.L11_8:
    movq $8, %rcx
    movq %r15, %r14
    imulq %rcx, %r14
    movq 16(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    movq %rbx, %r10
    movq %r14, (%r10)
    movq %r13, %r10
    movq %r12, (%r10)
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
.L11_9:
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r15
    jmp .L11_7
.L11_10:
    movq 56(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L11_14
.L11_13:
    leaq 168(%rbp), %rbx
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 48(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
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
    movq 72(%rbp), %r10
    movq (%r10), %r12
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L11_17
    jmp .L11_16
.L11_17:
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
.L11_16:
    jmp .L11_15
.L11_14:
.L11_15:
    movq 64(%rbp), %rax
    movq $112, %rcx
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movq (%r10), %r15
    movq 40(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %r13
    movq 64(%rbp), %rax
    movq $128, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
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
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
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
    jbe .L11_22
.L11_23:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_22:
    leaq 152(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq 0(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 136(%rbp), %r13
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L11_18:
    movq 0(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L11_21
.L11_19:
    movq $8, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    addq %r15, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r14
    movq %r13, %r10
    movq %r12, (%r10)
    movq 24(%rbp), %r10
    movq %r14, (%r10)
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
.L11_20:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L11_18
.L11_21:
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L11_25
.L11_24:
    leaq 120(%rbp), %rbx
    movq 40(%rbp), %r10
    movq (%r10), %r12
    movq 32(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
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
    movq 72(%rbp), %r10
    movq (%r10), %r12
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L11_28
    jmp .L11_27
.L11_28:
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
.L11_27:
    jmp .L11_26
.L11_25:
.L11_26:
    movq 64(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L11_30
.L11_29:
    leaq 104(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq 72(%rbp), %r10
    movq (%r10), %r14
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L11_33
    jmp .L11_32
.L11_33:
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
.L11_32:
    jmp .L11_31
.L11_30:
.L11_31:
    movq 64(%rbp), %rax
    movq $144, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L11_35
.L11_34:
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
    jmp .L11_36
.L11_35:
.L11_36:
    leaq 88(%rbp), %rbx
    movq 64(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $160, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 72(%rbp), %r10
    movq (%r10), %r12
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L11_38
    jmp .L11_37
.L11_38:
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
.L11_37:
    movq 80(%rbp), %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 456(%rbp), %rdi
    movq 448(%rbp), %rsi
    movdqu 432(%rbp), %xmm6
    movdqu 416(%rbp), %xmm7
    movdqu 400(%rbp), %xmm8
    movdqu 384(%rbp), %xmm9
    movdqu 368(%rbp), %xmm10
    movdqu 352(%rbp), %xmm11
    movdqu 336(%rbp), %xmm12
    movdqu 320(%rbp), %xmm13
    movdqu 304(%rbp), %xmm14
    movdqu 288(%rbp), %xmm15
    movq 280(%rbp), %rbx
    movq 272(%rbp), %r12
    movq 264(%rbp), %r13
    movq 256(%rbp), %r14
    movq 248(%rbp), %r15
    leaq 464(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_13command_entry
lb_process_13command_entry:
    .seh_proc lb_process_13command_entry
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
    movq %rax, 376(%rbp)
    leaq 376(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L12_1
    jmp .L12_2
.L12_1:
    jmp .L12_3
.L12_2:
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
.L12_4:
.L12_3:
    leaq 336(%rbp), %rax
    movq %rax, 8(%rbp)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq $88, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $72, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $128, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L12_8
.L12_7:
    movq $112, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    leaq 224(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    leaq 248(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L12_9
.L12_8:
    leaq 200(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 248(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
.L12_9:
    leaq 248(%rbp), %r12
    subq $96, %rsp
    movq 16(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq %r12, %r10
    leaq 64(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 64(%rsp), %rax
    movq %rax, 32(%rsp)
    movq %rbx, %rax
    movq %rax, 40(%rsp)
    leaq 128(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_process_14run_controlled
    addq $96, %rsp
    leaq 128(%rbp), %r15
    movq $64, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L12_11
    jmp .L12_10
.L12_11:
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 272(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L12_5
.L12_10:
    leaq 296(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L12_6
.L12_5:
    movq $144, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 40(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_copy
    addq $48, %rsp
    leaq 40(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L12_15
    jmp .L12_14
.L12_15:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 88(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L12_12
.L12_14:
    leaq 112(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L12_13
.L12_12:
    leaq .Ltext_29(%rip), %r12
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 112(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L12_13
.L12_16:
.L12_13:
    leaq 112(%rbp), %r12
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
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
.L12_17:
.L12_6:
    movq %r12, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $136, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq 8(%rbp), %r10
    movslq (%r10), %r14
    movslq %r14d, %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_release
    addq $48, %rsp
    movq 8(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_release
    addq $48, %rsp
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
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
    .seh_endproc

    .p2align 4
    .globl lb_process_14command_append
lb_process_14command_append:
    .seh_proc lb_process_14command_append
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
    movq 568(%rbp), %rax
    movq %rax, 272(%rbp)
    movq 576(%rbp), %r10
    leaq 256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 272(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 96(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_lock
    addq $32, %rsp
    leaq 256(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movq (%r10), %rbx
    movq 88(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r10
    movq (%r10), %r15
    movq 88(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %rax
    movq %r12, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    cmpq %r12, %rbx
    jbe .L13_2
.L13_1:
    leaq 288(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_39(%rip), %r12
    leaq 240(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $37, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
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
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %rbx, %rsi
    movq 360(%rbp), %rdi
    movq $32, %rdx
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
.L13_4:
    jmp .L13_3
.L13_2:
.L13_3:
    movq 48(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 40(%rbp)
    movq 88(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq 40(%rbp), %rax
    cmpq %r13, %rax
    jbe .L13_6
.L13_5:
    movq 56(%rbp), %r10
    movq (%r10), %rbx
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    subq $32, %rsp
    movq $4096, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_13math_max_size
    addq $32, %rsp
    movq %rax, %r13
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_13math_max_size
    addq $32, %rsp
    movq %rax, %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_13math_min_size
    addq $32, %rsp
    movq %rax, %rbx
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L13_9
.L13_8:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 192(%rbp), %rax
    movq %rax, 0(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rbx
    jbe .L13_12
.L13_11:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_9(%rip), %r12
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
    jmp .L13_13
.L13_12:
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L13_14
    jmp .L13_15
.L13_15:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L13_14:
    movq %r15, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 168(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    leaq 168(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, 16(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl 16(%rbp), %eax
    movl %r12d, %ecx
    movl %eax, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L13_16
    jmp .L13_17
.L13_16:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_8(%rip), %r12
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
    jmp .L13_13
.L13_17:
    movq %r14, %r10
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
.L13_13:
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_19
    jmp .L13_18
.L13_19:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 288(%rbp), %r12
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
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r12, %rsi
    movq 360(%rbp), %rdi
    movq $32, %rdx
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
.L13_20:
.L13_18:
    movq 0(%rbp), %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L13_10
.L13_9:
    subq $48, %rsp
    movq 32(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    leaq 120(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_grow
    addq $48, %rsp
    leaq 120(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L13_22
    jmp .L13_21
.L13_22:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 288(%rbp), %r12
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
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r12, %rsi
    movq 360(%rbp), %rdi
    movq $32, %rdx
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
.L13_23:
.L13_21:
    movq %r13, %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L13_10:
    jmp .L13_7
.L13_6:
.L13_7:
    movq 32(%rbp), %r10
    movq (%r10), %r12
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq 48(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r13, %r14
    jbe .L13_24
.L13_25:
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L13_24:
    movq %r12, %rbx
    addq %r14, %rbx
    movq %r13, %rax
    subq %r14, %rax
    movq %rax, 8(%rbp)
    leaq 104(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 64(%rbp), %r10
    movq (%r10), %rbx
    subq $64, %rsp
    movq %r15, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 72(%rbp), %r10
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
    movq 40(%rbp), %rax
    movq 48(%rbp), %r10
    movq %rax, (%r10)
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $1, %rcx
    movq %rbx, %r10
    lock xaddq %rcx, (%r10)
    movq %rcx, %rbx
    movq 96(%rbp), %r10
    movq (%r10), %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    leaq 288(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $0, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 360(%rbp), %rdi
    movq $32, %rdx
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
    .seh_endproc

    .p2align 4
    .globl lb_process_13math_min_size
lb_process_13math_min_size:
    .seh_proc lb_process_13math_min_size
    pushq %rbp
    .seh_pushreg %rbp
    subq $240, %rsp
    .seh_stackalloc 240
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 232(%rbp)
    .seh_savereg %rdi, 232
    movq %rsi, 224(%rbp)
    .seh_savereg %rsi, 224
    movdqu %xmm6, 208(%rbp)
    .seh_savexmm %xmm6, 208
    movdqu %xmm7, 192(%rbp)
    .seh_savexmm %xmm7, 192
    movdqu %xmm8, 176(%rbp)
    .seh_savexmm %xmm8, 176
    movdqu %xmm9, 160(%rbp)
    .seh_savexmm %xmm9, 160
    movdqu %xmm10, 144(%rbp)
    .seh_savexmm %xmm10, 144
    movdqu %xmm11, 128(%rbp)
    .seh_savexmm %xmm11, 128
    movdqu %xmm12, 112(%rbp)
    .seh_savexmm %xmm12, 112
    movdqu %xmm13, 96(%rbp)
    .seh_savexmm %xmm13, 96
    movdqu %xmm14, 80(%rbp)
    .seh_savexmm %xmm14, 80
    movdqu %xmm15, 64(%rbp)
    .seh_savexmm %xmm15, 64
    movq %rbx, 56(%rbp)
    .seh_savereg %rbx, 56
    movq %r12, 48(%rbp)
    .seh_savereg %r12, 48
    movq %r13, 40(%rbp)
    .seh_savereg %r13, 40
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    movq 256(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 264(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L14_2
.L14_1:
    movq %rbx, %r12
    jmp .L14_3
.L14_2:
.L14_3:
    movq %r12, %rax
    movq 232(%rbp), %rdi
    movq 224(%rbp), %rsi
    movdqu 208(%rbp), %xmm6
    movdqu 192(%rbp), %xmm7
    movdqu 176(%rbp), %xmm8
    movdqu 160(%rbp), %xmm9
    movdqu 144(%rbp), %xmm10
    movdqu 128(%rbp), %xmm11
    movdqu 112(%rbp), %xmm12
    movdqu 96(%rbp), %xmm13
    movdqu 80(%rbp), %xmm14
    movdqu 64(%rbp), %xmm15
    movq 56(%rbp), %rbx
    movq 48(%rbp), %r12
    movq 40(%rbp), %r13
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L14_4:
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_13math_max_size
lb_process_13math_max_size:
    .seh_proc lb_process_13math_max_size
    pushq %rbp
    .seh_pushreg %rbp
    subq $240, %rsp
    .seh_stackalloc 240
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 232(%rbp)
    .seh_savereg %rdi, 232
    movq %rsi, 224(%rbp)
    .seh_savereg %rsi, 224
    movdqu %xmm6, 208(%rbp)
    .seh_savexmm %xmm6, 208
    movdqu %xmm7, 192(%rbp)
    .seh_savexmm %xmm7, 192
    movdqu %xmm8, 176(%rbp)
    .seh_savexmm %xmm8, 176
    movdqu %xmm9, 160(%rbp)
    .seh_savexmm %xmm9, 160
    movdqu %xmm10, 144(%rbp)
    .seh_savexmm %xmm10, 144
    movdqu %xmm11, 128(%rbp)
    .seh_savexmm %xmm11, 128
    movdqu %xmm12, 112(%rbp)
    .seh_savexmm %xmm12, 112
    movdqu %xmm13, 96(%rbp)
    .seh_savexmm %xmm13, 96
    movdqu %xmm14, 80(%rbp)
    .seh_savexmm %xmm14, 80
    movdqu %xmm15, 64(%rbp)
    .seh_savexmm %xmm15, 64
    movq %rbx, 56(%rbp)
    .seh_savereg %rbx, 56
    movq %r12, 48(%rbp)
    .seh_savereg %r12, 48
    movq %r13, 40(%rbp)
    .seh_savereg %r13, 40
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    movq 256(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 264(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jbe .L15_2
.L15_1:
    movq %rbx, %r12
    jmp .L15_3
.L15_2:
.L15_3:
    movq %r12, %rax
    movq 232(%rbp), %rdi
    movq 224(%rbp), %rsi
    movdqu 208(%rbp), %xmm6
    movdqu 192(%rbp), %xmm7
    movdqu 176(%rbp), %xmm8
    movdqu 160(%rbp), %xmm9
    movdqu 144(%rbp), %xmm10
    movdqu 128(%rbp), %xmm11
    movdqu 112(%rbp), %xmm12
    movdqu 96(%rbp), %xmm13
    movdqu 80(%rbp), %xmm14
    movdqu 64(%rbp), %xmm15
    movq 56(%rbp), %rbx
    movq 48(%rbp), %r12
    movq 40(%rbp), %r13
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L15_4:
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
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
    jne .L16_11
    jmp .L16_4
.L16_11:
    movl %r13d, %r14d
    jmp .L16_5
.L16_4:
    leaq 32(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L16_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L16_1
    jmp .L16_2
.L16_1:
    leaq .Ltext_23(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_46(%rip), %r13
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
    jmp .L16_3
.L16_2:
.L16_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L16_7
.L16_6:
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
    jne .L16_9
    jmp .L16_10
.L16_10:
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L16_9:
    jmp .L16_8
.L16_7:
.L16_8:
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
    .quad lb_process_14command_module_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "Command"
.Ltext_1:
    .asciz "a command argument must be UTF-8"
.Ltext_2:
    .asciz "a command argument cannot contain NUL"
.Ltext_3:
    .asciz "unreachable"
.Ltext_4:
    .asciz "src/std/process/command/module.lucb:32:9"
.Ltext_5:
    .asciz "a command needs a program and an output limit in 1..16 MiB"
.Ltext_6:
    .asciz "memory.unset"
.Ltext_7:
    .asciz "src/std/process/command/module.lucb:44:9"
.Ltext_8:
    .asciz "memory.exhausted"
.Ltext_9:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_10:
    .asciz "src/std/process/command/module.lucb:48:9"
.Ltext_11:
    .asciz "src/std/process/command/module.lucb:50:13"
.Ltext_12:
    .asciz "src/std/process/command/module.lucb:51:13"
.Ltext_13:
    .asciz "src/std/process/command/module.lucb:53:13"
.Ltext_14:
    .asciz "src/std/process/command/module.lucb:55:17"
.Ltext_15:
    .asciz "src/std/process/command/module.lucb:56:17"
.Ltext_16:
    .asciz "command"
.Ltext_17:
    .asciz "the command is closed"
.Ltext_18:
    .asciz "src/std/process/command/module.lucb:62:9"
.Ltext_19:
    .asciz "src/std/process/command/module.lucb:65:9"
.Ltext_20:
    .asciz "src/std/process/command/module.lucb:68:9"
.Ltext_21:
    .asciz "src/std/process/command/module.lucb:73:9"
.Ltext_22:
    .asciz "src/std/process/command/module.lucb:84:13"
.Ltext_23:
    .asciz "index out of bounds"
.Ltext_24:
    .asciz "\357\277\275"
.Ltext_25:
    .asciz "src/std/process/command/module.lucb:90:25"
.Ltext_26:
    .asciz "src/std/process/command/module.lucb:91:21"
.Ltext_27:
    .asciz "src/std/process/command/module.lucb:94:21"
.Ltext_28:
    .asciz "src/std/process/command/module.lucb:95:13"
.Ltext_29:
    .asciz ""
.Ltext_30:
    .asciz "src/std/process/command/module.lucb:100:9"
.Ltext_31:
    .asciz "a command worker could not be joined"
.Ltext_32:
    .asciz "src/std/process/command/module.lucb:110:13"
.Ltext_33:
    .asciz "src/std/process/command/module.lucb:125:9"
.Ltext_34:
    .asciz "src/std/process/command/module.lucb:128:13"
.Ltext_35:
    .asciz "src/std/process/command/module.lucb:129:9"
.Ltext_36:
    .asciz "src/std/process/command/module.lucb:132:13"
.Ltext_37:
    .asciz "src/std/process/command/module.lucb:134:13"
.Ltext_38:
    .asciz "src/std/process/command/module.lucb:153:5"
.Ltext_39:
    .asciz "the command exceeded its output limit"
.Ltext_40:
    .asciz "src/std/process/command/module.lucb:155:5"
.Ltext_41:
    .asciz "src/std/process/command/module.lucb:157:9"
.Ltext_42:
    .asciz "src/std/process/command/module.lucb:159:13"
.Ltext_43:
    .asciz "src/std/process/command/module.lucb:162:5"
.Ltext_44:
    .asciz "src/std/process/command/module.lucb:167:5"
.Ltext_45:
    .asciz "src/std/process/command/module.lucb:170:5"
.Ltext_46:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_47:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_48:
    .asciz "null_foreign"
.Ltext_49:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_process_12command_type
    .p2align 3
lb_process_12command_type:
    .zero 40
