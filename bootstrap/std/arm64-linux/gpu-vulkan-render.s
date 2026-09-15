    .text

    .p2align 2
    .globl lb_gpu_13vulkan_render_0init
    .type lb_gpu_13vulkan_render_0init, %function
lb_gpu_13vulkan_render_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_13vulkan_render_0init, .-lb_gpu_13vulkan_render_0init

    .p2align 2
    .weak lb_memory_copy_0g1_u32
    .type lb_memory_copy_0g1_u32, %function
lb_memory_copy_0g1_u32:
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
    adrp x14, .Ltext_26
    add x14, x14, :lo12:.Ltext_26
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_34
    add x14, x14, :lo12:.Ltext_34
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
    mov x9, x19
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_37
    add x1, x1, :lo12:.Ltext_37
    bl lb_core_7trap_at
1:
    mov x12, x9
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl memcpy
    mov x14, x0
    cbnz x14, .L1_9
    b .L1_10
.L1_10:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_36
    add x1, x1, :lo12:.Ltext_36
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

    .size lb_memory_copy_0g1_u32, .-lb_memory_copy_0g1_u32

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
    cbnz w14, .L2_11
    b .L2_4
.L2_11:
    mov w15, w14
    b .L2_5
.L2_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
.L2_5:
    and w14, w15, #255
    cbnz w14, .L2_1
    b .L2_2
.L2_1:
    adrp x14, .Ltext_26
    add x14, x14, :lo12:.Ltext_26
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_34
    add x14, x14, :lo12:.Ltext_34
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L2_3
.L2_2:
.L2_3:
    mov x10, #0
    cmp x19, x10
    b.ls .L2_7
.L2_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl memcpy
    mov x14, x0
    cbnz x14, .L2_9
    b .L2_10
.L2_10:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_36
    add x1, x1, :lo12:.Ltext_36
    bl lb_core_7trap_at
.L2_9:
    b .L2_8
.L2_7:
.L2_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_copy_0g1_u8, .-lb_memory_copy_0g1_u8

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_13vulkan_render_0init

    .section .rodata
.Ltext_0:
    .asciz "src/std/gpu/vulkan/render.lucb:17:5"
.Ltext_1:
    .asciz "src/std/gpu/vulkan/render.lucb:20:5"
.Ltext_2:
    .asciz "src/std/gpu/vulkan/render.lucb:21:5"
.Ltext_3:
    .asciz "division by zero"
.Ltext_4:
    .asciz "src/std/gpu/vulkan/render.lucb:22:5"
.Ltext_5:
    .asciz "the Vulkan vertex buffer could not be created"
.Ltext_6:
    .asciz "Vulkan vertex memory could not be bound"
.Ltext_7:
    .asciz "Vulkan vertex memory could not be mapped"
.Ltext_8:
    .asciz "Vulkan returned an empty memory mapping"
.Ltext_9:
    .asciz "src/std/gpu/vulkan/render.lucb:33:5"
.Ltext_10:
    .asciz "Vulkan coverage descriptors could not be created"
.Ltext_11:
    .asciz "Vulkan coverage descriptor could not be allocated"
.Ltext_12:
    .asciz "unreachable"
.Ltext_13:
    .asciz "src/std/gpu/vulkan/render.lucb:47:5"
.Ltext_14:
    .asciz "a previous Vulkan submission failed; recreate the surface"
.Ltext_15:
    .asciz "Vulkan presentation supports at most 16384 pixels per dimension"
.Ltext_16:
    .asciz "src/std/gpu/vulkan/render.lucb:62:5"
.Ltext_17:
    .asciz "src/std/gpu/vulkan/render.lucb:63:5"
.Ltext_18:
    .asciz "the Vulkan command pool could not be reset"
.Ltext_19:
    .asciz "Vulkan could not acquire a presentation image"
.Ltext_20:
    .asciz "Vulkan command recording could not begin"
.Ltext_21:
    .asciz "src/std/gpu/vulkan/render.lucb:87:5"
.Ltext_22:
    .asciz "src/std/gpu/vulkan/render.lucb:88:5"
.Ltext_23:
    .asciz "src/std/gpu/vulkan/render.lucb:89:5"
.Ltext_24:
    .asciz "src/std/gpu/vulkan/render.lucb:97:9"
.Ltext_25:
    .asciz "src/std/gpu/vulkan/render.lucb:99:9"
.Ltext_26:
    .asciz "index out of bounds"
.Ltext_27:
    .asciz "src/std/gpu/vulkan/render.lucb:102:13"
.Ltext_28:
    .asciz "Vulkan command recording could not finish"
.Ltext_29:
    .asciz "src/std/gpu/vulkan/render.lucb:122:5"
.Ltext_30:
    .asciz "Vulkan command submission failed"
.Ltext_31:
    .asciz "Vulkan execution failed"
.Ltext_32:
    .asciz "Vulkan presentation failed"
.Ltext_33:
    .asciz "src/std/gpu/vulkan/render.lucb:135:5"
.Ltext_34:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_35:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_36:
    .asciz "null_foreign"
.Ltext_37:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
