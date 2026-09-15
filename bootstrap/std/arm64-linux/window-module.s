    .text

    .p2align 2
    .globl lb_window_module_0init
    .type lb_window_module_0init, %function
lb_window_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_window_unsupported
    add x14, x14, :lo12:lb_window_unsupported
    movz x9, #85
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_window_12wrong_thread
    add x14, x14, :lo12:lb_window_12wrong_thread
    movz x9, #86
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_window_15invalid_options
    add x14, x14, :lo12:lb_window_15invalid_options
    movz x9, #87
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_window_failed
    add x14, x14, :lo12:lb_window_failed
    movz x9, #88
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_window_closed
    add x14, x14, :lo12:lb_window_closed
    movz x9, #89
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_window_19presentation_in_use
    add x14, x14, :lo12:lb_window_19presentation_in_use
    movz x9, #90
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_module_0init, .-lb_window_module_0init

    .p2align 2
    .globl lb_window_supported
    .type lb_window_supported, %function
lb_window_supported:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_platform_macos
    add x14, x14, :lo12:lb_platform_macos
    ldrb w14, [x14]
    cbnz w14, .L1_1
    b .L1_8
.L1_8:
    mov w15, w14
    b .L1_2
.L1_1:
    adrp x14, lb_platform_arm64
    add x14, x14, :lo12:lb_platform_arm64
    ldrb w15, [x14]
.L1_2:
    and w14, w15, #255
    cbnz w14, .L1_9
    b .L1_3
.L1_9:
    mov w15, w14
    b .L1_4
.L1_3:
    adrp x14, lb_platform_windows
    add x14, x14, :lo12:lb_platform_windows
    ldrb w14, [x14]
    cbnz w14, .L1_5
    b .L1_10
.L1_10:
    mov w15, w14
    b .L1_6
.L1_5:
    adrp x14, lb_platform_6x86_64
    add x14, x14, :lo12:lb_platform_6x86_64
    ldrb w15, [x14]
.L1_6:
    and w14, w15, #255
    mov w15, w14
.L1_4:
    and w14, w15, #255
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_7:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_window_supported, .-lb_window_supported

    .p2align 2
    .globl lb_window_Window_open
    .type lb_window_Window_open, %function
