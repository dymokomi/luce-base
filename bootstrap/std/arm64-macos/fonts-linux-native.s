    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_fonts_12linux_native_0init
_lb_fonts_12linux_native_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_copy_0g1_u8
    .weak_definition _lb_memory_copy_0g1_u8
_lb_memory_copy_0g1_u8:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #48
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #64
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #80
    str x4, [x16]
    sub x14, x29, #80
    ldr x19, [x14]
    sub x20, x29, #48
    add x14, x20, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w14, hi
    cbnz w14, L1_11
    b L1_4
L1_11:
    mov w15, w14
    b L1_5
L1_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L1_5:
    and w14, w15, #255
    cbnz w14, L1_1
    b L1_2
L1_1:
    adrp x14, l_text_27@PAGE
    add x14, x14, l_text_27@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_28@PAGE
    add x14, x14, l_text_28@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L1_3
L1_2:
L1_3:
    mov x10, #0
    cmp x19, x10
    b.ls L1_7
L1_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L1_9
    b L1_10
L1_10:
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L1_9:
    b L1_8
L1_7:
L1_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_fonts_12linux_native_0init

    .section __TEXT,__const
l_text_0:
    .asciz "null_foreign"
l_text_1:
    .asciz "src/std/fonts/linux/native.lucb:46:5"
l_text_2:
    .asciz "monospace"
l_text_3:
    .asciz "src/std/fonts/linux/native.lucb:55:5"
l_text_4:
    .asciz "src/std/fonts/linux/native.lucb:57:5"
l_text_5:
    .asciz "i"
l_text_6:
    .asciz "W"
l_text_7:
    .asciz "the requested font must be an available monospace face"
l_text_8:
    .asciz "src/std/fonts/linux/native.lucb:69:9"
l_text_9:
    .asciz "src/std/fonts/linux/native.lucb:70:5"
l_text_10:
    .asciz "src/std/fonts/linux/native.lucb:71:5"
l_text_11:
    .asciz "unreachable"
l_text_12:
    .asciz "the font is closed"
l_text_13:
    .asciz "src/std/fonts/linux/native.lucb:75:5"
l_text_14:
    .asciz "could not allocate font raster storage"
l_text_15:
    .asciz "src/std/fonts/linux/native.lucb:79:5"
l_text_16:
    .asciz "src/std/fonts/linux/native.lucb:82:5"
l_text_17:
    .asciz "validated text changed"
l_text_18:
    .asciz "src/std/fonts/linux/native.lucb:88:9"
l_text_19:
    .asciz "src/std/fonts/linux/native.lucb:91:13"
l_text_20:
    .asciz "src/std/fonts/linux/native.lucb:92:9"
l_text_21:
    .asciz "src/std/fonts/linux/native.lucb:94:9"
l_text_22:
    .asciz "src/std/fonts/linux/native.lucb:95:9"
l_text_23:
    .asciz "src/std/fonts/linux/native.lucb:96:9"
l_text_24:
    .asciz "could not rasterize the font text"
l_text_25:
    .asciz "src/std/fonts/linux/native.lucb:100:5"
l_text_26:
    .asciz "src/std/fonts/linux/native.lucb:103:9"
l_text_27:
    .asciz "index out of bounds"
l_text_28:
    .asciz "src/std/memory.lucb:328:9"
l_text_29:
    .asciz "src/std/memory.lucb:330:9"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
