    .weak lb_interop_Reference_0g1_gpu_Frame_adopt
    .weak lb_interop_Reference_0g1_gpu_FrameState_value
    .weak lb_interop_Reference_0g1_gpu_Frame_release
    .weak lb_interop_Reservation_0g1_gpu_Frame_init
    .weak lb_interop_Reservation_0g1_gpu_Frame_publish
    .weak lb_interop_Reference_0g1_gpu_FrameState_get
    .weak lb_interop_Owner_0g1_gpu_Frame_12finish_owner
    .weak lb_interop_Owner_0g1_gpu_Frame_10drop_owner
    .weak lb_interop_Owner_0g1_gpu_Frame_11trace_owner
    .weak lb_interop_Reference_0g1_gpu_Frame_init
    .weak lb_interop_11close_owner_0g1_gpu_Frame
    .weak lb_interop_13dispose_owner_0g1_gpu_Frame
    .text

    .p2align 4
    .globl lb_gpu_surface_0init
lb_gpu_surface_0init:
    .seh_proc lb_gpu_surface_0init
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
    .globl lb_gpu_Surface_open
lb_gpu_Surface_open:
    .seh_proc lb_gpu_Surface_open
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
    leaq 296(%rbp), %r10
    movq %rax, 0(%r10)
    movq 608(%rbp), %rax
    leaq 280(%rbp), %r10
    movq %rax, 0(%r10)
    leaq 296(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 240(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_Device_checked
    addq $32, %rsp
    leaq 240(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 312(%rbp), %r13
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
.L1_3:
.L1_1:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    leaq 232(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 280(%rbp), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 192(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_20acquire_presentation
    addq $32, %rsp
    leaq 192(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_5
    jmp .L1_4
.L1_5:
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 312(%rbp), %r12
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
.L1_6:
.L1_4:
    movq %r15, %r10
    movq 0(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rbp), %r10
    movq 0(%r10), %rax
    movq %rax, 16(%rsp)
    leaq 152(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_20backend_surface_open
    addq $32, %rsp
    leaq 152(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_8
    jmp .L1_7
.L1_8:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 312(%rbp), %r12
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
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_Presentation_destroy
    addq $32, %rsp
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
.L1_9:
.L1_7:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    leaq lb_memory_heap(%rip), %r15
    leaq 136(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 96(%rbp), %r14
    movq %r12, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L1_10
    jmp .L1_11
.L1_11:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_10:
    movq %r12, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq $40, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 72(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 72(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_12
    jmp .L1_13
.L1_13:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r12
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
    jmp .L1_14
.L1_12:
    movq %rbx, %r10
    movq (%r10), %r12
    leaq 32(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq 16(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq 0(%rbp), %r10
    movq %r15, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $16, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq 8(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $24, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $1, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %r14, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L1_14:
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_16
    jmp .L1_15
.L1_16:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 312(%rbp), %r12
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
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rbp), %r10
    movq 0(%r10), %rax
    movq %rax, 8(%rsp)
    movq 8(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_23backend_surface_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_Presentation_destroy
    addq $32, %rsp
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
.L1_17:
.L1_15:
    movq %r14, %r10
    movq (%r10), %rbx
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    leaq 24(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq 312(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
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
.L1_18:
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
    .globl lb_gpu_Surface_size
lb_gpu_Surface_size:
    .seh_proc lb_gpu_Surface_size
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
    movq %rax, 120(%rbp)
    leaq 120(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 80(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_Surface_checked
    addq $32, %rsp
    leaq 80(%rbp), %r12
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
    leaq 128(%rbp), %r13
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
    movq 232(%rbp), %rdi
    movq $72, %rdx
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
.L2_3:
.L2_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Presentation_size
    addq $32, %rsp
    leaq 8(%rbp), %r13
    movq $64, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_5
    jmp .L2_4
.L2_5:
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 128(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
    movq 232(%rbp), %rdi
    movq $72, %rdx
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
.L2_6:
.L2_4:
    leaq 128(%rbp), %rbx
    movq %r13, %r10
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
    movq 232(%rbp), %rdi
    movq $72, %rdx
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
.L2_7:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_gpu_Surface_13clear_present
lb_gpu_Surface_13clear_present:
    .seh_proc lb_gpu_Surface_13clear_present
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
    movq %rax, 224(%rbp)
    movq 528(%rbp), %r10
    leaq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 224(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 160(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_Surface_checked
    addq $32, %rsp
    leaq 160(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_2
    jmp .L3_1
.L3_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 232(%rbp), %r13
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
    movq 312(%rbp), %rdi
    movq $40, %rdx
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
.L3_3:
.L3_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq 200(%rbp), %r13
    subq $64, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 128(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_11check_color
    addq $64, %rsp
    leaq 128(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_5
    jmp .L3_4
.L3_5:
    leaq 232(%rbp), %rbx
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
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $40, %rdx
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
.L3_6:
.L3_4:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 56(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Presentation_size
    addq $32, %rsp
    leaq 56(%rbp), %r15
    movq $64, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_8
    jmp .L3_7
.L3_8:
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 232(%rbp), %r12
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
    movq 312(%rbp), %rdi
    movq $40, %rdx
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
.L3_9:
.L3_7:
    movq $33, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_10
    jmp .L3_11
.L3_10:
    leaq 232(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_12frame_in_use(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq 40(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $40, %rdx
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
.L3_13:
    jmp .L3_12
.L3_11:
.L3_12:
    movq %rbx, %r10
    movq (%r10), %r14
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    subq $80, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq %rax, 16(%rsp)
    movq %r15, %rax
    movq %rax, 24(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 32(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_gpu_21backend_clear_present
    addq $80, %rsp
    leaq 0(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_15
    jmp .L3_14
.L3_15:
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 232(%rbp), %r12
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
    movq 312(%rbp), %rdi
    movq $40, %rdx
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
.L3_16:
.L3_14:
    movq %r15, %r10
    movzbl (%r10), %ebx
    leaq 232(%rbp), %r12
    movq %r12, %r10
    movb %bl, (%r10)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 312(%rbp), %rdi
    movq $40, %rdx
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
.L3_17:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_gpu_Surface_render
lb_gpu_Surface_render:
    .seh_proc lb_gpu_Surface_render
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
    movq %rax, 304(%rbp)
    movq 608(%rbp), %r10
    leaq 232(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    movq 616(%rbp), %r10
    leaq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 304(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 168(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_Surface_checked
    addq $32, %rsp
    leaq 168(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_2
    jmp .L4_1
.L4_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 312(%rbp), %r13
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
.L4_3:
.L4_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq 208(%rbp), %r13
    subq $64, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 136(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_11check_color
    addq $64, %rsp
    leaq 136(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L4_5
    jmp .L4_4
.L4_5:
    leaq 312(%rbp), %rbx
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
    movq %rbx, %rsi
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
.L4_6:
.L4_4:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 64(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Presentation_size
    addq $32, %rsp
    leaq 64(%rbp), %r15
    movq $64, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L4_8
    jmp .L4_7
.L4_8:
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 312(%rbp), %r12
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
.L4_9:
.L4_7:
    movq $33, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L4_10
    jmp .L4_11
.L4_10:
    leaq 312(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_12frame_in_use(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq 48(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
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
.L4_13:
    jmp .L4_12
.L4_11:
.L4_12:
    movq %rbx, %r10
    movq (%r10), %r14
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    leaq 232(%rbp), %rax
    movq %rax, 0(%rbp)
    subq $160, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq %rax, 16(%rsp)
    movq %r15, %rax
    movq %rax, 24(%rsp)
    movq 0(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 32(%rsp)
    movq %r13, %r10
    leaq 128(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 128(%rsp), %rax
    movq %rax, 40(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_gpu_14backend_render
    addq $160, %rsp
    leaq 8(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L4_15
    jmp .L4_14
.L4_15:
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 312(%rbp), %r12
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
.L4_16:
.L4_14:
    movq %r15, %r10
    movzbl (%r10), %ebx
    leaq 312(%rbp), %r12
    movq %r12, %r10
    movb %bl, (%r10)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
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
.L4_17:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_gpu_Surface_frame
lb_gpu_Surface_frame:
    .seh_proc lb_gpu_Surface_frame
    pushq %rbp
    .seh_pushreg %rbp
    subq $704, %rsp
    .seh_stackalloc 704
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 520(%rbp)
    movq %rdi, 696(%rbp)
    .seh_savereg %rdi, 696
    movq %rsi, 688(%rbp)
    .seh_savereg %rsi, 688
    movdqu %xmm6, 672(%rbp)
    .seh_savexmm %xmm6, 672
    movdqu %xmm7, 656(%rbp)
    .seh_savexmm %xmm7, 656
    movdqu %xmm8, 640(%rbp)
    .seh_savexmm %xmm8, 640
    movdqu %xmm9, 624(%rbp)
    .seh_savexmm %xmm9, 624
    movdqu %xmm10, 608(%rbp)
    .seh_savexmm %xmm10, 608
    movdqu %xmm11, 592(%rbp)
    .seh_savexmm %xmm11, 592
    movdqu %xmm12, 576(%rbp)
    .seh_savexmm %xmm12, 576
    movdqu %xmm13, 560(%rbp)
    .seh_savexmm %xmm13, 560
    movdqu %xmm14, 544(%rbp)
    .seh_savexmm %xmm14, 544
    movdqu %xmm15, 528(%rbp)
    .seh_savexmm %xmm15, 528
    movq %rbx, 512(%rbp)
    .seh_savereg %rbx, 512
    movq %r12, 504(%rbp)
    .seh_savereg %r12, 504
    movq %r13, 496(%rbp)
    .seh_savereg %r13, 496
    movq %r14, 488(%rbp)
    .seh_savereg %r14, 488
    movq %r15, 480(%rbp)
    .seh_savereg %r15, 480
    .seh_endprologue
    movq %rcx, 720(%rbp)
    movq %rdx, 728(%rbp)
    movq %r8, 736(%rbp)
    movq %r9, 744(%rbp)
    movq 728(%rbp), %rax
    movq %rax, 432(%rbp)
    leaq 432(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 392(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_Surface_checked
    addq $32, %rsp
    leaq 392(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_2
    jmp .L5_1
.L5_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 440(%rbp), %r13
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
    movq 520(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L5_3:
.L5_1:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rax
    movq $33, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L5_4
    jmp .L5_5
.L5_4:
    leaq 440(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_12frame_in_use(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_10(%rip), %r13
    leaq 376(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $39, %rax
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
    movq 520(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L5_7:
    jmp .L5_6
.L5_5:
.L5_6:
    leaq 336(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 264(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Presentation_size
    addq $32, %rsp
    leaq 264(%rbp), %r15
    movq $64, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_9
    jmp .L5_8
.L5_9:
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 440(%rbp), %r12
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
    movq 520(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L5_10:
.L5_8:
    movq %r15, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 248(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 208(%rbp), %rbx
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_11
    jmp .L5_12
.L5_12:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_11:
    movq %r13, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $40, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 184(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r15, %r11
    call *%r11
    addq $32, %rsp
    leaq 184(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L5_13
    jmp .L5_14
.L5_14:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r13
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $16, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L5_15
.L5_13:
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    subq $80, %rsp
    movq 8(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 16(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 152(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_Frame_init
    addq $80, %rsp
    leaq 152(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L5_17
    jmp .L5_16
.L5_17:
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    testq %r13, %r13
    jne .L5_19
    jmp .L5_18
.L5_19:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq 24(%rbp), %rax
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
.L5_18:
    jmp .L5_15
.L5_16:
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L5_15:
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_21
    jmp .L5_20
.L5_21:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq 440(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 520(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L5_22:
.L5_20:
    movq %rbx, %r10
    movq (%r10), %r12
    leaq 144(%rbp), %r15
    leaq lb_gpu_10frame_type(%rip), %r13
    leaq 128(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    subq $96, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %r14, %r10
    leaq 80(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 80(%rsp), %rax
    movq %rax, 24(%rsp)
    leaq 88(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_interop_Reference_0g1_gpu_Frame_adopt
    addq $96, %rsp
    leaq 88(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_24
    jmp .L5_23
.L5_24:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 440(%rbp), %r12
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
    movq 520(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L5_25:
.L5_23:
    movq %r14, %r10
    movq %r15, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 48(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_Frame_11state_value
    addq $32, %rsp
    leaq 48(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_27
    jmp .L5_26
.L5_27:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 440(%rbp), %r12
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
    movq %r15, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_release
    addq $32, %rsp
.L5_30:
    movq %r12, %rsi
    movq 520(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L5_28:
.L5_26:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_interop_Reference_0g1_gpu_FrameState_value
    addq $32, %rsp
    movq %rax, %rbx
    movq $112, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 40(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_19check_surface_frame(%rip), %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_20submit_surface_frame(%rip), %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movq $136, %rcx
    addq %rcx, %rbx
    leaq lb_gpu_21release_surface_frame(%rip), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq 40(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
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
    movl $1, %eax
    movq 32(%rbp), %r10
    movb %al, (%r10)
    leaq 440(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 520(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L5_29:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_gpu_Surface_9wait_idle
lb_gpu_Surface_9wait_idle:
    .seh_proc lb_gpu_Surface_9wait_idle
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
    .seh_endprologue
    movq %rcx, 336(%rbp)
    movq %rdx, 344(%rbp)
    movq %r8, 352(%rbp)
    movq %r9, 360(%rbp)
    movq 344(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 72(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 32(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_gpu_Surface_checked
    addq $32, %rsp
    leaq 32(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_2
    jmp .L6_1
.L6_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 80(%rbp), %r13
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
    movq 136(%rbp), %rdi
    movq $32, %rdx
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
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L6_3:
.L6_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_20backend_surface_wait
    addq $32, %rsp
    leaq 0(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_5
    jmp .L6_4
.L6_5:
    leaq 80(%rbp), %rbx
    movq %r13, %r10
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
    movq %rbx, %rsi
    movq 136(%rbp), %rdi
    movq $32, %rdx
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
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L6_6:
.L6_4:
    leaq 80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 136(%rbp), %rdi
    movq $32, %rdx
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
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_gpu_Surface_destroy
lb_gpu_Surface_destroy:
    .seh_proc lb_gpu_Surface_destroy
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
    movq 224(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 0(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L7_1
    jmp .L7_2
.L7_1:
    jmp .L7_3
.L7_2:
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
.L7_4:
.L7_3:
    subq $32, %rsp
    call lb_gpu_14require_thread
    addq $32, %rsp
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_15release_surface
    addq $32, %rsp
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
    .globl lb_gpu_Surface_checked
lb_gpu_Surface_checked:
    .seh_proc lb_gpu_Surface_checked
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
    movq %rax, 72(%rbp)
    leaq 72(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    leaq 40(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_12check_thread
    addq $32, %rsp
    leaq 40(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_2
    jmp .L8_1
.L8_2:
    leaq 80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
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
    movq %rbx, %rsi
    movq 152(%rbp), %rdi
    movq $40, %rdx
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
.L8_3:
.L8_1:
    movq %r12, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L8_4
    jmp .L8_5
.L8_4:
    jmp .L8_6
.L8_5:
    leaq 80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_14(%rip), %r13
    leaq 24(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 152(%rbp), %rdi
    movq $40, %rdx
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
.L8_7:
.L8_6:
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L8_8
    jmp .L8_9
.L8_8:
    leaq 80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_gpu_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_14(%rip), %r13
    leaq 8(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 152(%rbp), %rdi
    movq $40, %rdx
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
.L8_11:
    jmp .L8_10
.L8_9:
.L8_10:
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 152(%rbp), %rdi
    movq $40, %rdx
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
.L8_12:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_gpu_15release_surface
lb_gpu_15release_surface:
    .seh_proc lb_gpu_15release_surface
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
    movq %r14, 32(%rbp)
    .seh_savereg %r14, 32
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    movq 256(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L9_2
.L9_1:
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    movq 0(%r10), %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_gpu_23backend_surface_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_Presentation_destroy
    addq $32, %rsp
    movq %rbx, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_14release_device
    addq $32, %rsp
    leaq lb_memory_heap(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $40, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L9_5
    jmp .L9_4
.L9_5:
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
.L9_4:
    jmp .L9_3
.L9_2:
.L9_3:
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
    movq 32(%rbp), %r14
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_gpu_19check_surface_frame
lb_gpu_19check_surface_frame:
    .seh_proc lb_gpu_19check_surface_frame
    pushq %rbp
    .seh_pushreg %rbp
    subq $480, %rsp
    .seh_stackalloc 480
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 296(%rbp)
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
    movq %rbx, 288(%rbp)
    .seh_savereg %rbx, 288
    movq %r12, 280(%rbp)
    .seh_savereg %r12, 280
    movq %r13, 272(%rbp)
    .seh_savereg %r13, 272
    movq %r14, 264(%rbp)
    .seh_savereg %r14, 264
    .seh_endprologue
    movq %rcx, 496(%rbp)
    movq %rdx, 504(%rbp)
    movq %r8, 512(%rbp)
    movq %r9, 520(%rbp)
    movq 504(%rbp), %rax
    movq %rax, 216(%rbp)
    movq 512(%rbp), %r10
    leaq 176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq 216(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    leaq 144(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_12check_thread
    addq $32, %rsp
    leaq 144(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L10_2
    jmp .L10_1
.L10_2:
    leaq 232(%rbp), %rbx
    movq %r13, %r10
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
    movq %rbx, %rsi
    movq 296(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 296(%rbp), %rax
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
    movq 288(%rbp), %rbx
    movq 280(%rbp), %r12
    movq 272(%rbp), %r13
    movq 264(%rbp), %r14
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L10_3:
.L10_1:
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L10_4
    jmp .L10_5
.L10_4:
    leaq 232(%rbp), %rbx
    leaq lb_gpu_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_17(%rip), %r12
    leaq 128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $29, %rax
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
    movq 296(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 296(%rbp), %rax
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
    movq 288(%rbp), %rbx
    movq 280(%rbp), %r12
    movq 272(%rbp), %r13
    movq 264(%rbp), %r14
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L10_7:
    jmp .L10_6
.L10_5:
.L10_6:
    leaq 88(%rbp), %r13
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Presentation_size
    addq $32, %rsp
    leaq 16(%rbp), %r14
    movq $64, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L10_9
    jmp .L10_8
.L10_9:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 232(%rbp), %r12
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
    movq 296(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 296(%rbp), %rax
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
    movq 288(%rbp), %rbx
    movq 280(%rbp), %r12
    movq 272(%rbp), %r13
    movq 264(%rbp), %r14
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L10_10:
.L10_8:
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %r13, %r10
    movsd (%r10), %xmm12
    leaq 176(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    ucomisd %xmm13, %xmm12
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L10_21
    jmp .L10_14
.L10_21:
    movl %r12d, %r14d
    jmp .L10_15
.L10_14:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm13
    ucomisd %xmm13, %xmm12
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L10_15:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L10_22
    jmp .L10_16
.L10_22:
    movl %r12d, %r14d
    jmp .L10_17
.L10_16:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm13
    ucomisd %xmm13, %xmm12
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L10_17:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L10_23
    jmp .L10_18
.L10_23:
    movl %r12d, %ebx
    jmp .L10_19
.L10_18:
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm13
    ucomisd %xmm13, %xmm12
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L10_19:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L10_11
    jmp .L10_12
.L10_11:
    leaq 232(%rbp), %rbx
    leaq lb_gpu_13frame_resized(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_18(%rip), %r12
    leaq 0(%rbp), %r13
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
    movq 296(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 296(%rbp), %rax
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
    movq 288(%rbp), %rbx
    movq 280(%rbp), %r12
    movq 272(%rbp), %r13
    movq 264(%rbp), %r14
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L10_20:
    jmp .L10_13
.L10_12:
.L10_13:
    leaq 232(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 296(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 296(%rbp), %rax
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
    movq 288(%rbp), %rbx
    movq 280(%rbp), %r12
    movq 272(%rbp), %r13
    movq 264(%rbp), %r14
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_gpu_20submit_surface_frame
lb_gpu_20submit_surface_frame:
    .seh_proc lb_gpu_20submit_surface_frame
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
    movq %rax, 136(%rbp)
    movq 448(%rbp), %r10
    leaq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    movq 456(%rbp), %r10
    leaq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 136(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 64(%rbp), %r14
    leaq 40(%rbp), %r15
    subq $160, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    movq 0(%r10), %rax
    movq %rax, 16(%rsp)
    movq %rbx, %rax
    movq %rax, 24(%rsp)
    movq %r14, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 32(%rsp)
    movq %r15, %r10
    leaq 128(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 128(%rsp), %rax
    movq %rax, 40(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_gpu_14backend_render
    addq $160, %rsp
    leaq 0(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_2
    jmp .L11_1
.L11_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 152(%rbp), %r13
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
    movq 232(%rbp), %rdi
    movq $40, %rdx
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
.L11_3:
.L11_1:
    movq %r12, %r10
    movzbl (%r10), %ebx
    leaq 152(%rbp), %r13
    movq %r13, %r10
    movb %bl, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 232(%rbp), %rdi
    movq $40, %rdx
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
.L11_4:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_gpu_21release_surface_frame
lb_gpu_21release_surface_frame:
    .seh_proc lb_gpu_21release_surface_frame
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
    movq %rax, 0(%rbp)
    subq $32, %rsp
    call lb_gpu_14require_thread
    addq $32, %rsp
    leaq 0(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $33, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_gpu_15release_surface
    addq $32, %rsp
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
    .seh_endproc

    .section .text$lb_interop_Reference_0g1_gpu_Frame_adopt,"xr"
    .p2align 4
    .globl lb_interop_Reference_0g1_gpu_Frame_adopt
lb_interop_Reference_0g1_gpu_Frame_adopt:
    .seh_proc lb_interop_Reference_0g1_gpu_Frame_adopt
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
    movq %rax, 280(%rbp)
    movq 592(%rbp), %r10
    leaq 240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq 600(%rbp), %r10
    leaq 224(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 208(%rbp), %r12
    leaq 224(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L13_1
    jmp .L13_2
.L13_1:
    leaq 192(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L13_3
.L13_2:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %rbx
    leaq 192(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L13_3:
    leaq 192(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 184(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 144(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r11
    movq $0, 0(%r11)
    leaq 240(%rbp), %rax
    movq %rax, 24(%rbp)
    subq $80, %rsp
    movq 32(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 24(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 112(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_interop_Reservation_0g1_gpu_Frame_init
    addq $80, %rsp
    leaq 112(%rbp), %r14
    leaq 72(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movb %r14b, (%r10)
    movq 32(%rbp), %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, 16(%rbp)
    movl 16(%rbp), %eax
    testl %eax, %eax
    jne .L13_7
    jmp .L13_6
.L13_7:
    leaq 152(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L13_4
.L13_6:
    leaq 176(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    jmp .L13_5
.L13_4:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 280(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 56(%rbp), %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $40, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L13_9
    jmp .L13_8
.L13_9:
    movq $16, %rcx
    movq %r15, %r12
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
.L13_8:
    leaq 296(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 376(%rbp), %rdi
    movq $40, %rdx
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
.L13_10:
.L13_5:
    movq %r13, %r10
    movq 8(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq 280(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_interop_Reservation_0g1_gpu_Frame_publish
    addq $48, %rsp
    leaq 48(%rbp), %r10
    movq %rax, 0(%r10)
    leaq 48(%rbp), %rbx
    leaq 296(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r14, %rsi
    movq 376(%rbp), %rdi
    movq $40, %rdx
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
.L13_11:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .text

    .section .text$lb_interop_Reference_0g1_gpu_FrameState_value,"xr"
    .p2align 4
    .globl lb_interop_Reference_0g1_gpu_FrameState_value
lb_interop_Reference_0g1_gpu_FrameState_value:
    .seh_proc lb_interop_Reference_0g1_gpu_FrameState_value
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
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 64(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_interop_Reference_0g1_gpu_FrameState_get
    addq $32, %rsp
    leaq 0(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L14_4
    jmp .L14_3
.L14_4:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 40(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L14_1
.L14_3:
    movq %r12, %r10
    movq (%r10), %rbx
    jmp .L14_2
.L14_1:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq .Ltext_21(%rip), %r12
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
    movq $0, %rax
    movq %rax, %rbx
.L14_2:
    movq %rbx, %rax
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L14_5:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .text

    .section .text$lb_interop_Reference_0g1_gpu_Frame_release,"xr"
    .p2align 4
    .globl lb_interop_Reference_0g1_gpu_Frame_release
lb_interop_Reference_0g1_gpu_Frame_release:
    .seh_proc lb_interop_Reference_0g1_gpu_Frame_release
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
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_release
    addq $32, %rsp
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

    .text

    .section .text$lb_interop_Reservation_0g1_gpu_Frame_init,"xr"
    .p2align 4
    .globl lb_interop_Reservation_0g1_gpu_Frame_init
lb_interop_Reservation_0g1_gpu_Frame_init:
    .seh_proc lb_interop_Reservation_0g1_gpu_Frame_init
    pushq %rbp
    .seh_pushreg %rbp
    subq $512, %rsp
    .seh_stackalloc 512
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 328(%rbp)
    movq %rdi, 504(%rbp)
    .seh_savereg %rdi, 504
    movq %rsi, 496(%rbp)
    .seh_savereg %rsi, 496
    movdqu %xmm6, 480(%rbp)
    .seh_savexmm %xmm6, 480
    movdqu %xmm7, 464(%rbp)
    .seh_savexmm %xmm7, 464
    movdqu %xmm8, 448(%rbp)
    .seh_savexmm %xmm8, 448
    movdqu %xmm9, 432(%rbp)
    .seh_savexmm %xmm9, 432
    movdqu %xmm10, 416(%rbp)
    .seh_savexmm %xmm10, 416
    movdqu %xmm11, 400(%rbp)
    .seh_savexmm %xmm11, 400
    movdqu %xmm12, 384(%rbp)
    .seh_savexmm %xmm12, 384
    movdqu %xmm13, 368(%rbp)
    .seh_savexmm %xmm13, 368
    movdqu %xmm14, 352(%rbp)
    .seh_savexmm %xmm14, 352
    movdqu %xmm15, 336(%rbp)
    .seh_savexmm %xmm15, 336
    movq %rbx, 320(%rbp)
    .seh_savereg %rbx, 320
    movq %r12, 312(%rbp)
    .seh_savereg %r12, 312
    movq %r13, 304(%rbp)
    .seh_savereg %r13, 304
    movq %r14, 296(%rbp)
    .seh_savereg %r14, 296
    movq %r15, 288(%rbp)
    .seh_savereg %r15, 288
    .seh_endprologue
    movq %rcx, 528(%rbp)
    movq %rdx, 536(%rbp)
    movq %r8, 544(%rbp)
    movq %r9, 552(%rbp)
    movq 536(%rbp), %rax
    movq %rax, 248(%rbp)
    movq 544(%rbp), %r10
    leaq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq 248(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    leaq 208(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $33, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_4
    jmp .L16_10
.L16_10:
    movl %r12d, %r14d
    jmp .L16_5
.L16_4:
    subq $32, %rsp
    call lb_thread_7is_main
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L16_5:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L16_1
    jmp .L16_2
.L16_1:
    leaq 256(%rbp), %rbx
    leaq lb_interop_12wrong_thread(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_22(%rip), %r12
    leaq 192(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $49, %rax
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
    movq 328(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L16_6:
    jmp .L16_3
.L16_2:
.L16_3:
    leaq 136(%rbp), %r12
    leaq 80(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movq 16(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $200, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq lb_interop_Owner_0g1_gpu_Frame_12finish_owner(%rip), %r15
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    leaq lb_interop_Owner_0g1_gpu_Frame_10drop_owner(%rip), %r13
    movq $32, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    leaq lb_interop_Owner_0g1_gpu_Frame_11trace_owner(%rip), %r13
    movq $40, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $48, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 64(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $200, %rax
    movq %rax, 16(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 24(%rsp)
    leaq 24(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_ownership_reserve
    addq $48, %rsp
    leaq 24(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L16_8
    jmp .L16_7
.L16_8:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 256(%rbp), %r12
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
    movq 328(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L16_9:
.L16_7:
    movq %r14, %r10
    movq (%r10), %r13
    movq $64, %rcx
    movq %r13, %r15
    addq %rcx, %r15
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
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $120, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq 16(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq 8(%rbp), %r10
    movq %r13, (%r10)
    leaq 256(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 328(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .text

    .section .text$lb_interop_Reservation_0g1_gpu_Frame_publish,"xr"
    .p2align 4
    .globl lb_interop_Reservation_0g1_gpu_Frame_publish
lb_interop_Reservation_0g1_gpu_Frame_publish:
    .seh_proc lb_interop_Reservation_0g1_gpu_Frame_publish
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
    movq 336(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 344(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 352(%rbp), %r10
    leaq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 88(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L17_1
    jmp .L17_2
.L17_1:
    jmp .L17_3
.L17_2:
    leaq .Ltext_23(%rip), %rbx
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $56, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_24(%rip), %rbx
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
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L17_3:
    movq $160, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq 72(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movq $168, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    leaq 56(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L17_4
    jmp .L17_5
.L17_4:
    leaq 24(%rbp), %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L17_6
.L17_5:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 24(%rbp), %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L17_6:
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 16(%rbp), %r13
    movq %r13, %r11
    movq $0, 0(%r11)
    leaq 0(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_11check_alive
    addq $32, %rsp
    movq %r13, %r10
    movq %r12, (%r10)
.L17_8:
    leaq 96(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
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
.L17_7:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .text

    .section .text$lb_interop_Reference_0g1_gpu_FrameState_get,"xr"
    .p2align 4
    .globl lb_interop_Reference_0g1_gpu_FrameState_get
lb_interop_Reference_0g1_gpu_FrameState_get:
    .seh_proc lb_interop_Reference_0g1_gpu_FrameState_get
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
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 328(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 40(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_11check_alive
    addq $32, %rsp
    movq %r12, %r10
    movq (%r10), %rbx
    movq $184, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L18_1
    jmp .L18_2
.L18_1:
    leaq 48(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_interop_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_26(%rip), %r13
    leaq 24(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 120(%rbp), %rdi
    movq $40, %rdx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L18_4:
    jmp .L18_3
.L18_2:
.L18_3:
    movq $160, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L18_5
    jmp .L18_6
.L18_5:
    jmp .L18_7
.L18_6:
    leaq .Ltext_27(%rip), %rbx
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $40, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_28(%rip), %rbx
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
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L18_7:
    leaq 48(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 120(%rbp), %rdi
    movq $40, %rdx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L18_8:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .text

    .section .text$lb_interop_Owner_0g1_gpu_Frame_12finish_owner,"xr"
    .p2align 4
    .globl lb_interop_Owner_0g1_gpu_Frame_12finish_owner
lb_interop_Owner_0g1_gpu_Frame_12finish_owner:
    .seh_proc lb_interop_Owner_0g1_gpu_Frame_12finish_owner
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
    .seh_endprologue
    movq %rcx, 224(%rbp)
    movq %rdx, 232(%rbp)
    movq %r8, 240(%rbp)
    movq %r9, 248(%rbp)
    movq 224(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_interop_11close_owner_0g1_gpu_Frame
    addq $32, %rsp
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
    leaq 208(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .text

    .section .text$lb_interop_Owner_0g1_gpu_Frame_10drop_owner,"xr"
    .p2align 4
    .globl lb_interop_Owner_0g1_gpu_Frame_10drop_owner
lb_interop_Owner_0g1_gpu_Frame_10drop_owner:
    .seh_proc lb_interop_Owner_0g1_gpu_Frame_10drop_owner
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
    movq 336(%rbp), %rax
    movq %rax, 88(%rbp)
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $160, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    testq %rax, %rax
    jne .L20_4
    jmp .L20_2
.L20_4:
.L20_1:
    leaq 72(%rbp), %r15
    movq $168, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L20_5
    jmp .L20_6
.L20_5:
    leaq 56(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L20_7
.L20_6:
    leaq .Ltext_29(%rip), %rbx
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $31, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_30(%rip), %rbx
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
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L20_7:
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 24(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 8(%rbp), %rax
    movq 16(%rbp), %r10
    movq %rax, (%r10)
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $40, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L20_9
    jmp .L20_8
.L20_9:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 16(%rbp), %r10
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
.L20_8:
    jmp .L20_3
.L20_2:
.L20_3:
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

    .text

    .section .text$lb_interop_Owner_0g1_gpu_Frame_11trace_owner,"xr"
    .p2align 4
    .globl lb_interop_Owner_0g1_gpu_Frame_11trace_owner
lb_interop_Owner_0g1_gpu_Frame_11trace_owner:
    .seh_proc lb_interop_Owner_0g1_gpu_Frame_11trace_owner
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
    movq 272(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 280(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $185, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L21_1
    jmp .L21_2
.L21_1:
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
.L21_4:
    jmp .L21_3
.L21_2:
.L21_3:
    movq $160, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L21_8
    jmp .L21_6
.L21_8:
.L21_5:
    movq $120, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $24, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L21_12
    jmp .L21_10
.L21_12:
.L21_9:
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
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
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    jmp .L21_11
.L21_10:
.L21_11:
    jmp .L21_7
.L21_6:
.L21_7:
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

    .text

    .section .text$lb_interop_Reference_0g1_gpu_Frame_init,"xr"
    .p2align 4
    .globl lb_interop_Reference_0g1_gpu_Frame_init
lb_interop_Reference_0g1_gpu_Frame_init:
    .seh_proc lb_interop_Reference_0g1_gpu_Frame_init
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
    movq 248(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 24(%rbp), %r10
    movq (%r10), %r12
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_11check_alive
    addq $32, %rsp
    movq %r12, %r10
    movq %rbx, (%r10)
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

    .text

    .section .text$lb_interop_11close_owner_0g1_gpu_Frame,"xr"
    .p2align 4
    .globl lb_interop_11close_owner_0g1_gpu_Frame
lb_interop_11close_owner_0g1_gpu_Frame:
    .seh_proc lb_interop_11close_owner_0g1_gpu_Frame
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
    movq %rax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_11check_alive
    addq $32, %rsp
    movq $184, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L23_1
    jmp .L23_2
.L23_1:
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
.L23_4:
    jmp .L23_3
.L23_2:
.L23_3:
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $192, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L23_6
.L23_5:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_interop_13dispose_owner_0g1_gpu_Frame
    addq $32, %rsp
    jmp .L23_7
.L23_6:
.L23_7:
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
    .seh_endproc

    .text

    .section .text$lb_interop_13dispose_owner_0g1_gpu_Frame,"xr"
    .p2align 4
    .globl lb_interop_13dispose_owner_0g1_gpu_Frame
lb_interop_13dispose_owner_0g1_gpu_Frame:
    .seh_proc lb_interop_13dispose_owner_0g1_gpu_Frame
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
    movq %rax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $185, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L24_1
    jmp .L24_2
.L24_1:
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
.L24_4:
    jmp .L24_3
.L24_2:
.L24_3:
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $160, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L24_8
    jmp .L24_6
.L24_8:
.L24_5:
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $16, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    jmp .L24_7
.L24_6:
.L24_7:
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
    .seh_endproc

    .text

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_gpu_surface_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "memory.unset"
.Ltext_1:
    .asciz "src/std/gpu/surface.lucb:14:9"
.Ltext_2:
    .asciz "memory.exhausted"
.Ltext_3:
    .asciz "src/std/gpu/surface.lucb:15:9"
.Ltext_4:
    .asciz "unreachable"
.Ltext_5:
    .asciz "src/std/gpu/surface.lucb:16:9"
.Ltext_6:
    .asciz "src/std/gpu/surface.lucb:20:9"
.Ltext_7:
    .asciz "finish the active frame before presenting"
.Ltext_8:
    .asciz "src/std/gpu/surface.lucb:36:9"
.Ltext_9:
    .asciz "src/std/gpu/surface.lucb:47:9"
.Ltext_10:
    .asciz "the surface already has an active frame"
.Ltext_11:
    .asciz "src/std/gpu/surface.lucb:56:9"
.Ltext_12:
    .asciz "src/std/gpu/surface.lucb:64:9"
.Ltext_13:
    .asciz "src/std/gpu/surface.lucb:66:9"
.Ltext_14:
    .asciz "the GPU surface is closed"
.Ltext_15:
    .asciz "src/std/gpu/surface.lucb:89:9"
.Ltext_16:
    .asciz "src/std/gpu/surface.lucb:102:5"
.Ltext_17:
    .asciz "the frame's surface is closed"
.Ltext_18:
    .asciz "the surface changed size; begin a new frame"
.Ltext_19:
    .asciz "src/std/gpu/surface.lucb:121:5"
.Ltext_20:
    .asciz "src/std/interop/reference.lucb:17:9"
.Ltext_21:
    .asciz "src/std/interop/reference.lucb:34:9"
.Ltext_22:
    .asciz "this native type requires the process main thread"
.Ltext_23:
    .asciz "native ownership has already been published or cancelled"
.Ltext_24:
    .asciz "src/std/interop/object.lucb:83:9"
.Ltext_25:
    .asciz "src/std/interop/object.lucb:87:9"
.Ltext_26:
    .asciz "a native object is closed"
.Ltext_27:
    .asciz "a native object has not been initialized"
.Ltext_28:
    .asciz "src/std/interop/reference.lucb:30:9"
.Ltext_29:
    .asciz "native storage has no allocator"
.Ltext_30:
    .asciz "src/std/interop/object.lucb:37:13"
.Ltext_31:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3
