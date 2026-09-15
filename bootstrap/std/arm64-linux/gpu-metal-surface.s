    .text

    .p2align 2
    .globl lb_gpu_13metal_surface_0init
    .type lb_gpu_13metal_surface_0init, %function
lb_gpu_13metal_surface_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    movz x9, #16592, lsl #48
    fmov d24, x9
    adrp x14, lb_gpu_19metal_surface_limit
    add x14, x14, :lo12:lb_gpu_19metal_surface_limit
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_13metal_surface_0init, .-lb_gpu_13metal_surface_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_13metal_surface_0init

    .section .rodata
.Ltext_0:
    .asciz "null_foreign"
.Ltext_1:
    .asciz "src/std/gpu/metal/surface.lucb:14:5"
.Ltext_2:
    .asciz "memory.unset"
.Ltext_3:
    .asciz "src/std/gpu/metal/surface.lucb:17:5"
.Ltext_4:
    .asciz "memory.exhausted"
.Ltext_5:
    .asciz "CAMetalLayer"
.Ltext_6:
    .asciz "new"
.Ltext_7:
    .asciz "could not create a Metal presentation layer"
.Ltext_8:
    .asciz "setDevice:"
.Ltext_9:
    .asciz "setPixelFormat:"
.Ltext_10:
    .asciz "setFramebufferOnly:"
.Ltext_11:
    .asciz "setOpaque:"
.Ltext_12:
    .asciz "setDisplaySyncEnabled:"
.Ltext_13:
    .asciz "setAllowsNextDrawableTimeout:"
.Ltext_14:
    .asciz "setPresentsWithTransaction:"
.Ltext_15:
    .asciz "could not create the sRGB presentation color space"
.Ltext_16:
    .asciz "setColorspace:"
.Ltext_17:
    .asciz "setLayer:"
.Ltext_18:
    .asciz "setWantsLayer:"
.Ltext_19:
    .asciz "unreachable"
.Ltext_20:
    .asciz "src/std/gpu/metal/surface.lucb:36:5"
.Ltext_21:
    .asciz "src/std/gpu/metal/surface.lucb:39:5"
.Ltext_22:
    .asciz "waitUntilCompleted"
.Ltext_23:
    .asciz "status"
.Ltext_24:
    .asciz "release"
.Ltext_25:
    .asciz "Metal command execution failed; recreate the GPU surface"
.Ltext_26:
    .asciz "src/std/gpu/metal/surface.lucb:53:5"
.Ltext_27:
    .asciz "src/std/gpu/metal/surface.lucb:56:5"
.Ltext_28:
    .asciz "Metal presentation supports at most 16384 backing pixels per dimension"
.Ltext_29:
    .asciz "setContentsScale:"
.Ltext_30:
    .asciz "setDrawableSize:"
.Ltext_31:
    .asciz "nextDrawable"
.Ltext_32:
    .asciz "texture"
.Ltext_33:
    .asciz "Metal returned a drawable without a texture"
.Ltext_34:
    .asciz "MTLRenderPassDescriptor"
.Ltext_35:
    .asciz "renderPassDescriptor"
.Ltext_36:
    .asciz "could not create a Metal render pass"
.Ltext_37:
    .asciz "colorAttachments"
.Ltext_38:
    .asciz "objectAtIndexedSubscript:"
.Ltext_39:
    .asciz "setTexture:"
.Ltext_40:
    .asciz "setLoadAction:"
.Ltext_41:
    .asciz "setStoreAction:"
.Ltext_42:
    .asciz "setClearColor:"
.Ltext_43:
    .asciz "GPU drawing state was not initialized"
.Ltext_44:
    .asciz "src/std/gpu/metal/surface.lucb:87:9"
.Ltext_45:
    .asciz "depthAttachment"
.Ltext_46:
    .asciz "src/std/gpu/metal/surface.lucb:89:9"
.Ltext_47:
    .asciz "setClearDepth:"
.Ltext_48:
    .asciz "newBufferWithBytes:length:options:"
.Ltext_49:
    .asciz "src/std/gpu/metal/surface.lucb:93:9"
.Ltext_50:
    .asciz "could not upload GPU triangle data"
.Ltext_51:
    .asciz "src/std/gpu/metal/surface.lucb:97:9"
.Ltext_52:
    .asciz "could not upload GPU coverage"
.Ltext_53:
    .asciz "commandBuffer"
.Ltext_54:
    .asciz "could not create a Metal command buffer"
.Ltext_55:
    .asciz "renderCommandEncoderWithDescriptor:"
.Ltext_56:
    .asciz "could not create a Metal render encoder"
.Ltext_57:
    .asciz "missing GPU drawing state"
.Ltext_58:
    .asciz "src/std/gpu/metal/surface.lucb:101:9"
.Ltext_59:
    .asciz "endEncoding"
.Ltext_60:
    .asciz "presentDrawable:"
.Ltext_61:
    .asciz "retain"
.Ltext_62:
    .asciz "commit"
.Ltext_63:
    .asciz "src/std/gpu/metal/surface.lucb:108:5"
.Ltext_64:
    .asciz "src/std/gpu/metal/surface.lucb:111:5"
.Ltext_65:
    .asciz "layer"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_gpu_19metal_surface_limit
    .type lb_gpu_19metal_surface_limit, %object
    .p2align 3
lb_gpu_19metal_surface_limit:
    .zero 8


    .section .note.GNU-stack,"",%progbits
