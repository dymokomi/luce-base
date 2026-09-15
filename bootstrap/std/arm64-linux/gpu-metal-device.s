    .text

    .p2align 2
    .globl lb_gpu_12metal_device_0init
    .type lb_gpu_12metal_device_0init, %function
lb_gpu_12metal_device_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_12metal_device_0init, .-lb_gpu_12metal_device_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_12metal_device_0init

    .section .rodata
.Ltext_0:
    .asciz "null_foreign"
.Ltext_1:
    .asciz "src/std/gpu/metal/device.lucb:6:5"
.Ltext_2:
    .asciz "memory.unset"
.Ltext_3:
    .asciz "src/std/gpu/metal/device.lucb:8:5"
.Ltext_4:
    .asciz "memory.exhausted"
.Ltext_5:
    .asciz "no Metal device is available"
.Ltext_6:
    .asciz "newCommandQueue"
.Ltext_7:
    .asciz "could not create a Metal command queue"
.Ltext_8:
    .asciz "unreachable"
.Ltext_9:
    .asciz "src/std/gpu/metal/device.lucb:13:5"
.Ltext_10:
    .asciz "src/std/gpu/metal/device.lucb:16:5"
.Ltext_11:
    .asciz "release"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
