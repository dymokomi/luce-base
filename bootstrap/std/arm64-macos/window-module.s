    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_window_module_0init
_lb_window_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_window_unsupported@PAGE
    add x14, x14, _lb_window_unsupported@PAGEOFF
    movz x9, #85
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_window_12wrong_thread@PAGE
    add x14, x14, _lb_window_12wrong_thread@PAGEOFF
    movz x9, #86
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_window_15invalid_options@PAGE
    add x14, x14, _lb_window_15invalid_options@PAGEOFF
    movz x9, #87
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_window_failed@PAGE
    add x14, x14, _lb_window_failed@PAGEOFF
    movz x9, #88
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_window_closed@PAGE
    add x14, x14, _lb_window_closed@PAGEOFF
    movz x9, #89
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_window_19presentation_in_use@PAGE
    add x14, x14, _lb_window_19presentation_in_use@PAGEOFF
    movz x9, #90
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_supported
    .no_dead_strip _lb_window_supported
_lb_window_supported:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_platform_macos@PAGE
    add x14, x14, _lb_platform_macos@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L1_1
    b L1_8
L1_8:
    mov w15, w14
    b L1_2
L1_1:
    adrp x14, _lb_platform_arm64@PAGE
    add x14, x14, _lb_platform_arm64@PAGEOFF
    ldrb w15, [x14]
L1_2:
    and w14, w15, #255
    cbnz w14, L1_9
    b L1_3
L1_9:
    mov w15, w14
    b L1_4
L1_3:
    adrp x14, _lb_platform_windows@PAGE
    add x14, x14, _lb_platform_windows@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L1_5
    b L1_10
L1_10:
    mov w15, w14
    b L1_6
L1_5:
    adrp x14, _lb_platform_6x86_64@PAGE
    add x14, x14, _lb_platform_6x86_64@PAGEOFF
    ldrb w15, [x14]
L1_6:
    and w14, w15, #255
    mov w15, w14
L1_4:
    and w14, w15, #255
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
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
    .globl _lb_window_Window_open
    .no_dead_strip _lb_window_Window_open
_lb_window_Window_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    sub x16, x29, #112
    str x0, [x16]
    sub x0, x29, #112
    ldr x1, [x0]
    movz x2, #32
    bl _memcpy
    sub x8, x29, #144
    bl _lb_window_12check_thread
    sub x15, x29, #144
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_3:
L2_1:
    sub x19, x29, #112
    add x14, x19, #16
    ldr w14, [x14]
    add x15, x19, #20
    ldr w15, [x15]
    mov x0, x14
    mov x1, x15
    sub x8, x29, #176
    bl _lb_window_12check_extent
    sub x15, x29, #176
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_5
    b L2_4
L2_5:
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
L2_4:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L2_8
L2_7:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_window_15invalid_options@PAGE
    add x15, x15, _lb_window_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_10:
    b L2_9
