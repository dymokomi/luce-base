    .text

    .p2align 4
    .globl lb_fonts_12macos_native_0init
    .type lb_fonts_12macos_native_0init, @function
lb_fonts_12macos_native_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_fonts_12macos_native_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "could not create native font text"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/fonts/macos/native.lucb:34:5"
.Ltext_3:
    .asciz "Menlo"
.Ltext_4:
    .asciz "could not load the font family"
.Ltext_5:
    .asciz "the requested font must be monospace"
.Ltext_6:
    .asciz "src/std/fonts/macos/native.lucb:47:5"
.Ltext_7:
    .asciz "the font is closed"
.Ltext_8:
    .asciz "could not scale the font"
.Ltext_9:
    .asciz "could not create a font raster context"
.Ltext_10:
    .asciz "validated text changed"
.Ltext_11:
    .asciz "src/std/fonts/macos/native.lucb:62:9"
.Ltext_12:
    .asciz "src/std/fonts/macos/native.lucb:63:9"
.Ltext_13:
    .asciz "src/std/fonts/macos/native.lucb:68:13"
.Ltext_14:
    .asciz "shift count out of range"
.Ltext_15:
    .asciz "src/std/fonts/macos/native.lucb:69:13"
.Ltext_16:
    .asciz "src/std/fonts/macos/native.lucb:72:13"
.Ltext_17:
    .asciz "src/std/fonts/macos/native.lucb:76:9"
.Ltext_18:
    .asciz "src/std/fonts/macos/native.lucb:77:13"
.Ltext_19:
    .asciz "index out of bounds"
.Ltext_20:
    .asciz "src/std/fonts/macos/native.lucb:82:17"
.Ltext_21:
    .asciz "src/std/fonts/macos/native.lucb:85:9"
.Ltext_22:
    .asciz "src/std/fonts/macos/native.lucb:88:9"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
