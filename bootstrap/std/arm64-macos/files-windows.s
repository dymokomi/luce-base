    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_files_windows_0init
_lb_files_windows_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_files_windows_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/files/windows.lucb:38:5"
l_text_1:
    .asciz "the symbolic link could not be created"
l_text_2:
    .asciz "src/std/files/windows.lucb:41:9"
l_text_3:
    .asciz "src/std/files/windows.lucb:48:5"
l_text_4:
    .asciz "the symbolic link could not be read"
l_text_5:
    .asciz "src/std/files/windows.lucb:50:5"
l_text_6:
    .asciz "src/std/files/windows.lucb:51:5"
l_text_7:
    .asciz "the entry is not a symbolic link or junction"
l_text_8:
    .asciz "division by zero"
l_text_9:
    .asciz "src/std/files/windows.lucb:57:5"
l_text_10:
    .asciz "the symbolic link contains invalid reparse data"
l_text_11:
    .asciz ""
l_text_12:
    .asciz "src/std/files/windows.lucb:61:5"
l_text_13:
    .asciz "src/std/files/windows.lucb:62:5"
l_text_14:
    .asciz "the symbolic link target is invalid UTF-16"
l_text_15:
    .asciz "the link target exceeds the requested limit"
l_text_16:
    .asciz "src/std/files/windows.lucb:67:5"
l_text_17:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_18:
    .asciz "memory.unset"
l_text_19:
    .asciz "memory.exhausted"
l_text_20:
    .asciz "src/std/files/windows.lucb:68:5"
l_text_21:
    .asciz "src/std/files/windows.lucb:69:9"
l_text_22:
    .asciz "the symbolic link target could not be encoded"
l_text_23:
    .asciz "src/std/files/windows.lucb:71:5"
l_text_24:
    .asciz "src/std/files/windows.lucb:72:5"
l_text_25:
    .asciz "index out of bounds"
l_text_26:
    .asciz "unreachable"
l_text_27:
    .asciz "file attributes could not be read"
l_text_28:
    .asciz "src/std/files/windows.lucb:82:5"
l_text_29:
    .asciz "file attributes could not be changed"
l_text_30:
    .asciz "timestamp is outside the Windows range"
l_text_31:
    .asciz "timestamp predates the Windows epoch"
l_text_32:
    .asciz "src/std/files/windows.lucb:92:5"
l_text_33:
    .asciz "src/std/files/windows.lucb:95:5"
l_text_34:
    .asciz "file timestamps could not be changed"
l_text_35:
    .asciz "src/std/files/windows.lucb:150:9"
l_text_36:
    .asciz "src/std/files/windows.lucb:151:13"
l_text_37:
    .asciz "src/std/files/windows.lucb:152:5"
l_text_38:
    .asciz "src/std/files/windows.lucb:163:5"
l_text_39:
    .asciz "null_foreign"
l_text_40:
    .asciz "src/std/files/windows.lucb:171:5"
l_text_41:
    .asciz "the file could not be opened"
l_text_42:
    .asciz "src/std/files/windows.lucb:173:9"
l_text_43:
    .asciz "nonblocking Windows file opening requires a disk file"
l_text_44:
    .asciz "src/std/files/windows.lucb:176:9"
l_text_45:
    .asciz "the opened file could not be inspected"
l_text_46:
    .asciz "src/std/files/windows.lucb:182:13"
l_text_47:
    .asciz "a final symbolic link is not allowed"
l_text_48:
    .asciz "src/std/files/windows.lucb:185:13"
l_text_49:
    .asciz "the file descriptor could not be created"
l_text_50:
    .asciz "src/std/files/windows.lucb:190:9"
l_text_51:
    .asciz "the file could not be truncated"
l_text_52:
    .asciz "src/std/files/windows.lucb:194:9"
l_text_53:
    .asciz "src/std/files/windows.lucb:195:5"
l_text_54:
    .asciz "src/std/files/windows.lucb:200:5"
l_text_55:
    .asciz "the file path could not be opened"
l_text_56:
    .asciz "src/std/files/windows.lucb:202:9"
l_text_57:
    .asciz "the path is not an allowed directory"
l_text_58:
    .asciz "src/std/files/windows.lucb:207:13"
l_text_59:
    .asciz "src/std/files/windows.lucb:208:5"
l_text_60:
    .asciz "src/std/files/windows.lucb:211:5"
l_text_61:
    .asciz "integer overflow"
l_text_62:
    .asciz "src/std/files/windows.lucb:212:5"
l_text_63:
    .asciz "file metadata could not be read"
l_text_64:
    .asciz "shift count out of range"
l_text_65:
    .asciz "src/std/files/windows.lucb:223:5"
l_text_66:
    .asciz "src/std/files/windows.lucb:224:5"
l_text_67:
    .asciz "src/std/files/windows.lucb:232:5"
l_text_68:
    .asciz "the open directory path could not be read"
l_text_69:
    .asciz "src/std/files/windows.lucb:236:9"
l_text_70:
    .asciz "src/std/files/windows.lucb:237:5"
l_text_71:
    .asciz "src/std/files/windows.lucb:239:5"
l_text_72:
    .asciz "the open directory path could not be encoded"
l_text_73:
    .asciz "src/std/files/windows.lucb:241:9"
l_text_74:
    .asciz "src/std/files/windows.lucb:242:5"
l_text_75:
    .asciz "src/std/files/windows.lucb:246:5"
l_text_76:
    .asciz "the directory descriptor could not be created"
l_text_77:
    .asciz "src/std/files/windows.lucb:256:5"
l_text_78:
    .asciz "src/std/files/windows.lucb:259:5"
l_text_79:
    .asciz "the directory could not be enumerated"
l_text_80:
    .asciz "*"
l_text_81:
    .asciz "src/std/files/windows.lucb:275:9"
l_text_82:
    .asciz "src/std/files/windows.lucb:279:17"
l_text_83:
    .asciz "src/std/files/windows.lucb:280:13"
l_text_84:
    .asciz "src/std/files/windows.lucb:281:9"
l_text_85:
    .asciz "src/std/files/windows.lucb:282:5"
l_text_86:
    .asciz "a directory entry could not be encoded as UTF-8"
l_text_87:
    .asciz "src/std/files/windows.lucb:285:5"
l_text_88:
    .asciz "the directory could not be closed"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
