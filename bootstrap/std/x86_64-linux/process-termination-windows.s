    .text

    .p2align 4
    .globl lb_process_19termination_windows_0init
    .type lb_process_19termination_windows_0init, @function
lb_process_19termination_windows_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_process_17console_interrupt(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_process_13console_break(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_process_13console_close(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_process_14console_logoff(%rip), %rbx
    movl $5, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_process_16console_shutdown(%rip), %rbx
    movl $6, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_process_26console_acknowledgement_ms(%rip), %rbx
    movq $4000, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_process_19termination_windows_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/process/termination/windows.lucb:25:5"
.Ltext_2:
    .asciz "the console termination handler could not be installed"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_process_17console_interrupt
    .type lb_process_17console_interrupt, @object
    .p2align 2
lb_process_17console_interrupt:
    .zero 4

    .bss
    .globl lb_process_13console_break
    .type lb_process_13console_break, @object
    .p2align 2
lb_process_13console_break:
    .zero 4

    .bss
    .globl lb_process_13console_close
    .type lb_process_13console_close, @object
    .p2align 2
lb_process_13console_close:
    .zero 4

    .bss
    .globl lb_process_14console_logoff
    .type lb_process_14console_logoff, @object
    .p2align 2
lb_process_14console_logoff:
    .zero 4

    .bss
    .globl lb_process_16console_shutdown
    .type lb_process_16console_shutdown, @object
    .p2align 2
lb_process_16console_shutdown:
    .zero 4

    .bss
    .globl lb_process_26console_acknowledgement_ms
    .type lb_process_26console_acknowledgement_ms, @object
    .p2align 3
lb_process_26console_acknowledgement_ms:
    .zero 8

    .section .note.GNU-stack,"",@progbits
