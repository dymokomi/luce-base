    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_27vulkan_presentation_windows_0init
_lb_gpu_27vulkan_presentation_windows_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x14, x29, #32
    adrp x15, _lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME@PAGE
    add x15, x15, _lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME@PAGEOFF
    ldr x15, [x15]
    str x15, [x14]
    adrp x15, _lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME@PAGE
    add x15, x15, _lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME@PAGEOFF
    ldr x15, [x15]
    add x12, x14, #8
    str x15, [x12]
    adrp x15, _lb_gpu_25vulkan_windows_extensions@PAGE
    add x15, x15, _lb_gpu_25vulkan_windows_extensions@PAGEOFF
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_27vulkan_presentation_windows_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/gpu/vulkan/presentation/windows.lucb:8:5"
l_text_2:
    .asciz "null_foreign"
l_text_3:
    .asciz "src/std/gpu/vulkan/presentation/windows.lucb:11:5"
l_text_4:
    .asciz "the Vulkan Windows surface could not be created"
l_text_5:
    .asciz "src/std/gpu/vulkan/presentation/windows.lucb:15:5"

    .section __DATA,__const
    .p2align 3
    .globl _lb_gpu_25vulkan_windows_extensions
    .zerofill __DATA,__bss,_lb_gpu_25vulkan_windows_extensions,16,3

.subsections_via_symbols
