    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_files_module_0init
_lb_files_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    adrp x14, _lb_files_10write_only@PAGE
    add x14, x14, _lb_files_10write_only@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_platform_windows@PAGE
    add x14, x14, _lb_platform_windows@PAGEOFF
    ldrb w15, [x14]
    cbnz w15, L0_1
    b L0_2
L0_1:
    movz x9, #256
    mov w15, w9
    b L0_3
L0_2:
    adrp x15, _lb_platform_macos@PAGE
    add x15, x15, _lb_platform_macos@PAGEOFF
    ldrb w15, [x15]
    cbnz w15, L0_4
    b L0_5
L0_4:
    movz x9, #512
    mov w15, w9
    b L0_6
L0_5:
    movz x9, #64
    mov w15, w9
L0_6:
L0_3:
    adrp x19, _lb_files_create@PAGE
    add x19, x19, _lb_files_create@PAGEOFF
    str w15, [x19]
    ldrb w19, [x14]
    cbnz w19, L0_7
    b L0_8
L0_7:
    movz x9, #512
    mov w15, w9
    b L0_9
L0_8:
    adrp x15, _lb_platform_macos@PAGE
    add x15, x15, _lb_platform_macos@PAGEOFF
    ldrb w15, [x15]
    cbnz w15, L0_10
    b L0_11
L0_10:
    movz x9, #1024
    mov w15, w9
    b L0_12
L0_11:
    movz x9, #512
    mov w15, w9
L0_12:
L0_9:
    adrp x19, _lb_files_truncate@PAGE
    add x19, x19, _lb_files_truncate@PAGEOFF
    str w15, [x19]
    ldrb w19, [x14]
    cbnz w19, L0_13
    b L0_14
L0_13:
    movz x9, #128
    mov w15, w9
    b L0_15
L0_14:
    adrp x15, _lb_platform_macos@PAGE
    add x15, x15, _lb_platform_macos@PAGEOFF
    ldrb w15, [x15]
    cbnz w15, L0_16
    b L0_17
L0_16:
    movz x9, #256, lsl #16
    mov w15, w9
    b L0_18
L0_17:
    movz x9, #8, lsl #16
    mov w15, w9
L0_18:
L0_15:
    adrp x19, _lb_files_13close_on_exec@PAGE
    add x19, x19, _lb_files_13close_on_exec@PAGEOFF
    str w15, [x19]
    ldrb w19, [x14]
    cbnz w19, L0_51
    b L0_22
L0_51:
    mov w15, w19
    b L0_23
L0_22:
    adrp x15, _lb_platform_macos@PAGE
    add x15, x15, _lb_platform_macos@PAGEOFF
    ldrb w15, [x15]
L0_23:
    and w19, w15, #255
    cbnz w19, L0_19
    b L0_20
L0_19:
    movz x9, #8
    mov w15, w9
    b L0_21
L0_20:
    movz x9, #1024
    mov w15, w9
L0_21:
    adrp x19, _lb_files_11append_flag@PAGE
    add x19, x19, _lb_files_11append_flag@PAGEOFF
    str w15, [x19]
    ldrb w19, [x14]
    cbnz w19, L0_24
    b L0_25
L0_24:
    movz x9, #1024
    mov w14, w9
    b L0_26
L0_25:
    adrp x14, _lb_platform_macos@PAGE
    add x14, x14, _lb_platform_macos@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L0_27
    b L0_28
L0_27:
    movz x9, #2048
    mov w14, w9
    b L0_29
L0_28:
    movz x9, #128
    mov w14, w9
L0_29:
L0_26:
    adrp x15, _lb_files_14exclusive_flag@PAGE
    add x15, x15, _lb_files_14exclusive_flag@PAGEOFF
    str w14, [x15]
    adrp x15, _lb_platform_macos@PAGE
    add x15, x15, _lb_platform_macos@PAGEOFF
    ldrb w19, [x15]
    cbnz w19, L0_30
    b L0_31
L0_30:
    movz x9, #35
    mov w14, w9
    b L0_32
L0_31:
    movz x9, #11
    mov w14, w9
L0_32:
    adrp x19, _lb_files_17would_block_errno@PAGE
    add x19, x19, _lb_files_17would_block_errno@PAGEOFF
    str w14, [x19]
    adrp x19, _lb_files_14transfer_limit@PAGE
    add x19, x19, _lb_files_14transfer_limit@PAGEOFF
    movz x9, #16384, lsl #16
    str x9, [x19]
    ldrb w19, [x15]
    cbnz w19, L0_33
    b L0_34
