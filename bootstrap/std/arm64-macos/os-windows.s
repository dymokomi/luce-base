    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_os_windows_0init
_lb_os_windows_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_os_windows_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/os/windows.lucb:30:5"
l_text_1:
    .asciz "src/std/os/windows.lucb:33:5"
l_text_2:
    .asciz "src/std/os/windows.lucb:38:9"
l_text_3:
    .asciz "src/std/os/windows.lucb:41:5"
l_text_4:
    .asciz "src/std/os/windows.lucb:42:5"
l_text_5:
    .asciz "index out of bounds"
l_text_6:
    .asciz "unreachable"
l_text_7:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_8:
    .asciz "memory.unset"
l_text_9:
    .asciz "src/std/os/windows.lucb:50:9"
l_text_10:
    .asciz "memory.exhausted"
l_text_11:
    .asciz "src/std/os/windows.lucb:54:13"
l_text_12:
    .asciz "src/std/os/windows.lucb:56:13"
l_text_13:
    .asciz "src/std/os/windows.lucb:57:9"
l_text_14:
    .asciz "the working directory cannot be read"
l_text_15:
    .asciz "src/std/os/windows.lucb:58:5"
l_text_16:
    .asciz "src/std/os/windows.lucb:65:9"
l_text_17:
    .asciz "src/std/os/windows.lucb:69:13"
l_text_18:
    .asciz "src/std/os/windows.lucb:71:13"
l_text_19:
    .asciz "src/std/os/windows.lucb:72:9"
l_text_20:
    .asciz "the executable path cannot be read"
l_text_21:
    .asciz "src/std/os/windows.lucb:73:5"
l_text_22:
    .asciz "null_foreign"
l_text_23:
    .asciz "src/std/os/windows.lucb:76:5"
l_text_24:
    .asciz "src/std/os/windows.lucb:88:5"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
