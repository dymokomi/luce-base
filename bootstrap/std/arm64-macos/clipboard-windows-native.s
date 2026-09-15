    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_clipboard_14windows_native_0init
_lb_clipboard_14windows_native_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_clipboard_12unicode_text@PAGE
    add x14, x14, _lb_clipboard_12unicode_text@PAGEOFF
    movz x9, #13
    str w9, [x14]
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
    adrp x14, l_text_22@PAGE
    add x14, x14, l_text_22@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_23@PAGE
    add x14, x14, l_text_23@PAGEOFF
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
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_25@PAGE
    add x1, x1, l_text_25@PAGEOFF
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
    .quad _lb_clipboard_14windows_native_0init

    .section __TEXT,__const
l_text_0:
    .asciz "the clipboard is busy"
l_text_1:
    .asciz ""
l_text_2:
    .asciz "clipboard text is unavailable"
l_text_3:
    .asciz "division by zero"
l_text_4:
    .asciz "src/std/clipboard/windows/native.lucb:24:5"
l_text_5:
    .asciz "clipboard text cannot be read"
l_text_6:
    .asciz "src/std/clipboard/windows/native.lucb:30:9"
l_text_7:
    .asciz "clipboard text is unterminated or exceeds the limit"
l_text_8:
    .asciz "clipboard text exceeds 1 MiB"
l_text_9:
    .asciz "src/std/clipboard/windows/native.lucb:37:13"
l_text_10:
    .asciz "src/std/clipboard/windows/native.lucb:38:9"
l_text_11:
    .asciz "unreachable"
l_text_12:
    .asciz "clipboard writing requires an active application window"
l_text_13:
    .asciz "src/std/clipboard/windows/native.lucb:48:9"
l_text_14:
    .asciz "could not allocate clipboard storage"
l_text_15:
    .asciz "could not lock clipboard storage"
l_text_16:
    .asciz "src/std/clipboard/windows/native.lucb:51:9"
l_text_17:
    .asciz "src/std/clipboard/windows/native.lucb:52:9"
l_text_18:
    .asciz "src/std/clipboard/windows/native.lucb:55:13"
l_text_19:
    .asciz "could not publish clipboard text"
l_text_20:
    .asciz "src/std/clipboard/windows/native.lucb:58:13"
l_text_21:
    .asciz "src/std/clipboard/windows/native.lucb:59:9"
l_text_22:
    .asciz "index out of bounds"
l_text_23:
    .asciz "src/std/memory.lucb:326:9"
l_text_24:
    .asciz "src/std/memory.lucb:328:9"
l_text_25:
    .asciz "null_foreign"

    .section __DATA,__const
    .p2align 3
    .globl _lb_clipboard_12unicode_text
    .zerofill __DATA,__bss,_lb_clipboard_12unicode_text,4,2

.subsections_via_symbols
