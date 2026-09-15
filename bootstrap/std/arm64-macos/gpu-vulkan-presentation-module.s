    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_26vulkan_presentation_module_0init
_lb_gpu_26vulkan_presentation_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_30vulkan_presentation_extensions
    .no_dead_strip _lb_gpu_30vulkan_presentation_extensions
_lb_gpu_30vulkan_presentation_extensions:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x19, x29, #88
    add x14, x19, #16
    adrp x15, _lb_gpu_unavailable@PAGE
    add x15, x15, _lb_gpu_unavailable@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x20, x29, #104
    str x15, [x20]
    add x15, x20, #8
    movz x9, #47
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_1:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_27vulkan_presentation_support
    .no_dead_strip _lb_gpu_27vulkan_presentation_support
_lb_gpu_27vulkan_presentation_support:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str w1, [x16]
    mov x9, #0
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_27vulkan_presentation_surface
    .no_dead_strip _lb_gpu_27vulkan_presentation_surface
_lb_gpu_27vulkan_presentation_surface:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_gpu_unavailable@PAGE
    add x15, x15, _lb_gpu_unavailable@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x20, x29, #128
    str x15, [x20]
    add x15, x20, #8
    movz x9, #47
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_1:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_26vulkan_presentation_module_0init

    .section __TEXT,__const
l_text_0:
    .asciz "Vulkan presentation is unavailable on this host"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/gpu/vulkan/presentation/module.lucb:7:5"
l_text_3:
    .asciz "src/std/gpu/vulkan/presentation/module.lucb:12:5"
l_text_4:
    .asciz "src/std/gpu/vulkan/presentation/module.lucb:17:5"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
