    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_device_0init
_lb_gpu_device_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Device_open
    .no_dead_strip _lb_gpu_Device_open
_lb_gpu_Device_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #320]
    str x20, [sp, #312]
    str x21, [sp, #304]
    str x22, [sp, #296]
    str x23, [sp, #288]
    str x24, [sp, #280]
    sub x16, x29, #128
    str w0, [x16]
    sub x8, x29, #160
    bl _lb_gpu_12check_thread
    sub x15, x29, #160
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    sub x19, x29, #112
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    sub x14, x29, #128
    ldrb w14, [x14]
    mov x0, x14
    sub x8, x29, #200
    bl _lb_gpu_14select_backend
    sub x15, x29, #200
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_5
    b L1_4
L1_5:
    add x14, x15, #8
    sub x19, x29, #112
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
L1_4:
    ldrb w14, [x15]
    and w19, w14, #255
    mov x0, x19
    sub x8, x29, #240
    bl _lb_gpu_19backend_device_open
    sub x20, x29, #240
    add x14, x20, #32
    ldrb w14, [x14]
    cbnz w14, L1_8
    b L1_7
L1_8:
    add x14, x20, #8
    sub x19, x29, #112
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_9:
L1_7:
    ldr x21, [x20]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x22, x29, #256
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #296
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L1_10
    b L1_11
L1_11:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L1_10:
    ldr x20, [x15]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #24
    movz x2, #8
    sub x8, x29, #320
    ldr x17, [sp], #16
    blr x17
    sub x22, x29, #320
    add x20, x22, #16
    ldrb w20, [x20]
    cbnz w20, L1_12
    b L1_13
L1_13:
    add x14, x23, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #32
    movz x9, #1
    strb w9, [x14]
    b L1_14
L1_12:
    ldr x20, [x22]
    sub x24, x29, #344
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    strb w19, [x24]
    add x14, x24, #8
    str x21, [x14]
    add x14, x24, #16
    movz x9, #1
    str x9, [x14]
    mov x10, x24
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    str x20, [x23]
    add x14, x23, #32
    mov x9, #0
    strb w9, [x14]
L1_14:
    add x14, x23, #32
    ldrb w14, [x14]
    cbnz w14, L1_16
    b L1_15
L1_16:
    add x14, x23, #8
    sub x20, x29, #112
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
    mov x1, x21
    bl _lb_gpu_22backend_device_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_17:
L1_15:
    ldr x19, [x23]
    sub x20, x29, #352
    mov x11, x20
    str xzr, [x11, #0]
    str x19, [x20]
    sub x19, x29, #112
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_18:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Device_backend
    .no_dead_strip _lb_gpu_Device_backend
_lb_gpu_Device_backend:
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
    bl _lb_gpu_Device_checked
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
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
L2_3:
L2_1:
    ldr x14, [x15]
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
L2_4:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Device_destroy
    .no_dead_strip _lb_gpu_Device_destroy
_lb_gpu_Device_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, L3_1
    b L3_2
L3_1:
    b L3_3
L3_2:
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
L3_3:
    bl _lb_gpu_14require_thread
    mov x9, #0
    str x9, [x19]
    mov x0, x20
    bl _lb_gpu_14release_device
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Device_checked
    .no_dead_strip _lb_gpu_Device_checked
_lb_gpu_Device_checked:
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
    bl _lb_gpu_12check_thread
    sub x15, x29, #120
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L4_2
    b L4_1
L4_2:
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
L4_3:
L4_1:
    ldr x14, [x19]
    cbnz x14, L4_4
    b L4_5
L4_4:
    b L4_6
L4_5:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_gpu_closed@PAGE
    add x15, x15, _lb_gpu_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_6@PAGE
    add x15, x15, l_text_6@PAGEOFF
    sub x20, x29, #136
    str x15, [x20]
    add x15, x20, #8
    movz x9, #24
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
L4_7:
L4_6:
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
L4_8:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_14release_device
    .no_dead_strip _lb_gpu_14release_device
_lb_gpu_14release_device:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    add x14, x19, #16
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L5_2
L5_1:
    ldrb w14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    bl _lb_gpu_22backend_device_destroy
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #64
    str x19, [x15]
    add x20, x15, #8
    movz x9, #24
    str x9, [x20]
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L5_5
    b L5_4
L5_5:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L5_4:
    b L5_3
L5_2:
L5_3:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_device_0init

    .section __TEXT,__const
l_text_0:
    .asciz "memory.unset"
l_text_1:
    .asciz "src/std/gpu/device.lucb:13:9"
l_text_2:
    .asciz "memory.exhausted"
l_text_3:
    .asciz "unreachable"
l_text_4:
    .asciz "src/std/gpu/device.lucb:14:9"
l_text_5:
    .asciz "src/std/gpu/device.lucb:17:9"
l_text_6:
    .asciz "the GPU device is closed"
l_text_7:
    .asciz "src/std/gpu/device.lucb:27:9"
l_text_8:
    .asciz "src/std/gpu/device.lucb:35:5"
l_text_9:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
