    .text

    .p2align 2
    .globl lb_window_12macos_cursor_0init
    .type lb_window_12macos_cursor_0init, %function
lb_window_12macos_cursor_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_12macos_cursor_0init, .-lb_window_12macos_cursor_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_12macos_cursor_0init

    .section .rodata
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


    .section .note.GNU-stack,"",%progbits
