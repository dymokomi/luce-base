    .text

    .p2align 4
    .globl lb_window_10macos_objc_0init
    .type lb_window_10macos_objc_0init, @function
lb_window_10macos_objc_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_10macos_objc_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
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

    .section .note.GNU-stack,"",@progbits
