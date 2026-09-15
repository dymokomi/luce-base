    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_13vulkan_render_0init
_lb_gpu_13vulkan_render_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_copy_0g1_u32
    .weak_definition _lb_memory_copy_0g1_u32
    .no_dead_strip _lb_memory_copy_0g1_u32
_lb_memory_copy_0g1_u32:
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
    adrp x14, l_text_26@PAGE
    add x14, x14, l_text_26@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_34@PAGE
    add x14, x14, l_text_34@PAGEOFF
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
    mov x9, x19
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x12, x9
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _memcpy
    mov x14, x0
    cbnz x14, L1_9
    b L1_10
L1_10:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
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

    .p2align 2
    .globl _lb_memory_copy_0g1_u8
    .weak_definition _lb_memory_copy_0g1_u8
    .no_dead_strip _lb_memory_copy_0g1_u8
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
    cbnz w14, L2_11
    b L2_4
L2_11:
    mov w15, w14
    b L2_5
L2_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L2_5:
    and w14, w15, #255
    cbnz w14, L2_1
    b L2_2
L2_1:
    adrp x14, l_text_26@PAGE
    add x14, x14, l_text_26@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_34@PAGE
    add x14, x14, l_text_34@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L2_3
L2_2:
L2_3:
    mov x10, #0
    cmp x19, x10
    b.ls L2_7
L2_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L2_9
    b L2_10
L2_10:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
L2_9:
    b L2_8
L2_7:
L2_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_13vulkan_render_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/gpu/vulkan/render.lucb:17:5"
l_text_1:
    .asciz "src/std/gpu/vulkan/render.lucb:20:5"
l_text_2:
    .asciz "src/std/gpu/vulkan/render.lucb:21:5"
l_text_3:
    .asciz "division by zero"
l_text_4:
    .asciz "src/std/gpu/vulkan/render.lucb:22:5"
l_text_5:
    .asciz "the Vulkan vertex buffer could not be created"
l_text_6:
    .asciz "Vulkan vertex memory could not be bound"
l_text_7:
    .asciz "Vulkan vertex memory could not be mapped"
l_text_8:
    .asciz "Vulkan returned an empty memory mapping"
l_text_9:
    .asciz "src/std/gpu/vulkan/render.lucb:33:5"
l_text_10:
    .asciz "Vulkan coverage descriptors could not be created"
l_text_11:
    .asciz "Vulkan coverage descriptor could not be allocated"
l_text_12:
    .asciz "unreachable"
l_text_13:
    .asciz "src/std/gpu/vulkan/render.lucb:47:5"
l_text_14:
    .asciz "a previous Vulkan submission failed; recreate the surface"
l_text_15:
    .asciz "Vulkan presentation supports at most 16384 pixels per dimension"
l_text_16:
    .asciz "src/std/gpu/vulkan/render.lucb:62:5"
l_text_17:
    .asciz "src/std/gpu/vulkan/render.lucb:63:5"
l_text_18:
    .asciz "the Vulkan command pool could not be reset"
l_text_19:
    .asciz "Vulkan could not acquire a presentation image"
l_text_20:
    .asciz "Vulkan command recording could not begin"
l_text_21:
    .asciz "src/std/gpu/vulkan/render.lucb:87:5"
l_text_22:
    .asciz "src/std/gpu/vulkan/render.lucb:88:5"
l_text_23:
    .asciz "src/std/gpu/vulkan/render.lucb:89:5"
l_text_24:
    .asciz "src/std/gpu/vulkan/render.lucb:97:9"
l_text_25:
    .asciz "src/std/gpu/vulkan/render.lucb:99:9"
l_text_26:
    .asciz "index out of bounds"
l_text_27:
    .asciz "src/std/gpu/vulkan/render.lucb:102:13"
l_text_28:
    .asciz "Vulkan command recording could not finish"
l_text_29:
    .asciz "src/std/gpu/vulkan/render.lucb:122:5"
l_text_30:
    .asciz "Vulkan command submission failed"
l_text_31:
    .asciz "Vulkan execution failed"
l_text_32:
    .asciz "Vulkan presentation failed"
l_text_33:
    .asciz "src/std/gpu/vulkan/render.lucb:135:5"
l_text_34:
    .asciz "src/std/memory.lucb:328:9"
l_text_35:
    .asciz "src/std/memory.lucb:330:9"
l_text_36:
    .asciz "null_foreign"
l_text_37:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