L0_33:
    movn x9, #1
    mov w14, w9
    b L0_35
L0_34:
    movn x9, #99
    mov w14, w9
L0_35:
    adrp x19, _lb_files_20current_directory_fd@PAGE
    add x19, x19, _lb_files_20current_directory_fd@PAGEOFF
    str w14, [x19]
    ldrb w19, [x15]
    cbnz w19, L0_36
    b L0_37
L0_36:
    movz x9, #16, lsl #16
    mov w14, w9
    b L0_38
L0_37:
    adrp x14, _lb_platform_arm64@PAGE
    add x14, x14, _lb_platform_arm64@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L0_39
    b L0_40
L0_39:
    movz x9, #16384
    mov w14, w9
    b L0_41
L0_40:
    movz x9, #1, lsl #16
    mov w14, w9
L0_41:
L0_38:
    adrp x19, _lb_files_14directory_flag@PAGE
    add x19, x19, _lb_files_14directory_flag@PAGEOFF
    str w14, [x19]
    ldrb w19, [x15]
    cbnz w19, L0_42
    b L0_43
L0_42:
    movz x9, #256
    mov w14, w9
    b L0_44
L0_43:
    adrp x14, _lb_platform_arm64@PAGE
    add x14, x14, _lb_platform_arm64@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L0_45
    b L0_46
L0_45:
    movz x9, #32768
    mov w14, w9
    b L0_47
L0_46:
    movz x9, #2, lsl #16
    mov w14, w9
L0_47:
L0_44:
    adrp x19, _lb_files_14no_follow_flag@PAGE
    add x19, x19, _lb_files_14no_follow_flag@PAGEOFF
    str w14, [x19]
    ldrb w19, [x15]
    cbnz w19, L0_48
    b L0_49
L0_48:
    movz x9, #32
    mov w14, w9
    b L0_50
L0_49:
    movz x9, #256
    mov w14, w9
L0_50:
    adrp x15, _lb_files_17at_no_follow_flag@PAGE
    add x15, x15, _lb_files_17at_no_follow_flag@PAGEOFF
    str w14, [x15]
    adrp x15, _lb_files_missing@PAGE
    add x15, x15, _lb_files_missing@PAGEOFF
    movz x9, #6
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_files_17permission_denied@PAGE
    add x15, x15, _lb_files_17permission_denied@PAGEOFF
    movz x9, #18
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_files_14already_exists@PAGE
    add x15, x15, _lb_files_14already_exists@PAGEOFF
    movz x9, #19
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_files_8no_space@PAGE
    add x15, x15, _lb_files_8no_space@PAGEOFF
    movz x9, #20
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_files_11would_block@PAGE
    add x15, x15, _lb_files_11would_block@PAGEOFF
    movz x9, #21
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    movz x9, #22
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_files_9too_large@PAGE
    add x15, x15, _lb_files_9too_large@PAGEOFF
    movz x9, #23
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_files_13not_directory@PAGE
    add x15, x15, _lb_files_13not_directory@PAGEOFF
    movz x9, #25
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_files_12is_directory@PAGE
    add x15, x15, _lb_files_12is_directory@PAGEOFF
    movz x9, #26
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_files_20read_only_filesystem@PAGE
    add x15, x15, _lb_files_20read_only_filesystem@PAGEOFF
    movz x9, #27
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_files_9not_empty@PAGE
    add x15, x15, _lb_files_9not_empty@PAGEOFF
    movz x9, #29
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_files_12cross_device@PAGE
    add x15, x15, _lb_files_12cross_device@PAGEOFF
    movz x9, #30
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_files_12symlink_loop@PAGE
    add x15, x15, _lb_files_12symlink_loop@PAGEOFF
    movz x9, #31
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_files_13name_too_long@PAGE
    add x15, x15, _lb_files_13name_too_long@PAGEOFF
    movz x9, #32
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_files_failed@PAGE
    add x15, x15, _lb_files_failed@PAGEOFF
    movz x9, #7
    movk x9, #3178, lsl #16
    str w9, [x15]
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_6c_read
    .no_dead_strip _lb_files_6c_read
