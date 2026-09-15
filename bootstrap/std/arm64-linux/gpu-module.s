    .text

    .p2align 2
    .globl lb_gpu_module_0init
    .type lb_gpu_module_0init, %function
lb_gpu_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_gpu_unsupported
    add x14, x14, :lo12:lb_gpu_unsupported
    movz x9, #91
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_gpu_unavailable
    add x14, x14, :lo12:lb_gpu_unavailable
    movz x9, #92
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_gpu_12wrong_thread
    add x14, x14, :lo12:lb_gpu_12wrong_thread
    movz x9, #93
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_gpu_closed
    add x14, x14, :lo12:lb_gpu_closed
    movz x9, #94
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_gpu_13invalid_color
    add x14, x14, :lo12:lb_gpu_13invalid_color
    movz x9, #95
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_gpu_failed
    add x14, x14, :lo12:lb_gpu_failed
    movz x9, #96
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_gpu_16execution_failed
    add x14, x14, :lo12:lb_gpu_16execution_failed
    movz x9, #97
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_gpu_17surface_too_large
    add x14, x14, :lo12:lb_gpu_17surface_too_large
    movz x9, #98
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_gpu_16invalid_geometry
    add x14, x14, :lo12:lb_gpu_16invalid_geometry
    movz x9, #99
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_gpu_13command_limit
    add x14, x14, :lo12:lb_gpu_13command_limit
    movz x9, #100
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_gpu_14frame_finished
    add x14, x14, :lo12:lb_gpu_14frame_finished
    movz x9, #114
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_gpu_12frame_in_use
    add x14, x14, :lo12:lb_gpu_12frame_in_use
    movz x9, #115
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_gpu_13frame_resized
    add x14, x14, :lo12:lb_gpu_13frame_resized
    movz x9, #116
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_module_0init, .-lb_gpu_module_0init

    .p2align 2
    .globl lb_gpu_supported
    .type lb_gpu_supported, %function
lb_gpu_supported:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
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
    cbnz w14, .L1_3
    b .L1_9
.L1_9:
    mov w15, w14
    b .L1_4
.L1_3:
    sub x14, x29, #32
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L1_10
    b .L1_5
.L1_10:
    mov w14, w15
    b .L1_6
.L1_5:
    movz x10, #1
    cmp w14, w10
    cset w15, eq
    mov w14, w15
.L1_6:
    and w15, w14, #255
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

    .size lb_gpu_supported, .-lb_gpu_supported

    .p2align 2
    .globl lb_gpu_12check_thread
    .type lb_gpu_12check_thread, %function
lb_gpu_12check_thread:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #48]
    mov x0, #0
    bl lb_gpu_supported
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L2_2
.L2_1:
    sub x19, x29, #64
    adrp x14, lb_gpu_unsupported
    add x14, x14, :lo12:lb_gpu_unsupported
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_2
    add x14, x14, :lo12:.Ltext_2
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #45
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
    ldr x19, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
    b .L2_3
.L2_2:
.L2_3:
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

    .size lb_gpu_12check_thread, .-lb_gpu_12check_thread

    .p2align 2
    .globl lb_gpu_14require_thread
    .type lb_gpu_14require_thread, %function
lb_gpu_14require_thread:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    mov x0, #0
    bl lb_gpu_supported
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L3_6
.L3_5:
    sub x19, x29, #128
    adrp x14, lb_gpu_unsupported
    add x14, x14, :lo12:lb_gpu_unsupported
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_2
    add x14, x14, :lo12:.Ltext_2
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #45
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #80
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    b .L3_9
.L3_8:
    b .L3_7
.L3_6:
.L3_7:
    sub x14, x29, #128
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #80
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
.L3_9:
    sub x15, x29, #80
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L3_4
    b .L3_3
.L3_4:
    sub x14, x29, #48
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L3_1
.L3_3:
    b .L3_2
.L3_1:
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
.L3_2:
    ldr x19, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_14require_thread, .-lb_gpu_14require_thread

    .p2align 2
    .globl lb_gpu_11check_color
    .type lb_gpu_11check_color, %function
