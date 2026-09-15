    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_fonts_14windows_native_0init
_lb_fonts_14windows_native_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_fonts_14windows_native_0init

    .section __TEXT,__const
l_text_0:
    .asciz "Consolas"
l_text_1:
    .asciz "src/std/fonts/windows/native.lucb:67:5"
l_text_2:
    .asciz "Windows font families support at most 31 UTF-16 units"
l_text_3:
    .asciz "src/std/fonts/windows/native.lucb:70:9"
l_text_4:
    .asciz "src/std/fonts/windows/native.lucb:71:5"
l_text_5:
    .asciz "src/std/fonts/windows/native.lucb:73:9"
l_text_6:
    .asciz "could not load the font family"
l_text_7:
    .asciz "src/std/fonts/windows/native.lucb:74:5"
l_text_8:
    .asciz "could not create a font context"
l_text_9:
    .asciz "src/std/fonts/windows/native.lucb:76:5"
l_text_10:
    .asciz "could not select the font"
l_text_11:
    .asciz "src/std/fonts/windows/native.lucb:78:5"
l_text_12:
    .asciz "the requested font must be monospace"
l_text_13:
    .asciz "src/std/fonts/windows/native.lucb:81:9"
l_text_14:
    .asciz "src/std/fonts/windows/native.lucb:82:5"
l_text_15:
    .asciz "unreachable"
l_text_16:
    .asciz "the font is closed"
l_text_17:
    .asciz "could not read font attributes"
l_text_18:
    .asciz "src/std/fonts/windows/native.lucb:95:5"
l_text_19:
    .asciz "could not scale the font"
l_text_20:
    .asciz "could not select the scaled font"
l_text_21:
    .asciz "validated text changed"
l_text_22:
    .asciz "src/std/fonts/windows/native.lucb:104:9"
l_text_23:
    .asciz "src/std/fonts/windows/native.lucb:105:9"
l_text_24:
    .asciz "could not rasterize the font glyph"
l_text_25:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_26:
    .asciz "memory.unset"
l_text_27:
    .asciz "src/std/fonts/windows/native.lucb:112:13"
l_text_28:
    .asciz "memory.exhausted"
l_text_29:
    .asciz "could not read font coverage"
l_text_30:
    .asciz "src/std/fonts/windows/native.lucb:115:17"
l_text_31:
    .asciz "src/std/fonts/windows/native.lucb:116:13"
l_text_32:
    .asciz "division by zero"
l_text_33:
    .asciz "src/std/fonts/windows/native.lucb:117:13"
l_text_34:
    .asciz "native glyph dimensions exceed its buffer"
l_text_35:
    .asciz "src/std/fonts/windows/native.lucb:118:17"
l_text_36:
    .asciz "src/std/fonts/windows/native.lucb:119:13"
l_text_37:
    .asciz "src/std/fonts/windows/native.lucb:120:13"
l_text_38:
    .asciz "src/std/fonts/windows/native.lucb:123:21"
l_text_39:
    .asciz "src/std/fonts/windows/native.lucb:124:21"
l_text_40:
    .asciz "src/std/fonts/windows/native.lucb:126:25"
l_text_41:
    .asciz "src/std/fonts/windows/native.lucb:127:25"
l_text_42:
    .asciz "src/std/fonts/windows/native.lucb:128:25"
l_text_43:
    .asciz "src/std/fonts/windows/native.lucb:129:29"
l_text_44:
    .asciz "src/std/fonts/windows/native.lucb:130:9"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
