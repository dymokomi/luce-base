    .text

    .p2align 4
    .globl lb_window_12macos_cursor_0init
    .type lb_window_12macos_cursor_0init, @function
lb_window_12macos_cursor_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_12macos_cursor_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "arrowCursor"
.Ltext_1:
    .asciz "IBeamCursor"
.Ltext_2:
    .asciz "pointingHandCursor"
.Ltext_3:
    .asciz "resizeLeftRightCursor"
.Ltext_4:
    .asciz "resizeUpDownCursor"
.Ltext_5:
    .asciz "openHandCursor"
.Ltext_6:
    .asciz "closedHandCursor"
.Ltext_7:
    .asciz "operationNotAllowedCursor"
.Ltext_8:
    .asciz "NSCursor"
.Ltext_9:
    .asciz "AppKit could not load a system cursor"
.Ltext_10:
    .asciz "unreachable"
.Ltext_11:
    .asciz "src/std/window/macos/cursor.lucb:14:5"
.Ltext_12:
    .asciz "null_foreign"
.Ltext_13:
    .asciz "src/std/window/macos/cursor.lucb:18:5"
.Ltext_14:
    .asciz "isKeyWindow"
.Ltext_15:
    .asciz "set"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
