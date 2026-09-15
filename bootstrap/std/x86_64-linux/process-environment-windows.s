    .text

    .p2align 4
    .globl lb_process_19environment_windows_0init
    .type lb_process_19environment_windows_0init, @function
lb_process_19environment_windows_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_process_19environment_windows_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/process/environment/windows.lucb:10:5"
.Ltext_1:
    .asciz "src/std/process/environment/windows.lucb:11:9"
.Ltext_2:
    .asciz "src/std/process/environment/windows.lucb:12:5"
.Ltext_3:
    .asciz "index out of bounds"
.Ltext_4:
    .asciz "unreachable"
.Ltext_5:
    .asciz "src/std/process/environment/windows.lucb:17:5"
.Ltext_6:
    .asciz "the inherited environment is unavailable"
.Ltext_7:
    .asciz "src/std/process/environment/windows.lucb:25:9"
.Ltext_8:
    .asciz "src/std/process/environment/windows.lucb:27:13"
.Ltext_9:
    .asciz "src/std/process/environment/windows.lucb:28:9"
.Ltext_10:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_11:
    .asciz "memory.unset"
.Ltext_12:
    .asciz "src/std/process/environment/windows.lucb:29:5"
.Ltext_13:
    .asciz "memory.exhausted"
.Ltext_14:
    .asciz "src/std/process/environment/windows.lucb:34:9"
.Ltext_15:
    .asciz "src/std/process/environment/windows.lucb:35:9"
.Ltext_16:
    .asciz "src/std/process/environment/windows.lucb:36:9"
.Ltext_17:
    .asciz "src/std/process/environment/windows.lucb:38:13"
.Ltext_18:
    .asciz "an environment override repeats a name"
.Ltext_19:
    .asciz "src/std/process/environment/windows.lucb:39:17"
.Ltext_20:
    .asciz "the environment is too large"
.Ltext_21:
    .asciz "src/std/process/environment/windows.lucb:40:5"
.Ltext_22:
    .asciz "src/std/process/environment/windows.lucb:41:5"
.Ltext_23:
    .asciz "src/std/process/environment/windows.lucb:48:13"
.Ltext_24:
    .asciz "src/std/process/environment/windows.lucb:49:9"
.Ltext_25:
    .asciz "src/std/process/environment/windows.lucb:50:9"
.Ltext_26:
    .asciz "src/std/process/environment/windows.lucb:53:13"
.Ltext_27:
    .asciz "src/std/process/environment/windows.lucb:57:13"
.Ltext_28:
    .asciz "src/std/process/environment/windows.lucb:58:13"
.Ltext_29:
    .asciz "src/std/process/environment/windows.lucb:60:9"
.Ltext_30:
    .asciz "src/std/process/environment/windows.lucb:61:9"
.Ltext_31:
    .asciz "src/std/process/environment/windows.lucb:63:9"
.Ltext_32:
    .asciz "src/std/process/environment/windows.lucb:65:9"
.Ltext_33:
    .asciz "src/std/process/environment/windows.lucb:66:13"
.Ltext_34:
    .asciz "src/std/process/environment/windows.lucb:67:13"
.Ltext_35:
    .asciz "src/std/process/environment/windows.lucb:68:9"
.Ltext_36:
    .asciz "src/std/process/environment/windows.lucb:71:9"
.Ltext_37:
    .asciz "src/std/process/environment/windows.lucb:72:5"
.Ltext_38:
    .asciz "src/std/process/environment/windows.lucb:75:9"
.Ltext_39:
    .asciz "src/std/process/environment/windows.lucb:76:13"
.Ltext_40:
    .asciz "src/std/process/environment/windows.lucb:77:13"
.Ltext_41:
    .asciz "src/std/process/environment/windows.lucb:78:5"
.Ltext_42:
    .asciz "src/std/process/environment/windows.lucb:79:5"
.Ltext_43:
    .asciz "src/std/process/environment/windows.lucb:83:9"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
