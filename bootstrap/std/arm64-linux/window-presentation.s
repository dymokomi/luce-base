    .text

    .p2align 2
    .globl lb_window_presentation_0init
    .type lb_window_presentation_0init, %function
lb_window_presentation_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_presentation_0init, .-lb_window_presentation_0init

    .p2align 2
    .globl lb_window_Presentation_size
    .type lb_window_Presentation_size, %function
lb_window_Presentation_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    sub x16, x29, #112
    str x0, [x16]
    sub x9, x29, #112
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #152
    bl lb_window_Presentation_checked
    sub x15, x29, #152
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L1_2
    b .L1_1
.L1_2:
    add x14, x15, #8
    sub x19, x29, #104
    add x12, x19, #40
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_3:
.L1_1:
    sub x19, x29, #104
    add x14, x19, #40
    adrp x15, lb_window_unsupported
    add x15, x15, :lo12:lb_window_unsupported
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_0
    add x15, x15, :lo12:.Ltext_0
    sub x12, x29, #168
    str x15, [x12]
    add x15, x12, #8
    movz x9, #50
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_4:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_window_Presentation_size, .-lb_window_Presentation_size

    .p2align 2
    .globl lb_window_Presentation_visible
    .type lb_window_Presentation_visible, %function
lb_window_Presentation_visible:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #120
    bl lb_window_Presentation_checked
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L2_2
    b .L2_1
.L2_2:
    add x14, x15, #8
    sub x19, x29, #72
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_3:
.L2_1:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, lb_window_unsupported
    add x15, x15, :lo12:lb_window_unsupported
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_0
    add x15, x15, :lo12:.Ltext_0
    sub x12, x29, #136
    str x15, [x12]
    add x15, x12, #8
    movz x9, #50
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_window_Presentation_visible, .-lb_window_Presentation_visible

    .p2align 2
    .globl lb_window_Presentation_10macos_view
    .type lb_window_Presentation_10macos_view, %function
lb_window_Presentation_10macos_view:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #120
    bl lb_window_Presentation_checked
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L3_2
    b .L3_1
.L3_2:
    add x14, x15, #8
    sub x19, x29, #72
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_3:
.L3_1:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, lb_window_unsupported
    add x15, x15, :lo12:lb_window_unsupported
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_4
    add x15, x15, :lo12:.Ltext_4
    sub x12, x29, #136
    str x15, [x12]
    add x15, x12, #8
    movz x9, #29
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_4:
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_window_Presentation_10macos_view, .-lb_window_Presentation_10macos_view

    .p2align 2
    .globl lb_window_Presentation_14windows_handle
    .type lb_window_Presentation_14windows_handle, %function
lb_window_Presentation_14windows_handle:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #120
    bl lb_window_Presentation_checked
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L4_2
    b .L4_1
.L4_2:
    add x14, x15, #8
    sub x19, x29, #72
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_3:
.L4_1:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, lb_window_unsupported
    add x15, x15, :lo12:lb_window_unsupported
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_6
    add x15, x15, :lo12:.Ltext_6
    sub x12, x29, #136
    str x15, [x12]
    add x15, x12, #8
    movz x9, #33
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_4:
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_window_Presentation_14windows_handle, .-lb_window_Presentation_14windows_handle

    .p2align 2
    .globl lb_window_Presentation_destroy
    .type lb_window_Presentation_destroy, %function
lb_window_Presentation_destroy:
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
    cbnz x20, .L5_1
    b .L5_2
.L5_1:
    b .L5_3
.L5_2:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_4:
.L5_3:
    sub x8, x29, #96
    bl lb_window_12check_thread
    sub x15, x29, #96
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L5_8
    b .L5_7
.L5_8:
    sub x14, x29, #64
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L5_5
.L5_7:
    b .L5_6
.L5_5:
    adrp x14, .Ltext_8
    add x14, x14, :lo12:.Ltext_8
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #55
    str x9, [x14]
    adrp x14, .Ltext_9
    add x14, x14, :lo12:.Ltext_9
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
.L5_6:
    mov x9, #0
    str x9, [x19]
    movz x10, #14378
    add x14, x20, x10
    mov x9, #0
    strb w9, [x14]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_window_Presentation_destroy, .-lb_window_Presentation_destroy

    .p2align 2
    .globl lb_window_Presentation_checked
    .type lb_window_Presentation_checked, %function
lb_window_Presentation_checked:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x19, [x9]
    sub x8, x29, #112
    bl lb_window_12check_thread
    sub x15, x29, #112
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L6_2
    b .L6_1
.L6_2:
    sub x19, x29, #72
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_3:
.L6_1:
    ldr x14, [x19]
    cbnz x14, .L6_4
    b .L6_5
.L6_4:
    b .L6_6
.L6_5:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, lb_window_closed
    add x15, x15, :lo12:lb_window_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_10
    add x15, x15, :lo12:.Ltext_10
    sub x12, x29, #128
    str x15, [x12]
    add x15, x12, #8
    movz x9, #32
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_7:
.L6_6:
    movz x10, #14379
    add x15, x14, x10
    ldrb w15, [x15]
    cbnz w15, .L6_8
    b .L6_9
.L6_8:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, lb_window_closed
    add x15, x15, :lo12:lb_window_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_11
    add x15, x15, :lo12:.Ltext_11
    sub x12, x29, #144
    str x15, [x12]
    add x15, x12, #8
    movz x9, #33
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_11:
    b .L6_10
.L6_9:
.L6_10:
    sub x15, x29, #72
    str x14, [x15]
    add x12, x15, #32
    mov x9, #0
    strb w9, [x12]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_12:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_window_Presentation_checked, .-lb_window_Presentation_checked

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_presentation_0init

    .section .rodata
.Ltext_0:
    .asciz "native windows are not implemented for this target"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/window/presentation.lucb:14:9"
.Ltext_3:
    .asciz "src/std/window/presentation.lucb:26:9"
.Ltext_4:
    .asciz "this window has no macOS view"
.Ltext_5:
    .asciz "src/std/window/presentation.lucb:36:9"
.Ltext_6:
    .asciz "this window has no Windows handle"
.Ltext_7:
    .asciz "src/std/window/presentation.lucb:43:9"
.Ltext_8:
    .asciz "presentation lease destruction requires the main thread"
.Ltext_9:
    .asciz "src/std/window/presentation.lucb:49:13"
.Ltext_10:
    .asciz "the presentation lease is closed"
.Ltext_11:
    .asciz "the presentation window is closed"
.Ltext_12:
    .asciz "src/std/window/presentation.lucb:63:9"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
