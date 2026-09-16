    .text

    .p2align 2
    .globl lb_files_module_0init
    .type lb_files_module_0init, %function
lb_files_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_files_14read_only_flag
    add x14, x14, :lo12:lb_files_14read_only_flag
    mov x9, #0
    str w9, [x14]
    adrp x14, lb_files_10write_only
    add x14, x14, :lo12:lb_files_10write_only
    movz x9, #1
    str w9, [x14]
    adrp x14, lb_files_15read_write_flag
    add x14, x14, :lo12:lb_files_15read_write_flag
    movz x9, #2
    str w9, [x14]
    adrp x14, lb_files_create
    add x14, x14, :lo12:lb_files_create
    movz x9, #64
    str w9, [x14]
    adrp x14, lb_files_truncate
    add x14, x14, :lo12:lb_files_truncate
    movz x9, #512
    str w9, [x14]
    adrp x14, lb_files_13close_on_exec
    add x14, x14, :lo12:lb_files_13close_on_exec
    movz x9, #8, lsl #16
    str w9, [x14]
    adrp x14, lb_files_11append_flag
    add x14, x14, :lo12:lb_files_11append_flag
    movz x9, #1024
    str w9, [x14]
    adrp x14, lb_files_14exclusive_flag
    add x14, x14, :lo12:lb_files_14exclusive_flag
    movz x9, #128
    str w9, [x14]
    adrp x14, lb_files_21nonblocking_open_flag
    add x14, x14, :lo12:lb_files_21nonblocking_open_flag
    movz x9, #2048
    str w9, [x14]
    adrp x14, lb_files_17would_block_errno
    add x14, x14, :lo12:lb_files_17would_block_errno
    movz x9, #11
    str w9, [x14]
    adrp x14, lb_files_14transfer_limit
    add x14, x14, :lo12:lb_files_14transfer_limit
    movz x9, #16384, lsl #16
    str x9, [x14]
    adrp x14, lb_files_20current_directory_fd
    add x14, x14, :lo12:lb_files_20current_directory_fd
    movn x9, #99
    str w9, [x14]
    adrp x14, lb_files_14directory_flag
    add x14, x14, :lo12:lb_files_14directory_flag
    movz x9, #16384
    str w9, [x14]
    adrp x14, lb_files_14no_follow_flag
    add x14, x14, :lo12:lb_files_14no_follow_flag
    movz x9, #32768
    str w9, [x14]
    adrp x14, lb_files_17at_no_follow_flag
    add x14, x14, :lo12:lb_files_17at_no_follow_flag
    movz x9, #256
    str w9, [x14]
    adrp x14, lb_files_missing
    add x14, x14, :lo12:lb_files_missing
    movz x9, #6
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_files_17permission_denied
    add x14, x14, :lo12:lb_files_17permission_denied
    movz x9, #18
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_files_14already_exists
    add x14, x14, :lo12:lb_files_14already_exists
    movz x9, #19
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_files_8no_space
    add x14, x14, :lo12:lb_files_8no_space
    movz x9, #20
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_files_11would_block
    add x14, x14, :lo12:lb_files_11would_block
    movz x9, #21
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_files_15invalid_options
    add x14, x14, :lo12:lb_files_15invalid_options
    movz x9, #22
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_files_9too_large
    add x14, x14, :lo12:lb_files_9too_large
    movz x9, #23
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_files_13not_directory
    add x14, x14, :lo12:lb_files_13not_directory
    movz x9, #25
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_files_12is_directory
    add x14, x14, :lo12:lb_files_12is_directory
    movz x9, #26
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_files_20read_only_filesystem
    add x14, x14, :lo12:lb_files_20read_only_filesystem
    movz x9, #27
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_files_9not_empty
    add x14, x14, :lo12:lb_files_9not_empty
    movz x9, #29
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_files_12cross_device
    add x14, x14, :lo12:lb_files_12cross_device
    movz x9, #30
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_files_12symlink_loop
    add x14, x14, :lo12:lb_files_12symlink_loop
    movz x9, #31
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_files_13name_too_long
    add x14, x14, :lo12:lb_files_13name_too_long
    movz x9, #32
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_files_failed
    add x14, x14, :lo12:lb_files_failed
    movz x9, #7
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_module_0init, .-lb_files_module_0init

    .p2align 2
    .globl lb_files_6c_read
    .type lb_files_6c_read, %function
lb_files_6c_read:
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
    bl read
    mov x14, x0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_1:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_files_6c_read, .-lb_files_6c_read

    .p2align 2
    .globl lb_files_7c_write
    .type lb_files_7c_write, %function
