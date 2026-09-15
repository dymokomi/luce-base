    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_window_14windows_cursor_0init
_lb_window_14windows_cursor_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_window_14windows_cursor_0init

    .section __TEXT,__const
l_text_0:
    .asciz "Windows could not load a system cursor"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/window/windows/cursor.lucb:19:5"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
