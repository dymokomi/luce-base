    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_windows_0init
_lb_net_windows_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_net_windows_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/net/windows.lucb:29:5"
l_text_1:
    .asciz "Winsock could not initialize"
l_text_2:
    .asciz "Winsock cleanup could not be registered"
l_text_3:
    .asciz "unreachable"
l_text_4:
    .asciz "src/std/net/windows.lucb:42:5"
l_text_5:
    .asciz "src/std/net/windows.lucb:47:5"
l_text_6:
    .asciz "the datagram could not be received"
l_text_7:
    .asciz "the receive buffer was too small for the datagram"
l_text_8:
    .asciz "src/std/net/windows.lucb:59:9"
l_text_9:
    .asciz "src/std/net/windows.lucb:62:5"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
