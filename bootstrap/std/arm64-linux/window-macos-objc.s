    .text

    .p2align 2
    .globl lb_window_10macos_objc_0init
    .type lb_window_10macos_objc_0init, %function
lb_window_10macos_objc_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_10macos_objc_0init, .-lb_window_10macos_objc_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_10macos_objc_0init

    .section .rodata
.Ltext_0:
    .asciz "null_foreign"
.Ltext_1:
    .asciz "src/std/window/macos/objc.lucb:64:5"
.Ltext_2:
    .asciz "unreachable"
.Ltext_3:
    .asciz "a required AppKit class is unavailable; link AppKit and Foundation"
.Ltext_4:
    .asciz "src/std/window/macos/objc.lucb:67:5"
.Ltext_5:
    .asciz "the native window lost an owned object"
.Ltext_6:
    .asciz "src/std/window/macos/objc.lucb:70:5"
.Ltext_7:
    .asciz "luceState"
.Ltext_8:
    .asciz "src/std/window/macos/objc.lucb:76:5"
.Ltext_9:
    .asciz "could not register a native window callback"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
