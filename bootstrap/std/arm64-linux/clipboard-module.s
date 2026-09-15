    .text

    .p2align 2
    .globl lb_clipboard_module_0init
    .type lb_clipboard_module_0init, %function
lb_clipboard_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_clipboard_failed
    add x14, x14, :lo12:lb_clipboard_failed
    movz x9, #117
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_clipboard_10text_limit
    add x14, x14, :lo12:lb_clipboard_10text_limit
    movz x9, #16, lsl #16
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_clipboard_module_0init, .-lb_clipboard_module_0init

    .p2align 2
    .globl lb_clipboard_9read_text
    .type lb_clipboard_9read_text, %function
lb_clipboard_9read_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    sub x8, x29, #120
    bl lb_clipboard_12check_access
    sub x15, x29, #120
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_2
    b .L1_1
.L1_2:
    sub x19, x29, #88
    add x14, x19, #24
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_3:
.L1_1:
    sub x19, x29, #88
    add x14, x19, #24
    adrp x15, lb_window_unsupported
    add x15, x15, :lo12:lb_window_unsupported
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_0
    add x15, x15, :lo12:.Ltext_0
    sub x12, x29, #136
    str x15, [x12]
    add x15, x12, #8
    movz x9, #51
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_4:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_clipboard_9read_text, .-lb_clipboard_9read_text

    .p2align 2
    .globl lb_clipboard_10write_text
    .type lb_clipboard_10write_text, %function
lb_clipboard_10write_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #88
    str x0, [x16]
    str x1, [x16, #8]
    sub x8, x29, #120
    bl lb_clipboard_12check_access
    sub x15, x29, #120
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L2_2
    b .L2_1
.L2_2:
    sub x19, x29, #72
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
.L2_3:
.L2_1:
    sub x19, x29, #88
    add x20, x19, #8
    ldr x14, [x20]
    adrp x15, lb_clipboard_10text_limit
    add x15, x15, :lo12:lb_clipboard_10text_limit
    ldr x15, [x15]
    cmp x14, x15
    cset w14, hi
    cbnz w14, .L2_19
    b .L2_7
.L2_19:
    mov w15, w14
    b .L2_8
.L2_7:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L2_8:
    and w14, w15, #255
    cbnz w14, .L2_4
    b .L2_5
.L2_4:
    sub x19, x29, #72
    adrp x14, lb_clipboard_failed
    add x14, x14, :lo12:lb_clipboard_failed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x15, x29, #136
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
.L2_9:
    b .L2_6
.L2_5:
.L2_6:
    ldr x14, [x19]
    ldr x15, [x20]
    mov x9, #0
    mov x12, x9
.L2_10:
    cmp x12, x15
    b.hs .L2_13
.L2_11:
    add x13, x14, x12
    ldrb w13, [x13]
    and w13, w13, #255
    mov x10, #0
    cmp w13, w10
    b.ne .L2_15
.L2_14:
    sub x19, x29, #72
    adrp x14, lb_clipboard_failed
    add x14, x14, :lo12:lb_clipboard_failed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #152
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
.L2_17:
    b .L2_16
.L2_15:
.L2_16:
.L2_12:
    add x13, x12, #1
    mov x12, x13
    b .L2_10
.L2_13:
    sub x19, x29, #72
    adrp x14, lb_window_unsupported
    add x14, x14, :lo12:lb_window_unsupported
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #51
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
.L2_18:
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

    .size lb_clipboard_10write_text, .-lb_clipboard_10write_text

    .p2align 2
    .globl lb_clipboard_12check_access
    .type lb_clipboard_12check_access, %function
lb_clipboard_12check_access:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    bl lb_window_supported
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L3_2
.L3_1:
    sub x19, x29, #64
    adrp x14, lb_window_unsupported
    add x14, x14, :lo12:lb_window_unsupported
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #51
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
.L3_4:
    b .L3_3
.L3_2:
.L3_3:
    bl lb_thread_7is_main
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L3_6
.L3_5:
    sub x19, x29, #64
    adrp x14, lb_interop_12wrong_thread
    add x14, x14, :lo12:lb_interop_12wrong_thread
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
.L3_8:
    b .L3_7
.L3_6:
.L3_7:
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

    .size lb_clipboard_12check_access, .-lb_clipboard_12check_access

    .section .init_array,"aw"
    .p2align 3
    .quad lb_clipboard_module_0init

    .section .rodata
.Ltext_0:
    .asciz "the desktop clipboard is unavailable on this target"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/clipboard/module.lucb:21:5"
.Ltext_3:
    .asciz "clipboard text must be valid UTF-8 within 1 MiB"
.Ltext_4:
    .asciz "clipboard text cannot contain NUL"
.Ltext_5:
    .asciz "clipboard access requires the UI thread"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_clipboard_failed
    .type lb_clipboard_failed, %object
    .p2align 2
lb_clipboard_failed:
    .zero 4

    .bss
    .globl lb_clipboard_10text_limit
    .type lb_clipboard_10text_limit, %object
    .p2align 3
lb_clipboard_10text_limit:
    .zero 8


    .section .note.GNU-stack,"",%progbits