_lb_files_6c_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str w0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x16, x29, #72
    str x2, [x16]
    sub x14, x29, #40
    ldrsw x14, [x14]
    sub x15, x29, #56
    ldr x15, [x15]
    sub x19, x29, #72
    ldr x19, [x19]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _read
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_1:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_7c_write
    .no_dead_strip _lb_files_7c_write
_lb_files_7c_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str w0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x16, x29, #72
    str x2, [x16]
    sub x14, x29, #40
    ldrsw x14, [x14]
    sub x15, x29, #56
    ldr x15, [x15]
    sub x19, x29, #72
    ldr x19, [x19]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _write
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_lseek
    .no_dead_strip _lb_files_lseek
_lb_files_lseek:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str w0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x16, x29, #72
    str w2, [x16]
    sub x14, x29, #40
    ldrsw x14, [x14]
    sub x15, x29, #56
    ldr x15, [x15]
    sub x19, x29, #72
    ldrsw x19, [x19]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _lseek
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_1:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_fsync
    .no_dead_strip _lb_files_fsync
_lb_files_fsync:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    mov x0, x14
    bl _fsync
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_1:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_ftruncate
    .no_dead_strip _lb_files_ftruncate
_lb_files_ftruncate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str w0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    sub x15, x29, #48
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    bl _ftruncate
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_1:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_10next_entry
    .no_dead_strip _lb_files_10next_entry
_lb_files_10next_entry:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    str x22, [sp, #168]
    sub x16, x29, #128
    str x0, [x16]
    sub x19, x29, #128
    adrp x20, _lb_c_interrupted@PAGE
    add x20, x20, _lb_c_interrupted@PAGEOFF
L6_1:
L6_2:
    mov x0, #0
    bl _lb_c_9set_errno
    ldr x14, [x19]
    mov x0, x14
    bl _readdir
    mov x14, x0
    cbnz x14, L6_7
    b L6_5
L6_7:
L6_4:
    add x19, x14, #21
    add x15, x14, #18
    ldrh w15, [x15]
    mov w20, w15
    movz x10, #1025
    cmp x20, x10
    b.lo 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x20
    b.ls L6_8
L6_9:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
L6_8:
    sub x14, x29, #144
    str x19, [x14]
    add x14, x14, #8
    str x20, [x14]
    sub x14, x29, #160
    str x19, [x14]
    add x15, x14, #8
    str x20, [x15]
    sub x21, x29, #184
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #16
    movz x9, #1
    strb w9, [x14]
    sub x22, x29, #112
    mov x10, x21
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_5:
L6_6:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x20]
    cmp w14, w15
    b.ne L6_12
L6_11:
    b L6_1
L6_12:
L6_13:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L6_16
L6_15:
    sub x19, x29, #112
    add x20, x19, #24
    mov x0, x14
    bl _lb_files_14classify_error
    mov w15, w0
    str w15, [x20]
    adrp x15, l_text_8@PAGE
    add x15, x15, l_text_8@PAGEOFF
    sub x21, x29, #200
    str x15, [x21]
    add x15, x21, #8
    movz x9, #31
    str x9, [x15]
    add x15, x20, #8
    mov x10, x21
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #48
    movz x9, #1
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_16:
L6_17:
    sub x19, x29, #224
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_files_module_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/files/module.lucb:20:5"
l_text_2:
    .asciz "src/std/files/module.lucb:25:5"
l_text_3:
    .asciz "src/std/files/module.lucb:36:5"
l_text_4:
    .asciz "src/std/files/module.lucb:40:5"
l_text_5:
    .asciz "src/std/files/module.lucb:49:5"
l_text_6:
    .asciz "src/std/files/module.lucb:96:17"
l_text_7:
    .asciz "index out of bounds"
l_text_8:
    .asciz "the directory could not be read"
