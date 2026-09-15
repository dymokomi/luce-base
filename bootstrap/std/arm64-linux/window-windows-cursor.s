    .text

    .p2align 2
    .globl lb_window_14windows_cursor_0init
    .type lb_window_14windows_cursor_0init, %function
lb_window_14windows_cursor_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_14windows_cursor_0init, .-lb_window_14windows_cursor_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_14windows_cursor_0init

    .section .rodata
.Ltext_0:
    .asciz "Windows could not load a system cursor"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/window/windows/cursor.lucb:19:5"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
