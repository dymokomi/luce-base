    .text

    .p2align 4
    .globl lb_window_14windows_cursor_0init
    .type lb_window_14windows_cursor_0init, @function
lb_window_14windows_cursor_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_14windows_cursor_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "Windows could not load a system cursor"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/window/windows/cursor.lucb:19:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
