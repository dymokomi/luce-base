    .text

    .p2align 2
    .globl lb_process_windows_0init
    .type lb_process_windows_0init, %function
lb_process_windows_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_process_windows_0init, .-lb_process_windows_0init

    .p2align 2
    .weak lb_process_15release_storage_0g1_u16
    .type lb_process_15release_storage_0g1_u16, %function
lb_process_15release_storage_0g1_u16:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #48
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #48
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls .L1_2
.L1_1:
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x12, x0
    sub x13, x29, #64
    ldr x19, [x14]
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_89
    add x0, x0, :lo12:.Ltext_89
    adrp x1, .Ltext_90
    add x1, x1, :lo12:.Ltext_90
    bl lb_core_7trap_at
1:
    mov x20, x9
    str x19, [x13]
    add x19, x13, #8
    str x20, [x19]
    ldr x19, [x12]
    add x12, x12, #8
    ldr x12, [x12]
    cbnz x12, .L1_5
    b .L1_4
.L1_5:
    add x14, x12, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x9, x13
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L1_4:
    b .L1_3
.L1_2:
.L1_3:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_process_15release_storage_0g1_u16, .-lb_process_15release_storage_0g1_u16

    .section .init_array,"aw"
    .p2align 3
    .quad lb_process_windows_0init

    .section .rodata
.Ltext_0:
    .asciz "src/std/process/windows.lucb:55:13"
.Ltext_1:
    .asciz "src/std/process/windows.lucb:56:13"
.Ltext_2:
    .asciz "src/std/process/windows.lucb:58:5"
.Ltext_3:
    .asciz "src/std/process/windows.lucb:59:5"
.Ltext_4:
    .asciz "src/std/process/windows.lucb:63:13"
.Ltext_5:
    .asciz "src/std/process/windows.lucb:65:9"
.Ltext_6:
    .asciz "src/std/process/windows.lucb:68:13"
.Ltext_7:
    .asciz "src/std/process/windows.lucb:69:13"
.Ltext_8:
    .asciz "src/std/process/windows.lucb:70:9"
.Ltext_9:
    .asciz "src/std/process/windows.lucb:71:9"
.Ltext_10:
    .asciz "src/std/process/windows.lucb:73:5"
.Ltext_11:
    .asciz "src/std/process/windows.lucb:75:9"
.Ltext_12:
    .asciz "src/std/process/windows.lucb:76:9"
.Ltext_13:
    .asciz "src/std/process/windows.lucb:77:5"
.Ltext_14:
    .asciz "src/std/process/windows.lucb:78:5"
.Ltext_15:
    .asciz "null_foreign"
.Ltext_16:
    .asciz "src/std/process/windows.lucb:82:5"
.Ltext_17:
    .asciz "a child stream could not be inherited"
.Ltext_18:
    .asciz "a child stream has no handle"
.Ltext_19:
    .asciz "unreachable"
.Ltext_20:
    .asciz "src/std/process/windows.lucb:85:5"
.Ltext_21:
    .asciz "a child stream could not be measured"
.Ltext_22:
    .asciz "a child stream could not be read"
.Ltext_23:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_24:
    .asciz "memory.unset"
.Ltext_25:
    .asciz "src/std/process/windows.lucb:93:5"
.Ltext_26:
    .asciz "memory.exhausted"
.Ltext_27:
    .asciz "src/std/process/windows.lucb:95:9"
.Ltext_28:
    .asciz "src/std/process/windows.lucb:97:5"
.Ltext_29:
    .asciz "src/std/process/windows.lucb:102:5"
.Ltext_30:
    .asciz "src/std/process/windows.lucb:103:5"
.Ltext_31:
    .asciz "the child temporary directory is unavailable"
.Ltext_32:
    .asciz "0123456789abcdef"
.Ltext_33:
    .asciz "src/std/process/windows.lucb:111:13"
.Ltext_34:
    .asciz "shift count out of range"
.Ltext_35:
    .asciz "src/std/process/windows.lucb:112:13"
.Ltext_36:
    .asciz "src/std/process/windows.lucb:113:9"