lb_files_7c_write:
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
    bl write
    mov x14, x0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_1:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_files_7c_write, .-lb_files_7c_write

    .p2align 2
    .globl lb_files_lseek
    .type lb_files_lseek, %function
lb_files_lseek:
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
    bl lseek
    mov x14, x0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_1:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_files_lseek, .-lb_files_lseek

    .p2align 2
    .globl lb_files_fsync
    .type lb_files_fsync, %function
lb_files_fsync:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    mov x0, x14
    bl fsync
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_1:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_files_fsync, .-lb_files_fsync

    .p2align 2
    .globl lb_files_ftruncate
    .type lb_files_ftruncate, %function
lb_files_ftruncate:
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
    bl ftruncate
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_1:
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_files_ftruncate, .-lb_files_ftruncate

    .p2align 2
    .globl lb_files_10next_entry
    .type lb_files_10next_entry, %function
lb_files_10next_entry:
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
.L6_1:
.L6_2:
    mov x0, #0
    bl lb_c_9set_errno
    ldr x14, [x19]
    mov x0, x14
    bl readdir
    mov x14, x0
    cbnz x14, .L6_7
    b .L6_5
.L6_7:
.L6_4:
    add x15, x14, #19
    mov x9, #0
    mov x12, x9
.L6_8:
    movz x10, #256
    cmp x12, x10
    cset w13, lo
    cbnz w13, .L6_11
    b .L6_25
.L6_25:
    mov w19, w13
    b .L6_12
.L6_11:
    add x13, x15, x12
    ldrb w13, [x13]
    mov x10, #0
    cmp w13, w10
    cset w13, eq
    mov x10, #0
    cmp w13, w10
    cset w19, eq
.L6_12:
    and w13, w19, #255
    cbnz w13, .L6_9
    b .L6_10
.L6_9:
    mov x9, x12
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at
1:
    mov x13, x9
    mov x12, x13
    b .L6_8
.L6_10:
    add x13, x14, #19
    movz x10, #257
    cmp x12, x10
    b.lo 1f
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_9
    add x1, x1, :lo12:.Ltext_9
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x12
    b.ls .L6_13
.L6_14:
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_9
    add x1, x1, :lo12:.Ltext_9
    bl lb_core_7trap_at
.L6_13:
    sub x14, x29, #128
    str x13, [x14]
    add x14, x14, #8
    str x12, [x14]
    sub x14, x29, #144
    str x13, [x14]
    add x15, x14, #8
    str x12, [x15]
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_5:
.L6_6:
    bl lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    b.ne .L6_17
.L6_16:
    b .L6_1
.L6_17:
.L6_18:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne .L6_21
.L6_20:
    sub x19, x29, #96
    add x20, x19, #24
    mov x0, x14
    bl lb_files_14classify_error
    mov w15, w0
    str w15, [x20]
    adrp x15, .Ltext_10
    add x15, x15, :lo12:.Ltext_10
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_21:
.L6_22:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_10next_entry, .-lb_files_10next_entry

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_module_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/files/module.lucb:20:5"
.Ltext_2:
    .asciz "src/std/files/module.lucb:25:5"
.Ltext_3:
    .asciz "src/std/files/module.lucb:36:5"
.Ltext_4:
    .asciz "src/std/files/module.lucb:40:5"
.Ltext_5:
    .asciz "src/std/files/module.lucb:49:5"
.Ltext_6:
    .asciz "src/std/files/module.lucb:113:17"
.Ltext_7:
    .asciz "src/std/files/module.lucb:114:21"
.Ltext_8:
    .asciz "src/std/files/module.lucb:115:17"
.Ltext_9:
    .asciz "index out of bounds"
.Ltext_10:
    .asciz "the directory could not be read"
.Ltext_11:
    .asciz "src/std/files/module.lucb:121:9"
.Ltext_12:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_files_14read_only_flag
    .type lb_files_14read_only_flag, %object
    .p2align 2
lb_files_14read_only_flag:
    .zero 4

    .bss
    .globl lb_files_10write_only
    .type lb_files_10write_only, %object
    .p2align 2
lb_files_10write_only:
    .zero 4

    .bss
    .globl lb_files_15read_write_flag
    .type lb_files_15read_write_flag, %object
    .p2align 2
lb_files_15read_write_flag:
    .zero 4

    .bss
    .globl lb_files_create
    .type lb_files_create, %object
    .p2align 2
