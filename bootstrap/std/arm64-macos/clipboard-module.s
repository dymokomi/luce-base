    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_clipboard_module_0init
_lb_clipboard_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_clipboard_failed@PAGE
    add x14, x14, _lb_clipboard_failed@PAGEOFF
    movz x9, #117
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_clipboard_10text_limit@PAGE
    add x14, x14, _lb_clipboard_10text_limit@PAGEOFF
    movz x9, #16, lsl #16
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_clipboard_9read_text
    .no_dead_strip _lb_clipboard_9read_text
_lb_clipboard_9read_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    sub x8, x29, #128
    bl _lb_clipboard_12check_access
    sub x15, x29, #128
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    sub x19, x29, #96
    add x14, x19, #24
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    sub x8, x29, #184
    bl _lb_clipboard_8mac_read
    sub x15, x29, #184
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L1_5
    b L1_4
L1_5:
    add x14, x15, #24
    sub x19, x29, #96
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
L1_4:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_7:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_clipboard_10write_text
    .no_dead_strip _lb_clipboard_10write_text
_lb_clipboard_10write_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    str x21, [sp, #144]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    sub x8, x29, #128
    bl _lb_clipboard_12check_access
    sub x15, x29, #128
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
    sub x19, x29, #80
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_3:
L2_1:
    sub x19, x29, #96
    add x20, x19, #8
    ldr x14, [x20]
    adrp x15, _lb_clipboard_10text_limit@PAGE
    add x15, x15, _lb_clipboard_10text_limit@PAGEOFF
    ldr x15, [x15]
    cmp x14, x15
    cset w14, hi
    cbnz w14, L2_22
    b L2_7
L2_22:
    mov w15, w14
    b L2_8
L2_7:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L2_8:
    and w14, w15, #255
    cbnz w14, L2_4
    b L2_5
L2_4:
    sub x19, x29, #80
    adrp x14, _lb_clipboard_failed@PAGE
    add x14, x14, _lb_clipboard_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_2@PAGE
    add x14, x14, l_text_2@PAGEOFF
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_9:
    b L2_6
L2_5:
L2_6:
    ldr x14, [x19]
    ldr x15, [x20]
    mov x9, #0
    mov x21, x9
L2_10:
    cmp x21, x15
    b.hs L2_13
L2_11:
    add x20, x14, x21
    ldrb w20, [x20]
    and w20, w20, #255
    mov x10, #0
    cmp w20, w10
    b.ne L2_15
L2_14:
    sub x19, x29, #80
    adrp x14, _lb_clipboard_failed@PAGE
    add x14, x14, _lb_clipboard_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_17:
    b L2_16
L2_15:
L2_16:
L2_12:
    add x20, x21, #1
    mov x21, x20
    b L2_10
L2_13:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #192
    bl _lb_clipboard_9mac_write
    sub x15, x29, #192
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_19
    b L2_18
L2_19:
    sub x19, x29, #80
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_20:
L2_18:
    sub x14, x29, #80
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_21:
    sub x14, x29, #80
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_clipboard_12check_access
_lb_clipboard_12check_access:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    bl _lb_window_supported
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L3_2
L3_1:
    sub x19, x29, #64
    adrp x14, _lb_window_unsupported@PAGE
    add x14, x14, _lb_window_unsupported@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #51
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    b L3_3
L3_2:
L3_3:
    bl _lb_thread_7is_main
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L3_6
L3_5:
    sub x19, x29, #64
    adrp x14, _lb_interop_12wrong_thread@PAGE
    add x14, x14, _lb_interop_12wrong_thread@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_8:
    b L3_7
L3_6:
L3_7:
    sub x14, x29, #64
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_clipboard_module_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/clipboard/module.lucb:18:9"
l_text_2:
    .asciz "clipboard text must be valid UTF-8 within 1 MiB"
l_text_3:
    .asciz "clipboard text cannot contain NUL"
l_text_4:
    .asciz "the desktop clipboard is unavailable on this target"
l_text_5:
    .asciz "clipboard access requires the UI thread"

    .section __DATA,__const
    .p2align 3
    .globl _lb_clipboard_failed
    .no_dead_strip _lb_clipboard_failed
    .zerofill __DATA,__bss,_lb_clipboard_failed,4,2
    .globl _lb_clipboard_10text_limit
    .no_dead_strip _lb_clipboard_10text_limit
    .zerofill __DATA,__bss,_lb_clipboard_10text_limit,8,3

.subsections_via_symbols
