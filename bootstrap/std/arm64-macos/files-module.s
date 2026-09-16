    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_files_module_0init
_lb_files_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_files_14read_only_flag@PAGE
    add x14, x14, _lb_files_14read_only_flag@PAGEOFF
    mov x9, #0
    str w9, [x14]
    adrp x14, _lb_files_10write_only@PAGE
    add x14, x14, _lb_files_10write_only@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_files_15read_write_flag@PAGE
    add x14, x14, _lb_files_15read_write_flag@PAGEOFF
    movz x9, #2
    str w9, [x14]
    adrp x14, _lb_files_create@PAGE
    add x14, x14, _lb_files_create@PAGEOFF
    movz x9, #512
    str w9, [x14]
    adrp x14, _lb_files_truncate@PAGE
    add x14, x14, _lb_files_truncate@PAGEOFF
    movz x9, #1024
    str w9, [x14]
    adrp x14, _lb_files_13close_on_exec@PAGE
    add x14, x14, _lb_files_13close_on_exec@PAGEOFF
    movz x9, #256, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_11append_flag@PAGE
    add x14, x14, _lb_files_11append_flag@PAGEOFF
    movz x9, #8
    str w9, [x14]
    adrp x14, _lb_files_14exclusive_flag@PAGE
    add x14, x14, _lb_files_14exclusive_flag@PAGEOFF
    movz x9, #2048
    str w9, [x14]
    adrp x14, _lb_files_21nonblocking_open_flag@PAGE
    add x14, x14, _lb_files_21nonblocking_open_flag@PAGEOFF
    movz x9, #4
    str w9, [x14]
    adrp x14, _lb_files_17would_block_errno@PAGE
    add x14, x14, _lb_files_17would_block_errno@PAGEOFF
    movz x9, #35
    str w9, [x14]
    adrp x14, _lb_files_14transfer_limit@PAGE
    add x14, x14, _lb_files_14transfer_limit@PAGEOFF
    movz x9, #16384, lsl #16
    str x9, [x14]
    adrp x14, _lb_files_20current_directory_fd@PAGE
    add x14, x14, _lb_files_20current_directory_fd@PAGEOFF
    movn x9, #1
    str w9, [x14]
    adrp x14, _lb_files_14directory_flag@PAGE
    add x14, x14, _lb_files_14directory_flag@PAGEOFF
    movz x9, #16, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_14no_follow_flag@PAGE
    add x14, x14, _lb_files_14no_follow_flag@PAGEOFF
    movz x9, #256
    str w9, [x14]
    adrp x14, _lb_files_17at_no_follow_flag@PAGE
    add x14, x14, _lb_files_17at_no_follow_flag@PAGEOFF
    movz x9, #32
    str w9, [x14]
    adrp x14, _lb_files_missing@PAGE
    add x14, x14, _lb_files_missing@PAGEOFF
    movz x9, #6
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_17permission_denied@PAGE
    add x14, x14, _lb_files_17permission_denied@PAGEOFF
    movz x9, #18
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_14already_exists@PAGE
    add x14, x14, _lb_files_14already_exists@PAGEOFF
    movz x9, #19
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_8no_space@PAGE
    add x14, x14, _lb_files_8no_space@PAGEOFF
    movz x9, #20
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_11would_block@PAGE
    add x14, x14, _lb_files_11would_block@PAGEOFF
    movz x9, #21
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_15invalid_options@PAGE
    add x14, x14, _lb_files_15invalid_options@PAGEOFF
    movz x9, #22
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_9too_large@PAGE
    add x14, x14, _lb_files_9too_large@PAGEOFF
    movz x9, #23
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_13not_directory@PAGE
    add x14, x14, _lb_files_13not_directory@PAGEOFF
    movz x9, #25
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_12is_directory@PAGE
    add x14, x14, _lb_files_12is_directory@PAGEOFF
    movz x9, #26
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_20read_only_filesystem@PAGE
    add x14, x14, _lb_files_20read_only_filesystem@PAGEOFF
    movz x9, #27
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_9not_empty@PAGE
    add x14, x14, _lb_files_9not_empty@PAGEOFF
    movz x9, #29
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_12cross_device@PAGE
    add x14, x14, _lb_files_12cross_device@PAGEOFF
    movz x9, #30
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_12symlink_loop@PAGE
    add x14, x14, _lb_files_12symlink_loop@PAGEOFF
    movz x9, #31
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_13name_too_long@PAGE
    add x14, x14, _lb_files_13name_too_long@PAGEOFF
    movz x9, #32
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_files_failed@PAGE
    add x14, x14, _lb_files_failed@PAGEOFF
    movz x9, #7
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_6c_read
    .no_dead_strip _lb_files_6c_read
