    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_unicode_module_0init
_lb_unicode_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #6
    str x9, [x14]
    adrp x14, _lb_unicode_version@PAGE
    add x14, x14, _lb_unicode_version@PAGEOFF
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_unicode_release
    .no_dead_strip _lb_unicode_release
_lb_unicode_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #32
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_unicode_13is_whitespace
    .no_dead_strip _lb_unicode_13is_whitespace
_lb_unicode_13is_whitespace:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    adrp x14, _lb_unicode_17whitespace_ranges@PAGE
    add x14, x14, _lb_unicode_17whitespace_ranges@PAGEOFF
    sub x15, x29, #32
    ldr w15, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x15
    bl _lb_unicode_11range_value
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_unicode_15combining_class
    .no_dead_strip _lb_unicode_15combining_class
_lb_unicode_15combining_class:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    adrp x14, _lb_unicode_16combining_ranges@PAGE
    add x14, x14, _lb_unicode_16combining_ranges@PAGEOFF
    sub x15, x29, #32
    ldr w15, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x15
    bl _lb_unicode_11range_value
    mov w14, w0
    mov w14, w14
    and w14, w14, #255
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_1:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_unicode_module_0init

    .section __TEXT,__const
l_text_0:
    .asciz "17.0.0"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/unicode/module.lucb:19:5"
l_text_3:
    .asciz "src/std/unicode/module.lucb:23:5"

    .section __DATA,__const
    .p2align 3
    .globl _lb_unicode_version
    .no_dead_strip _lb_unicode_version
    .zerofill __DATA,__bss,_lb_unicode_version,16,3

.subsections_via_symbols