lb_gpu_11check_color:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #88
    str d0, [x16, #0]
    sub x16, x29, #88
    str d1, [x16, #8]
    sub x16, x29, #88
    str d2, [x16, #16]
    sub x14, x29, #88
    ldr d24, [x14]
    mov x9, #0
    fmov d25, x9
    fcmp d24, d25
    cset w15, ge
    cbnz w15, .L4_4
    b .L4_15
.L4_15:
    mov w12, w15
    b .L4_5
.L4_4:
    movz x9, #16368, lsl #48
    fmov d26, x9
    fcmp d24, d26
    cset w12, ls
.L4_5:
    and w15, w12, #255
    cbnz w15, .L4_6
    b .L4_16
.L4_16:
    mov w12, w15
    b .L4_7
.L4_6:
    add x15, x14, #8
    ldr d24, [x15]
    fcmp d24, d25
    cset w12, ge
.L4_7:
    and w15, w12, #255
    cbnz w15, .L4_8
    b .L4_17
.L4_17:
    mov w12, w15
    b .L4_9
.L4_8:
    add x15, x14, #8
    ldr d24, [x15]
    movz x9, #16368, lsl #48
    fmov d26, x9
    fcmp d24, d26
    cset w12, ls
.L4_9:
    and w15, w12, #255
    cbnz w15, .L4_10
    b .L4_18
.L4_18:
    mov w12, w15
    b .L4_11
.L4_10:
    add x15, x14, #16
    ldr d24, [x15]
    fcmp d24, d25
    cset w12, ge
.L4_11:
    and w15, w12, #255
    cbnz w15, .L4_12
    b .L4_19
.L4_19:
    mov w14, w15
    b .L4_13
.L4_12:
    add x15, x14, #16
    ldr d24, [x15]
    movz x9, #16368, lsl #48
    fmov d25, x9
    fcmp d24, d25
    cset w15, ls
    mov w14, w15
.L4_13:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    b.ne .L4_2
.L4_1:
    sub x19, x29, #64
    adrp x14, lb_gpu_13invalid_color
    add x14, x14, :lo12:lb_gpu_13invalid_color
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #58
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_14:
    b .L4_3
.L4_2:
.L4_3:
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

    .size lb_gpu_11check_color, .-lb_gpu_11check_color

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_module_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/gpu/module.lucb:37:5"
.Ltext_2:
    .asciz "no GPU backend is implemented for this target"
.Ltext_3:
    .asciz "GPU destruction requires the main thread"
.Ltext_4:
    .asciz "src/std/gpu/module.lucb:66:9"
.Ltext_5:
    .asciz "GPU clear colors must be finite linear sRGB values in 0..1"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_gpu_unsupported
    .type lb_gpu_unsupported, %object
    .p2align 2
lb_gpu_unsupported:
    .zero 4

    .bss
    .globl lb_gpu_unavailable
    .type lb_gpu_unavailable, %object
    .p2align 2
lb_gpu_unavailable:
    .zero 4

    .bss
    .globl lb_gpu_12wrong_thread
    .type lb_gpu_12wrong_thread, %object
    .p2align 2
lb_gpu_12wrong_thread:
    .zero 4

    .bss
    .globl lb_gpu_closed
    .type lb_gpu_closed, %object
    .p2align 2
lb_gpu_closed:
    .zero 4

    .bss
    .globl lb_gpu_13invalid_color
    .type lb_gpu_13invalid_color, %object
    .p2align 2
lb_gpu_13invalid_color:
    .zero 4

    .bss
    .globl lb_gpu_failed
    .type lb_gpu_failed, %object
    .p2align 2
lb_gpu_failed:
    .zero 4

    .bss
    .globl lb_gpu_16execution_failed
    .type lb_gpu_16execution_failed, %object
    .p2align 2
lb_gpu_16execution_failed:
    .zero 4

    .bss
    .globl lb_gpu_17surface_too_large
    .type lb_gpu_17surface_too_large, %object
    .p2align 2
lb_gpu_17surface_too_large:
    .zero 4

    .bss
    .globl lb_gpu_16invalid_geometry
    .type lb_gpu_16invalid_geometry, %object
    .p2align 2
lb_gpu_16invalid_geometry:
    .zero 4

    .bss
    .globl lb_gpu_13command_limit
    .type lb_gpu_13command_limit, %object
    .p2align 2
lb_gpu_13command_limit:
    .zero 4

    .bss
    .globl lb_gpu_14frame_finished
    .type lb_gpu_14frame_finished, %object
    .p2align 2
lb_gpu_14frame_finished:
    .zero 4

    .bss
    .globl lb_gpu_12frame_in_use
    .type lb_gpu_12frame_in_use, %object
    .p2align 2
lb_gpu_12frame_in_use:
    .zero 4

    .bss
    .globl lb_gpu_13frame_resized
    .type lb_gpu_13frame_resized, %object
    .p2align 2
lb_gpu_13frame_resized:
    .zero 4


    .section .note.GNU-stack,"",%progbits