_lb_files_6c_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str w0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    sub x15, x29, #48
    ldr x15, [x15]
    sub x12, x29, #64
    ldr x12, [x12]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _read
    mov x14, x0
    mov x9, x14
    mov x0, x9
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
    sub sp, sp, #64
    sub x16, x29, #32
    str w0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    sub x15, x29, #48
    ldr x15, [x15]
    sub x12, x29, #64
    ldr x12, [x12]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _write
    mov x14, x0
    mov x9, x14
    mov x0, x9
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
    sub sp, sp, #64
    sub x16, x29, #32
    str w0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str w2, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    sub x15, x29, #48
    ldr x15, [x15]
    sub x12, x29, #64
    ldrsw x12, [x12]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _lseek
    mov x14, x0
    mov x9, x14
    mov x0, x9
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
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    sub x16, x29, #112
    str x0, [x16]
    sub x19, x29, #112
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
    add x12, x14, #21
    add x15, x14, #18
    ldrh w15, [x15]
    mov w13, w15
    movz x10, #1025
    cmp x13, x10
    b.lo 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x13
    b.ls L6_8
L6_9:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
L6_8:
    sub x14, x29, #128
    str x12, [x14]
    add x14, x14, #8
    str x13, [x14]
    sub x14, x29, #144
    str x12, [x14]
    add x15, x14, #8
    str x13, [x15]
    sub x19, x29, #168
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #96
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_5:
L6_6:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
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
    sub x19, x29, #96
    add x20, x19, #24
    mov x0, x14
    bl _lb_files_14classify_error
    mov w15, w0
    str w15, [x20]
    adrp x15, l_text_8@PAGE
    add x15, x15, l_text_8@PAGEOFF
    sub x12, x29, #184
    str x15, [x12]
    add x15, x12, #8
    movz x9, #31
    str x9, [x15]
    add x15, x20, #8
    mov x10, x12
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_16:
L6_17:
    sub x19, x29, #208
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #96
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
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
    .asciz "src/std/files/module.lucb:103:17"
l_text_7:
    .asciz "index out of bounds"
l_text_8:
    .asciz "the directory could not be read"
l_text_9:
    .asciz "src/std/files/module.lucb:121:9"

    .section __DATA,__const
    .p2align 3
    .globl _lb_files_14read_only_flag
    .no_dead_strip _lb_files_14read_only_flag
    .zerofill __DATA,__bss,_lb_files_14read_only_flag,4,2
    .globl _lb_files_10write_only
    .no_dead_strip _lb_files_10write_only
    .zerofill __DATA,__bss,_lb_files_10write_only,4,2
    .globl _lb_files_15read_write_flag
    .no_dead_strip _lb_files_15read_write_flag
    .zerofill __DATA,__bss,_lb_files_15read_write_flag,4,2
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
    .globl _lb_files_21nonblocking_open_flag
    .no_dead_strip _lb_files_21nonblocking_open_flag
    .zerofill __DATA,__bss,_lb_files_21nonblocking_open_flag,4,2
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