lb_window_Window_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #224]
    str x20, [sp, #216]
    sub x16, x29, #112
    str x0, [x16]
    sub x0, x29, #112
    ldr x1, [x0]
    movz x2, #32
    bl _memcpy
    bl lb_window_supported
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L2_13
.L2_12:
    sub x19, x29, #240
    adrp x14, lb_window_unsupported
    add x14, x14, :lo12:lb_window_unsupported
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x15, x29, #256
    str x14, [x15]
    add x14, x15, #8
    movz x9, #50
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #144
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b .L2_16
.L2_15:
    b .L2_14
.L2_13:
.L2_14:
    sub x14, x29, #240
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #144
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
.L2_16:
    sub x15, x29, #144
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L2_2
    b .L2_1
.L2_2:
    sub x19, x29, #80
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_3:
.L2_1:
    sub x19, x29, #112
    add x14, x19, #16
    ldr w14, [x14]
    add x15, x19, #20
    ldr w15, [x15]
    mov x0, x14
    mov x1, x15
    sub x8, x29, #176
    bl lb_window_12check_extent
    sub x15, x29, #176
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L2_5
    b .L2_4
.L2_5:
    sub x19, x29, #80
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_6:
.L2_4:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L2_8
.L2_7:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_window_15invalid_options
    add x15, x15, :lo12:lb_window_15invalid_options
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_2
    add x15, x15, :lo12:.Ltext_2
    sub x20, x29, #192
    str x15, [x20]
    add x15, x20, #8
    movz x9, #35
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_10:
    b .L2_9
.L2_8:
.L2_9:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_window_unsupported
    add x15, x15, :lo12:lb_window_unsupported
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_3
    add x15, x15, :lo12:.Ltext_3
    sub x20, x29, #208
    str x15, [x20]
    add x15, x20, #8
    movz x9, #50
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_11:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_window_Window_open, .-lb_window_Window_open

    .p2align 2
    .globl lb_window_Window_show
    .type lb_window_Window_show, %function
lb_window_Window_show:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #112
    bl lb_window_Window_checked
    sub x15, x29, #112
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L3_2
    b .L3_1
.L3_2:
    add x14, x15, #8
    sub x19, x29, #64
    mov x10, x14
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_3:
.L3_1:
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_Window_show, .-lb_window_Window_show

    .p2align 2
    .globl lb_window_Window_size
    .type lb_window_Window_size, %function
lb_window_Window_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #120
    str x0, [x16]
    sub x9, x29, #120
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #160
    bl lb_window_Window_checked
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L4_2
    b .L4_1
.L4_2:
    add x14, x15, #8
    sub x19, x29, #112
    add x20, x19, #40
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_3:
.L4_1:
    sub x19, x29, #112
    add x14, x19, #40
    adrp x15, lb_window_unsupported
    add x15, x15, :lo12:lb_window_unsupported
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_3
    add x15, x15, :lo12:.Ltext_3
    sub x20, x29, #176
    str x15, [x20]
    add x15, x20, #8
    movz x9, #50
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_4:
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_window_Window_size, .-lb_window_Window_size

    .p2align 2
    .globl lb_window_Window_resize
    .type lb_window_Window_resize, %function
lb_window_Window_resize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str w1, [x16]
    sub x16, x29, #104
    str w2, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #144
    bl lb_window_Window_checked
    sub x15, x29, #144
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L5_2
    b .L5_1
.L5_2:
    add x14, x15, #8
    sub x19, x29, #64
    mov x10, x14
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
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_3:
.L5_1:
    sub x14, x29, #88
    ldr w14, [x14]
    sub x15, x29, #104
    ldr w15, [x15]
    mov x0, x14
    mov x1, x15
    sub x8, x29, #176
    bl lb_window_12check_extent
    sub x15, x29, #176
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L5_5
    b .L5_4
.L5_5:
    sub x19, x29, #64
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
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_6:
.L5_4:
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
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_Window_resize, .-lb_window_Window_resize

    .p2align 2
    .globl lb_window_Window_14set_text_input
    .type lb_window_Window_14set_text_input, %function
lb_window_Window_14set_text_input:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    str x21, [sp, #96]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str w1, [x16]
    sub x9, x29, #88
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #144
    bl lb_window_Window_checked
    sub x15, x29, #144
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L6_2
    b .L6_1
.L6_2:
    add x14, x15, #8
    sub x19, x29, #80
    mov x10, x14
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    ldr x21, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_3:
.L6_1:
    ldr x14, [x15]
    movz x10, #14380
    add x19, x14, x10
    ldrb w20, [x19]
    sub x21, x29, #104
    ldrb w21, [x21]
    cmp w20, w21
    b.ne .L6_5
.L6_4:
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    ldr x21, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_7:
    b .L6_6
.L6_5:
.L6_6:
    strb w21, [x19]
    movz x10, #14382
    add x15, x14, x10
    mov x9, #0
    strh w9, [x15]
    sub x15, x29, #80
    add x20, x15, #24
    mov x9, #0
    strb w9, [x20]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    ldr x21, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_Window_14set_text_input, .-lb_window_Window_14set_text_input

    .p2align 2
    .globl lb_window_Window_10set_cursor
    .type lb_window_Window_10set_cursor, %function
lb_window_Window_10set_cursor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str w1, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #128
    bl lb_window_Window_checked
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L7_2
    b .L7_1
.L7_2:
    add x14, x15, #8
    sub x19, x29, #64
    mov x10, x14
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_3:
.L7_1:
    sub x14, x29, #88
    ldrb w14, [x14]
    mov w14, w14
    and w14, w14, #255
    movz x10, #7
    cmp w14, w10
    b.ls .L7_5
.L7_4:
    sub x19, x29, #64
    adrp x14, lb_window_15invalid_options
    add x14, x14, :lo12:lb_window_15invalid_options
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_6
    add x14, x14, :lo12:.Ltext_6
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #21
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_7:
    b .L7_6
.L7_5:
.L7_6:
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_Window_10set_cursor, .-lb_window_Window_10set_cursor

    .p2align 2
    .globl lb_window_Window_cursor
    .type lb_window_Window_cursor, %function
lb_window_Window_cursor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #128
    bl lb_window_Window_checked
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L8_2
    b .L8_1
.L8_2:
    add x14, x15, #8
    sub x19, x29, #80
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_3:
.L8_1:
    ldr x14, [x15]
    movz x10, #14385
    add x14, x14, x10
    ldrb w14, [x14]
    sub x19, x29, #80
    strb w14, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_4:
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_window_Window_cursor, .-lb_window_Window_cursor

    .p2align 2
    .globl lb_window_Window_20acquire_presentation
    .type lb_window_Window_20acquire_presentation, %function
lb_window_Window_20acquire_presentation:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    sub x16, x29, #96
    str x0, [x16]
    sub x9, x29, #96
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #136
    bl lb_window_Window_checked
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L9_2
    b .L9_1
.L9_2:
    add x14, x15, #8
    sub x19, x29, #88
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_3:
.L9_1:
    ldr x19, [x15]
    movz x10, #14378
    add x14, x19, x10
    ldrb w20, [x14]
    cbnz w20, .L9_4
    b .L9_5
.L9_4:
    sub x19, x29, #88
    add x14, x19, #8
    adrp x15, lb_window_19presentation_in_use
    add x15, x15, :lo12:lb_window_19presentation_in_use
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_8
    add x15, x15, :lo12:.Ltext_8
    sub x20, x29, #152
    str x15, [x20]
    add x15, x20, #8
    movz x9, #45
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_7:
    b .L9_6
.L9_5:
.L9_6:
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #160
    mov x11, x20
    str xzr, [x11, #0]
    str x19, [x20]
    sub x21, x29, #88
    mov x10, x20
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x15, x21, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_8:
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_window_Window_20acquire_presentation, .-lb_window_Window_20acquire_presentation

    .p2align 2
    .globl lb_window_Window_13request_close
    .type lb_window_Window_13request_close, %function
lb_window_Window_13request_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #112
    bl lb_window_Window_checked
    sub x15, x29, #112
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L10_2
    b .L10_1
.L10_2:
    add x14, x15, #8
    sub x19, x29, #64
    mov x10, x14
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_3:
.L10_1:
    ldr x14, [x15]
    movz x10, #14377
    add x14, x14, x10
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #64
    add x19, x14, #24
    mov x9, #0
    strb w9, [x19]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_Window_13request_close, .-lb_window_Window_13request_close

    .p2align 2
    .globl lb_window_Window_poll
    .type lb_window_Window_poll, %function
lb_window_Window_poll:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #448
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #416]
    str x20, [sp, #408]
    str x21, [sp, #400]
    sub x16, x29, #152
    str x0, [x16]
    sub x9, x29, #152
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #192
    bl lb_window_Window_checked
    sub x15, x29, #192
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L11_2
    b .L11_1
.L11_2:
    add x14, x15, #8
    sub x19, x29, #144
    add x20, x19, #64
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #88
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #96
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_3:
.L11_1:
    ldr x19, [x15]
    mov x0, x19
    sub x8, x29, #256
    bl lb_window_9pop_event
    sub x20, x29, #256
    add x14, x20, #56
    ldrb w14, [x14]
    cbnz w14, .L11_7
    b .L11_5
.L11_7:
    sub x19, x29, #312
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
.L11_4:
    sub x20, x29, #376
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    sub x21, x29, #144
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    add x14, x21, #88
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #96
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_8:
    b .L11_6
.L11_5:
.L11_6:
    mov x0, x19
    sub x8, x29, #440
    bl lb_window_9pop_event
    sub x14, x29, #440
    sub x20, x29, #144
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    add x14, x20, #88
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #96
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_9:
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_window_Window_poll, .-lb_window_Window_poll

    .p2align 2
    .globl lb_window_Window_destroy
    .type lb_window_Window_destroy, %function
lb_window_Window_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x19, [x9]
    ldr x14, [x19]
    cbnz x14, .L12_1
    b .L12_2
.L12_1:
    b .L12_3
.L12_2:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_4:
.L12_3:
    bl lb_window_supported
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L12_10
.L12_9:
    sub x20, x29, #144
    adrp x14, lb_window_unsupported
    add x14, x14, :lo12:lb_window_unsupported
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #50
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #96
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b .L12_13
.L12_12:
    b .L12_11
.L12_10:
.L12_11:
    sub x14, x29, #144
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #96
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
.L12_13:
    sub x15, x29, #96
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L12_8
    b .L12_7
.L12_8:
    sub x14, x29, #64
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b .L12_5
.L12_7:
    b .L12_6
.L12_5:
    adrp x14, .Ltext_11
    add x14, x14, :lo12:.Ltext_11
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    adrp x14, .Ltext_12
    add x14, x14, :lo12:.Ltext_12
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
.L12_6:
    mov x9, #0
    str x9, [x19]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_Window_destroy, .-lb_window_Window_destroy

    .p2align 2
    .globl lb_window_Window_checked
    .type lb_window_Window_checked, %function
lb_window_Window_checked:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    bl lb_window_supported
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L13_10
.L13_9:
    sub x20, x29, #168
    adrp x14, lb_window_unsupported
    add x14, x14, :lo12:lb_window_unsupported
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #50
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #120
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b .L13_13
.L13_12:
    b .L13_11
.L13_10:
.L13_11:
    sub x14, x29, #168
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #120
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
.L13_13:
    sub x15, x29, #120
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L13_2
    b .L13_1
.L13_2:
    sub x19, x29, #80
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_3:
.L13_1:
    ldr x14, [x19]
    cbnz x14, .L13_4
    b .L13_5
.L13_4:
    b .L13_6
.L13_5:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_window_closed
    add x15, x15, :lo12:lb_window_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_13
    add x15, x15, :lo12:.Ltext_13
    sub x20, x29, #136
    str x15, [x20]
    add x15, x20, #8
    movz x9, #20
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_7:
.L13_6:
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_8:
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_window_Window_checked, .-lb_window_Window_checked

    .p2align 2
    .globl lb_window_12check_thread
    .type lb_window_12check_thread, %function
lb_window_12check_thread:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #48]
    bl lb_window_supported
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L14_2
.L14_1:
    sub x19, x29, #64
    adrp x14, lb_window_unsupported
    add x14, x14, :lo12:lb_window_unsupported
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #50
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
    ldr x19, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L14_4:
    b .L14_3
.L14_2:
.L14_3:
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
    ldr x19, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_12check_thread, .-lb_window_12check_thread

    .p2align 2
    .globl lb_window_12check_extent
    .type lb_window_12check_extent, %function
lb_window_12check_extent:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #80
    str w0, [x16]
    sub x16, x29, #96
    str w1, [x16]
    sub x14, x29, #80
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L15_11
    b .L15_4
.L15_11:
    mov w19, w15
    b .L15_5
.L15_4:
    sub x15, x29, #96
    ldr w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w19, eq
.L15_5:
    and w15, w19, #255
    cbnz w15, .L15_12
    b .L15_6
.L15_12:
    mov w14, w15
    b .L15_7
.L15_6:
    movz x10, #10000
    cmp w14, w10
    cset w15, hi
    mov w14, w15
.L15_7:
    and w15, w14, #255
    cbnz w15, .L15_13
    b .L15_8
.L15_13:
    mov w14, w15
    b .L15_9
.L15_8:
    sub x14, x29, #96
    ldr w14, [x14]
    movz x10, #10000
    cmp w14, w10
    cset w14, hi
.L15_9:
    and w15, w14, #255
    cbnz w15, .L15_1
    b .L15_2
.L15_1:
    sub x19, x29, #64
    adrp x14, lb_window_15invalid_options
    add x14, x14, :lo12:lb_window_15invalid_options
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_15
    add x14, x14, :lo12:.Ltext_15
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #52
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L15_10:
    b .L15_3
.L15_2:
.L15_3:
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_12check_extent, .-lb_window_12check_extent

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_module_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/window/module.lucb:18:5"
.Ltext_2:
    .asciz "the window title is not valid UTF-8"
.Ltext_3:
    .asciz "native windows are not implemented for this target"
.Ltext_4:
    .asciz "src/std/window/module.lucb:54:9"
.Ltext_5:
    .asciz "src/std/window/module.lucb:69:9"
.Ltext_6:
    .asciz "unknown system cursor"
.Ltext_7:
    .asciz "src/std/window/module.lucb:103:9"
.Ltext_8:
    .asciz "the window already has a presentation surface"
.Ltext_9:
    .asciz "src/std/window/module.lucb:112:9"
.Ltext_10:
    .asciz "src/std/window/module.lucb:132:9"
.Ltext_11:
    .asciz "window destruction requires the main thread"
.Ltext_12:
    .asciz "src/std/window/module.lucb:140:13"
.Ltext_13:
    .asciz "the window is closed"
.Ltext_14:
    .asciz "src/std/window/module.lucb:149:9"
.Ltext_15:
    .asciz "window dimensions must be between 1 and 10000 points"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_window_unsupported
    .type lb_window_unsupported, %object
    .p2align 2
lb_window_unsupported:
    .zero 4

    .bss
    .globl lb_window_12wrong_thread
    .type lb_window_12wrong_thread, %object
    .p2align 2
lb_window_12wrong_thread:
    .zero 4

    .bss
    .globl lb_window_15invalid_options
    .type lb_window_15invalid_options, %object
    .p2align 2
lb_window_15invalid_options:
    .zero 4

    .bss
    .globl lb_window_failed
    .type lb_window_failed, %object
    .p2align 2
lb_window_failed:
    .zero 4

    .bss
    .globl lb_window_closed
    .type lb_window_closed, %object
    .p2align 2
lb_window_closed:
    .zero 4

    .bss
    .globl lb_window_19presentation_in_use
    .type lb_window_19presentation_in_use, %object
    .p2align 2
lb_window_19presentation_in_use:
    .zero 4


    .section .note.GNU-stack,"",%progbits