L2_8:
L2_9:
    sub x20, x29, #200
    mov x11, x20
    str xzr, [x11, #0]
    mov x9, x19
    mov x0, x9
    sub x8, x29, #240
    bl _lb_window_8mac_open
    sub x15, x29, #240
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_12
    b L2_11
L2_12:
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_13:
L2_11:
    ldr x14, [x15]
    str x14, [x20]
    sub x19, x29, #80
    mov x10, x20
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_14:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_Window_show
    .no_dead_strip _lb_window_Window_show
_lb_window_Window_show:
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
    bl _lb_window_Window_checked
    sub x15, x29, #112
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_2
    b L3_1
L3_2:
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
L3_3:
L3_1:
    ldr x14, [x15]
    mov x0, x14
    bl _lb_window_8mac_show
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

    .p2align 2
    .globl _lb_window_Window_size
    .no_dead_strip _lb_window_Window_size
_lb_window_Window_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    sub x16, x29, #120
    str x0, [x16]
    sub x9, x29, #120
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #160
    bl _lb_window_Window_checked
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_2
    b L4_1
L4_2:
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_3:
L4_1:
    ldr x14, [x15]
    mov x0, x14
    sub x8, x29, #200
    bl _lb_window_8mac_size
    sub x14, x29, #200
    sub x19, x29, #112
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x19, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_Window_resize
    .no_dead_strip _lb_window_Window_resize
_lb_window_Window_resize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str x21, [sp, #160]
    str x22, [sp, #152]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str w1, [x16]
    sub x16, x29, #128
    str w2, [x16]
    sub x9, x29, #96
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #168
    bl _lb_window_Window_checked
    sub x15, x29, #168
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L5_2
    b L5_1
L5_2:
    add x14, x15, #8
    sub x19, x29, #88
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_3:
L5_1:
    ldr x19, [x15]
    sub x14, x29, #112
    ldr w20, [x14]
    sub x14, x29, #128
    ldr w21, [x14]
    mov x0, x20
    mov x1, x21
    sub x8, x29, #200
    bl _lb_window_12check_extent
    sub x22, x29, #200
    add x14, x22, #24
    ldrb w14, [x14]
    cbnz w14, L5_5
    b L5_4
L5_5:
    sub x19, x29, #88
    mov x10, x22
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_6:
L5_4:
    mov x0, x19
    mov x1, x20
    mov x2, x21
    bl _lb_window_10mac_resize
    sub x14, x29, #88
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_Window_14set_text_input
    .no_dead_strip _lb_window_Window_14set_text_input
_lb_window_Window_14set_text_input:
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
    bl _lb_window_Window_checked
    sub x15, x29, #144
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L6_2
    b L6_1
L6_2:
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
L6_3:
L6_1:
    ldr x14, [x15]
    movz x10, #14380
    add x19, x14, x10
    ldrb w20, [x19]
    sub x21, x29, #104
    ldrb w21, [x21]
    cmp w20, w21
    b.ne L6_5
L6_4:
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
L6_7:
    b L6_6
L6_5:
L6_6:
    strb w21, [x19]
    movz x10, #14382
    add x15, x14, x10
    mov x9, #0
    strh w9, [x15]
    mov x10, #0
    cmp w21, w10
    b.ne L6_9
L6_8:
    mov x0, x14
    bl _lb_window_21mac_cancel_text_input
    b L6_10
L6_9:
L6_10:
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

    .p2align 2
    .globl _lb_window_Window_10set_cursor
    .no_dead_strip _lb_window_Window_10set_cursor
_lb_window_Window_10set_cursor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str w1, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #136
    bl _lb_window_Window_checked
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L7_2
    b L7_1
L7_2:
    add x14, x15, #8
    sub x19, x29, #72
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_3:
L7_1:
    ldr x14, [x15]
    sub x19, x29, #96
    ldrb w19, [x19]
    mov w20, w19
    and w20, w20, #255
    movz x10, #7
    cmp w20, w10
    b.ls L7_5
L7_4:
    sub x19, x29, #72
    adrp x14, _lb_window_15invalid_options@PAGE
    add x14, x14, _lb_window_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    sub x15, x29, #152
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_7:
    b L7_6
L7_5:
L7_6:
    mov x0, x14
    mov x1, x19
    sub x8, x29, #184
    bl _lb_window_14mac_set_cursor
    sub x20, x29, #184
    add x15, x20, #24
    ldrb w15, [x15]
    cbnz w15, L7_9
    b L7_8
L7_9:
    sub x19, x29, #72
    mov x10, x20
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_10:
L7_8:
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_Window_cursor
    .no_dead_strip _lb_window_Window_cursor
_lb_window_Window_cursor:
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
    bl _lb_window_Window_checked
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L8_2
    b L8_1
L8_2:
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
L8_3:
L8_1:
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
L8_4:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_Window_20acquire_presentation
    .no_dead_strip _lb_window_Window_20acquire_presentation
_lb_window_Window_20acquire_presentation:
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
    bl _lb_window_Window_checked
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L9_2
    b L9_1
L9_2:
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
L9_3:
L9_1:
    ldr x19, [x15]
    movz x10, #14378
    add x14, x19, x10
    ldrb w20, [x14]
    cbnz w20, L9_4
    b L9_5
L9_4:
    sub x19, x29, #88
    add x14, x19, #8
    adrp x15, _lb_window_19presentation_in_use@PAGE
    add x15, x15, _lb_window_19presentation_in_use@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
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
L9_7:
    b L9_6
L9_5:
L9_6:
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
L9_8:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_Window_13request_close
    .no_dead_strip _lb_window_Window_13request_close
_lb_window_Window_13request_close:
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
    bl _lb_window_Window_checked
    sub x15, x29, #112
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L10_2
    b L10_1
L10_2:
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
L10_3:
L10_1:
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

    .p2align 2
    .globl _lb_window_Window_poll
    .no_dead_strip _lb_window_Window_poll
_lb_window_Window_poll:
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
    bl _lb_window_Window_checked
    sub x15, x29, #192
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L11_2
    b L11_1
L11_2:
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
L11_3:
L11_1:
    ldr x19, [x15]
    mov x0, x19
    sub x8, x29, #256
    bl _lb_window_9pop_event
    sub x20, x29, #256
    add x14, x20, #56
    ldrb w14, [x14]
    cbnz w14, L11_7
    b L11_5
L11_7:
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
L11_4:
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
L11_8:
    b L11_6
L11_5:
L11_6:
    mov x0, x19
    bl _lb_window_8mac_pump
    mov x0, x19
    sub x8, x29, #440
    bl _lb_window_9pop_event
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
L11_9:
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_Window_destroy
    .no_dead_strip _lb_window_Window_destroy
_lb_window_Window_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, L12_1
    b L12_2
L12_1:
    b L12_3
L12_2:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_4:
L12_3:
    sub x8, x29, #96
    bl _lb_window_12check_thread
    sub x15, x29, #96
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_8
    b L12_7
L12_8:
    sub x14, x29, #64
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L12_5
L12_7:
    b L12_6
L12_5:
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    adrp x14, l_text_11@PAGE
    add x14, x14, l_text_11@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L12_6:
    mov x9, #0
    str x9, [x19]
    mov x0, x20
    bl _lb_window_11mac_destroy
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_Window_checked
_lb_window_Window_checked:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    sub x8, x29, #120
    bl _lb_window_12check_thread
    sub x15, x29, #120
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L13_2
    b L13_1
L13_2:
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_3:
L13_1:
    ldr x14, [x19]
    cbnz x14, L13_4
    b L13_5
L13_4:
    b L13_6
L13_5:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_window_closed@PAGE
    add x15, x15, _lb_window_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_12@PAGE
    add x15, x15, l_text_12@PAGEOFF
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_7:
L13_6:
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_8:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_12check_thread
    .no_dead_strip _lb_window_12check_thread
_lb_window_12check_thread:
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
    b.ne L14_2
L14_1:
    sub x19, x29, #64
    adrp x14, _lb_window_unsupported@PAGE
    add x14, x14, _lb_window_unsupported@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_14@PAGE
    add x14, x14, l_text_14@PAGEOFF
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_4:
    b L14_3
L14_2:
L14_3:
    bl _pthread_main_np
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L14_6
L14_5:
    sub x19, x29, #64
    adrp x14, _lb_window_12wrong_thread@PAGE
    add x14, x14, _lb_window_12wrong_thread@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_15@PAGE
    add x14, x14, l_text_15@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #41
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
L14_8:
    b L14_7
L14_6:
L14_7:
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

    .p2align 2
    .globl _lb_window_12check_extent
_lb_window_12check_extent:
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
    cbnz w15, L15_11
    b L15_4
L15_11:
    mov w19, w15
    b L15_5
L15_4:
    sub x15, x29, #96
    ldr w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w19, eq
L15_5:
    and w15, w19, #255
    cbnz w15, L15_12
    b L15_6
L15_12:
    mov w14, w15
    b L15_7
L15_6:
    movz x10, #10000
    cmp w14, w10
    cset w15, hi
    mov w14, w15
L15_7:
    and w15, w14, #255
    cbnz w15, L15_13
    b L15_8
L15_13:
    mov w14, w15
    b L15_9
L15_8:
    sub x14, x29, #96
    ldr w14, [x14]
    movz x10, #10000
    cmp w14, w10
    cset w14, hi
L15_9:
    and w15, w14, #255
    cbnz w15, L15_1
    b L15_2
L15_1:
    sub x19, x29, #64
    adrp x14, _lb_window_15invalid_options@PAGE
    add x14, x14, _lb_window_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
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
L15_10:
    b L15_3
L15_2:
L15_3:
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

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_window_module_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/window/module.lucb:18:5"
l_text_2:
    .asciz "the window title is not valid UTF-8"
l_text_3:
    .asciz "src/std/window/module.lucb:51:13"
l_text_4:
    .asciz "src/std/window/module.lucb:66:13"
l_text_5:
    .asciz "unknown system cursor"
l_text_6:
    .asciz "src/std/window/module.lucb:103:9"
l_text_7:
    .asciz "the window already has a presentation surface"
l_text_8:
    .asciz "src/std/window/module.lucb:112:9"
l_text_9:
    .asciz "src/std/window/module.lucb:132:9"
l_text_10:
    .asciz "window destruction requires the main thread"
l_text_11:
    .asciz "src/std/window/module.lucb:140:13"
l_text_12:
    .asciz "the window is closed"
l_text_13:
    .asciz "src/std/window/module.lucb:149:9"
l_text_14:
    .asciz "native windows are not implemented for this target"
l_text_15:
    .asciz "window operations require the main thread"
l_text_16:
    .asciz "window dimensions must be between 1 and 10000 points"

    .section __DATA,__const
    .p2align 3
    .globl _lb_window_unsupported
    .no_dead_strip _lb_window_unsupported
    .zerofill __DATA,__bss,_lb_window_unsupported,4,2
    .globl _lb_window_12wrong_thread
    .no_dead_strip _lb_window_12wrong_thread
    .zerofill __DATA,__bss,_lb_window_12wrong_thread,4,2
    .globl _lb_window_15invalid_options
    .no_dead_strip _lb_window_15invalid_options
    .zerofill __DATA,__bss,_lb_window_15invalid_options,4,2
    .globl _lb_window_failed
    .no_dead_strip _lb_window_failed
    .zerofill __DATA,__bss,_lb_window_failed,4,2
    .globl _lb_window_closed
    .no_dead_strip _lb_window_closed
    .zerofill __DATA,__bss,_lb_window_closed,4,2
    .globl _lb_window_19presentation_in_use
    .no_dead_strip _lb_window_19presentation_in_use
    .zerofill __DATA,__bss,_lb_window_19presentation_in_use,4,2

.subsections_via_symbols