.Ltext_37:
    .asciz "src/std/process/windows.lucb:114:9"
.Ltext_38:
    .asciz "a child capture file could not be created"
.Ltext_39:
    .asciz "a child capture descriptor could not be created"
.Ltext_40:
    .asciz "w+b"
.Ltext_41:
    .asciz "a child capture stream could not be created"
.Ltext_42:
    .asciz "no unused child capture name was found"
.Ltext_43:
    .asciz "src/std/process/windows.lucb:126:5"
.Ltext_44:
    .asciz "the process command is too long"
.Ltext_45:
    .asciz "src/std/process/windows.lucb:150:5"
.Ltext_46:
    .asciz "src/std/process/windows.lucb:153:5"
.Ltext_47:
    .asciz "src/std/process/windows.lucb:154:5"
.Ltext_48:
    .asciz "src/std/process/windows.lucb:159:13"
.Ltext_49:
    .asciz "src/std/process/windows.lucb:160:13"
.Ltext_50:
    .asciz "src/std/process/windows.lucb:161:9"
.Ltext_51:
    .asciz "src/std/process/windows.lucb:162:13"
.Ltext_52:
    .asciz "src/std/process/windows.lucb:163:13"
.Ltext_53:
    .asciz "src/std/process/windows.lucb:165:9"
.Ltext_54:
    .asciz "src/std/process/windows.lucb:166:9"
.Ltext_55:
    .asciz "src/std/process/windows.lucb:167:5"
.Ltext_56:
    .asciz "index out of bounds"
.Ltext_57:
    .asciz "src/std/process/windows.lucb:169:9"
.Ltext_58:
    .asciz "src/std/process/windows.lucb:170:9"
.Ltext_59:
    .asciz "src/std/process/windows.lucb:172:5"
.Ltext_60:
    .asciz "src/std/process/windows.lucb:173:5"
.Ltext_61:
    .asciz "src/std/process/windows.lucb:176:9"
.Ltext_62:
    .asciz "src/std/process/windows.lucb:179:9"
.Ltext_63:
    .asciz "src/std/process/windows.lucb:183:9"
.Ltext_64:
    .asciz "src/std/process/windows.lucb:185:5"
.Ltext_65:
    .asciz "src/std/process/windows.lucb:187:5"
.Ltext_66:
    .asciz "NUL"
.Ltext_67:
    .asciz "rb"
.Ltext_68:
    .asciz "the child input could not be opened"
.Ltext_69:
    .asciz "src/std/process/windows.lucb:189:5"
.Ltext_70:
    .asciz "src/std/process/windows.lucb:191:5"
.Ltext_71:
    .asciz "src/std/process/windows.lucb:193:5"
.Ltext_72:
    .asciz "src/std/process/windows.lucb:195:5"
.Ltext_73:
    .asciz "the process could not be started"
.Ltext_74:
    .asciz "src/std/process/windows.lucb:207:9"
.Ltext_75:
    .asciz "CreateProcess returned no process"
.Ltext_76:
    .asciz "src/std/process/windows.lucb:208:5"
.Ltext_77:
    .asciz "CreateProcess returned no thread"
.Ltext_78:
    .asciz "src/std/process/windows.lucb:209:5"
.Ltext_79:
    .asciz "src/std/process/windows.lucb:213:9"
.Ltext_80:
    .asciz "waiting for the process failed"
.Ltext_81:
    .asciz "src/std/process/windows.lucb:217:9"
.Ltext_82:
    .asciz "the process exit status is unavailable"
.Ltext_83:
    .asciz "src/std/process/windows.lucb:220:9"
.Ltext_84:
    .asciz ""
.Ltext_85:
    .asciz "src/std/process/windows.lucb:222:9"
.Ltext_86:
    .asciz "src/std/process/windows.lucb:223:5"
.Ltext_87:
    .asciz "src/std/process/windows.lucb:226:9"
.Ltext_88:
    .asciz "src/std/process/windows.lucb:227:5"
.Ltext_89:
    .asciz "src/std/process/module.lucb:172:9"
.Ltext_90:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
