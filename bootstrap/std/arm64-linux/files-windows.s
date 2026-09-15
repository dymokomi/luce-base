    .text

    .p2align 2
    .globl lb_files_windows_0init
    .type lb_files_windows_0init, %function
lb_files_windows_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_windows_0init, .-lb_files_windows_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_windows_0init

    .section .rodata
.Ltext_0:
    .asciz "src/std/files/windows.lucb:38:5"
.Ltext_1:
    .asciz "the symbolic link could not be created"
.Ltext_2:
    .asciz "src/std/files/windows.lucb:41:9"
.Ltext_3:
    .asciz "src/std/files/windows.lucb:48:5"
.Ltext_4:
    .asciz "the symbolic link could not be read"
.Ltext_5:
    .asciz "src/std/files/windows.lucb:50:5"
.Ltext_6:
    .asciz "src/std/files/windows.lucb:51:5"
.Ltext_7:
    .asciz "the entry is not a symbolic link or junction"
.Ltext_8:
    .asciz "division by zero"
.Ltext_9:
    .asciz "src/std/files/windows.lucb:57:5"
.Ltext_10:
    .asciz "the symbolic link contains invalid reparse data"
.Ltext_11:
    .asciz ""
.Ltext_12:
    .asciz "src/std/files/windows.lucb:61:5"
.Ltext_13:
    .asciz "src/std/files/windows.lucb:62:5"
.Ltext_14:
    .asciz "the symbolic link target is invalid UTF-16"
.Ltext_15:
    .asciz "the link target exceeds the requested limit"
.Ltext_16:
    .asciz "src/std/files/windows.lucb:67:5"
.Ltext_17:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_18:
    .asciz "memory.unset"
.Ltext_19:
    .asciz "memory.exhausted"
.Ltext_20:
    .asciz "src/std/files/windows.lucb:68:5"
.Ltext_21:
    .asciz "src/std/files/windows.lucb:69:9"
.Ltext_22:
    .asciz "the symbolic link target could not be encoded"
.Ltext_23:
    .asciz "src/std/files/windows.lucb:71:5"
.Ltext_24:
    .asciz "src/std/files/windows.lucb:72:5"
.Ltext_25:
    .asciz "index out of bounds"
.Ltext_26:
    .asciz "unreachable"
.Ltext_27:
    .asciz "file attributes could not be read"
.Ltext_28:
    .asciz "src/std/files/windows.lucb:82:5"
.Ltext_29:
    .asciz "file attributes could not be changed"
.Ltext_30:
    .asciz "timestamp is outside the Windows range"
.Ltext_31:
    .asciz "timestamp predates the Windows epoch"
.Ltext_32:
    .asciz "src/std/files/windows.lucb:92:5"
.Ltext_33:
    .asciz "src/std/files/windows.lucb:95:5"
.Ltext_34:
    .asciz "file timestamps could not be changed"
.Ltext_35:
    .asciz "src/std/files/windows.lucb:150:9"
.Ltext_36:
    .asciz "src/std/files/windows.lucb:151:13"
.Ltext_37:
    .asciz "src/std/files/windows.lucb:152:5"
.Ltext_38:
    .asciz "src/std/files/windows.lucb:163:5"
.Ltext_39:
    .asciz "null_foreign"
.Ltext_40:
    .asciz "src/std/files/windows.lucb:171:5"
.Ltext_41:
    .asciz "the file could not be opened"
.Ltext_42:
    .asciz "src/std/files/windows.lucb:173:9"
.Ltext_43:
    .asciz "nonblocking Windows file opening requires a disk file"
.Ltext_44:
    .asciz "src/std/files/windows.lucb:176:9"
.Ltext_45:
    .asciz "the opened file could not be inspected"
.Ltext_46:
    .asciz "src/std/files/windows.lucb:182:13"
.Ltext_47:
    .asciz "a final symbolic link is not allowed"
.Ltext_48:
    .asciz "src/std/files/windows.lucb:185:13"
.Ltext_49:
    .asciz "the file descriptor could not be created"
.Ltext_50:
    .asciz "src/std/files/windows.lucb:190:9"
.Ltext_51:
    .asciz "the file could not be truncated"
.Ltext_52:
    .asciz "src/std/files/windows.lucb:194:9"
.Ltext_53:
    .asciz "src/std/files/windows.lucb:195:5"
.Ltext_54:
    .asciz "src/std/files/windows.lucb:200:5"
.Ltext_55:
    .asciz "the file path could not be opened"
.Ltext_56:
    .asciz "src/std/files/windows.lucb:202:9"
.Ltext_57:
    .asciz "the path is not an allowed directory"
.Ltext_58:
    .asciz "src/std/files/windows.lucb:207:13"
.Ltext_59:
    .asciz "src/std/files/windows.lucb:208:5"
.Ltext_60:
    .asciz "src/std/files/windows.lucb:211:5"
.Ltext_61:
    .asciz "integer overflow"
.Ltext_62:
    .asciz "src/std/files/windows.lucb:212:5"
.Ltext_63:
    .asciz "file metadata could not be read"
.Ltext_64:
    .asciz "shift count out of range"
.Ltext_65:
    .asciz "src/std/files/windows.lucb:223:5"
.Ltext_66:
    .asciz "src/std/files/windows.lucb:224:5"
.Ltext_67:
    .asciz "src/std/files/windows.lucb:232:5"
.Ltext_68:
    .asciz "the open directory path could not be read"
.Ltext_69:
    .asciz "src/std/files/windows.lucb:236:9"
.Ltext_70:
    .asciz "src/std/files/windows.lucb:237:5"
.Ltext_71:
    .asciz "src/std/files/windows.lucb:239:5"
.Ltext_72:
    .asciz "the open directory path could not be encoded"
.Ltext_73:
    .asciz "src/std/files/windows.lucb:241:9"
.Ltext_74:
    .asciz "src/std/files/windows.lucb:242:5"
.Ltext_75:
    .asciz "src/std/files/windows.lucb:246:5"
.Ltext_76:
    .asciz "the directory descriptor could not be created"
.Ltext_77:
    .asciz "src/std/files/windows.lucb:256:5"
.Ltext_78:
    .asciz "src/std/files/windows.lucb:259:5"
.Ltext_79:
    .asciz "the directory could not be enumerated"
.Ltext_80:
    .asciz "*"
.Ltext_81:
    .asciz "src/std/files/windows.lucb:275:9"
.Ltext_82:
    .asciz "src/std/files/windows.lucb:279:17"
.Ltext_83:
    .asciz "src/std/files/windows.lucb:280:13"
.Ltext_84:
    .asciz "src/std/files/windows.lucb:281:9"
.Ltext_85:
    .asciz "src/std/files/windows.lucb:282:5"
.Ltext_86:
    .asciz "a directory entry could not be encoded as UTF-8"
.Ltext_87:
    .asciz "src/std/files/windows.lucb:285:5"
.Ltext_88:
    .asciz "the directory could not be closed"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
