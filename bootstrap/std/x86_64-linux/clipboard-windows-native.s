    .text

    .p2align 4
    .globl lb_clipboard_14windows_native_0init
    .type lb_clipboard_14windows_native_0init, @function
lb_clipboard_14windows_native_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_clipboard_12unicode_text(%rip), %rbx
    movl $13, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .weak lb_memory_copy_0g1_u8
    .type lb_memory_copy_0g1_u8, @function
lb_memory_copy_0g1_u8:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -48(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -64(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -80(%rbp)
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -48(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_11
    jmp .L1_4
.L1_11:
    movl %r13d, %r14d
    jmp .L1_5
.L1_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L1_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_1
    jmp .L1_2
.L1_1:
    leaq .Ltext_22(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_23(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L1_3
.L1_2:
.L1_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L1_7
.L1_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -64(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %rdi
    movq %r14, %rsi
    movq %rbx, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L1_9
    jmp .L1_10
.L1_10:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_9:
    jmp .L1_8
.L1_7:
.L1_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_clipboard_14windows_native_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "the clipboard is busy"
.Ltext_1:
    .asciz ""
.Ltext_2:
    .asciz "clipboard text is unavailable"
.Ltext_3:
    .asciz "division by zero"
.Ltext_4:
    .asciz "src/std/clipboard/windows/native.lucb:24:5"
.Ltext_5:
    .asciz "clipboard text cannot be read"
.Ltext_6:
    .asciz "src/std/clipboard/windows/native.lucb:30:9"
.Ltext_7:
    .asciz "clipboard text is unterminated or exceeds the limit"
.Ltext_8:
    .asciz "clipboard text exceeds 1 MiB"
.Ltext_9:
    .asciz "src/std/clipboard/windows/native.lucb:37:13"
.Ltext_10:
    .asciz "src/std/clipboard/windows/native.lucb:38:9"
.Ltext_11:
    .asciz "unreachable"
.Ltext_12:
    .asciz "clipboard writing requires an active application window"
.Ltext_13:
    .asciz "src/std/clipboard/windows/native.lucb:48:9"
.Ltext_14:
    .asciz "could not allocate clipboard storage"
.Ltext_15:
    .asciz "could not lock clipboard storage"
.Ltext_16:
    .asciz "src/std/clipboard/windows/native.lucb:51:9"
.Ltext_17:
    .asciz "src/std/clipboard/windows/native.lucb:52:9"
.Ltext_18:
    .asciz "src/std/clipboard/windows/native.lucb:55:13"
.Ltext_19:
    .asciz "could not publish clipboard text"
.Ltext_20:
    .asciz "src/std/clipboard/windows/native.lucb:58:13"
.Ltext_21:
    .asciz "src/std/clipboard/windows/native.lucb:59:9"
.Ltext_22:
    .asciz "index out of bounds"
.Ltext_23:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_24:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_25:
    .asciz "null_foreign"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_clipboard_12unicode_text
    .type lb_clipboard_12unicode_text, @object
    .p2align 2
lb_clipboard_12unicode_text:
    .zero 4

    .section .note.GNU-stack,"",@progbits
