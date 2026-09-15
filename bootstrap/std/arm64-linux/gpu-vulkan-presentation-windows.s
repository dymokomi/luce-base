    .text

    .p2align 2
    .globl lb_gpu_27vulkan_presentation_windows_0init
    .type lb_gpu_27vulkan_presentation_windows_0init, %function
lb_gpu_27vulkan_presentation_windows_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x14, x29, #32
    adrp x15, lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME
    add x15, x15, :lo12:lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME
    ldr x15, [x15]
    str x15, [x14]
    adrp x15, lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME
    add x15, x15, :lo12:lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME
    ldr x15, [x15]
    add x12, x14, #8
    str x15, [x12]
    adrp x15, lb_gpu_25vulkan_windows_extensions
    add x15, x15, :lo12:lb_gpu_25vulkan_windows_extensions
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_27vulkan_presentation_windows_0init, .-lb_gpu_27vulkan_presentation_windows_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_27vulkan_presentation_windows_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/gpu/vulkan/presentation/windows.lucb:8:5"
.Ltext_2:
    .asciz "null_foreign"
.Ltext_3:
    .asciz "src/std/gpu/vulkan/presentation/windows.lucb:11:5"
.Ltext_4:
    .asciz "the Vulkan Windows surface could not be created"
.Ltext_5:
    .asciz "src/std/gpu/vulkan/presentation/windows.lucb:15:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_gpu_25vulkan_windows_extensions
    .type lb_gpu_25vulkan_windows_extensions, %object
    .p2align 3
lb_gpu_25vulkan_windows_extensions:
    .zero 16


    .section .note.GNU-stack,"",%progbits
