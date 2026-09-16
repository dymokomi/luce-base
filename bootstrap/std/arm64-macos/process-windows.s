    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_process_windows_0init
_lb_process_windows_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_15release_storage_0g1_u16
    .weak_definition _lb_process_15release_storage_0g1_u16
_lb_process_15release_storage_0g1_u16:
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
    b.ls L1_2
L1_1:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x12, x0
    sub x13, x29, #64
    ldr x19, [x14]
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_89@PAGE
    add x0, x0, l_text_89@PAGEOFF
    adrp x1, l_text_90@PAGE
    add x1, x1, l_text_90@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x19, [x13]
    add x19, x13, #8
    str x20, [x19]
    ldr x19, [x12]
    add x12, x12, #8
    ldr x12, [x12]
    cbnz x12, L1_5
    b L1_4
L1_5:
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
L1_4:
    b L1_3
L1_2:
L1_3:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_process_windows_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/process/windows.lucb:55:13"
l_text_1:
    .asciz "src/std/process/windows.lucb:56:13"
l_text_2:
    .asciz "src/std/process/windows.lucb:58:5"
l_text_3:
    .asciz "src/std/process/windows.lucb:59:5"
l_text_4:
    .asciz "src/std/process/windows.lucb:63:13"
l_text_5:
    .asciz "src/std/process/windows.lucb:65:9"
l_text_6:
    .asciz "src/std/process/windows.lucb:68:13"
l_text_7:
    .asciz "src/std/process/windows.lucb:69:13"
l_text_8:
    .asciz "src/std/process/windows.lucb:70:9"
l_text_9:
    .asciz "src/std/process/windows.lucb:71:9"
l_text_10:
    .asciz "src/std/process/windows.lucb:73:5"
l_text_11:
    .asciz "src/std/process/windows.lucb:75:9"
l_text_12:
    .asciz "src/std/process/windows.lucb:76:9"
l_text_13:
    .asciz "src/std/process/windows.lucb:77:5"
l_text_14:
    .asciz "src/std/process/windows.lucb:78:5"
l_text_15:
    .asciz "null_foreign"
l_text_16:
    .asciz "src/std/process/windows.lucb:82:5"
l_text_17:
    .asciz "a child stream could not be inherited"
l_text_18:
    .asciz "a child stream has no handle"
l_text_19:
    .asciz "unreachable"
l_text_20:
    .asciz "src/std/process/windows.lucb:85:5"
l_text_21:
    .asciz "a child stream could not be measured"
l_text_22:
    .asciz "a child stream could not be read"
l_text_23:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_24:
    .asciz "memory.unset"
l_text_25:
    .asciz "src/std/process/windows.lucb:93:5"
l_text_26:
    .asciz "memory.exhausted"
l_text_27:
    .asciz "src/std/process/windows.lucb:95:9"
l_text_28:
    .asciz "src/std/process/windows.lucb:97:5"
l_text_29:
    .asciz "src/std/process/windows.lucb:102:5"
l_text_30:
    .asciz "src/std/process/windows.lucb:103:5"
l_text_31:
    .asciz "the child temporary directory is unavailable"
l_text_32:
    .asciz "0123456789abcdef"
l_text_33:
    .asciz "src/std/process/windows.lucb:111:13"
l_text_34:
    .asciz "shift count out of range"
l_text_35:
    .asciz "src/std/process/windows.lucb:112:13"
l_text_36:
    .asciz "src/std/process/windows.lucb:113:9"
l_text_37:
    .asciz "src/std/process/windows.lucb:114:9"
l_text_38:
    .asciz "a child capture file could not be created"
l_text_39:
    .asciz "a child capture descriptor could not be created"
l_text_40:
    .asciz "w+b"
l_text_41:
    .asciz "a child capture stream could not be created"
l_text_42:
    .asciz "no unused child capture name was found"
l_text_43:
    .asciz "src/std/process/windows.lucb:126:5"
l_text_44:
    .asciz "the process command is too long"
l_text_45:
    .asciz "src/std/process/windows.lucb:150:5"
l_text_46:
    .asciz "src/std/process/windows.lucb:153:5"
l_text_47:
    .asciz "src/std/process/windows.lucb:154:5"
l_text_48:
    .asciz "src/std/process/windows.lucb:159:13"
l_text_49:
    .asciz "src/std/process/windows.lucb:160:13"
l_text_50:
    .asciz "src/std/process/windows.lucb:161:9"
l_text_51:
    .asciz "src/std/process/windows.lucb:162:13"
l_text_52:
    .asciz "src/std/process/windows.lucb:163:13"
l_text_53:
    .asciz "src/std/process/windows.lucb:165:9"
l_text_54:
    .asciz "src/std/process/windows.lucb:166:9"
l_text_55:
    .asciz "src/std/process/windows.lucb:167:5"
l_text_56:
    .asciz "index out of bounds"
l_text_57:
    .asciz "src/std/process/windows.lucb:169:9"
l_text_58:
    .asciz "src/std/process/windows.lucb:170:9"
l_text_59:
    .asciz "src/std/process/windows.lucb:172:5"
l_text_60:
    .asciz "src/std/process/windows.lucb:173:5"
l_text_61:
    .asciz "src/std/process/windows.lucb:176:9"
l_text_62:
    .asciz "src/std/process/windows.lucb:179:9"
l_text_63:
    .asciz "src/std/process/windows.lucb:183:9"
l_text_64:
    .asciz "src/std/process/windows.lucb:185:5"
l_text_65:
    .asciz "src/std/process/windows.lucb:187:5"
l_text_66:
    .asciz "NUL"
l_text_67:
    .asciz "rb"
l_text_68:
    .asciz "the child input could not be opened"
l_text_69:
    .asciz "src/std/process/windows.lucb:189:5"
l_text_70:
    .asciz "src/std/process/windows.lucb:191:5"
l_text_71:
    .asciz "src/std/process/windows.lucb:193:5"
l_text_72:
    .asciz "src/std/process/windows.lucb:195:5"
l_text_73:
    .asciz "the process could not be started"
l_text_74:
    .asciz "src/std/process/windows.lucb:207:9"
l_text_75:
    .asciz "CreateProcess returned no process"
l_text_76:
    .asciz "src/std/process/windows.lucb:208:5"
l_text_77:
    .asciz "CreateProcess returned no thread"
l_text_78:
    .asciz "src/std/process/windows.lucb:209:5"
l_text_79:
    .asciz "src/std/process/windows.lucb:213:9"
l_text_80:
    .asciz "waiting for the process failed"
l_text_81:
    .asciz "src/std/process/windows.lucb:217:9"
l_text_82:
    .asciz "the process exit status is unavailable"
l_text_83:
    .asciz "src/std/process/windows.lucb:220:9"
l_text_84:
    .asciz ""
l_text_85:
    .asciz "src/std/process/windows.lucb:222:9"
l_text_86:
    .asciz "src/std/process/windows.lucb:223:5"
l_text_87:
    .asciz "src/std/process/windows.lucb:226:9"
l_text_88:
    .asciz "src/std/process/windows.lucb:227:5"
l_text_89:
    .asciz "src/std/process/module.lucb:172:9"
l_text_90:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
