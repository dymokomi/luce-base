    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_process_15command_windows_0init
_lb_process_15command_windows_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_process_15command_windows_0init

    .section __TEXT,__const
l_text_0:
    .asciz "a command job could not be created"
l_text_1:
    .asciz "the command could not enter its process job"
l_text_2:
    .asciz "command cancelled"
l_text_3:
    .asciz "waiting for the command failed"
l_text_4:
    .asciz "the command output cannot be measured"
l_text_5:
    .asciz "src/std/process/command/windows.lucb:40:5"
l_text_6:
    .asciz "the command exceeded its output limit"
l_text_7:
    .asciz "the command output cannot be positioned"
l_text_8:
    .asciz "src/std/process/command/windows.lucb:49:9"
l_text_9:
    .asciz "src/std/process/command/windows.lucb:50:9"
l_text_10:
    .asciz "the command output cannot be read"
l_text_11:
    .asciz "src/std/process/command/windows.lucb:52:9"
l_text_12:
    .asciz "index out of bounds"
l_text_13:
    .asciz "src/std/process/command/windows.lucb:53:9"
l_text_14:
    .asciz "src/std/process/command/windows.lucb:62:5"
l_text_15:
    .asciz "the command capture path is unavailable"
l_text_16:
    .asciz "src/std/process/command/windows.lucb:65:5"
l_text_17:
    .asciz "null_foreign"
l_text_18:
    .asciz "the command capture reader could not be opened"
l_text_19:
    .asciz "unreachable"
l_text_20:
    .asciz "src/std/process/command/windows.lucb:68:5"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
