    .text

    .p2align 4
    .globl lb_net_errors_0init
lb_net_errors_0init:
    .seh_proc lb_net_errors_0init
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
    leaq lb_net_failed(%rip), %rbx
    movl $208273417, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_closed(%rip), %rbx
    movl $208273418, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_12unknown_host(%rip), %rbx
    movl $208273419, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_15invalid_options(%rip), %rbx
    movl $208273443, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_17message_too_large(%rip), %rbx
    movl $208273444, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_cancelled(%rip), %rbx
    movl $208273445, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_9timed_out(%rip), %rbx
    movl $208273446, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_18connection_refused(%rip), %rbx
    movl $208273447, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_19network_unreachable(%rip), %rbx
    movl $208273448, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_14address_in_use(%rip), %rbx
    movl $208273449, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_19address_unavailable(%rip), %rbx
    movl $208273450, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_17permission_denied(%rip), %rbx
    movl $208273451, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_18resource_exhausted(%rip), %rbx
    movl $208273452, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_18connection_aborted(%rip), %rbx
    movl $208273453, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_unsupported(%rip), %rbx
    movl $208273454, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_20resolution_temporary(%rip), %rbx
    movl $208273455, %eax
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
    .globl lb_net_12socket_error
lb_net_12socket_error:
    .seh_proc lb_net_12socket_error
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
    movslq (%r10), %rbx
    leaq 4(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    leaq 0(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movl $10035, %ecx
    cmpl %ecx, %ebx
    je .L1_2
.L1_4:
    jmp .L1_3
.L1_2:
    leaq lb_io_11would_block(%rip), %rbx
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
.L1_5:
    jmp .L1_1
.L1_3:
    movl $10038, %ecx
    cmpl %ecx, %ebx
    je .L1_6
.L1_8:
    movl $10052, %ecx
    cmpl %ecx, %ebx
    je .L1_6
.L1_9:
    movl $10054, %ecx
    cmpl %ecx, %ebx
    je .L1_6
.L1_10:
    movl $10057, %ecx
    cmpl %ecx, %ebx
    je .L1_6
.L1_11:
    movl $10058, %ecx
    cmpl %ecx, %ebx
    je .L1_6
.L1_12:
    jmp .L1_7
.L1_6:
    leaq lb_net_closed(%rip), %rbx
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
.L1_13:
    jmp .L1_1
.L1_7:
    movl $10060, %ecx
    cmpl %ecx, %ebx
    je .L1_14
.L1_16:
    jmp .L1_15
.L1_14:
    leaq lb_net_9timed_out(%rip), %rbx
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
.L1_17:
    jmp .L1_1
.L1_15:
    movl $995, %ecx
    cmpl %ecx, %ebx
    je .L1_18
.L1_20:
    jmp .L1_19
.L1_18:
    leaq lb_net_cancelled(%rip), %rbx
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
.L1_21:
    jmp .L1_1
.L1_19:
    movl $10061, %ecx
    cmpl %ecx, %ebx
    je .L1_22
.L1_24:
    jmp .L1_23
.L1_22:
    leaq lb_net_18connection_refused(%rip), %rbx
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
.L1_25:
    jmp .L1_1
.L1_23:
    movl $10050, %ecx
    cmpl %ecx, %ebx
    je .L1_26
.L1_28:
    movl $10051, %ecx
    cmpl %ecx, %ebx
    je .L1_26
.L1_29:
    movl $10064, %ecx
    cmpl %ecx, %ebx
    je .L1_26
.L1_30:
    movl $10065, %ecx
    cmpl %ecx, %ebx
    je .L1_26
.L1_31:
    jmp .L1_27
.L1_26:
    leaq lb_net_19network_unreachable(%rip), %rbx
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
.L1_32:
    jmp .L1_1
.L1_27:
    movl $10048, %ecx
    cmpl %ecx, %ebx
    je .L1_33
.L1_35:
    jmp .L1_34
.L1_33:
    leaq lb_net_14address_in_use(%rip), %rbx
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
.L1_36:
    jmp .L1_1
.L1_34:
    movl $10049, %ecx
    cmpl %ecx, %ebx
    je .L1_37
.L1_39:
    jmp .L1_38
.L1_37:
    leaq lb_net_19address_unavailable(%rip), %rbx
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
.L1_40:
    jmp .L1_1
.L1_38:
    movl $10013, %ecx
    cmpl %ecx, %ebx
    je .L1_41
.L1_43:
    jmp .L1_42
.L1_41:
    leaq lb_net_17permission_denied(%rip), %rbx
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
.L1_44:
    jmp .L1_1
.L1_42:
    movl $10024, %ecx
    cmpl %ecx, %ebx
    je .L1_45
.L1_47:
    movl $10055, %ecx
    cmpl %ecx, %ebx
    je .L1_45
.L1_48:
    jmp .L1_46
.L1_45:
    leaq lb_net_18resource_exhausted(%rip), %rbx
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
.L1_49:
    jmp .L1_1
.L1_46:
    movl $10053, %ecx
    cmpl %ecx, %ebx
    je .L1_50
.L1_52:
    jmp .L1_51
.L1_50:
    leaq lb_net_18connection_aborted(%rip), %rbx
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
.L1_53:
    jmp .L1_1
.L1_51:
    movl $10040, %ecx
    cmpl %ecx, %ebx
    je .L1_54
.L1_56:
    jmp .L1_55
.L1_54:
    leaq lb_net_17message_too_large(%rip), %rbx
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
.L1_57:
    jmp .L1_1
.L1_55:
    movl $10022, %ecx
    cmpl %ecx, %ebx
    je .L1_58
.L1_60:
    movl $10039, %ecx
    cmpl %ecx, %ebx
    je .L1_58
.L1_61:
    movl $10041, %ecx
    cmpl %ecx, %ebx
    je .L1_58
.L1_62:
    jmp .L1_59
.L1_58:
    leaq lb_net_15invalid_options(%rip), %rbx
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
.L1_63:
    jmp .L1_1
.L1_59:
    movl $10042, %ecx
    cmpl %ecx, %ebx
    je .L1_64
.L1_66:
    movl $10043, %ecx
    cmpl %ecx, %ebx
    je .L1_64
.L1_67:
    movl $10044, %ecx
    cmpl %ecx, %ebx
    je .L1_64
.L1_68:
    movl $10045, %ecx
    cmpl %ecx, %ebx
    je .L1_64
.L1_69:
    movl $10046, %ecx
    cmpl %ecx, %ebx
    je .L1_64
.L1_70:
    movl $10047, %ecx
    cmpl %ecx, %ebx
    je .L1_64
.L1_71:
    jmp .L1_65
.L1_64:
    leaq lb_net_unsupported(%rip), %rbx
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
.L1_72:
    jmp .L1_1
.L1_65:
    jmp .L1_73
.L1_75:
    jmp .L1_74
.L1_73:
    leaq lb_net_failed(%rip), %rbx
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
.L1_76:
    jmp .L1_1
.L1_74:
.L1_1:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_80
    jmp .L1_81
.L1_80:
    movl $35, %eax
    movl %eax, %r12d
    jmp .L1_82
.L1_81:
    movl $11, %eax
    movl %eax, %r12d
.L1_82:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    jne .L1_78
.L1_77:
    leaq lb_io_11would_block(%rip), %rbx
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
.L1_83:
    jmp .L1_79
.L1_78:
.L1_79:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $9, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
    testl %ebx, %ebx
    jne .L1_88
    jmp .L1_87
.L1_87:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $32, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L1_88:
    movzbl %r12b, %ebx
    movl %ebx, %r12d
    testl %ebx, %ebx
    jne .L1_90
    jmp .L1_89
.L1_89:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_91
    jmp .L1_92
.L1_91:
    movl $54, %eax
    movl %eax, %r12d
    jmp .L1_93
.L1_92:
    movl $104, %eax
    movl %eax, %r12d
.L1_93:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %r12d
.L1_90:
    movzbl %r12b, %ebx
    movl %ebx, %r12d
    testl %ebx, %ebx
    jne .L1_95
    jmp .L1_94
.L1_94:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_96
    jmp .L1_97
.L1_96:
    movl $57, %eax
    movl %eax, %r12d
    jmp .L1_98
.L1_97:
    movl $107, %eax
    movl %eax, %r12d
.L1_98:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %r12d
.L1_95:
    movzbl %r12b, %ebx
    movl %ebx, %r12d
    testl %ebx, %ebx
    jne .L1_100
    jmp .L1_99
.L1_99:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_101
    jmp .L1_102
.L1_101:
    movl $58, %eax
    movl %eax, %r12d
    jmp .L1_103
.L1_102:
    movl $108, %eax
    movl %eax, %r12d
.L1_103:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %r12d
.L1_100:
    movzbl %r12b, %ebx
    movl %ebx, %r12d
    testl %ebx, %ebx
    jne .L1_105
    jmp .L1_104
.L1_104:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_106
    jmp .L1_107
.L1_106:
    movl $52, %eax
    movl %eax, %r12d
    jmp .L1_108
.L1_107:
    movl $102, %eax
    movl %eax, %r12d
.L1_108:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %r12d
.L1_105:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_84
    jmp .L1_85
.L1_84:
    leaq lb_net_closed(%rip), %rbx
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
.L1_109:
    jmp .L1_86
.L1_85:
.L1_86:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_113
    jmp .L1_114
.L1_113:
    movl $60, %eax
    movl %eax, %r12d
    jmp .L1_115
.L1_114:
    movl $110, %eax
    movl %eax, %r12d
.L1_115:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    jne .L1_111
.L1_110:
    leaq lb_net_9timed_out(%rip), %rbx
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
.L1_116:
    jmp .L1_112
.L1_111:
.L1_112:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_120
    jmp .L1_121
.L1_120:
    movl $89, %eax
    movl %eax, %r12d
    jmp .L1_122
.L1_121:
    movl $125, %eax
    movl %eax, %r12d
.L1_122:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    jne .L1_118
.L1_117:
    leaq lb_net_cancelled(%rip), %rbx
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
.L1_123:
    jmp .L1_119
.L1_118:
.L1_119:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_127
    jmp .L1_128
.L1_127:
    movl $61, %eax
    movl %eax, %r12d
    jmp .L1_129
.L1_128:
    movl $111, %eax
    movl %eax, %r12d
.L1_129:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    jne .L1_125
.L1_124:
    leaq lb_net_18connection_refused(%rip), %rbx
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
.L1_130:
    jmp .L1_126
.L1_125:
.L1_126:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_134
    jmp .L1_135
.L1_134:
    movl $50, %eax
    movl %eax, %r12d
    jmp .L1_136
.L1_135:
    movl $100, %eax
    movl %eax, %r12d
.L1_136:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
    testl %r13d, %r13d
    jne .L1_138
    jmp .L1_137
.L1_137:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_139
    jmp .L1_140
.L1_139:
    movl $51, %eax
    movl %eax, %r12d
    jmp .L1_141
.L1_140:
    movl $101, %eax
    movl %eax, %r12d
.L1_141:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L1_138:
    movzbl %bl, %r12d
    movl %r12d, %ebx
    testl %r12d, %r12d
    jne .L1_143
    jmp .L1_142
.L1_142:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_144
    jmp .L1_145
.L1_144:
    movl $64, %eax
    movl %eax, %r12d
    jmp .L1_146
.L1_145:
    movl $112, %eax
    movl %eax, %r12d
.L1_146:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L1_143:
    movzbl %bl, %r12d
    movl %r12d, %ebx
    testl %r12d, %r12d
    jne .L1_148
    jmp .L1_147
.L1_147:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_149
    jmp .L1_150
.L1_149:
    movl $65, %eax
    movl %eax, %r12d
    jmp .L1_151
.L1_150:
    movl $113, %eax
    movl %eax, %r12d
.L1_151:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L1_148:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_131
    jmp .L1_132
.L1_131:
    leaq lb_net_19network_unreachable(%rip), %rbx
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
.L1_152:
    jmp .L1_133
.L1_132:
.L1_133:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_156
    jmp .L1_157
.L1_156:
    movl $48, %eax
    movl %eax, %r12d
    jmp .L1_158
.L1_157:
    movl $98, %eax
    movl %eax, %r12d
.L1_158:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    jne .L1_154
.L1_153:
    leaq lb_net_14address_in_use(%rip), %rbx
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
.L1_159:
    jmp .L1_155
.L1_154:
.L1_155:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_163
    jmp .L1_164
.L1_163:
    movl $49, %eax
    movl %eax, %r12d
    jmp .L1_165
.L1_164:
    movl $99, %eax
    movl %eax, %r12d
.L1_165:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    jne .L1_161
.L1_160:
    leaq lb_net_19address_unavailable(%rip), %rbx
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
.L1_166:
    jmp .L1_162
.L1_161:
.L1_162:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
    testl %ebx, %ebx
    jne .L1_171
    jmp .L1_170
.L1_170:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $13, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L1_171:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_167
    jmp .L1_168
.L1_167:
    leaq lb_net_17permission_denied(%rip), %rbx
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
.L1_172:
    jmp .L1_169
.L1_168:
.L1_169:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $12, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
    testl %ebx, %ebx
    jne .L1_177
    jmp .L1_176
.L1_176:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $23, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L1_177:
    movzbl %r12b, %ebx
    movl %ebx, %r12d
    testl %ebx, %ebx
    jne .L1_179
    jmp .L1_178
.L1_178:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $24, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L1_179:
    movzbl %r12b, %ebx
    movl %ebx, %r12d
    testl %ebx, %ebx
    jne .L1_181
    jmp .L1_180
.L1_180:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_182
    jmp .L1_183
.L1_182:
    movl $55, %eax
    movl %eax, %r12d
    jmp .L1_184
.L1_183:
    movl $105, %eax
    movl %eax, %r12d
.L1_184:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %r12d
.L1_181:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_173
    jmp .L1_174
.L1_173:
    leaq lb_net_18resource_exhausted(%rip), %rbx
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
.L1_185:
    jmp .L1_175
.L1_174:
.L1_175:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_189
    jmp .L1_190
.L1_189:
    movl $53, %eax
    movl %eax, %r12d
    jmp .L1_191
.L1_190:
    movl $103, %eax
    movl %eax, %r12d
.L1_191:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    jne .L1_187
.L1_186:
    leaq lb_net_18connection_aborted(%rip), %rbx
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
.L1_192:
    jmp .L1_188
.L1_187:
.L1_188:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_196
    jmp .L1_197
.L1_196:
    movl $40, %eax
    movl %eax, %r12d
    jmp .L1_198
.L1_197:
    movl $90, %eax
    movl %eax, %r12d
.L1_198:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    jne .L1_194
.L1_193:
    leaq lb_net_17message_too_large(%rip), %rbx
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
.L1_199:
    jmp .L1_195
.L1_194:
.L1_195:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $22, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
    testl %ebx, %ebx
    jne .L1_204
    jmp .L1_203
.L1_203:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_205
    jmp .L1_206
.L1_205:
    movl $38, %eax
    movl %eax, %r12d
    jmp .L1_207
.L1_206:
    movl $88, %eax
    movl %eax, %r12d
.L1_207:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %r12d
.L1_204:
    movzbl %r12b, %ebx
    movl %ebx, %r12d
    testl %ebx, %ebx
    jne .L1_209
    jmp .L1_208
.L1_208:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_210
    jmp .L1_211
.L1_210:
    movl $39, %eax
    movl %eax, %r12d
    jmp .L1_212
.L1_211:
    movl $89, %eax
    movl %eax, %r12d
.L1_212:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %r12d
.L1_209:
    movzbl %r12b, %ebx
    movl %ebx, %r12d
    testl %ebx, %ebx
    jne .L1_214
    jmp .L1_213
.L1_213:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_215
    jmp .L1_216
.L1_215:
    movl $41, %eax
    movl %eax, %r12d
    jmp .L1_217
.L1_216:
    movl $91, %eax
    movl %eax, %r12d
.L1_217:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %r12d
.L1_214:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_200
    jmp .L1_201
.L1_200:
    leaq lb_net_15invalid_options(%rip), %rbx
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
.L1_218:
    jmp .L1_202
.L1_201:
.L1_202:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_222
    jmp .L1_223
.L1_222:
    movl $42, %eax
    movl %eax, %r12d
    jmp .L1_224
.L1_223:
    movl $92, %eax
    movl %eax, %r12d
.L1_224:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
    testl %r13d, %r13d
    jne .L1_226
    jmp .L1_225
.L1_225:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_227
    jmp .L1_228
.L1_227:
    movl $43, %eax
    movl %eax, %r12d
    jmp .L1_229
.L1_228:
    movl $93, %eax
    movl %eax, %r12d
.L1_229:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L1_226:
    movzbl %bl, %r12d
    movl %r12d, %ebx
    testl %r12d, %r12d
    jne .L1_231
    jmp .L1_230
.L1_230:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_232
    jmp .L1_233
.L1_232:
    movl $44, %eax
    movl %eax, %r12d
    jmp .L1_234
.L1_233:
    movl $94, %eax
    movl %eax, %r12d
.L1_234:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L1_231:
    movzbl %bl, %r12d
    movl %r12d, %ebx
    testl %r12d, %r12d
    jne .L1_236
    jmp .L1_235
.L1_235:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_237
    jmp .L1_238
.L1_237:
    movl $45, %eax
    movl %eax, %r12d
    jmp .L1_239
.L1_238:
    movl $95, %eax
    movl %eax, %r12d
.L1_239:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L1_236:
    movzbl %bl, %r12d
    movl %r12d, %ebx
    testl %r12d, %r12d
    jne .L1_241
    jmp .L1_240
.L1_240:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_242
    jmp .L1_243
.L1_242:
    movl $46, %eax
    movl %eax, %r12d
    jmp .L1_244
.L1_243:
    movl $96, %eax
    movl %eax, %r12d
.L1_244:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L1_241:
    movzbl %bl, %r12d
    movl %r12d, %ebx
    testl %r12d, %r12d
    jne .L1_246
    jmp .L1_245
.L1_245:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_247
    jmp .L1_248
.L1_247:
    movl $47, %eax
    movl %eax, %r12d
    jmp .L1_249
.L1_248:
    movl $97, %eax
    movl %eax, %r12d
.L1_249:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L1_246:
    movzbl %bl, %r12d
    movl %r12d, %ebx
    testl %r12d, %r12d
    jne .L1_251
    jmp .L1_250
.L1_250:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_252
    jmp .L1_253
.L1_252:
    movl $78, %eax
    movl %eax, %r12d
    jmp .L1_254
.L1_253:
    movl $38, %eax
    movl %eax, %r12d
.L1_254:
    movl %r12d, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L1_251:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_219
    jmp .L1_220
.L1_219:
    leaq lb_net_unsupported(%rip), %rbx
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
.L1_255:
    jmp .L1_221
.L1_220:
.L1_221:
    leaq lb_net_failed(%rip), %rbx
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
.L1_256:
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
    .globl lb_net_14resolver_error
lb_net_14resolver_error:
    .seh_proc lb_net_14resolver_error
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
    movslq (%r10), %rbx
    movl $11001, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_16
    jmp .L2_4
.L2_16:
    movl %r12d, %r13d
    jmp .L2_5
.L2_4:
    movl $11004, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L2_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq lb_net_12unknown_host(%rip), %rbx
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
.L2_6:
    jmp .L2_3
.L2_2:
.L2_3:
    movl $11002, %ecx
    cmpl %ecx, %ebx
    jne .L2_8
.L2_7:
    leaq lb_net_20resolution_temporary(%rip), %rbx
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
.L2_10:
    jmp .L2_9
.L2_8:
.L2_9:
    movl $8, %ecx
    cmpl %ecx, %ebx
    jne .L2_12
.L2_11:
    leaq lb_net_18resource_exhausted(%rip), %rbx
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
.L2_14:
    jmp .L2_13
.L2_12:
.L2_13:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_12socket_error
    addq $32, %rsp
    movl %eax, %r12d
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
.L2_15:
    leaq .Ltext_2(%rip), %rdi
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
    .quad lb_net_errors_0init
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
    .asciz "src/std/net/errors.lucb:71:5"
.Ltext_2:
    .asciz "src/std/net/errors.lucb:81:9"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_net_failed
    .p2align 2
lb_net_failed:
    .zero 4

    .bss
    .globl lb_net_closed
    .p2align 2
lb_net_closed:
    .zero 4

    .bss
    .globl lb_net_12unknown_host
    .p2align 2
lb_net_12unknown_host:
    .zero 4

    .bss
    .globl lb_net_15invalid_options
    .p2align 2
lb_net_15invalid_options:
    .zero 4

    .bss
    .globl lb_net_17message_too_large
    .p2align 2
lb_net_17message_too_large:
    .zero 4

    .bss
    .globl lb_net_cancelled
    .p2align 2
lb_net_cancelled:
    .zero 4

    .bss
    .globl lb_net_9timed_out
    .p2align 2
lb_net_9timed_out:
    .zero 4

    .bss
    .globl lb_net_18connection_refused
    .p2align 2
lb_net_18connection_refused:
    .zero 4

    .bss
    .globl lb_net_19network_unreachable
    .p2align 2
lb_net_19network_unreachable:
    .zero 4

    .bss
    .globl lb_net_14address_in_use
    .p2align 2
lb_net_14address_in_use:
    .zero 4

    .bss
    .globl lb_net_19address_unavailable
    .p2align 2
lb_net_19address_unavailable:
    .zero 4

    .bss
    .globl lb_net_17permission_denied
    .p2align 2
lb_net_17permission_denied:
    .zero 4

    .bss
    .globl lb_net_18resource_exhausted
    .p2align 2
lb_net_18resource_exhausted:
    .zero 4

    .bss
    .globl lb_net_18connection_aborted
    .p2align 2
lb_net_18connection_aborted:
    .zero 4

    .bss
    .globl lb_net_unsupported
    .p2align 2
lb_net_unsupported:
    .zero 4

    .bss
    .globl lb_net_20resolution_temporary
    .p2align 2
lb_net_20resolution_temporary:
    .zero 4
