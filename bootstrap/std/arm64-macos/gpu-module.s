    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_module_0init
_lb_gpu_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_gpu_unsupported@PAGE
    add x14, x14, _lb_gpu_unsupported@PAGEOFF
    movz x9, #91
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_unavailable@PAGE
    add x14, x14, _lb_gpu_unavailable@PAGEOFF
    movz x9, #92
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_12wrong_thread@PAGE
    add x14, x14, _lb_gpu_12wrong_thread@PAGEOFF
    movz x9, #93
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_closed@PAGE
    add x14, x14, _lb_gpu_closed@PAGEOFF
    movz x9, #94
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_13invalid_color@PAGE
    add x14, x14, _lb_gpu_13invalid_color@PAGEOFF
    movz x9, #95
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_failed@PAGE
    add x14, x14, _lb_gpu_failed@PAGEOFF
    movz x9, #96
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_16execution_failed@PAGE
    add x14, x14, _lb_gpu_16execution_failed@PAGEOFF
    movz x9, #97
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_17surface_too_large@PAGE
    add x14, x14, _lb_gpu_17surface_too_large@PAGEOFF
    movz x9, #98
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_16invalid_geometry@PAGE
    add x14, x14, _lb_gpu_16invalid_geometry@PAGEOFF
    movz x9, #99
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_13command_limit@PAGE
    add x14, x14, _lb_gpu_13command_limit@PAGEOFF
    movz x9, #100
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_14frame_finished@PAGE
    add x14, x14, _lb_gpu_14frame_finished@PAGEOFF
    movz x9, #114
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_12frame_in_use@PAGE
    add x14, x14, _lb_gpu_12frame_in_use@PAGEOFF
    movz x9, #115
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_gpu_13frame_resized@PAGE
    add x14, x14, _lb_gpu_13frame_resized@PAGEOFF
    movz x9, #116
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_supported
    .no_dead_strip _lb_gpu_supported
_lb_gpu_supported:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
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
    cbnz w14, L1_3
    b L1_9
L1_9:
    mov w15, w14
    b L1_4
L1_3:
    sub x14, x29, #32
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, L1_10
    b L1_5
L1_10:
    mov w14, w15
    b L1_6
L1_5:
    movz x10, #1
    cmp w14, w10
    cset w15, eq
    mov w14, w15
L1_6:
    and w15, w14, #255
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
    .globl _lb_gpu_12check_thread
    .no_dead_strip _lb_gpu_12check_thread
_lb_gpu_12check_thread:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    mov x0, #0
    bl _lb_gpu_supported
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L2_2
L2_1:
    sub x19, x29, #64
    adrp x14, _lb_gpu_unsupported@PAGE
    add x14, x14, _lb_gpu_unsupported@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_2@PAGE
    add x14, x14, l_text_2@PAGEOFF
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #45
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
L2_4:
    b L2_3
L2_2:
L2_3:
    bl _pthread_main_np
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L2_6
L2_5:
    sub x19, x29, #64
    adrp x14, _lb_gpu_12wrong_thread@PAGE
    add x14, x14, _lb_gpu_12wrong_thread@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #48
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
L2_8:
    b L2_7
L2_6:
L2_7:
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
    .globl _lb_gpu_14require_thread
    .no_dead_strip _lb_gpu_14require_thread
_lb_gpu_14require_thread:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x8, x29, #72
    bl _lb_gpu_12check_thread
    sub x15, x29, #72
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L3_4
    b L3_3
L3_4:
    sub x14, x29, #40
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L3_1
L3_3:
    b L3_2
L3_1:
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #88
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L3_2:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_11check_color
    .no_dead_strip _lb_gpu_11check_color
_lb_gpu_11check_color:
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
    cbnz w15, L4_4
    b L4_15
L4_15:
    mov w19, w15
    b L4_5
L4_4:
    movz x9, #16368, lsl #48
    fmov d26, x9
    fcmp d24, d26
    cset w19, ls
L4_5:
    and w15, w19, #255
    cbnz w15, L4_6
    b L4_16
L4_16:
    mov w19, w15
    b L4_7
L4_6:
    add x15, x14, #8
    ldr d24, [x15]
    fcmp d24, d25
    cset w19, ge
