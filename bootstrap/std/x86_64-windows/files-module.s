    .text

    .p2align 4
    .globl lb_files_module_0init
lb_files_module_0init:
    .seh_proc lb_files_module_0init
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
    leaq lb_files_14read_only_flag(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_10write_only(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_15read_write_flag(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_create(%rip), %rbx
    movl $256, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_truncate(%rip), %rbx
    movl $512, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_13close_on_exec(%rip), %rbx
    movl $128, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_11append_flag(%rip), %rbx
    movl $8, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_14exclusive_flag(%rip), %rbx
    movl $1024, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_21nonblocking_open_flag(%rip), %rbx
    movl $2048, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_17would_block_errno(%rip), %rbx
    movl $11, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_14transfer_limit(%rip), %rbx
    movq $1073741824, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_files_20current_directory_fd(%rip), %rbx
    movl $4294967196, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_14directory_flag(%rip), %rbx
    movl $65536, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_14no_follow_flag(%rip), %rbx
    movl $131072, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_17at_no_follow_flag(%rip), %rbx
    movl $256, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_missing(%rip), %rbx
    movl $208273414, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_17permission_denied(%rip), %rbx
    movl $208273426, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_14already_exists(%rip), %rbx
    movl $208273427, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_8no_space(%rip), %rbx
    movl $208273428, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_11would_block(%rip), %rbx
    movl $208273429, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_15invalid_options(%rip), %rbx
    movl $208273430, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_9too_large(%rip), %rbx
    movl $208273431, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_13not_directory(%rip), %rbx
    movl $208273433, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_12is_directory(%rip), %rbx
    movl $208273434, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_20read_only_filesystem(%rip), %rbx
    movl $208273435, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_9not_empty(%rip), %rbx
    movl $208273437, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_12cross_device(%rip), %rbx
    movl $208273438, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_12symlink_loop(%rip), %rbx
    movl $208273439, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_13name_too_long(%rip), %rbx
    movl $208273440, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_failed(%rip), %rbx
    movl $208273415, %eax
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
    .globl lb_files_6c_read
lb_files_6c_read:
    .seh_proc lb_files_6c_read
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
    movl %eax, 32(%rbp)
    movq 280(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $2147483647, %rcx
    cmpq %rcx, %r13
    jae .L1_2
.L1_1:
    movq %r13, %r14
    jmp .L1_3
.L1_2:
    movq $2147483647, %rax
    movq %rax, %r14
.L1_3:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call _read
    addq $32, %rsp
    movl %eax, %r13d
    movslq %r13d, %r13
    movq %r13, %rax
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
.L1_4:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_7c_write
lb_files_7c_write:
    .seh_proc lb_files_7c_write
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
    movl %eax, 32(%rbp)
    movq 280(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $2147483647, %rcx
    cmpq %rcx, %r13
    jae .L2_2
.L2_1:
    movq %r13, %r14
    jmp .L2_3
.L2_2:
    movq $2147483647, %rax
    movq %rax, %r14
.L2_3:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call _write
    addq $32, %rsp
    movl %eax, %r13d
    movslq %r13d, %r13
    movq %r13, %rax
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
.L2_4:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_lseek
lb_files_lseek:
    .seh_proc lb_files_lseek
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
    movl %eax, 40(%rbp)
    movq 280(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 288(%rbp), %rax
    movl %eax, 8(%rbp)
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq 24(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call _lseeki64
    addq $32, %rsp
    movq %rax, %rbx
    movq %rbx, %rax
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
.L3_1:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_fsync
lb_files_fsync:
    .seh_proc lb_files_fsync
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
    movl %eax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _commit
    addq $32, %rsp
    movl %eax, %ebx
    movl %ebx, %eax
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
.L4_1:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_ftruncate
lb_files_ftruncate:
    .seh_proc lb_files_ftruncate
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
    movq 248(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call _chsize_s
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L5_2
.L5_1:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_c_9set_errno
    addq $32, %rsp
    movl $4294967295, %eax
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
.L5_4:
    jmp .L5_3
.L5_2:
.L5_3:
    movl $0, %eax
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
.L5_5:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_10next_entry
lb_files_10next_entry:
    .seh_proc lb_files_10next_entry
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
    movq 376(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_12windows_next
    addq $32, %rsp
    leaq 8(%rbp), %r12
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_2
    jmp .L6_1
.L6_2:
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 80(%rbp), %r13
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
    movq 168(%rbp), %rdi
    movq $56, %rdx
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
.L6_3:
.L6_1:
    leaq 80(%rbp), %rbx
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
    movq 168(%rbp), %rdi
    movq $56, %rdx
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
.L6_4:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_files_module_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/files/module.lucb:19:9"
.Ltext_2:
    .asciz "src/std/files/module.lucb:24:9"
.Ltext_3:
    .asciz "src/std/files/module.lucb:35:5"
.Ltext_4:
    .asciz "src/std/files/module.lucb:39:5"
.Ltext_5:
    .asciz "src/std/files/module.lucb:48:9"
.Ltext_6:
    .asciz "src/std/files/module.lucb:98:9"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_files_14read_only_flag
    .p2align 2
lb_files_14read_only_flag:
    .zero 4

    .bss
    .globl lb_files_10write_only
    .p2align 2
lb_files_10write_only:
    .zero 4

    .bss
    .globl lb_files_15read_write_flag
    .p2align 2
lb_files_15read_write_flag:
    .zero 4

    .bss
    .globl lb_files_create
    .p2align 2
lb_files_create:
    .zero 4

    .bss
    .globl lb_files_truncate
    .p2align 2
lb_files_truncate:
    .zero 4

    .bss
    .globl lb_files_13close_on_exec
    .p2align 2
lb_files_13close_on_exec:
    .zero 4

    .bss
    .globl lb_files_11append_flag
    .p2align 2
lb_files_11append_flag:
    .zero 4

    .bss
    .globl lb_files_14exclusive_flag
    .p2align 2
lb_files_14exclusive_flag:
    .zero 4

    .bss
    .globl lb_files_21nonblocking_open_flag
    .p2align 2
lb_files_21nonblocking_open_flag:
    .zero 4

    .bss
    .globl lb_files_17would_block_errno
    .p2align 2
lb_files_17would_block_errno:
    .zero 4

    .bss
    .globl lb_files_14transfer_limit
    .p2align 3
lb_files_14transfer_limit:
    .zero 8

    .bss
    .globl lb_files_20current_directory_fd
    .p2align 2
lb_files_20current_directory_fd:
    .zero 4

    .bss
    .globl lb_files_14directory_flag
    .p2align 2
lb_files_14directory_flag:
    .zero 4

    .bss
    .globl lb_files_14no_follow_flag
    .p2align 2
lb_files_14no_follow_flag:
    .zero 4

    .bss
    .globl lb_files_17at_no_follow_flag
    .p2align 2
lb_files_17at_no_follow_flag:
    .zero 4

    .bss
    .globl lb_files_missing
    .p2align 2
lb_files_missing:
    .zero 4

    .bss
    .globl lb_files_17permission_denied
    .p2align 2
lb_files_17permission_denied:
    .zero 4

    .bss
    .globl lb_files_14already_exists
    .p2align 2
lb_files_14already_exists:
    .zero 4

    .bss
    .globl lb_files_8no_space
    .p2align 2
lb_files_8no_space:
    .zero 4

    .bss
    .globl lb_files_11would_block
    .p2align 2
lb_files_11would_block:
    .zero 4

    .bss
    .globl lb_files_15invalid_options
    .p2align 2
lb_files_15invalid_options:
    .zero 4

    .bss
    .globl lb_files_9too_large
    .p2align 2
lb_files_9too_large:
    .zero 4

    .bss
    .globl lb_files_13not_directory
    .p2align 2
lb_files_13not_directory:
    .zero 4

    .bss
    .globl lb_files_12is_directory
    .p2align 2
lb_files_12is_directory:
    .zero 4

    .bss
    .globl lb_files_20read_only_filesystem
    .p2align 2
lb_files_20read_only_filesystem:
    .zero 4

    .bss
    .globl lb_files_9not_empty
    .p2align 2
lb_files_9not_empty:
    .zero 4

    .bss
    .globl lb_files_12cross_device
    .p2align 2
lb_files_12cross_device:
    .zero 4

    .bss
    .globl lb_files_12symlink_loop
    .p2align 2
lb_files_12symlink_loop:
    .zero 4

    .bss
    .globl lb_files_13name_too_long
    .p2align 2
lb_files_13name_too_long:
    .zero 4

    .bss
    .globl lb_files_failed
    .p2align 2
lb_files_failed:
    .zero 4
