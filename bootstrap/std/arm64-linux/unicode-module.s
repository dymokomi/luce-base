    .text

    .p2align 2
    .globl lb_unicode_module_0init
    .type lb_unicode_module_0init, %function
lb_unicode_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #6
    str x9, [x14]
    adrp x14, lb_unicode_version
    add x14, x14, :lo12:lb_unicode_version
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_unicode_module_0init, .-lb_unicode_module_0init

    .p2align 2
    .globl lb_unicode_release
    .type lb_unicode_release, %function
lb_unicode_release:
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
    bl lb_strings_release
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_unicode_release, .-lb_unicode_release

    .p2align 2
    .globl lb_unicode_13is_whitespace
    .type lb_unicode_13is_whitespace, %function
lb_unicode_13is_whitespace:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    adrp x14, lb_unicode_17whitespace_ranges
    add x14, x14, :lo12:lb_unicode_17whitespace_ranges
    sub x15, x29, #32
    ldr w15, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x15
    bl lb_unicode_11range_value
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
.L2_1:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_unicode_13is_whitespace, .-lb_unicode_13is_whitespace

    .p2align 2
    .globl lb_unicode_15combining_class
    .type lb_unicode_15combining_class, %function
lb_unicode_15combining_class:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    adrp x14, lb_unicode_16combining_ranges
    add x14, x14, :lo12:lb_unicode_16combining_ranges
    sub x15, x29, #32
    ldr w15, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x15
    bl lb_unicode_11range_value
    mov w14, w0
    mov w14, w14
    and w14, w14, #255
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_1:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_unicode_15combining_class, .-lb_unicode_15combining_class

    .section .init_array,"aw"
    .p2align 3
    .quad lb_unicode_module_0init

    .section .rodata
.Ltext_0:
    .asciz "17.0.0"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/unicode/module.lucb:19:5"
.Ltext_3:
    .asciz "src/std/unicode/module.lucb:23:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_unicode_version
    .type lb_unicode_version, %object
    .p2align 3
lb_unicode_version:
    .zero 16


    .section .note.GNU-stack,"",%progbits