L4_7:
    and w15, w19, #255
    cbnz w15, L4_8
    b L4_17
L4_17:
    mov w19, w15
    b L4_9
L4_8:
    add x15, x14, #8
    ldr d24, [x15]
    movz x9, #16368, lsl #48
    fmov d26, x9
    fcmp d24, d26
    cset w19, ls
L4_9:
    and w15, w19, #255
    cbnz w15, L4_10
    b L4_18
L4_18:
    mov w19, w15
    b L4_11
L4_10:
    add x15, x14, #16
    ldr d24, [x15]
    fcmp d24, d25
    cset w19, ge
L4_11:
    and w15, w19, #255
    cbnz w15, L4_12
    b L4_19
L4_19:
    mov w14, w15
    b L4_13
L4_12:
    add x15, x14, #16
    ldr d24, [x15]
    movz x9, #16368, lsl #48
    fmov d25, x9
    fcmp d24, d25
    cset w15, ls
    mov w14, w15
L4_13:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    b.ne L4_2
L4_1:
    sub x19, x29, #64
    adrp x14, _lb_gpu_13invalid_color@PAGE
    add x14, x14, _lb_gpu_13invalid_color@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #58
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
L4_14:
    b L4_3
L4_2:
L4_3:
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
    .quad _lb_gpu_module_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/gpu/module.lucb:38:5"
l_text_2:
    .asciz "no GPU backend is implemented for this target"
l_text_3:
    .asciz "GPU operations currently require the main thread"
l_text_4:
    .asciz "GPU destruction requires the main thread"
l_text_5:
    .asciz "src/std/gpu/module.lucb:67:9"
l_text_6:
    .asciz "GPU clear colors must be finite linear sRGB values in 0..1"

    .section __DATA,__const
    .p2align 3
    .globl _lb_gpu_unsupported
    .no_dead_strip _lb_gpu_unsupported
    .zerofill __DATA,__bss,_lb_gpu_unsupported,4,2
    .globl _lb_gpu_unavailable
    .no_dead_strip _lb_gpu_unavailable
    .zerofill __DATA,__bss,_lb_gpu_unavailable,4,2
    .globl _lb_gpu_12wrong_thread
    .no_dead_strip _lb_gpu_12wrong_thread
    .zerofill __DATA,__bss,_lb_gpu_12wrong_thread,4,2
    .globl _lb_gpu_closed
    .no_dead_strip _lb_gpu_closed
    .zerofill __DATA,__bss,_lb_gpu_closed,4,2
    .globl _lb_gpu_13invalid_color
    .no_dead_strip _lb_gpu_13invalid_color
    .zerofill __DATA,__bss,_lb_gpu_13invalid_color,4,2
    .globl _lb_gpu_failed
    .no_dead_strip _lb_gpu_failed
    .zerofill __DATA,__bss,_lb_gpu_failed,4,2
    .globl _lb_gpu_16execution_failed
    .no_dead_strip _lb_gpu_16execution_failed
    .zerofill __DATA,__bss,_lb_gpu_16execution_failed,4,2
    .globl _lb_gpu_17surface_too_large
    .no_dead_strip _lb_gpu_17surface_too_large
    .zerofill __DATA,__bss,_lb_gpu_17surface_too_large,4,2
    .globl _lb_gpu_16invalid_geometry
    .no_dead_strip _lb_gpu_16invalid_geometry
    .zerofill __DATA,__bss,_lb_gpu_16invalid_geometry,4,2
    .globl _lb_gpu_13command_limit
    .no_dead_strip _lb_gpu_13command_limit
    .zerofill __DATA,__bss,_lb_gpu_13command_limit,4,2
    .globl _lb_gpu_14frame_finished
    .no_dead_strip _lb_gpu_14frame_finished
    .zerofill __DATA,__bss,_lb_gpu_14frame_finished,4,2
    .globl _lb_gpu_12frame_in_use
    .no_dead_strip _lb_gpu_12frame_in_use
    .zerofill __DATA,__bss,_lb_gpu_12frame_in_use,4,2
    .globl _lb_gpu_13frame_resized
    .no_dead_strip _lb_gpu_13frame_resized
    .zerofill __DATA,__bss,_lb_gpu_13frame_resized,4,2

.subsections_via_symbols
