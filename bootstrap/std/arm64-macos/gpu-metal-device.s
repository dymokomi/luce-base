    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_12metal_device_0init
_lb_gpu_12metal_device_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_17metal_device_open
    .no_dead_strip _lb_gpu_17metal_device_open
_lb_gpu_17metal_device_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    str x22, [sp, #184]
    str x23, [sp, #176]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L1_1
    b L1_2
L1_2:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L1_1:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x20, x29, #120
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #160
    ldr x14, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    cbnz x15, L1_3
    b L1_4
L1_4:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L1_3:
    ldr x20, [x15]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #16
    movz x2, #8
    sub x8, x29, #184
    ldr x17, [sp], #16
    blr x17
    sub x22, x29, #184
    add x20, x22, #16
    ldrb w20, [x20]
    cbnz w20, L1_5
    b L1_6
L1_6:
    add x14, x21, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    b L1_7
L1_5:
    ldr x20, [x22]
    sub x23, x29, #200
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x10, x23
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    str x20, [x21]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
L1_7:
    add x14, x21, #32
    ldrb w14, [x14]
    cbnz w14, L1_9
    b L1_8
L1_9:
    add x14, x21, #8
    sub x20, x29, #104
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_10:
L1_8:
    ldr x20, [x21]
    bl _MTLCreateSystemDefaultDevice
    mov x14, x0
    cbnz x14, L1_11
    b L1_12
L1_11:
    b L1_13
L1_12:
    sub x21, x29, #104
    add x14, x21, #8
    adrp x15, _lb_gpu_unavailable@PAGE
    add x15, x15, _lb_gpu_unavailable@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    sub x22, x29, #216
    str x15, [x22]
    add x15, x22, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_gpu_20metal_device_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_14:
L1_13:
    str x14, [x20]
    add x22, x20, #8
    mov x0, x14
    bl _lb_gpu_14metal_required
    mov x21, x0
    adrp x15, l_text_6@PAGE
    add x15, x15, l_text_6@PAGEOFF
    mov x0, x15
    bl _lb_gpu_9metal_sel
    mov x15, x0
    mov x0, x21
    mov x1, x15
    bl _objc_msgSend
    mov x15, x0
    cbnz x15, L1_15
    b L1_16
L1_15:
    b L1_17
L1_16:
    sub x21, x29, #104
    add x14, x21, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    sub x22, x29, #232
    str x15, [x22]
    add x15, x22, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_gpu_20metal_device_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_18:
L1_17:
    str x15, [x22]
    sub x21, x29, #104
    str x20, [x21]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_19:
    mov x0, x14
    bl _objc_autoreleasePoolPop
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_20metal_device_destroy
    .no_dead_strip _lb_gpu_20metal_device_destroy
_lb_gpu_20metal_device_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    sub x16, x29, #56
    str x0, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L2_1
    b L2_2
L2_2:
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_1:
    sub x14, x29, #56
    ldr x20, [x14]
    add x14, x20, #8
    ldr x21, [x14]
    cbnz x21, L2_6
    b L2_4
L2_6:
L2_3:
    adrp x14, l_text_11@PAGE
    add x14, x14, l_text_11@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L2_5
L2_4:
L2_5:
    ldr x21, [x20]
    cbnz x21, L2_10
    b L2_8
L2_10:
L2_7:
    adrp x14, l_text_11@PAGE
    add x14, x14, l_text_11@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L2_9
L2_8:
L2_9:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #72
    str x20, [x15]
    add x21, x15, #8
    movz x9, #16
    str x9, [x21]
    ldr x21, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L2_12
    b L2_11
L2_12:
    add x20, x14, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_11:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_12metal_device_0init

    .section __TEXT,__const
l_text_0:
    .asciz "null_foreign"
l_text_1:
    .asciz "src/std/gpu/metal/device.lucb:6:5"
l_text_2:
    .asciz "memory.unset"
l_text_3:
    .asciz "src/std/gpu/metal/device.lucb:8:5"
l_text_4:
    .asciz "memory.exhausted"
l_text_5:
    .asciz "no Metal device is available"
l_text_6:
    .asciz "newCommandQueue"
l_text_7:
    .asciz "could not create a Metal command queue"
l_text_8:
    .asciz "unreachable"
l_text_9:
    .asciz "src/std/gpu/metal/device.lucb:13:5"
l_text_10:
    .asciz "src/std/gpu/metal/device.lucb:16:5"
l_text_11:
    .asciz "release"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