l_text_9:
    .asciz "src/std/files/module.lucb:108:9"

    .section __DATA,__const
    .p2align 3
    .globl _lb_files_10write_only
    .no_dead_strip _lb_files_10write_only
    .zerofill __DATA,__bss,_lb_files_10write_only,4,2
    .globl _lb_files_create
    .no_dead_strip _lb_files_create
    .zerofill __DATA,__bss,_lb_files_create,4,2
    .globl _lb_files_truncate
    .no_dead_strip _lb_files_truncate
    .zerofill __DATA,__bss,_lb_files_truncate,4,2
    .globl _lb_files_13close_on_exec
    .no_dead_strip _lb_files_13close_on_exec
    .zerofill __DATA,__bss,_lb_files_13close_on_exec,4,2
    .globl _lb_files_11append_flag
    .no_dead_strip _lb_files_11append_flag
    .zerofill __DATA,__bss,_lb_files_11append_flag,4,2
    .globl _lb_files_14exclusive_flag
    .no_dead_strip _lb_files_14exclusive_flag
    .zerofill __DATA,__bss,_lb_files_14exclusive_flag,4,2
    .globl _lb_files_17would_block_errno
    .no_dead_strip _lb_files_17would_block_errno
    .zerofill __DATA,__bss,_lb_files_17would_block_errno,4,2
    .globl _lb_files_14transfer_limit
    .no_dead_strip _lb_files_14transfer_limit
    .zerofill __DATA,__bss,_lb_files_14transfer_limit,8,3
    .globl _lb_files_20current_directory_fd
    .no_dead_strip _lb_files_20current_directory_fd
    .zerofill __DATA,__bss,_lb_files_20current_directory_fd,4,2
    .globl _lb_files_14directory_flag
    .no_dead_strip _lb_files_14directory_flag
    .zerofill __DATA,__bss,_lb_files_14directory_flag,4,2
    .globl _lb_files_14no_follow_flag
    .no_dead_strip _lb_files_14no_follow_flag
    .zerofill __DATA,__bss,_lb_files_14no_follow_flag,4,2
    .globl _lb_files_17at_no_follow_flag
    .no_dead_strip _lb_files_17at_no_follow_flag
    .zerofill __DATA,__bss,_lb_files_17at_no_follow_flag,4,2
    .globl _lb_files_missing
    .no_dead_strip _lb_files_missing
    .zerofill __DATA,__bss,_lb_files_missing,4,2
    .globl _lb_files_17permission_denied
    .no_dead_strip _lb_files_17permission_denied
    .zerofill __DATA,__bss,_lb_files_17permission_denied,4,2
    .globl _lb_files_14already_exists
    .no_dead_strip _lb_files_14already_exists
    .zerofill __DATA,__bss,_lb_files_14already_exists,4,2
    .globl _lb_files_8no_space
    .no_dead_strip _lb_files_8no_space
    .zerofill __DATA,__bss,_lb_files_8no_space,4,2
    .globl _lb_files_11would_block
    .no_dead_strip _lb_files_11would_block
    .zerofill __DATA,__bss,_lb_files_11would_block,4,2
    .globl _lb_files_15invalid_options
    .no_dead_strip _lb_files_15invalid_options
    .zerofill __DATA,__bss,_lb_files_15invalid_options,4,2
    .globl _lb_files_9too_large
    .no_dead_strip _lb_files_9too_large
    .zerofill __DATA,__bss,_lb_files_9too_large,4,2
    .globl _lb_files_13not_directory
    .no_dead_strip _lb_files_13not_directory
    .zerofill __DATA,__bss,_lb_files_13not_directory,4,2
    .globl _lb_files_12is_directory
    .no_dead_strip _lb_files_12is_directory
    .zerofill __DATA,__bss,_lb_files_12is_directory,4,2
    .globl _lb_files_20read_only_filesystem
    .no_dead_strip _lb_files_20read_only_filesystem
    .zerofill __DATA,__bss,_lb_files_20read_only_filesystem,4,2
    .globl _lb_files_9not_empty
    .no_dead_strip _lb_files_9not_empty
    .zerofill __DATA,__bss,_lb_files_9not_empty,4,2
    .globl _lb_files_12cross_device
    .no_dead_strip _lb_files_12cross_device
    .zerofill __DATA,__bss,_lb_files_12cross_device,4,2
    .globl _lb_files_12symlink_loop
    .no_dead_strip _lb_files_12symlink_loop
    .zerofill __DATA,__bss,_lb_files_12symlink_loop,4,2
    .globl _lb_files_13name_too_long
    .no_dead_strip _lb_files_13name_too_long
    .zerofill __DATA,__bss,_lb_files_13name_too_long,4,2
    .globl _lb_files_failed
    .no_dead_strip _lb_files_failed
    .zerofill __DATA,__bss,_lb_files_failed,4,2

.subsections_via_symbols