lb_files_create:
    .zero 4

    .bss
    .globl lb_files_truncate
    .type lb_files_truncate, %object
    .p2align 2
lb_files_truncate:
    .zero 4

    .bss
    .globl lb_files_13close_on_exec
    .type lb_files_13close_on_exec, %object
    .p2align 2
lb_files_13close_on_exec:
    .zero 4

    .bss
    .globl lb_files_11append_flag
    .type lb_files_11append_flag, %object
    .p2align 2
lb_files_11append_flag:
    .zero 4

    .bss
    .globl lb_files_14exclusive_flag
    .type lb_files_14exclusive_flag, %object
    .p2align 2
lb_files_14exclusive_flag:
    .zero 4

    .bss
    .globl lb_files_21nonblocking_open_flag
    .type lb_files_21nonblocking_open_flag, %object
    .p2align 2
lb_files_21nonblocking_open_flag:
    .zero 4

    .bss
    .globl lb_files_17would_block_errno
    .type lb_files_17would_block_errno, %object
    .p2align 2
lb_files_17would_block_errno:
    .zero 4

    .bss
    .globl lb_files_14transfer_limit
    .type lb_files_14transfer_limit, %object
    .p2align 3
lb_files_14transfer_limit:
    .zero 8

    .bss
    .globl lb_files_20current_directory_fd
    .type lb_files_20current_directory_fd, %object
    .p2align 2
lb_files_20current_directory_fd:
    .zero 4

    .bss
    .globl lb_files_14directory_flag
    .type lb_files_14directory_flag, %object
    .p2align 2
lb_files_14directory_flag:
    .zero 4

    .bss
    .globl lb_files_14no_follow_flag
    .type lb_files_14no_follow_flag, %object
    .p2align 2
lb_files_14no_follow_flag:
    .zero 4

    .bss
    .globl lb_files_17at_no_follow_flag
    .type lb_files_17at_no_follow_flag, %object
    .p2align 2
lb_files_17at_no_follow_flag:
    .zero 4

    .bss
    .globl lb_files_missing
    .type lb_files_missing, %object
    .p2align 2
lb_files_missing:
    .zero 4

    .bss
    .globl lb_files_17permission_denied
    .type lb_files_17permission_denied, %object
    .p2align 2
lb_files_17permission_denied:
    .zero 4

    .bss
    .globl lb_files_14already_exists
    .type lb_files_14already_exists, %object
    .p2align 2
lb_files_14already_exists:
    .zero 4

    .bss
    .globl lb_files_8no_space
    .type lb_files_8no_space, %object
    .p2align 2
lb_files_8no_space:
    .zero 4

    .bss
    .globl lb_files_11would_block
    .type lb_files_11would_block, %object
    .p2align 2
lb_files_11would_block:
    .zero 4

    .bss
    .globl lb_files_15invalid_options
    .type lb_files_15invalid_options, %object
    .p2align 2
lb_files_15invalid_options:
    .zero 4

    .bss
    .globl lb_files_9too_large
    .type lb_files_9too_large, %object
    .p2align 2
lb_files_9too_large:
    .zero 4

    .bss
    .globl lb_files_13not_directory
    .type lb_files_13not_directory, %object
    .p2align 2
lb_files_13not_directory:
    .zero 4

    .bss
    .globl lb_files_12is_directory
    .type lb_files_12is_directory, %object
    .p2align 2
lb_files_12is_directory:
    .zero 4

    .bss
    .globl lb_files_20read_only_filesystem
    .type lb_files_20read_only_filesystem, %object
    .p2align 2
lb_files_20read_only_filesystem:
    .zero 4

    .bss
    .globl lb_files_9not_empty
    .type lb_files_9not_empty, %object
    .p2align 2
lb_files_9not_empty:
    .zero 4

    .bss
    .globl lb_files_12cross_device
    .type lb_files_12cross_device, %object
    .p2align 2
lb_files_12cross_device:
    .zero 4

    .bss
    .globl lb_files_12symlink_loop
    .type lb_files_12symlink_loop, %object
    .p2align 2
lb_files_12symlink_loop:
    .zero 4

    .bss
    .globl lb_files_13name_too_long
    .type lb_files_13name_too_long, %object
    .p2align 2
lb_files_13name_too_long:
    .zero 4

    .bss
    .globl lb_files_failed
    .type lb_files_failed, %object
    .p2align 2
lb_files_failed:
    .zero 4


    .section .note.GNU-stack,"",%progbits
