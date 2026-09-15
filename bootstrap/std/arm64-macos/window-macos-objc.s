    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_window_10macos_objc_0init
_lb_window_10macos_objc_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_sel
    .no_dead_strip _lb_window_sel
_lb_window_sel:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L1_1
    b L1_2
L1_2:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L1_1:
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_12native_class
    .no_dead_strip _lb_window_12native_class
_lb_window_12native_class:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #96
    str x0, [x16]
    sub x14, x29, #96
    ldr x14, [x14]
    mov x0, x14
    bl _objc_getClass
    mov x14, x0
    cbnz x14, L2_1
    b L2_2
L2_1:
    b L2_3
L2_2:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_3@PAGE
    add x15, x15, l_text_3@PAGEOFF
    sub x20, x29, #112
    str x15, [x20]
    add x15, x20, #8
    movz x9, #66
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_4:
L2_3:
    sub x15, x29, #80
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_5:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_required
    .no_dead_strip _lb_window_required
_lb_window_required:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    cbnz x14, L3_1
    b L3_2
L3_1:
    b L3_3
L3_2:
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    sub x15, x29, #48
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L3_3:
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_9get_state
    .no_dead_strip _lb_window_9get_state
_lb_window_9get_state:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #48
    mov x11, x19
    str xzr, [x11, #0]
    sub x14, x29, #40
    ldr x14, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _object_getInstanceVariable
    mov x14, x0
    ldr x14, [x19]
    cbnz x14, L4_1
    b L4_2
L4_1:
    b L4_3
L4_2:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
L4_3:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_5:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_9set_state
    .no_dead_strip _lb_window_9set_state
_lb_window_9set_state:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #56
    ldr x14, [x14]
    cbnz x14, L5_4
    b L5_2
L5_4:
L5_1:
    sub x15, x29, #40
    ldr x15, [x15]
    adrp x19, l_text_7@PAGE
    add x19, x19, l_text_7@PAGEOFF
    mov x0, x15
    mov x1, x19
    mov x2, x14
    bl _object_setInstanceVariable
    mov x14, x0
    b L5_3
L5_2:
    sub x14, x29, #40
    ldr x14, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _object_setInstanceVariable
    mov x14, x0
L5_3:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_10add_method
    .no_dead_strip _lb_window_10add_method
_lb_window_10add_method:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str x1, [x16]
    sub x16, x29, #120
    str x2, [x16]
    sub x16, x29, #136
    str x3, [x16]
    sub x14, x29, #88
    ldr x19, [x14]
    sub x14, x29, #104
    ldr x14, [x14]
    sub x10, x29, #168
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L6_5
    b L6_6
L6_6:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L6_5:
    b L6_8
L6_7:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L6_8:
    sub x15, x29, #120
    ldr x15, [x15]
    sub x20, x29, #136
    ldr x20, [x20]
    mov x0, x19
    mov x1, x14
    mov x2, x15
    mov x3, x20
    bl _class_addMethod
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ne L6_2
L6_1:
    sub x19, x29, #72
    adrp x14, _lb_window_failed@PAGE
    add x14, x14, _lb_window_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #152
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_4:
    b L6_3
L6_2:
L6_3:
    sub x14, x29, #72
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_window_10macos_objc_0init

    .section __TEXT,__const
l_text_0:
    .asciz "null_foreign"
l_text_1:
    .asciz "src/std/window/macos/objc.lucb:64:5"
l_text_2:
    .asciz "unreachable"
l_text_3:
    .asciz "a required AppKit class is unavailable; link AppKit and Foundation"
l_text_4:
    .asciz "src/std/window/macos/objc.lucb:67:5"
l_text_5:
    .asciz "the native window lost an owned object"
l_text_6:
    .asciz "src/std/window/macos/objc.lucb:70:5"
l_text_7:
    .asciz "luceState"
l_text_8:
    .asciz "src/std/window/macos/objc.lucb:76:5"
l_text_9:
    .asciz "could not register a native window callback"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
