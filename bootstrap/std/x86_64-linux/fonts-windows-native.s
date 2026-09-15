    .text

    .p2align 4
    .globl lb_fonts_14windows_native_0init
    .type lb_fonts_14windows_native_0init, @function
lb_fonts_14windows_native_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_fonts_14windows_native_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "Consolas"
.Ltext_1:
    .asciz "src/std/fonts/windows/native.lucb:67:5"
.Ltext_2:
    .asciz "Windows font families support at most 31 UTF-16 units"
.Ltext_3:
    .asciz "src/std/fonts/windows/native.lucb:70:9"
.Ltext_4:
    .asciz "src/std/fonts/windows/native.lucb:71:5"
.Ltext_5:
    .asciz "src/std/fonts/windows/native.lucb:73:9"
.Ltext_6:
    .asciz "could not load the font family"
.Ltext_7:
    .asciz "src/std/fonts/windows/native.lucb:74:5"
.Ltext_8:
    .asciz "could not create a font context"
.Ltext_9:
    .asciz "src/std/fonts/windows/native.lucb:76:5"
.Ltext_10:
    .asciz "could not select the font"
.Ltext_11:
    .asciz "src/std/fonts/windows/native.lucb:78:5"
.Ltext_12:
    .asciz "the requested font must be monospace"
.Ltext_13:
    .asciz "src/std/fonts/windows/native.lucb:81:9"
.Ltext_14:
    .asciz "src/std/fonts/windows/native.lucb:82:5"
.Ltext_15:
    .asciz "unreachable"
.Ltext_16:
    .asciz "the font is closed"
.Ltext_17:
    .asciz "could not read font attributes"
.Ltext_18:
    .asciz "src/std/fonts/windows/native.lucb:95:5"
.Ltext_19:
    .asciz "could not scale the font"
.Ltext_20:
    .asciz "could not select the scaled font"
.Ltext_21:
    .asciz "validated text changed"
.Ltext_22:
    .asciz "src/std/fonts/windows/native.lucb:104:9"
.Ltext_23:
    .asciz "src/std/fonts/windows/native.lucb:105:9"
.Ltext_24:
    .asciz "could not rasterize the font glyph"
.Ltext_25:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_26:
    .asciz "memory.unset"
.Ltext_27:
    .asciz "src/std/fonts/windows/native.lucb:112:13"
.Ltext_28:
    .asciz "memory.exhausted"
.Ltext_29:
    .asciz "could not read font coverage"
.Ltext_30:
    .asciz "src/std/fonts/windows/native.lucb:115:17"
.Ltext_31:
    .asciz "src/std/fonts/windows/native.lucb:116:13"
.Ltext_32:
    .asciz "division by zero"
.Ltext_33:
    .asciz "src/std/fonts/windows/native.lucb:117:13"
.Ltext_34:
    .asciz "native glyph dimensions exceed its buffer"
.Ltext_35:
    .asciz "src/std/fonts/windows/native.lucb:118:17"
.Ltext_36:
    .asciz "src/std/fonts/windows/native.lucb:119:13"
.Ltext_37:
    .asciz "src/std/fonts/windows/native.lucb:120:13"
.Ltext_38:
    .asciz "src/std/fonts/windows/native.lucb:123:21"
.Ltext_39:
    .asciz "src/std/fonts/windows/native.lucb:124:21"
.Ltext_40:
    .asciz "src/std/fonts/windows/native.lucb:126:25"
.Ltext_41:
    .asciz "src/std/fonts/windows/native.lucb:127:25"
.Ltext_42:
    .asciz "src/std/fonts/windows/native.lucb:128:25"
.Ltext_43:
    .asciz "src/std/fonts/windows/native.lucb:129:29"
.Ltext_44:
    .asciz "src/std/fonts/windows/native.lucb:130:9"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
