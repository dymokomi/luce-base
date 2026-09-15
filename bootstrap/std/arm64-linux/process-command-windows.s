    .text

    .p2align 2
    .globl lb_process_15command_windows_0init
    .type lb_process_15command_windows_0init, %function
lb_process_15command_windows_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_process_15command_windows_0init, .-lb_process_15command_windows_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_process_15command_windows_0init

    .section .rodata
.Ltext_0:
    .asciz "a command job could not be created"
.Ltext_1:
    .asciz "the command could not enter its process job"
.Ltext_2:
    .asciz "command cancelled"
.Ltext_3:
    .asciz "waiting for the command failed"
.Ltext_4:
    .asciz "the command output cannot be measured"
.Ltext_5:
    .asciz "src/std/process/command/windows.lucb:40:5"
.Ltext_6:
    .asciz "the command exceeded its output limit"
.Ltext_7:
    .asciz "the command output cannot be positioned"
.Ltext_8:
    .asciz "src/std/process/command/windows.lucb:49:9"
.Ltext_9:
    .asciz "src/std/process/command/windows.lucb:50:9"
.Ltext_10:
    .asciz "the command output cannot be read"
.Ltext_11:
    .asciz "src/std/process/command/windows.lucb:52:9"
.Ltext_12:
    .asciz "index out of bounds"
.Ltext_13:
    .asciz "src/std/process/command/windows.lucb:53:9"
.Ltext_14:
    .asciz "src/std/process/command/windows.lucb:62:5"
.Ltext_15:
    .asciz "the command capture path is unavailable"
.Ltext_16:
    .asciz "src/std/process/command/windows.lucb:65:5"
.Ltext_17:
    .asciz "null_foreign"
.Ltext_18:
    .asciz "the command capture reader could not be opened"
.Ltext_19:
    .asciz "unreachable"
.Ltext_20:
    .asciz "src/std/process/command/windows.lucb:68:5"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
