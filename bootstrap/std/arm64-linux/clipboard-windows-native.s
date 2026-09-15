    .text

    .p2align 2
    .globl lb_clipboard_14windows_native_0init
    .type lb_clipboard_14windows_native_0init, %function
lb_clipboard_14windows_native_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_clipboard_12unicode_text
    add x14, x14, :lo12:lb_clipboard_12unicode_text
    movz x9, #13
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_clipboard_14windows_native_0init, .-lb_clipboard_14windows_native_0init

    .p2align 2
    .weak lb_memory_copy_0g1_u8
    .type lb_memory_copy_0g1_u8, %function
lb_memory_copy_0g1_u8:
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
    cbnz w14, .L1_11
    b .L1_4
.L1_11:
    mov w15, w14
    b .L1_5
.L1_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
.L1_5:
    and w14, w15, #255
    cbnz w14, .L1_1
    b .L1_2
.L1_1:
    adrp x14, .Ltext_22
    add x14, x14, :lo12:.Ltext_22
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_23
    add x14, x14, :lo12:.Ltext_23
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L1_3
.L1_2:
.L1_3:
    mov x10, #0
    cmp x19, x10
    b.ls .L1_7
.L1_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl memcpy
    mov x14, x0
    cbnz x14, .L1_9
    b .L1_10
.L1_10:
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_25
    add x1, x1, :lo12:.Ltext_25
    bl lb_core_7trap_at
.L1_9:
    b .L1_8
.L1_7:
.L1_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_copy_0g1_u8, .-lb_memory_copy_0g1_u8

    .section .init_array,"aw"
    .p2align 3
    .quad lb_clipboard_14windows_native_0init

    .section .rodata
.Ltext_0:
    .asciz "the clipboard is busy"
.Ltext_1:
    .asciz ""
.Ltext_2:
    .asciz "clipboard text is unavailable"
.Ltext_3:
    .asciz "division by zero"
.Ltext_4:
    .asciz "src/std/clipboard/windows/native.lucb:24:5"
.Ltext_5:
    .asciz "clipboard text cannot be read"
.Ltext_6:
    .asciz "src/std/clipboard/windows/native.lucb:30:9"
.Ltext_7:
    .asciz "clipboard text is unterminated or exceeds the limit"
.Ltext_8:
    .asciz "clipboard text exceeds 1 MiB"
.Ltext_9:
    .asciz "src/std/clipboard/windows/native.lucb:37:13"
.Ltext_10:
    .asciz "src/std/clipboard/windows/native.lucb:38:9"
.Ltext_11:
    .asciz "unreachable"
.Ltext_12:
    .asciz "clipboard writing requires an active application window"
.Ltext_13:
    .asciz "src/std/clipboard/windows/native.lucb:48:9"
.Ltext_14:
    .asciz "could not allocate clipboard storage"
.Ltext_15:
    .asciz "could not lock clipboard storage"
.Ltext_16:
    .asciz "src/std/clipboard/windows/native.lucb:51:9"
.Ltext_17:
    .asciz "src/std/clipboard/windows/native.lucb:52:9"
.Ltext_18:
    .asciz "src/std/clipboard/windows/native.lucb:55:13"
.Ltext_19:
    .asciz "could not publish clipboard text"
.Ltext_20:
    .asciz "src/std/clipboard/windows/native.lucb:58:13"
.Ltext_21:
    .asciz "src/std/clipboard/windows/native.lucb:59:9"
.Ltext_22:
    .asciz "index out of bounds"
.Ltext_23:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_24:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_25:
    .asciz "null_foreign"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_clipboard_12unicode_text
    .type lb_clipboard_12unicode_text, %object
    .p2align 2
lb_clipboard_12unicode_text:
    .zero 4


    .section .note.GNU-stack,"",%progbits
