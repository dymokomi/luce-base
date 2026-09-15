    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_files_0init
_lb_files_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
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
    adrp x15, _lb_files_15directory_cycle@PAGE
    add x15, x15, _lb_files_15directory_cycle@PAGEOFF
    movz x9, #33
    movk x9, #3178, lsl #16
    str w9, [x15]
    adrp x15, _lb_files_11depth_limit@PAGE
    add x15, x15, _lb_files_11depth_limit@PAGEOFF
    movz x9, #34
    movk x9, #3178, lsl #16
    str w9, [x15]
    sub x19, x29, #72
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x20, x29, #88
    str x15, [x20]
    add x15, x20, #8
    movz x9, #17
    str x9, [x15]
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x15, _lb_files_Entries_close@GOTPAGE
    ldr x15, [x15, _lb_files_Entries_close@GOTPAGEOFF]
    add x20, x19, #16
    str x15, [x20]
    add x15, x19, #32
    movz x9, #1
    strb w9, [x15]
    add x15, x19, #24
    mov x9, #0
    str x9, [x15]
    add x15, x19, #33
    mov x9, #0
    strb w9, [x15]
    adrp x15, _lb_files_12entries_type@PAGE
    add x15, x15, _lb_files_12entries_type@PAGEOFF
    mov x10, x19
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_9file_kind
_lb_files_9file_kind:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldr w14, [x14]
    movz x10, #61440
    and w14, w14, w10
    movz x10, #32768
    cmp w14, w10
    b.ne L1_2
L1_1:
    movz x9, #1
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    b L1_3
L1_2:
L1_3:
    movz x10, #16384
    cmp w14, w10
    b.ne L1_6
L1_5:
    movz x9, #2
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_8:
    b L1_7
L1_6:
L1_7:
    movz x10, #40960
    cmp w14, w10
    b.ne L1_10
L1_9:
    movz x9, #3
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_12:
    b L1_11
L1_10:
L1_11:
    movz x10, #4096
    cmp w14, w10
    b.ne L1_14
L1_13:
    movz x9, #4
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_16:
    b L1_15
L1_14:
L1_15:
    movz x10, #49152
    cmp w14, w10
    b.ne L1_18
L1_17:
    movz x9, #5
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_20:
    b L1_19
L1_18:
L1_19:
    movz x10, #24576
    cmp w14, w10
    b.ne L1_22
L1_21:
    movz x9, #6
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_24:
    b L1_23
L1_22:
L1_23:
    movz x10, #8192
    cmp w14, w10
    b.ne L1_26
L1_25:
    movz x9, #7
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_28:
    b L1_27
L1_26:
L1_27:
    mov x9, #0
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_29:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_12mac_metadata
_lb_files_12mac_metadata:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #624
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #592]
    str x20, [sp, #584]
    str x21, [sp, #576]
    str x22, [sp, #568]
    str x23, [sp, #560]
    str x24, [sp, #552]
    str x25, [sp, #544]
    sub x16, x29, #352
    str x0, [x16]
    sub x0, x29, #352
    ldr x1, [x0]
    movz x2, #144
    bl _memcpy
    sub x25, x29, #480
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    stp xzr, xzr, [x11, #112]
    sub x19, x29, #352
    add x20, x19, #4
    ldrh w14, [x20]
    mov w14, w14
    mov x0, x14
    bl _lb_files_9file_kind
    mov w14, w0
    strb w14, [x25]
    ldrh w14, [x20]
    mov w14, w14
    movz x10, #4095
    and w14, w14, w10
    add x15, x25, #4
    str w14, [x15]
    add x14, x19, #96
    ldr x14, [x14]
    add x15, x25, #8
    str x14, [x15]
    ldrsw x14, [x19]
    sxtw x14, w14
    mov w14, w14
    add x15, x25, #16
    str x14, [x15]
    add x14, x19, #8
    ldr x14, [x14]
    add x15, x25, #24
    str x14, [x15]
    add x14, x19, #6
    ldrh w14, [x14]
    mov w14, w14
    add x15, x25, #32
    str x14, [x15]
    add x14, x19, #16
    ldr w14, [x14]
    add x15, x25, #40
    str w14, [x15]
    add x14, x19, #20
    ldr w14, [x14]
    add x15, x25, #44
    str w14, [x15]
    add x14, x19, #104
    ldr x14, [x14]
    add x15, x25, #48
    str x14, [x15]
    add x14, x19, #32
    mov x10, x14
    sub x11, x29, #600
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #616
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    sub x21, x29, #600
    ldr x14, [x21]
    str x14, [x20]
    add x22, x21, #8
    ldr x14, [x22]
    add x23, x20, #8
    str w14, [x23]
    sub x24, x29, #584
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #496
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L2_3
L2_2:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L2_3:
    sub x14, x29, #496
    add x15, x25, #56
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    mov x10, x14
    sub x11, x29, #600
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    ldr x14, [x21]
    str x14, [x20]
    ldr x14, [x22]
    str w14, [x23]
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #512
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L2_5
L2_4:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L2_5:
    sub x14, x29, #512
    add x15, x25, #72
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    mov x10, x14
    sub x11, x29, #600
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    ldr x14, [x21]
    str x14, [x20]
    ldr x14, [x22]
    str w14, [x23]
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #528
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L2_7
L2_6:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L2_7:
    sub x14, x29, #528
    add x15, x25, #88
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #80
    mov x10, x14
    sub x11, x29, #600
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    ldr x14, [x21]
    str x14, [x20]
    ldr x14, [x22]
    str w14, [x23]
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #544
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L2_9
L2_8:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L2_9:
    sub x14, x29, #544
    sub x19, x29, #568
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    add x14, x25, #104
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    sub x19, x29, #208
    mov x10, x25
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #592]
    ldr x20, [sp, #584]
    ldr x21, [sp, #576]
    ldr x22, [sp, #568]
    ldr x23, [sp, #560]
    ldr x24, [sp, #552]
    ldr x25, [sp, #544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_20linux_arm64_metadata
_lb_files_20linux_arm64_metadata:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #592
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #560]
    str x20, [sp, #552]
    str x21, [sp, #544]
    str x22, [sp, #536]
    str x23, [sp, #528]
    str x24, [sp, #520]
    str x25, [sp, #512]
    sub x16, x29, #336
    str x0, [x16]
    sub x0, x29, #336
    ldr x1, [x0]
    movz x2, #128
    bl _memcpy
    sub x25, x29, #464
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    stp xzr, xzr, [x11, #112]
    sub x19, x29, #336
    add x20, x19, #16
    ldr w14, [x20]
    mov x0, x14
    bl _lb_files_9file_kind
    mov w14, w0
    strb w14, [x25]
    ldr w14, [x20]
    movz x10, #4095
    and w14, w14, w10
    add x15, x25, #4
    str w14, [x15]
    add x14, x19, #48
    ldr x14, [x14]
    add x15, x25, #8
    str x14, [x15]
    ldr x14, [x19]
    add x15, x25, #16
    str x14, [x15]
    add x14, x19, #8
    ldr x14, [x14]
    add x15, x25, #24
    str x14, [x15]
    add x14, x19, #20
    ldr w14, [x14]
    mov w14, w14
    add x15, x25, #32
    str x14, [x15]
    add x14, x19, #24
    ldr w14, [x14]
    add x15, x25, #40
    str w14, [x15]
    add x14, x19, #28
    ldr w14, [x14]
    add x15, x25, #44
    str w14, [x15]
    add x14, x19, #64
    ldr x14, [x14]
    add x15, x25, #48
    str x14, [x15]
    add x14, x19, #72
    mov x10, x14
    sub x11, x29, #568
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #584
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    sub x21, x29, #568
    ldr x14, [x21]
    str x14, [x20]
    add x22, x21, #8
    ldr x14, [x22]
    add x23, x20, #8
    str w14, [x23]
    sub x24, x29, #552
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #480
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L3_3
L3_2:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L3_3:
    sub x14, x29, #480
    add x15, x25, #56
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #88
    mov x10, x14
    sub x11, x29, #568
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    ldr x14, [x21]
    str x14, [x20]
    ldr x14, [x22]
    str w14, [x23]
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #496
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L3_5
L3_4:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L3_5:
    sub x14, x29, #496
    add x15, x25, #72
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #104
    mov x10, x14
    sub x11, x29, #568
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    ldr x14, [x21]
    str x14, [x20]
    ldr x14, [x22]
    str w14, [x23]
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #512
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L3_7
L3_6:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L3_7:
    sub x14, x29, #512
    add x15, x25, #88
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x19, x29, #536
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    add x14, x25, #104
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    sub x19, x29, #208
    mov x10, x25
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #560]
    ldr x20, [sp, #552]
    ldr x21, [sp, #544]
    ldr x22, [sp, #536]
    ldr x23, [sp, #528]
    ldr x24, [sp, #520]
    ldr x25, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_1:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_14linux_metadata
_lb_files_14linux_metadata:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #608
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #576]
    str x20, [sp, #568]
    str x21, [sp, #560]
    str x22, [sp, #552]
    str x23, [sp, #544]
    str x24, [sp, #536]
    str x25, [sp, #528]
    sub x16, x29, #352
    str x0, [x16]
    sub x0, x29, #352
    ldr x1, [x0]
    movz x2, #144
    bl _memcpy
    sub x25, x29, #480
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    stp xzr, xzr, [x11, #112]
    sub x19, x29, #352
    add x20, x19, #24
    ldr w14, [x20]
    mov x0, x14
    bl _lb_files_9file_kind
    mov w14, w0
    strb w14, [x25]
    ldr w14, [x20]
    movz x10, #4095
    and w14, w14, w10
    add x15, x25, #4
    str w14, [x15]
    add x14, x19, #48
    ldr x14, [x14]
    add x15, x25, #8
    str x14, [x15]
    ldr x14, [x19]
    add x15, x25, #16
    str x14, [x15]
    add x14, x19, #8
    ldr x14, [x14]
    add x15, x25, #24
    str x14, [x15]
    add x14, x19, #16
    ldr x14, [x14]
    add x15, x25, #32
    str x14, [x15]
    add x14, x19, #28
    ldr w14, [x14]
    add x15, x25, #40
    str w14, [x15]
    add x14, x19, #32
    ldr w14, [x14]
    add x15, x25, #44
    str w14, [x15]
    add x14, x19, #64
    ldr x14, [x14]
    add x15, x25, #48
    str x14, [x15]
    add x14, x19, #72
    mov x10, x14
    sub x11, x29, #584
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #600
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    sub x21, x29, #584
    ldr x14, [x21]
    str x14, [x20]
    add x22, x21, #8
    ldr x14, [x22]
    add x23, x20, #8
    str w14, [x23]
    sub x24, x29, #568
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #496
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L4_3
L4_2:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L4_3:
    sub x14, x29, #496
    add x15, x25, #56
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #88
    mov x10, x14
    sub x11, x29, #584
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    ldr x14, [x21]
    str x14, [x20]
    ldr x14, [x22]
    str w14, [x23]
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #512
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L4_5
L4_4:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L4_5:
    sub x14, x29, #512
    add x15, x25, #72
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #104
    mov x10, x14
    sub x11, x29, #584
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    ldr x14, [x21]
    str x14, [x20]
    ldr x14, [x22]
    str w14, [x23]
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #528
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L4_7
L4_6:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L4_7:
    sub x14, x29, #528
    add x15, x25, #88
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x19, x29, #552
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    add x14, x25, #104
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    sub x19, x29, #208
    mov x10, x25
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #576]
    ldr x20, [sp, #568]
    ldr x21, [sp, #560]
    ldr x22, [sp, #552]
    ldr x23, [sp, #544]
    ldr x24, [sp, #536]
    ldr x25, [sp, #528]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_1:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_metadata
_lb_files_metadata:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #544
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #512]
    str x20, [sp, #504]
    str x21, [sp, #496]
    str x22, [sp, #488]
    str x23, [sp, #480]
    sub x16, x29, #240
    str x0, [x16]
    sub x16, x29, #256
    str w1, [x16]
    sub x19, x29, #400
    mov x0, x19
    mov x1, #0
    movz x2, #144
    bl _memset
    sub x20, x29, #256
    sub x22, x29, #240
    sub x21, x29, #240
    adrp x23, _lb_c_interrupted@PAGE
    add x23, x23, _lb_c_interrupted@PAGEOFF
L5_1:
L5_2:
    ldrb w14, [x20]
    cbnz w14, L5_4
    b L5_5
L5_4:
    ldr x14, [x21]
    mov x0, x14
    mov x1, x19
    bl _stat
    mov w14, w0
    b L5_6
L5_5:
    ldr x14, [x22]
    mov x0, x14
    mov x1, x19
    bl _lstat
    mov w14, w0
L5_6:
    mov x10, #0
    cmp w14, w10
    b.ne L5_8
L5_7:
    mov x9, x19
    mov x0, x9
    sub x8, x29, #528
    bl _lb_files_12mac_metadata
    sub x14, x29, #528
    sub x20, x29, #224
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    add x14, x20, #152
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_8:
L5_9:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x23]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_12
L5_11:
    sub x19, x29, #224
    add x20, x19, #128
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
    sub x15, x29, #544
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #152
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_12:
L5_13:
    b L5_1

    .p2align 2
    .globl _lb_files_19metadata_descriptor
_lb_files_19metadata_descriptor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #512
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #480]
    str x20, [sp, #472]
    str x21, [sp, #464]
    sub x16, x29, #224
    str w0, [x16]
    sub x19, x29, #368
    mov x0, x19
    mov x1, #0
    movz x2, #144
    bl _memset
    sub x20, x29, #224
    adrp x21, _lb_c_interrupted@PAGE
    add x21, x21, _lb_c_interrupted@PAGEOFF
L6_1:
L6_2:
    ldrsw x14, [x20]
    mov x0, x14
    mov x1, x19
    bl _fstat
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L6_5
L6_4:
    mov x9, x19
    mov x0, x9
    sub x8, x29, #496
    bl _lb_files_12mac_metadata
    sub x14, x29, #496
    sub x20, x29, #208
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    add x14, x20, #152
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_5:
L6_6:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x21]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L6_9
L6_8:
    sub x19, x29, #208
    add x20, x19, #128
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_18@PAGE
    add x14, x14, l_text_18@PAGEOFF
    sub x15, x29, #512
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #152
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_9:
L6_10:
    b L6_1

    .p2align 2
    .globl _lb_files_File_open
_lb_files_File_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #432
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #400]
    str x20, [sp, #392]
    str x21, [sp, #384]
    str x22, [sp, #376]
    str x23, [sp, #368]
    str x24, [sp, #360]
    str x25, [sp, #352]
    str x26, [sp, #344]
    str x27, [sp, #336]
    str x28, [sp, #328]
    sub x16, x29, #160
    str x0, [x16]
    sub x16, x29, #176
    str w1, [x16]
    sub x16, x29, #192
    str w2, [x16]
    sub x14, x29, #176
    ldrb w14, [x14]
    sub x15, x29, #192
    ldr w19, [x15]
    mov x0, x14
    mov x1, x19
    sub x8, x29, #232
    bl _lb_files_15file_open_flags
    sub x15, x29, #232
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L7_2
    b L7_1
L7_2:
    add x14, x15, #8
    sub x19, x29, #144
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    ldr x28, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_3:
L7_1:
    ldrsw x20, [x15]
    sub x14, x29, #160
    ldr x21, [x14]
    sub x10, x29, #400
    str x21, [x10]
    sub x10, x29, #416
    str w20, [x10]
    sub x10, x29, #432
    str w19, [x10]
    movz x16, #16
    sub sp, sp, x16
    mov w9, w19
    str x9, [sp, #0]
    mov x0, x21
    mov x1, x20
    bl _open
    movz x16, #16
    add sp, sp, x16
    mov w22, w0
    sub x23, x29, #384
    str w22, [x23]
    add x24, x23, #32
    mov x9, #0
    strb w9, [x24]
    mov x10, x23
    sub x11, x29, #272
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L7_21
L7_20:
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L7_21:
    sub x15, x29, #272
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L7_5
    b L7_4
L7_5:
    add x14, x15, #8
    sub x19, x29, #144
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    ldr x28, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_6:
L7_4:
    adrp x25, _lb_c_interrupted@PAGE
    add x25, x25, _lb_c_interrupted@PAGEOFF
    sub x28, x29, #312
    add x26, x28, #32
    mov w27, w22
L7_7:
    mov x10, #0
    cmp w27, w10
    cset w22, lt
    cbnz w22, L7_10
    b L7_24
L7_24:
    mov w14, w22
    b L7_11
L7_10:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x25]
    cmp w14, w15
    cset w14, eq
L7_11:
    and w15, w14, #255
    cbnz w15, L7_8
    b L7_9
L7_8:
    sub x10, x29, #400
    str x21, [x10]
    sub x10, x29, #416
    str w20, [x10]
    sub x10, x29, #432
    str w19, [x10]
    movz x16, #16
    sub sp, sp, x16
    mov w9, w19
    str x9, [sp, #0]
    mov x0, x21
    mov x1, x20
    bl _open
    movz x16, #16
    add sp, sp, x16
    mov w27, w0
    str w27, [x23]
    mov x9, #0
    strb w9, [x24]
    mov x10, x23
    sub x11, x29, #312
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L7_23
L7_22:
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L7_23:
    ldrb w14, [x26]
    cbnz w14, L7_13
    b L7_12
L7_13:
    add x14, x28, #8
    sub x19, x29, #144
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    ldr x28, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_14:
L7_12:
    b L7_7
L7_9:
    cbnz w22, L7_15
    b L7_16
L7_15:
    sub x19, x29, #144
    add x20, x19, #8
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_22@PAGE
    add x14, x14, l_text_22@PAGEOFF
    sub x15, x29, #328
    str x14, [x15]
    add x14, x15, #8
    movz x9, #28
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    ldr x28, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_18:
    b L7_17
L7_16:
L7_17:
    sub x19, x29, #336
    mov x11, x19
    str xzr, [x11, #0]
    sub x14, x29, #344
    str w27, [x14]
    add x15, x14, #4
    movz x9, #1
    strb w9, [x15]
    mov x10, x14
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x20, x29, #144
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    ldr x28, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_19:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_File_descriptor
_lb_files_File_descriptor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x14, [x9]
    sub x19, x29, #32
    mov x10, x14
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_1:
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_File_truncate
_lb_files_File_truncate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str x21, [sp, #160]
    str x22, [sp, #152]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x9, x29, #96
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L9_1
    b L9_2
L9_1:
    ldrsw x19, [x15]
    b L9_3
L9_2:
    sub x19, x29, #88
    adrp x14, _lb_io_closed@PAGE
    add x14, x14, _lb_io_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_25@PAGE
    add x14, x14, l_text_25@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #18
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_4:
L9_3:
    sub x14, x29, #112
    ldr x20, [x14]
    mov x10, #0
    cmp x20, x10
    b.ge L9_6
L9_5:
    sub x19, x29, #88
    adrp x14, _lb_files_15invalid_options@PAGE
    add x14, x14, _lb_files_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_27@PAGE
    add x14, x14, l_text_27@PAGEOFF
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_8:
    b L9_7
L9_6:
L9_7:
    sub x10, x29, #176
    str w19, [x10]
    sub x10, x29, #192
    str x20, [x10]
    mov x0, x19
    mov x1, x20
    bl _ftruncate
    mov w14, w0
    sub x10, x29, #200
    str w14, [x10]
    b L9_19
L9_18:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L9_19:
    adrp x21, _lb_c_interrupted@PAGE
    add x21, x21, _lb_c_interrupted@PAGEOFF
    mov w15, w14
L9_9:
    mov x10, #0
    cmp w15, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w22, eq
    cbnz w22, L9_12
    b L9_22
L9_22:
    mov w14, w22
    b L9_13
L9_12:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x21]
    cmp w14, w15
    cset w14, eq
L9_13:
    and w15, w14, #255
    cbnz w15, L9_10
    b L9_11
L9_10:
    sub x10, x29, #176
    str w19, [x10]
    sub x10, x29, #192
    str x20, [x10]
    mov x0, x19
    mov x1, x20
    bl _ftruncate
    mov w15, w0
    sub x10, x29, #208
    str w15, [x10]
    b L9_21
L9_20:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L9_21:
    b L9_9
L9_11:
    cbnz w22, L9_14
    b L9_15
L9_14:
    sub x19, x29, #88
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_28@PAGE
    add x14, x14, l_text_28@PAGEOFF
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_17:
    b L9_16
L9_15:
L9_16:
    sub x14, x29, #88
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_File_15set_permissions
_lb_files_File_15set_permissions:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    str x21, [sp, #128]
    str x22, [sp, #120]
    str x23, [sp, #112]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str w1, [x16]
    sub x9, x29, #104
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L10_1
    b L10_2
L10_1:
    ldrsw x19, [x15]
    b L10_3
L10_2:
    sub x19, x29, #96
    adrp x14, _lb_io_closed@PAGE
    add x14, x14, _lb_io_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_25@PAGE
    add x14, x14, l_text_25@PAGEOFF
    sub x15, x29, #136
    str x14, [x15]
    add x14, x15, #8
    movz x9, #18
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_3:
    sub x14, x29, #120
    ldr w20, [x14]
    movz x10, #4095
    cmp w20, w10
    b.ls L10_6
L10_5:
    sub x19, x29, #96
    adrp x14, _lb_files_15invalid_options@PAGE
    add x14, x14, _lb_files_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_29@PAGE
    add x14, x14, l_text_29@PAGEOFF
    sub x15, x29, #152
    str x14, [x15]
    add x14, x15, #8
    movz x9, #44
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_6:
L10_7:
    adrp x21, _lb_platform_macos@PAGE
    add x21, x21, _lb_platform_macos@PAGEOFF
    mov w14, w20
    and w22, w14, #65535
    adrp x23, _lb_c_interrupted@PAGE
    add x23, x23, _lb_c_interrupted@PAGEOFF
L10_9:
L10_10:
    ldrb w14, [x21]
    cbnz w14, L10_12
    b L10_13
L10_12:
    mov x0, x19
    mov x1, x22
    bl _fchmod
    mov w14, w0
    b L10_14
L10_13:
    mov x0, x19
    mov x1, x20
    bl _fchmod
    mov w14, w0
L10_14:
    mov x10, #0
    cmp w14, w10
    b.ne L10_16
L10_15:
    sub x14, x29, #96
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_16:
L10_17:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x23]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L10_20
L10_19:
    sub x19, x29, #96
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_30@PAGE
    add x14, x14, l_text_30@PAGEOFF
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_20:
L10_21:
    b L10_9

    .p2align 2
    .globl _lb_files_File_9set_times
_lb_files_File_9set_times:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #256]
    str x20, [sp, #248]
    str x21, [sp, #240]
    str x22, [sp, #232]
    str x23, [sp, #224]
    str x24, [sp, #216]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #144
    str x3, [x16]
    str x4, [x16, #8]
    sub x9, x29, #112
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L11_1
    b L11_2
L11_1:
    ldrsw x19, [x15]
    b L11_3
L11_2:
    sub x19, x29, #104
    adrp x14, _lb_io_closed@PAGE
    add x14, x14, _lb_io_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_25@PAGE
    add x14, x14, l_text_25@PAGEOFF
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #18
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_4:
L11_3:
    sub x20, x29, #128
    add x14, x20, #8
    ldr w21, [x14]
    movz x10, #51712
    movk x10, #15258, lsl #16
    cmp w21, w10
    cset w14, hs
    cbnz w14, L11_20
    b L11_8
L11_20:
    mov w15, w14
    b L11_9
L11_8:
    sub x14, x29, #144
    add x14, x14, #8
    ldr w14, [x14]
    movz x10, #51712
    movk x10, #15258, lsl #16
    cmp w14, w10
    cset w15, hs
L11_9:
    and w14, w15, #255
    cbnz w14, L11_5
    b L11_6
L11_5:
    sub x19, x29, #104
    adrp x14, _lb_files_15invalid_options@PAGE
    add x14, x14, _lb_files_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_31@PAGE
    add x14, x14, l_text_31@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #57
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_10:
    b L11_7
L11_6:
L11_7:
    sub x22, x29, #208
    sub x23, x29, #240
    sub x24, x29, #256
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    ldr x14, [x20]
    str x14, [x24]
    mov w14, w21
    add x15, x24, #8
    str x14, [x15]
    mov x10, x24
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x24, x29, #272
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    sub x14, x29, #144
    ldr x15, [x14]
    str x15, [x24]
    add x14, x14, #8
    ldr w14, [x14]
    mov w14, w14
    add x15, x24, #8
    str x14, [x15]
    add x14, x23, #16
    mov x10, x24
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x0, x19
    mov x1, x22
    bl _futimens
    mov w14, w0
    adrp x23, _lb_c_interrupted@PAGE
    add x23, x23, _lb_c_interrupted@PAGEOFF
L11_11:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w20, eq
    cbnz w20, L11_14
    b L11_21
L11_21:
    mov w14, w20
    b L11_15
L11_14:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x23]
    cmp w14, w15
    cset w14, eq
L11_15:
    and w15, w14, #255
    cbnz w15, L11_12
    b L11_13
L11_12:
    mov x0, x19
    mov x1, x22
    bl _futimens
    mov w14, w0
    b L11_11
L11_13:
    cbnz w20, L11_16
    b L11_17
L11_16:
    sub x19, x29, #104
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_34@PAGE
    add x14, x14, l_text_34@PAGEOFF
    sub x15, x29, #288
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_19:
    b L11_18
L11_17:
L11_18:
    sub x14, x29, #104
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_File_read
_lb_files_File_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    str x22, [sp, #168]
    str x23, [sp, #160]
    str x24, [sp, #152]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #120
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L12_1
    b L12_2
L12_1:
    ldrsw x19, [x15]
    b L12_3
L12_2:
    sub x19, x29, #112
    add x14, x19, #8
    adrp x15, _lb_io_closed@PAGE
    add x15, x15, _lb_io_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_25@PAGE
    add x15, x15, l_text_25@PAGEOFF
    sub x20, x29, #152
    str x15, [x20]
    add x15, x20, #8
    movz x9, #18
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    ldr x24, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_4:
L12_3:
    sub x14, x29, #136
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L12_6
L12_5:
    sub x14, x29, #112
    mov x9, #0
    str x9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    ldr x24, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_8:
    b L12_7
L12_6:
L12_7:
    adrp x20, _lb_files_14transfer_limit@PAGE
    add x20, x20, _lb_files_14transfer_limit@PAGEOFF
    ldr x20, [x20]
    cmp x15, x20
    b.hs L12_10
L12_9:
    mov x20, x15
    b L12_11
L12_10:
L12_11:
    ldr x21, [x14]
    sub x10, x29, #184
    str w19, [x10]
    sub x10, x29, #200
    str x21, [x10]
    sub x10, x29, #216
    str x20, [x10]
    mov x0, x19
    mov x1, x21
    mov x2, x20
    bl _read
    mov x15, x0
    b L12_23
L12_22:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L12_23:
    adrp x22, _lb_c_interrupted@PAGE
    add x22, x22, _lb_c_interrupted@PAGEOFF
    mov x23, x15
L12_12:
    mov x10, #0
    cmp x23, x10
    cset w24, lt
    cbnz w24, L12_15
    b L12_26
L12_26:
    mov w14, w24
    b L12_16
L12_15:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x22]
    cmp w14, w15
    cset w14, eq
L12_16:
    and w15, w14, #255
    cbnz w15, L12_13
    b L12_14
L12_13:
    sub x10, x29, #184
    str w19, [x10]
    sub x10, x29, #200
    str x21, [x10]
    sub x10, x29, #216
    str x20, [x10]
    mov x0, x19
    mov x1, x21
    mov x2, x20
    bl _read
    mov x23, x0
    b L12_25
L12_24:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L12_25:
    b L12_12
L12_14:
    cbnz w24, L12_17
    b L12_18
L12_17:
    sub x19, x29, #112
    add x20, x19, #8
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_35@PAGE
    add x14, x14, l_text_35@PAGEOFF
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #26
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    ldr x24, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_20:
    b L12_19
L12_18:
L12_19:
    sub x14, x29, #112
    str x23, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    ldr x24, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_21:
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_File_write
_lb_files_File_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    str x22, [sp, #168]
    str x23, [sp, #160]
    str x24, [sp, #152]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #120
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L13_1
    b L13_2
L13_1:
    ldrsw x19, [x15]
    b L13_3
L13_2:
    sub x19, x29, #112
    add x14, x19, #8
    adrp x15, _lb_io_closed@PAGE
    add x15, x15, _lb_io_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_25@PAGE
    add x15, x15, l_text_25@PAGEOFF
    sub x20, x29, #152
    str x15, [x20]
    add x15, x20, #8
    movz x9, #18
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    ldr x24, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_4:
L13_3:
    sub x14, x29, #136
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L13_6
L13_5:
    sub x14, x29, #112
    mov x9, #0
    str x9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    ldr x24, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_8:
    b L13_7
L13_6:
L13_7:
    adrp x20, _lb_files_14transfer_limit@PAGE
    add x20, x20, _lb_files_14transfer_limit@PAGEOFF
    ldr x20, [x20]
    cmp x15, x20
    b.hs L13_10
L13_9:
    mov x20, x15
    b L13_11
L13_10:
L13_11:
    ldr x21, [x14]
    sub x10, x29, #184
    str w19, [x10]
    sub x10, x29, #200
    str x21, [x10]
    sub x10, x29, #216
    str x20, [x10]
    mov x0, x19
    mov x1, x21
    mov x2, x20
    bl _write
    mov x15, x0
    b L13_23
L13_22:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L13_23:
    adrp x22, _lb_c_interrupted@PAGE
    add x22, x22, _lb_c_interrupted@PAGEOFF
    mov x23, x15
L13_12:
    mov x10, #0
    cmp x23, x10
    cset w24, lt
    cbnz w24, L13_15
    b L13_26
L13_26:
    mov w14, w24
    b L13_16
L13_15:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x22]
    cmp w14, w15
    cset w14, eq
L13_16:
    and w15, w14, #255
    cbnz w15, L13_13
    b L13_14
L13_13:
    sub x10, x29, #184
    str w19, [x10]
    sub x10, x29, #200
    str x21, [x10]
    sub x10, x29, #216
    str x20, [x10]
    mov x0, x19
    mov x1, x21
    mov x2, x20
    bl _write
    mov x23, x0
    b L13_25
L13_24:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L13_25:
    b L13_12
L13_14:
    cbnz w24, L13_17
    b L13_18
L13_17:
    sub x19, x29, #112
    add x20, x19, #8
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_37@PAGE
    add x14, x14, l_text_37@PAGEOFF
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #29
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    ldr x24, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_20:
    b L13_19
L13_18:
L13_19:
    sub x14, x29, #112
    str x23, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    ldr x24, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_21:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_File_sync
_lb_files_File_sync:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L14_1
    b L14_2
L14_1:
    ldrsw x19, [x15]
    b L14_3
L14_2:
    sub x19, x29, #80
    adrp x14, _lb_io_closed@PAGE
    add x14, x14, _lb_io_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_25@PAGE
    add x14, x14, l_text_25@PAGEOFF
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #18
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_4:
L14_3:
    sub x10, x29, #136
    str w19, [x10]
    mov x0, x19
    bl _fsync
    mov w14, w0
    sub x10, x29, #144
    str w14, [x10]
    b L14_15
L14_14:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L14_15:
    adrp x20, _lb_c_interrupted@PAGE
    add x20, x20, _lb_c_interrupted@PAGEOFF
    mov w15, w14
L14_5:
    mov x10, #0
    cmp w15, w10
    cset w21, lt
    cbnz w21, L14_8
    b L14_18
L14_18:
    mov w14, w21
    b L14_9
L14_8:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x20]
    cmp w14, w15
    cset w14, eq
L14_9:
    and w15, w14, #255
    cbnz w15, L14_6
    b L14_7
L14_6:
    sub x10, x29, #136
    str w19, [x10]
    mov x0, x19
    bl _fsync
    mov w15, w0
    sub x10, x29, #152
    str w15, [x10]
    b L14_17
L14_16:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L14_17:
    b L14_5
L14_7:
    cbnz w21, L14_10
    b L14_11
L14_10:
    sub x19, x29, #80
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_13:
    b L14_12
L14_11:
L14_12:
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_File_close
_lb_files_File_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    str x21, [sp, #64]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    add x14, x19, #4
    ldrb w14, [x14]
    cbnz w14, L15_1
    b L15_2
L15_1:
    ldrsw x20, [x19]
    b L15_3
L15_2:
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_4:
L15_3:
    sub x21, x29, #96
    mov x11, x21
    str xzr, [x11, #0]
    mov x10, x21
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x0, x20
    bl _close
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L15_6
L15_5:
    sub x19, x29, #80
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #28
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_8:
    b L15_7
L15_6:
L15_7:
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_14classify_error
_lb_files_14classify_error:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #48
    str w0, [x16]
    sub x14, x29, #48
    ldrsw x14, [x14]
    movz x10, #2
    cmp w14, w10
    b.ne L16_2
L16_1:
    adrp x14, _lb_files_missing@PAGE
    add x14, x14, _lb_files_missing@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_4:
    b L16_3
L16_2:
L16_3:
    movz x10, #1
    cmp w14, w10
    cset w15, eq
    cbnz w15, L16_69
    b L16_8
L16_69:
    mov w19, w15
    b L16_9
L16_8:
    movz x10, #13
    cmp w14, w10
    cset w19, eq
L16_9:
    and w15, w19, #255
    cbnz w15, L16_5
    b L16_6
L16_5:
    adrp x14, _lb_files_17permission_denied@PAGE
    add x14, x14, _lb_files_17permission_denied@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_10:
    b L16_7
L16_6:
L16_7:
    movz x10, #17
    cmp w14, w10
    b.ne L16_12
L16_11:
    adrp x14, _lb_files_14already_exists@PAGE
    add x14, x14, _lb_files_14already_exists@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_14:
    b L16_13
L16_12:
L16_13:
    movz x10, #28
    cmp w14, w10
    b.ne L16_16
L16_15:
    adrp x14, _lb_files_8no_space@PAGE
    add x14, x14, _lb_files_8no_space@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_18:
    b L16_17
L16_16:
L16_17:
    movz x10, #20
    cmp w14, w10
    b.ne L16_20
L16_19:
    adrp x14, _lb_files_13not_directory@PAGE
    add x14, x14, _lb_files_13not_directory@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_22:
    b L16_21
L16_20:
L16_21:
    movz x10, #21
    cmp w14, w10
    b.ne L16_24
L16_23:
    adrp x14, _lb_files_12is_directory@PAGE
    add x14, x14, _lb_files_12is_directory@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_26:
    b L16_25
L16_24:
L16_25:
    movz x10, #30
    cmp w14, w10
    b.ne L16_28
L16_27:
    adrp x14, _lb_files_20read_only_filesystem@PAGE
    add x14, x14, _lb_files_20read_only_filesystem@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_30:
    b L16_29
L16_28:
L16_29:
    adrp x15, _lb_platform_macos@PAGE
    add x15, x15, _lb_platform_macos@PAGEOFF
    ldrb w15, [x15]
    cbnz w15, L16_34
    b L16_35
L16_34:
    movz x9, #66
    mov w19, w9
    b L16_36
L16_35:
    adrp x19, _lb_platform_windows@PAGE
    add x19, x19, _lb_platform_windows@PAGEOFF
    ldrb w19, [x19]
    cbnz w19, L16_37
    b L16_38
L16_37:
    movz x9, #41
    mov w19, w9
    b L16_39
L16_38:
    movz x9, #39
    mov w19, w9
L16_39:
L16_36:
    cmp w14, w19
    b.ne L16_32
L16_31:
    adrp x14, _lb_files_9not_empty@PAGE
    add x14, x14, _lb_files_9not_empty@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_40:
    b L16_33
L16_32:
L16_33:
    movz x10, #18
    cmp w14, w10
    b.ne L16_42
L16_41:
    adrp x14, _lb_files_12cross_device@PAGE
    add x14, x14, _lb_files_12cross_device@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_44:
    b L16_43
L16_42:
L16_43:
    cbnz w15, L16_48
    b L16_49
L16_48:
    movz x9, #62
    mov w19, w9
    b L16_50
L16_49:
    movz x9, #40
    mov w19, w9
L16_50:
    cmp w14, w19
    cset w20, eq
    cbnz w20, L16_51
    b L16_70
L16_70:
    mov w19, w20
    b L16_52
L16_51:
    adrp x19, _lb_platform_windows@PAGE
    add x19, x19, _lb_platform_windows@PAGEOFF
    ldrb w19, [x19]
    mov x10, #0
    cmp w19, w10
    cset w19, eq
L16_52:
    and w20, w19, #255
    cbnz w20, L16_45
    b L16_46
L16_45:
    adrp x14, _lb_files_12symlink_loop@PAGE
    add x14, x14, _lb_files_12symlink_loop@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_53:
    b L16_47
L16_46:
L16_47:
    cbnz w15, L16_57
    b L16_58
L16_57:
    movz x9, #63
    mov w15, w9
    b L16_59
L16_58:
    adrp x15, _lb_platform_windows@PAGE
    add x15, x15, _lb_platform_windows@PAGEOFF
    ldrb w15, [x15]
    cbnz w15, L16_60
    b L16_61
L16_60:
    movz x9, #38
    mov w15, w9
    b L16_62
L16_61:
    movz x9, #36
    mov w15, w9
L16_62:
L16_59:
    cmp w14, w15
    b.ne L16_55
L16_54:
    adrp x14, _lb_files_13name_too_long@PAGE
    add x14, x14, _lb_files_13name_too_long@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_63:
    b L16_56
L16_55:
L16_56:
    adrp x15, _lb_files_17would_block_errno@PAGE
    add x15, x15, _lb_files_17would_block_errno@PAGEOFF
    ldrsw x15, [x15]
    cmp w14, w15
    b.ne L16_65
L16_64:
    adrp x14, _lb_files_11would_block@PAGE
    add x14, x14, _lb_files_11would_block@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_67:
    b L16_66
L16_65:
L16_66:
    adrp x14, _lb_files_failed@PAGE
    add x14, x14, _lb_files_failed@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_68:
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_15file_open_flags
_lb_files_15file_open_flags:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    sub x16, x29, #96
    str w0, [x16]
    sub x16, x29, #112
    str w1, [x16]
    sub x14, x29, #112
    ldr w14, [x14]
    movz x10, #4095
    cmp w14, w10
    b.ls L17_2
L17_1:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_29@PAGE
    add x15, x15, l_text_29@PAGEOFF
    sub x20, x29, #128
    str x15, [x20]
    add x15, x20, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_4:
    b L17_3
L17_2:
L17_3:
    adrp x14, _lb_files_13close_on_exec@PAGE
    add x14, x14, _lb_files_13close_on_exec@PAGEOFF
    ldrsw x14, [x14]
    sub x15, x29, #96
    ldrb w15, [x15]
    movz x10, #1
    cmp w15, w10
    b.ne L17_6
L17_5:
    movz x10, #2
    orr w15, w14, w10
    b L17_7
L17_6:
    movz x10, #2
    cmp w15, w10
    b.ne L17_9
L17_8:
    adrp x15, _lb_files_10write_only@PAGE
    add x15, x15, _lb_files_10write_only@PAGEOFF
    ldrsw x15, [x15]
    adrp x19, _lb_files_create@PAGE
    add x19, x19, _lb_files_create@PAGEOFF
    ldrsw x19, [x19]
    orr w15, w15, w19
    adrp x19, _lb_files_truncate@PAGE
    add x19, x19, _lb_files_truncate@PAGEOFF
    ldrsw x19, [x19]
    orr w15, w15, w19
    orr w15, w14, w15
    b L17_10
L17_9:
    movz x10, #3
    cmp w15, w10
    cset w19, eq
    cbnz w19, L17_27
    b L17_14
L17_27:
    mov w20, w19
    b L17_15
L17_14:
    movz x10, #5
    cmp w15, w10
    cset w20, eq
L17_15:
    and w19, w20, #255
    cbnz w19, L17_11
    b L17_12
L17_11:
    adrp x19, _lb_files_create@PAGE
    add x19, x19, _lb_files_create@PAGEOFF
    ldrsw x19, [x19]
    adrp x20, _lb_files_14exclusive_flag@PAGE
    add x20, x20, _lb_files_14exclusive_flag@PAGEOFF
    ldrsw x20, [x20]
    orr w20, w19, w20
    movz x10, #5
    cmp w15, w10
    b.ne L17_17
L17_16:
    movz x9, #2
    mov w15, w9
    b L17_18
L17_17:
    adrp x15, _lb_files_10write_only@PAGE
    add x15, x15, _lb_files_10write_only@PAGEOFF
    ldrsw x15, [x15]
L17_18:
    orr w19, w20, w15
    orr w19, w14, w19
    b L17_13
L17_12:
    movz x10, #4
    cmp w15, w10
    b.ne L17_20
L17_19:
    adrp x15, _lb_files_10write_only@PAGE
    add x15, x15, _lb_files_10write_only@PAGEOFF
    ldrsw x15, [x15]
    adrp x19, _lb_files_create@PAGE
    add x19, x19, _lb_files_create@PAGEOFF
    ldrsw x19, [x19]
    orr w15, w15, w19
    adrp x19, _lb_files_11append_flag@PAGE
    add x19, x19, _lb_files_11append_flag@PAGEOFF
    ldrsw x19, [x19]
    orr w15, w15, w19
    orr w15, w14, w15
    b L17_21
L17_20:
    mov x10, #0
    cmp w15, w10
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    b.ne L17_23
L17_22:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_45@PAGE
    add x15, x15, l_text_45@PAGEOFF
    sub x20, x29, #144
    str x15, [x20]
    add x15, x20, #8
    movz x9, #25
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_25:
    b L17_24
L17_23:
L17_24:
    mov w15, w14
L17_21:
    mov w19, w15
L17_13:
    mov w15, w19
L17_10:
L17_7:
    sub x14, x29, #80
    str w15, [x14]
    add x19, x14, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_26:
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_exists
_lb_files_exists:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    str x19, [sp, #168]
    str x20, [sp, #160]
    str x21, [sp, #152]
    sub x16, x29, #56
    str x0, [x16]
    sub x14, x29, #56
    ldr x19, [x14]
    sub x10, x29, #176
    str x19, [x10]
    mov x0, x19
    mov x1, #0
    bl _access
    mov w14, w0
    adrp x20, _lb_c_interrupted@PAGE
    add x20, x20, _lb_c_interrupted@PAGEOFF
    mov w21, w14
L18_7:
    mov x10, #0
    cmp w21, w10
    cset w14, lt
    cbnz w14, L18_10
    b L18_24
L18_24:
    mov w15, w14
    b L18_11
L18_10:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x20]
    cmp w14, w15
    cset w15, eq
L18_11:
    and w14, w15, #255
    cbnz w14, L18_8
    b L18_9
L18_8:
    mov x0, x19
    mov x1, #0
    bl _access
    mov w21, w0
    b L18_7
L18_9:
    mov x10, #0
    cmp w21, w10
    b.ne L18_13
L18_12:
    sub x14, x29, #160
    movz x9, #1
    strb w9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #120
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L18_23
L18_15:
    b L18_14
L18_13:
L18_14:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #2
    cmp w14, w10
    cset w15, eq
    cbnz w15, L18_25
    b L18_19
L18_25:
    mov w19, w15
    b L18_20
L18_19:
    movz x10, #20
    cmp w14, w10
    cset w19, eq
L18_20:
    and w15, w19, #255
    cbnz w15, L18_16
    b L18_17
L18_16:
    sub x14, x29, #160
    mov x9, #0
    strb w9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #120
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L18_23
L18_21:
    b L18_18
L18_17:
L18_18:
    sub x19, x29, #160
    add x20, x19, #8
    mov x0, x14
    bl _lb_files_14classify_error
    mov w15, w0
    str w15, [x20]
    adrp x15, l_text_48@PAGE
    add x15, x15, l_text_48@PAGEOFF
    sub x21, x29, #192
    str x15, [x21]
    add x15, x21, #8
    movz x9, #31
    str x9, [x15]
    add x15, x20, #8
    mov x10, x21
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #32
    movz x9, #1
    strb w9, [x15]
    mov x10, x19
    sub x11, x29, #120
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L18_23
L18_22:
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L18_23:
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L18_4
    b L18_3
L18_4:
    add x14, x15, #8
    sub x19, x29, #80
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L18_1
L18_3:
    ldrb w14, [x15]
    b L18_2
L18_1:
    mov x9, #0
    mov w14, w9
    b L18_2
L18_5:
L18_2:
    and w15, w14, #255
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_6:
    adrp x0, l_text_47@PAGE
    add x0, x0, l_text_47@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_16create_directory
_lb_files_16create_directory:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str w1, [x16]
    sub x14, x29, #96
    ldr w14, [x14]
    movz x10, #4095
    cmp w14, w10
    b.ls L19_2
L19_1:
    sub x19, x29, #64
    adrp x14, _lb_files_15invalid_options@PAGE
    add x14, x14, _lb_files_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_50@PAGE
    add x14, x14, l_text_50@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #49
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_4:
    b L19_3
L19_2:
L19_3:
    adrp x15, _lb_platform_macos@PAGE
    add x15, x15, _lb_platform_macos@PAGEOFF
    ldrb w15, [x15]
    cbnz w15, L19_5
    b L19_6
L19_5:
    sub x15, x29, #80
    ldr x15, [x15]
    mov w19, w14
    and w19, w19, #65535
    mov x0, x15
    mov x1, x19
    bl _mkdir
    mov w15, w0
    b L19_7
L19_6:
    sub x15, x29, #80
    ldr x15, [x15]
    mov x0, x15
    mov x1, x14
    bl _mkdir
    mov w15, w0
L19_7:
    mov x10, #0
    cmp w15, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L19_9
L19_8:
    sub x19, x29, #64
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_51@PAGE
    add x14, x14, l_text_51@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_11:
    b L19_10
L19_9:
L19_10:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_11remove_file
_lb_files_11remove_file:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    sub x16, x29, #80
    str x0, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    mov x0, x14
    bl _unlink
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L20_2
L20_1:
    sub x19, x29, #64
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_52@PAGE
    add x14, x14, l_text_52@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #35
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_4:
    b L20_3
L20_2:
L20_3:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_16remove_directory
_lb_files_16remove_directory:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    sub x16, x29, #80
    str x0, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    mov x0, x14
    bl _rmdir
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L21_2
L21_1:
    sub x19, x29, #64
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_53@PAGE
    add x14, x14, l_text_53@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_4:
    b L21_3
L21_2:
L21_3:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_rename
_lb_files_rename:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    sub x16, x29, #112
    str w2, [x16]
    sub x14, x29, #112
    ldrb w14, [x14]
    cbnz w14, L22_1
    b L22_2
L22_1:
    sub x14, x29, #80
    ldr x14, [x14]
    sub x15, x29, #96
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    bl _rename
    mov w14, w0
    b L22_3
L22_2:
    sub x14, x29, #80
    ldr x14, [x14]
    sub x15, x29, #96
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    movz x2, #4
    bl _renamex_np
    mov w14, w0
L22_3:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L22_5
L22_4:
    sub x19, x29, #64
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_54@PAGE
    add x14, x14, l_text_54@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #30
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L22_7:
    b L22_6
L22_5:
L22_6:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_14create_symlink
_lb_files_14create_symlink:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    sub x16, x29, #112
    str x2, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    sub x15, x29, #96
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    bl _symlink
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L23_2
L23_1:
    sub x19, x29, #64
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_55@PAGE
    add x14, x14, l_text_55@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_4:
    b L23_3
L23_2:
L23_3:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_16create_hard_link
_lb_files_16create_hard_link:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    adrp x14, _lb_files_20current_directory_fd@PAGE
    add x14, x14, _lb_files_20current_directory_fd@PAGEOFF
    ldrsw x14, [x14]
    sub x15, x29, #80
    ldr x15, [x15]
    sub x19, x29, #96
    ldr x19, [x19]
    mov x0, x14
    mov x1, x15
    mov x2, x14
    mov x3, x19
    mov x4, #0
    bl _linkat
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L24_2
L24_1:
    sub x19, x29, #64
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_56@PAGE
    add x14, x14, l_text_56@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L24_4:
    b L24_3
L24_2:
L24_3:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_12read_symlink
_lb_files_12read_symlink:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #544
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #512]
    str x20, [sp, #504]
    str x21, [sp, #496]
    str x22, [sp, #488]
    str x23, [sp, #480]
    str x24, [sp, #472]
    str x25, [sp, #464]
    str x26, [sp, #456]
    str x27, [sp, #448]
    str x28, [sp, #440]
    sub x16, x29, #168
    str x0, [x16]
    sub x16, x29, #184
    str x1, [x16]
    sub x14, x29, #184
    ldr x19, [x14]
    sub x20, x29, #192
    mov x0, x19
    movz x1, #1
    movz x2, #64
    mov x3, x20
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x15, x29, #208
    ldr x20, [x20]
    str x20, [x15]
    add x15, x15, #8
    strb w14, [x15]
    ldrb w14, [x15]
    cbnz w14, L25_1
    b L25_2
L25_1:
    b L25_3
L25_2:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_memory_exhausted@PAGE
    add x15, x15, _lb_memory_exhausted@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_57@PAGE
    add x15, x15, l_text_57@PAGEOFF
    sub x20, x29, #224
    str x15, [x20]
    add x15, x20, #8
    movz x9, #31
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    ldr x27, [sp, #448]
    ldr x28, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L25_4:
L25_3:
    sub x21, x29, #240
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x22, x0
    sub x23, x29, #288
    movz x10, #16384, lsl #48
    cmp x20, x10
    b.ls L25_6
L25_5:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_58@PAGE
    add x15, x15, l_text_58@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L25_7
L25_6:
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L25_8
    b L25_9
L25_9:
    adrp x0, l_text_60@PAGE
    add x0, x0, l_text_60@PAGEOFF
    adrp x1, l_text_59@PAGE
    add x1, x1, l_text_59@PAGEOFF
    bl _lb_core_7trap_at
L25_8:
    ldr x24, [x15]
    mov x17, x24
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x20
    movz x2, #1
    sub x8, x29, #312
    ldr x17, [sp], #16
    blr x17
    sub x26, x29, #312
    add x24, x26, #16
    ldrb w24, [x24]
    mov x10, #0
    cmp x20, x10
    cset w25, ne
    mov x10, #0
    cmp w24, w10
    cset w24, eq
    and w24, w25, w24
    cbnz w24, L25_10
    b L25_11
L25_10:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_61@PAGE
    add x15, x15, l_text_61@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L25_7
L25_11:
    ldr x14, [x26]
    str x14, [x23]
    add x14, x23, #8
    str x20, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
L25_7:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L25_13
    b L25_12
L25_13:
    add x14, x23, #16
    sub x19, x29, #152
    add x15, x19, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    ldr x27, [sp, #448]
    ldr x28, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L25_14:
L25_12:
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #168
    ldr x20, [x14]
    ldr x14, [x21]
    add x24, x21, #8
    ldr x15, [x24]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    bl _readlink
    mov x14, x0
    adrp x25, _lb_c_interrupted@PAGE
    add x25, x25, _lb_c_interrupted@PAGEOFF
    mov x26, x14
L25_15:
    mov x10, #0
    cmp x26, x10
    cset w23, lt
    cbnz w23, L25_18
    b L25_51
L25_51:
    mov w14, w23
    b L25_19
L25_18:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x25]
    cmp w14, w15
    cset w14, eq
L25_19:
    and w15, w14, #255
    cbnz w15, L25_16
    b L25_17
L25_16:
    ldr x14, [x21]
    ldr x15, [x24]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    bl _readlink
    mov x26, x0
    b L25_15
L25_17:
    cbnz w23, L25_20
    b L25_21
L25_20:
    sub x19, x29, #152
    add x20, x19, #16
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_62@PAGE
    add x14, x14, l_text_62@PAGEOFF
    sub x15, x29, #328
    str x14, [x15]
    add x14, x15, #8
    movz x9, #35
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #344
    ldr x15, [x21]
    ldr x20, [x24]
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x15, [x22]
    add x20, x22, #8
    ldr x20, [x20]
    cbnz x20, L25_24
    b L25_23
L25_24:
    add x21, x20, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L25_23:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    ldr x27, [sp, #448]
    ldr x28, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L25_25:
    b L25_22
L25_21:
L25_22:
    cmp x26, x19
    b.ls L25_27
L25_26:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_files_9too_large@PAGE
    add x15, x15, _lb_files_9too_large@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_64@PAGE
    add x15, x15, l_text_64@PAGEOFF
    sub x20, x29, #360
    str x15, [x20]
    add x15, x20, #8
    movz x9, #43
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #376
    ldr x15, [x21]
    ldr x20, [x24]
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x15, [x22]
    add x20, x22, #8
    ldr x20, [x20]
    cbnz x20, L25_30
    b L25_29
L25_30:
    add x21, x20, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L25_29:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    ldr x27, [sp, #448]
    ldr x28, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L25_31:
    b L25_28
L25_27:
L25_28:
    sub x19, x29, #392
    mov x9, x26
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_66@PAGE
    add x0, x0, l_text_66@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    sub x23, x29, #440
    movz x10, #16384, lsl #48
    cmp x20, x10
    b.ls L25_33
L25_32:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_58@PAGE
    add x15, x15, l_text_58@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L25_34
L25_33:
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L25_35
    b L25_36
L25_36:
    adrp x0, l_text_66@PAGE
    add x0, x0, l_text_66@PAGEOFF
    adrp x1, l_text_59@PAGE
    add x1, x1, l_text_59@PAGEOFF
    bl _lb_core_7trap_at
L25_35:
    ldr x25, [x15]
    mov x17, x25
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x20
    movz x2, #1
    sub x8, x29, #464
    ldr x17, [sp], #16
    blr x17
    sub x28, x29, #464
    add x25, x28, #16
    ldrb w25, [x25]
    mov x10, #0
    cmp x20, x10
    cset w27, ne
    mov x10, #0
    cmp w25, w10
    cset w25, eq
    and w25, w27, w25
    cbnz w25, L25_37
    b L25_38
L25_37:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_61@PAGE
    add x15, x15, l_text_61@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L25_34
L25_38:
    ldr x14, [x28]
    str x14, [x23]
    add x14, x23, #8
    str x20, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
L25_34:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L25_40
    b L25_39
L25_40:
    add x14, x23, #16
    sub x19, x29, #152
    add x15, x19, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #480
    ldr x15, [x21]
    ldr x20, [x24]
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x15, [x22]
    add x20, x22, #8
    ldr x20, [x20]
    cbnz x20, L25_42
    b L25_41
L25_42:
    add x21, x20, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L25_41:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    ldr x27, [sp, #448]
    ldr x28, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L25_43:
L25_39:
    mov x10, x23
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x26
    bl _lb_memory_copy_0g1_u8
    ldr x14, [x19]
    add x15, x19, #8
    ldr x20, [x15]
    cmp x26, x20
    b.lo 1f
    adrp x0, l_text_67@PAGE
    add x0, x0, l_text_67@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, x26
    mov x9, #0
    strb w9, [x14]
    ldr x20, [x19]
    ldr x14, [x15]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_68@PAGE
    add x0, x0, l_text_68@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x26, x14
    b.lo 1f
    adrp x0, l_text_68@PAGE
    add x0, x0, l_text_68@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x26
    b.ls L25_44
L25_45:
    adrp x0, l_text_68@PAGE
    add x0, x0, l_text_68@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L25_44:
    sub x14, x29, #496
    str x20, [x14]
    add x14, x14, #8
    str x26, [x14]
    sub x14, x29, #512
    str x20, [x14]
    add x15, x14, #8
    str x26, [x15]
    sub x19, x29, #152
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    sub x14, x29, #528
    ldr x15, [x21]
    ldr x23, [x24]
    str x15, [x14]
    add x15, x14, #8
    str x23, [x15]
    ldr x15, [x22]
    add x23, x22, #8
    ldr x23, [x23]
    cbnz x23, L25_47
    b L25_46
L25_47:
    add x20, x23, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L25_46:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    ldr x27, [sp, #448]
    ldr x28, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L25_48:
    sub x14, x29, #240
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x19, x29, #544
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #1
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_68@PAGE
    add x0, x0, l_text_68@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L25_50
    b L25_49
L25_50:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L25_49:
    adrp x0, l_text_68@PAGE
    add x0, x0, l_text_68@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_TemporaryFile_path
_lb_files_TemporaryFile_path:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #48
    str x0, [x16]
    sub x9, x29, #48
    ldr x14, [x9]
    add x14, x14, #8
    sub x19, x29, #40
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_1:
    adrp x0, l_text_79@PAGE
    add x0, x0, l_text_79@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_TemporaryFile_read
_lb_files_TemporaryFile_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #88
    ldr x15, [x9]
    sub x14, x29, #104
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #144
    bl _lb_files_File_read
    sub x15, x29, #144
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L27_2
    b L27_1
L27_2:
    add x14, x15, #8
    sub x19, x29, #80
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L27_3:
L27_1:
    ldr x14, [x15]
    sub x19, x29, #80
    str x14, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L27_4:
    adrp x0, l_text_80@PAGE
    add x0, x0, l_text_80@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_TemporaryFile_write
_lb_files_TemporaryFile_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #88
    ldr x15, [x9]
    sub x14, x29, #104
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #144
    bl _lb_files_File_write
    sub x15, x29, #144
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L28_2
    b L28_1
L28_2:
    add x14, x15, #8
    sub x19, x29, #80
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_3:
L28_1:
    ldr x14, [x15]
    sub x19, x29, #80
    str x14, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_4:
    adrp x0, l_text_81@PAGE
    add x0, x0, l_text_81@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_TemporaryFile_seek
_lb_files_TemporaryFile_seek:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #320]
    str x20, [sp, #312]
    str x21, [sp, #304]
    str x22, [sp, #296]
    str x23, [sp, #288]
    str x24, [sp, #280]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    sub x16, x29, #152
    str w2, [x16]
    sub x9, x29, #120
    ldr x15, [x9]
    sub x14, x29, #136
    ldr x19, [x14]
    sub x14, x29, #152
    ldrb w14, [x14]
    sub x10, x29, #248
    str x19, [x10]
    sub x10, x29, #264
    str w14, [x10]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L29_5
    b L29_6
L29_5:
    ldrsw x20, [x15]
    b L29_7
L29_6:
    sub x19, x29, #232
    add x14, x19, #8
    adrp x15, _lb_io_closed@PAGE
    add x15, x15, _lb_io_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_25@PAGE
    add x15, x15, l_text_25@PAGEOFF
    sub x20, x29, #280
    str x15, [x20]
    add x15, x20, #8
    movz x9, #18
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #192
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L29_23
L29_8:
L29_7:
    sub x14, x29, #264
    ldrb w14, [x14]
    mov w21, w14
    sub x10, x29, #312
    str w20, [x10]
    sub x10, x29, #328
    str x19, [x10]
    sub x10, x29, #344
    str w21, [x10]
    mov x0, x20
    mov x1, x19
    mov x2, x21
    bl _lseek
    mov x14, x0
    b L29_20
L29_19:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L29_20:
    adrp x22, _lb_c_interrupted@PAGE
    add x22, x22, _lb_c_interrupted@PAGEOFF
    mov x23, x14
L29_9:
    mov x10, #0
    cmp x23, x10
    cset w24, lt
    cbnz w24, L29_12
    b L29_24
L29_24:
    mov w14, w24
    b L29_13
L29_12:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x22]
    cmp w14, w15
    cset w14, eq
L29_13:
    and w15, w14, #255
    cbnz w15, L29_10
    b L29_11
L29_10:
    sub x10, x29, #312
    str w20, [x10]
    sub x10, x29, #328
    str x19, [x10]
    sub x10, x29, #344
    str w21, [x10]
    mov x0, x20
    mov x1, x19
    mov x2, x21
    bl _lseek
    mov x23, x0
    b L29_22
L29_21:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L29_22:
    b L29_9
L29_11:
    cbnz w24, L29_14
    b L29_15
L29_14:
    sub x19, x29, #232
    add x20, x19, #8
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_39@PAGE
    add x14, x14, l_text_39@PAGEOFF
    sub x15, x29, #296
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #192
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L29_23
L29_17:
    b L29_16
L29_15:
L29_16:
    sub x14, x29, #232
    str x23, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #192
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L29_23
L29_18:
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L29_23:
    sub x15, x29, #192
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L29_2
    b L29_1
L29_2:
    add x14, x15, #8
    sub x19, x29, #112
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L29_3:
L29_1:
    ldr x14, [x15]
    sub x19, x29, #112
    str x14, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L29_4:
    adrp x0, l_text_82@PAGE
    add x0, x0, l_text_82@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_TemporaryFile_12release_name
_lb_files_TemporaryFile_12release_name:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    str x20, [sp, #144]
    str x21, [sp, #136]
    str x22, [sp, #128]
    str x23, [sp, #120]
    str x24, [sp, #112]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x15, [x9]
    add x19, x15, #8
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L30_2
L30_1:
    sub x20, x29, #88
    add x21, x15, #24
    ldr x14, [x21]
    cbnz x14, L30_4
    b L30_5
L30_4:
    sub x22, x29, #104
    mov x10, x21
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L30_6
L30_5:
    adrp x14, l_text_84@PAGE
    add x14, x14, l_text_84@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
    str x9, [x14]
    adrp x14, l_text_85@PAGE
    add x14, x14, l_text_85@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_85@PAGE
    add x0, x0, l_text_85@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L30_6:
    mov x10, x22
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #136
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x24, x0
    mov x10, x24
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x10, x23
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, l_text_86@PAGE
    add x14, x14, l_text_86@PAGEOFF
    sub x15, x29, #152
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #168
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L30_3
L30_2:
L30_3:
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    ldr x22, [sp, #128]
    ldr x23, [sp, #120]
    ldr x24, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_TemporaryFile_11remove_name
_lb_files_TemporaryFile_11remove_name:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    str x21, [sp, #96]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    add x14, x19, #8
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L31_2
L31_1:
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    ldr x21, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31_4:
    b L31_3
L31_2:
L31_3:
    ldr x15, [x14]
    mov x0, x15
    sub x8, x29, #144
    bl _lb_files_11remove_file
    sub x20, x29, #144
    add x15, x20, #24
    ldrb w15, [x15]
    cbnz w15, L31_8
    b L31_7
L31_8:
    sub x21, x29, #112
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L31_5
L31_7:
    b L31_6
L31_5:
    ldr w14, [x21]
    adrp x15, _lb_files_missing@PAGE
    add x15, x15, _lb_files_missing@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L31_10
L31_9:
    sub x19, x29, #80
    str w14, [x19]
    add x15, x21, #8
    add x20, x19, #8
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #24
    movz x9, #1
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    ldr x21, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31_12:
    b L31_11
L31_10:
L31_11:
L31_6:
    mov x0, x19
    bl _lb_files_TemporaryFile_12release_name
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    ldr x21, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_Replacement_prepare
_lb_files_Replacement_prepare:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1216
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1184]
    str x20, [sp, #1176]
    str x21, [sp, #1168]
    str x22, [sp, #1160]
    str x23, [sp, #1152]
    str x24, [sp, #1144]
    str x25, [sp, #1136]
    str x26, [sp, #1128]
    str x27, [sp, #1120]
    str x28, [sp, #1112]
    sub x16, x29, #208
    str x0, [x16]
    sub x16, x29, #224
    str w1, [x16]
    sub x16, x29, #240
    str w2, [x16]
    sub x9, x29, #256
    str x9, [sp, #32]
    sub x14, x29, #208
    ldr x19, [x14]
    mov x0, x19
    bl _strlen
    mov x14, x0
    sub x15, x29, #272
    str x19, [x15]
    add x19, x15, #8
    str x14, [x19]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_paths_directory
    sub x16, x29, #288
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #288
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #336
    bl _lb_strings_copy
    sub x15, x29, #336
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L32_2
    b L32_1
L32_2:
    add x14, x15, #16
    sub x19, x29, #192
    add x20, x19, #56
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #80
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #88
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1184]
    ldr x20, [sp, #1176]
    ldr x21, [sp, #1168]
    ldr x22, [sp, #1160]
    ldr x23, [sp, #1152]
    ldr x24, [sp, #1144]
    ldr x25, [sp, #1136]
    ldr x26, [sp, #1128]
    ldr x27, [sp, #1120]
    ldr x28, [sp, #1112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L32_1:
    mov x10, x15
    ldr x11, [sp, #32]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x9, x29, #344
    str x9, [sp, #128]
    ldr x11, [sp, #128]
    str xzr, [x11, #0]
    sub x14, x29, #240
    ldrb w9, [x14]
    str w9, [sp, #120]
    ldr w9, [sp, #120]
    cbnz w9, L32_4
    b L32_5
L32_4:
    ldr x9, [sp, #32]
    ldr x14, [x9]
    mov x0, x14
    mov x1, #0
    movz x2, #420
    sub x8, x29, #384
    bl _lb_files_File_open
    sub x15, x29, #384
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L32_8
    b L32_7
L32_8:
    add x14, x15, #8
    sub x21, x29, #192
    add x22, x21, #56
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #80
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #128]
    sub x8, x29, #608
    bl _lb_files_File_close
    sub x22, x29, #608
    add x14, x22, #24
    ldrb w14, [x14]
    cbnz w14, L32_17
    b L32_16
L32_17:
    sub x14, x29, #576
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L32_14
L32_16:
    b L32_15
L32_14:
L32_15:
L32_18:
    ldr x9, [sp, #32]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #88
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1184]
    ldr x20, [sp, #1176]
    ldr x21, [sp, #1168]
    ldr x22, [sp, #1160]
    ldr x23, [sp, #1152]
    ldr x24, [sp, #1144]
    ldr x25, [sp, #1136]
    ldr x26, [sp, #1128]
    ldr x27, [sp, #1120]
    ldr x28, [sp, #1112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L32_7:
    mov x10, x15
    ldr x11, [sp, #128]
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    b L32_6
L32_5:
L32_6:
    sub x9, x29, #424
    str x9, [sp, #24]
    ldr x9, [sp, #32]
    ldr x22, [x9]
    sub x14, x29, #224
    ldr w9, [x14]
    str w9, [sp, #112]
    sub x10, x29, #696
    str x22, [x10]
    ldr w9, [sp, #112]
    sub x10, x29, #712
    str w9, [x10]
    sub x25, x29, #728
    mov x0, x22
    bl _strlen
    mov x14, x0
    sub x15, x29, #744
    str x22, [x15]
    add x22, x15, #8
    str x14, [x22]
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    sub x22, x29, #760
    str x14, [x22]
    add x14, x22, #8
    movz x9, #38
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #808
    bl _lb_paths_join
    sub x15, x29, #808
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L32_20
    b L32_19
L32_20:
    add x14, x15, #16
    sub x22, x29, #680
    add x23, x22, #40
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #64
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #496
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x12, [x10, #64]
    str x12, [x11, #64]
    b L32_47
L32_19:
    mov x10, x15
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #824
    adrp x9, l_text_70@PAGE
    add x9, x9, l_text_70@PAGEOFF
    str x9, [sp, #104]
    sub x26, x29, #840
    ldr x9, [sp, #104]
    str x9, [x26]
    add x27, x26, #8
    movz x9, #16
    str x9, [x27]
    mov x10, x26
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x26, [x25]
    add x14, x25, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #32
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_71@PAGE
    add x0, x0, l_text_71@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #96]
    sub x28, x29, #856
    sub x9, x29, #896
    str x9, [sp, #88]
    ldr x9, [sp, #88]
    add x9, x9, #8
    str x9, [sp, #80]
    sub x9, x29, #928
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #24
    str x9, [sp, #72]
    sub x9, x29, #952
    str x9, [sp, #8]
    sub x22, x29, #1024
    add x9, x22, #32
    str x9, [sp, #64]
    add x9, x22, #8
    str x9, [sp, #56]
    sub x9, x29, #984
    str x9, [sp, #48]
    adrp x9, _lb_files_14already_exists@PAGE
    add x9, x9, _lb_files_14already_exists@PAGEOFF
    str x9, [sp, #40]
    mov x9, #0
    mov x19, x9
L32_22:
    movz x10, #128
    cmp x19, x10
    b.hs L32_24
L32_23:
    mov x11, x28
    stp xzr, xzr, [x11, #0]
    ldr x10, [sp, #88]
    str x28, [x10]
    movz x9, #16
    ldr x10, [sp, #80]
    str x9, [x10]
    ldr x9, [sp, #88]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #928
    bl _lb_os_12random_bytes
    ldr x9, [sp, #72]
    ldrb w14, [x9]
    cbnz w14, L32_28
    b L32_27
L32_28:
    sub x14, x29, #880
    ldr x10, [sp, #16]
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L32_25
L32_27:
    b L32_26
L32_25:
    sub x19, x29, #680
    add x14, x19, #40
    adrp x15, _lb_files_failed@PAGE
    add x15, x15, _lb_files_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_72@PAGE
    add x15, x15, l_text_72@PAGEOFF
    sub x20, x29, #944
    str x15, [x20]
    add x15, x20, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x10, x19
    sub x11, x29, #496
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x12, [x10, #64]
    str x12, [x11, #64]
    b L32_47
L32_26:
    mov x9, #0
    mov x14, x9
L32_30:
    movz x10, #16
    cmp x14, x10
    b.hs L32_33
L32_31:
    lsl x15, x14, #1
    ldr x9, [sp, #96]
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_73@PAGE
    add x0, x0, l_text_73@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    add x21, x26, x15
    add x20, x28, x14
    ldrb w23, [x20]
L32_35:
    lsr w24, w23, #4
    and w24, w24, #255
    mov w24, w24
    movz x10, #16
    cmp x24, x10
    b.lo 1f
    adrp x0, l_text_73@PAGE
    add x0, x0, l_text_73@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #104]
    add x24, x9, x24
    ldrb w24, [x24]
    strb w24, [x21]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_75@PAGE
    add x0, x0, l_text_75@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    add x24, x26, x24
    ldrb w27, [x20]
    movz x10, #15
    and w27, w27, w10
    mov w27, w27
    ldr x9, [sp, #104]
    add x27, x9, x27
    ldrb w27, [x27]
    strb w27, [x24]
L32_32:
    add x15, x14, #1
    mov x14, x15
    b L32_30
L32_33:
    ldr x14, [x25]
    mov x0, x14
    movz x1, #5
    ldr x2, [sp, #112]
    sub x8, x29, #1024
    bl _lb_files_File_open
    ldr x9, [sp, #64]
    ldrb w14, [x9]
    cbnz w14, L32_39
    b L32_38
L32_39:
    ldr x10, [sp, #56]
    ldr x11, [sp, #48]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L32_36
L32_38:
    sub x19, x29, #960
    mov x10, x22
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    b L32_37
L32_36:
    ldr x9, [sp, #48]
    ldr w14, [x9]
    ldr x9, [sp, #40]
    ldr w15, [x9]
    cmp w14, w15
    b.ne L32_41
L32_40:
    add x14, x19, #1
    mov x19, x14
    b L32_22
L32_41:
L32_42:
    sub x19, x29, #680
    add x15, x19, #40
    str w14, [x15]
    ldr x9, [sp, #48]
    add x20, x9, #8
    add x15, x15, #8
    mov x10, x20
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #64
    movz x9, #1
    strb w9, [x15]
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x10, x19
    sub x11, x29, #496
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x12, [x10, #64]
    str x12, [x11, #64]
    b L32_47
L32_37:
    mov x10, x19
    ldr x11, [sp, #8]
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x20, x29, #1064
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    ldr x10, [sp, #8]
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x20, #8
    mov x10, x25
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    add x15, x20, #24
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #680
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x21, #64
    mov x9, #0
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #496
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x12, [x10, #64]
    str x12, [x11, #64]
    b L32_47
L32_24:
    sub x19, x29, #680
    add x14, x19, #40
    adrp x15, _lb_files_14already_exists@PAGE
    add x15, x15, _lb_files_14already_exists@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_77@PAGE
    add x15, x15, l_text_77@PAGEOFF
    sub x20, x29, #1080
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x10, x19
    sub x11, x29, #496
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x12, [x10, #64]
    str x12, [x11, #64]
L32_47:
    sub x15, x29, #496
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L32_11
    b L32_10
L32_11:
    add x14, x15, #40
    sub x19, x29, #192
    add x20, x19, #56
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #80
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #128]
    sub x8, x29, #608
    bl _lb_files_File_close
    sub x20, x29, #608
    add x14, x20, #24
    ldrb w14, [x14]
    cbnz w14, L32_51
    b L32_50
L32_51:
    sub x14, x29, #576
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L32_48
L32_50:
    b L32_49
L32_48:
L32_49:
L32_52:
    ldr x9, [sp, #32]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #88
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1184]
    ldr x20, [sp, #1176]
    ldr x21, [sp, #1168]
    ldr x22, [sp, #1160]
    ldr x23, [sp, #1152]
    ldr x24, [sp, #1144]
    ldr x25, [sp, #1136]
    ldr x26, [sp, #1128]
    ldr x27, [sp, #1120]
    ldr x28, [sp, #1112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L32_10:
    mov x10, x15
    ldr x11, [sp, #24]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    sub x19, x29, #552
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    ldr x10, [sp, #128]
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x19, #8
    ldr x10, [sp, #24]
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x19, #48
    ldr w9, [sp, #120]
    strb w9, [x14]
    sub x20, x29, #192
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x14, x20, #80
    mov x9, #0
    strb w9, [x14]
    ldr x9, [sp, #32]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #88
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1184]
    ldr x20, [sp, #1176]
    ldr x21, [sp, #1168]
    ldr x22, [sp, #1160]
    ldr x23, [sp, #1152]
    ldr x24, [sp, #1144]
    ldr x25, [sp, #1136]
    ldr x26, [sp, #1128]
    ldr x27, [sp, #1120]
    ldr x28, [sp, #1112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_Replacement_finish
_lb_files_Replacement_finish:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #496
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #464]
    str x20, [sp, #456]
    str x21, [sp, #448]
    str x22, [sp, #440]
    str x23, [sp, #432]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str x1, [x16]
    sub x16, x29, #136
    str w2, [x16]
    sub x16, x29, #152
    str x3, [x16]
    sub x9, x29, #104
    ldr x20, [x9]
    add x19, x20, #48
    ldrb w14, [x19]
    cbnz w14, L33_1
    b L33_2
L33_1:
    add x14, x20, #8
    mov x0, x14
    sub x8, x29, #344
    bl _lb_files_File_sync
    sub x15, x29, #344
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L33_24
    b L33_23
L33_24:
    sub x21, x29, #312
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #184
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L33_26
L33_25:
L33_23:
    sub x14, x29, #312
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #184
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L33_26:
    sub x15, x29, #184
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L33_5
    b L33_4
L33_5:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L33_6:
L33_4:
    b L33_3
L33_2:
L33_3:
    add x21, x20, #8
    sub x14, x29, #120
    ldr x22, [x14]
    sub x14, x29, #136
    ldrb w14, [x14]
    sub x10, x29, #392
    str x22, [x10]
    sub x10, x29, #408
    str w14, [x10]
    add x23, x21, #8
    add x14, x23, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L33_28
L33_27:
    sub x21, x29, #376
    adrp x14, _lb_io_closed@PAGE
    add x14, x14, _lb_io_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x21]
    adrp x14, l_text_83@PAGE
    add x14, x14, l_text_83@PAGEOFF
    sub x15, x29, #424
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    add x14, x21, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #216
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L33_37
L33_30:
    b L33_29
L33_28:
L33_29:
    mov x0, x21
    sub x8, x29, #456
    bl _lb_files_File_close
    sub x15, x29, #456
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L33_32
    b L33_31
L33_32:
    sub x21, x29, #376
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #216
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L33_37
L33_33:
L33_31:
    ldr x14, [x23]
    sub x15, x29, #408
    ldrb w15, [x15]
    mov x0, x14
    mov x1, x22
    mov x2, x15
    sub x8, x29, #488
    bl _lb_files_rename
    sub x15, x29, #488
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L33_35
    b L33_34
L33_35:
    sub x21, x29, #376
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #216
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L33_37
L33_36:
L33_34:
    mov x0, x21
    bl _lb_files_TemporaryFile_12release_name
    sub x14, x29, #376
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #216
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L33_37:
    sub x15, x29, #216
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L33_8
    b L33_7
L33_8:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L33_9:
L33_7:
    sub x14, x29, #152
    ldr x14, [x14]
    cbnz x14, L33_13
    b L33_11
L33_13:
L33_10:
    movz x9, #1
    strb w9, [x14]
    b L33_12
L33_11:
L33_12:
    ldrb w14, [x19]
    cbnz w14, L33_14
    b L33_15
L33_14:
    mov x0, x20
    sub x8, x29, #248
    bl _lb_files_File_sync
    sub x15, x29, #248
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L33_18
    b L33_17
L33_18:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L33_19:
L33_17:
    mov x0, x20
    sub x8, x29, #280
    bl _lb_files_File_close
    sub x15, x29, #280
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L33_21
    b L33_20
L33_21:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L33_22:
L33_20:
    b L33_16
L33_15:
L33_16:
    sub x14, x29, #96
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_Replacement_destroy
_lb_files_Replacement_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    str x19, [sp, #328]
    str x20, [sp, #320]
    str x21, [sp, #312]
    str x22, [sp, #304]
    sub x16, x29, #56
    str x0, [x16]
    sub x9, x29, #56
    ldr x20, [x9]
    add x19, x20, #8
    mov x0, x19
    sub x8, x29, #200
    bl _lb_files_File_close
    sub x15, x29, #200
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L34_8
    b L34_7
L34_8:
    sub x21, x29, #168
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L34_5
L34_7:
    b L34_6
L34_5:
    mov x0, x19
    sub x8, x29, #256
    bl _lb_files_TemporaryFile_11remove_name
    sub x15, x29, #256
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L34_12
    b L34_11
L34_12:
    sub x14, x29, #224
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L34_9
L34_11:
    b L34_10
L34_9:
L34_10:
    sub x22, x29, #144
    ldr w14, [x21]
    str w14, [x22]
    add x14, x21, #8
    add x15, x22, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #112
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L34_17
L34_13:
L34_6:
    mov x0, x19
    sub x8, x29, #288
    bl _lb_files_TemporaryFile_11remove_name
    sub x15, x29, #288
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L34_15
    b L34_14
L34_15:
    sub x21, x29, #144
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #112
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L34_17
L34_16:
L34_14:
    sub x14, x29, #144
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #112
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L34_17:
    sub x15, x29, #112
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L34_4
    b L34_3
L34_4:
    sub x14, x29, #80
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L34_1
L34_3:
    b L34_2
L34_1:
L34_2:
    mov x0, x19
    bl _lb_files_TemporaryFile_12release_name
L34_18:
    mov x0, x20
    sub x8, x29, #344
    bl _lb_files_File_close
    sub x15, x29, #344
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L34_22
    b L34_21
L34_22:
    sub x14, x29, #312
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L34_19
L34_21:
    b L34_20
L34_19:
L34_20:
L34_23:
    ldr x19, [sp, #328]
    ldr x20, [sp, #320]
    ldr x21, [sp, #312]
    ldr x22, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_9copy_file
_lb_files_9copy_file:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #6688
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #6656]
    str x20, [sp, #6648]
    str x21, [sp, #6640]
    str x22, [sp, #6632]
    str x23, [sp, #6624]
    str x24, [sp, #6616]
    str x25, [sp, #6608]
    str x26, [sp, #6600]
    sub x16, x29, #144
    str x0, [x16]
    sub x16, x29, #160
    str x1, [x16]
    sub x16, x29, #176
    str x2, [x16]
    sub x16, x29, #192
    str w3, [x16]
    sub x16, x29, #208
    str w4, [x16]
    sub x16, x29, #224
    str w5, [x16]
    sub x16, x29, #240
    str x6, [x16]
    sub x14, x29, #240
    ldr x19, [x14]
    cbnz x19, L35_4
    b L35_2
L35_4:
L35_1:
    mov x9, #0
    strb w9, [x19]
    b L35_3
L35_2:
L35_3:
    sub x20, x29, #248
    sub x14, x29, #144
    ldr x14, [x14]
    mov x0, x14
    mov x1, #0
    movz x2, #420
    sub x8, x29, #288
    bl _lb_files_File_open
    sub x15, x29, #288
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L35_6
    b L35_5
L35_6:
    add x14, x15, #8
    sub x19, x29, #128
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6656]
    ldr x20, [sp, #6648]
    ldr x21, [sp, #6640]
    ldr x22, [sp, #6632]
    ldr x23, [sp, #6624]
    ldr x24, [sp, #6616]
    ldr x25, [sp, #6608]
    ldr x26, [sp, #6600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_5:
    mov x10, x15
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x21, x29, #416
    add x14, x20, #4
    ldrb w14, [x14]
    cbnz w14, L35_61
    b L35_62
L35_61:
    ldrsw x14, [x20]
    b L35_63
L35_62:
    movz x16, #5560
    sub x22, x29, x16
    add x14, x22, #128
    adrp x15, _lb_io_closed@PAGE
    add x15, x15, _lb_io_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_25@PAGE
    add x15, x15, l_text_25@PAGEOFF
    movz x16, #5576
    sub x23, x29, x16
    str x15, [x23]
    add x15, x23, #8
    movz x9, #18
    str x9, [x15]
    add x14, x14, #8
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #152
    movz x9, #1
    strb w9, [x14]
    sub x0, x29, #576
    mov x1, x22
    movz x2, #160
    bl _memcpy
    b L35_69
L35_63:
    mov x0, x14
    movz x16, #5736
    sub x8, x29, x16
    bl _lb_files_19metadata_descriptor
    movz x16, #5736
    sub x22, x29, x16
    add x15, x22, #152
    ldrb w15, [x15]
    cbnz w15, L35_66
    b L35_65
L35_66:
    add x14, x22, #128
    movz x16, #5560
    sub x23, x29, x16
    add x15, x23, #128
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x23, #152
    movz x9, #1
    strb w9, [x14]
    sub x0, x29, #576
    mov x1, x23
    movz x2, #160
    bl _memcpy
    b L35_69
L35_65:
    movz x16, #5560
    sub x23, x29, x16
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    add x14, x23, #152
    mov x9, #0
    strb w9, [x14]
    sub x0, x29, #576
    mov x1, x23
    movz x2, #160
    bl _memcpy
L35_69:
    sub x15, x29, #576
    add x14, x15, #152
    ldrb w14, [x14]
    cbnz w14, L35_9
    b L35_8
L35_9:
    add x14, x15, #128
    sub x19, x29, #128
    add x21, x19, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    movz x16, #5792
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #5792
    sub x21, x29, x16
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L35_73
    b L35_72
L35_73:
    movz x16, #5760
    sub x14, x29, x16
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L35_70
L35_72:
    b L35_71
L35_70:
L35_71:
L35_74:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6656]
    ldr x20, [sp, #6648]
    ldr x21, [sp, #6640]
    ldr x22, [sp, #6632]
    ldr x23, [sp, #6624]
    ldr x24, [sp, #6616]
    ldr x25, [sp, #6608]
    ldr x26, [sp, #6600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_8:
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    ldrb w14, [x21]
    movz x10, #2
    cmp w14, w10
    b.ne L35_12
L35_11:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_files_12is_directory@PAGE
    add x15, x15, _lb_files_12is_directory@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_88@PAGE
    add x15, x15, l_text_88@PAGEOFF
    sub x21, x29, #592
    str x15, [x21]
    add x15, x21, #8
    movz x9, #42
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    movz x16, #5792
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #5792
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L35_78
    b L35_77
L35_78:
    movz x16, #5760
    sub x14, x29, x16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L35_75
L35_77:
    b L35_76
L35_75:
L35_76:
L35_79:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6656]
    ldr x20, [sp, #6648]
    ldr x21, [sp, #6640]
    ldr x22, [sp, #6632]
    ldr x23, [sp, #6624]
    ldr x24, [sp, #6616]
    ldr x25, [sp, #6608]
    ldr x26, [sp, #6600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_12:
L35_13:
    sub x14, x29, #160
    ldr x22, [x14]
    movz x16, #5976
    sub x10, x29, x16
    str x22, [x10]
    movz x16, #6104
    sub x23, x29, x16
    mov x0, x22
    mov x1, #0
    movz x16, #6416
    sub x8, x29, x16
    bl _lb_files_metadata
    movz x16, #6416
    sub x15, x29, x16
    add x14, x15, #152
    ldrb w14, [x14]
    cbnz w14, L35_83
    b L35_82
L35_83:
    add x14, x15, #128
    movz x16, #6256
    sub x23, x29, x16
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L35_80
L35_82:
    movz x16, #6232
    sub x24, x29, x16
    mov x10, x15
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    b L35_81
L35_80:
    ldr w14, [x23]
    adrp x15, _lb_files_missing@PAGE
    add x15, x15, _lb_files_missing@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    b.ne L35_85
L35_84:
    movz x16, #6552
    sub x23, x29, x16
    mov x0, x23
    mov x1, #0
    movz x2, #136
    bl _memset
    movz x16, #5960
    sub x24, x29, x16
    mov x0, x24
    mov x1, x23
    movz x2, #136
    bl _memcpy
    add x14, x24, #160
    mov x9, #0
    strb w9, [x14]
    sub x0, x29, #760
    mov x1, x24
    movz x2, #168
    bl _memcpy
    b L35_90
L35_85:
L35_86:
    movz x16, #5960
    sub x24, x29, x16
    add x15, x24, #136
    str w14, [x15]
    add x25, x23, #8
    add x15, x15, #8
    mov x10, x25
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x24, #160
    movz x9, #1
    strb w9, [x15]
    sub x0, x29, #760
    mov x1, x24
    movz x2, #168
    bl _memcpy
    b L35_90
L35_81:
    mov x10, x24
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    movz x16, #6688
    sub x25, x29, x16
    mov x10, x23
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    add x14, x25, #128
    movz x9, #1
    strb w9, [x14]
    movz x16, #5960
    sub x26, x29, x16
    mov x0, x26
    mov x1, x25
    movz x2, #136
    bl _memcpy
    add x14, x26, #160
    mov x9, #0
    strb w9, [x14]
    sub x0, x29, #760
    mov x1, x26
    movz x2, #168
    bl _memcpy
L35_90:
    sub x15, x29, #760
    add x14, x15, #160
    ldrb w14, [x14]
    cbnz w14, L35_19
    b L35_18
L35_19:
    add x14, x15, #136
    sub x19, x29, #128
    add x21, x19, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    movz x16, #5792
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #5792
    sub x21, x29, x16
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L35_94
    b L35_93
L35_94:
    movz x16, #5760
    sub x14, x29, x16
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L35_91
L35_93:
    b L35_92
L35_91:
L35_92:
L35_95:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6656]
    ldr x20, [sp, #6648]
    ldr x21, [sp, #6640]
    ldr x22, [sp, #6632]
    ldr x23, [sp, #6624]
    ldr x24, [sp, #6616]
    ldr x25, [sp, #6608]
    ldr x26, [sp, #6600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_18:
    add x14, x15, #128
    ldrb w14, [x14]
    cbnz w14, L35_21
    b L35_16
L35_21:
    sub x23, x29, #888
    mov x10, x15
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
L35_15:
    sub x14, x29, #192
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L35_23
L35_22:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_files_14already_exists@PAGE
    add x15, x15, _lb_files_14already_exists@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_89@PAGE
    add x15, x15, l_text_89@PAGEOFF
    sub x21, x29, #904
    str x15, [x21]
    add x15, x21, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    movz x16, #5792
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #5792
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L35_99
    b L35_98
L35_99:
    movz x16, #5760
    sub x14, x29, x16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L35_96
L35_98:
    b L35_97
L35_96:
L35_97:
L35_100:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6656]
    ldr x20, [sp, #6648]
    ldr x21, [sp, #6640]
    ldr x22, [sp, #6632]
    ldr x23, [sp, #6624]
    ldr x24, [sp, #6616]
    ldr x25, [sp, #6608]
    ldr x26, [sp, #6600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_23:
L35_24:
    add x14, x21, #16
    ldr x14, [x14]
    add x15, x23, #16
    ldr x15, [x15]
    cmp x14, x15
    cset w14, eq
    cbnz w14, L35_29
    b L35_151
L35_151:
    mov w15, w14
    b L35_30
L35_29:
    add x14, x21, #24
    ldr x14, [x14]
    add x15, x23, #24
    ldr x15, [x15]
    cmp x14, x15
    cset w15, eq
L35_30:
    and w14, w15, #255
    cbnz w14, L35_26
    b L35_27
L35_26:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_90@PAGE
    add x15, x15, l_text_90@PAGEOFF
    sub x21, x29, #920
    str x15, [x21]
    add x15, x21, #8
    movz x9, #45
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    movz x16, #5792
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #5792
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L35_104
    b L35_103
L35_104:
    movz x16, #5760
    sub x14, x29, x16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L35_101
L35_103:
    b L35_102
L35_101:
L35_102:
L35_105:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6656]
    ldr x20, [sp, #6648]
    ldr x21, [sp, #6640]
    ldr x22, [sp, #6632]
    ldr x23, [sp, #6624]
    ldr x24, [sp, #6616]
    ldr x25, [sp, #6608]
    ldr x26, [sp, #6600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_27:
L35_28:
    ldrb w14, [x23]
    movz x10, #2
    cmp w14, w10
    b.ne L35_33
L35_32:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_files_12is_directory@PAGE
    add x15, x15, _lb_files_12is_directory@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_91@PAGE
    add x15, x15, l_text_91@PAGEOFF
    sub x21, x29, #936
    str x15, [x21]
    add x15, x21, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    movz x16, #5792
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #5792
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L35_109
    b L35_108
L35_109:
    movz x16, #5760
    sub x14, x29, x16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L35_106
L35_108:
    b L35_107
L35_106:
L35_107:
L35_110:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6656]
    ldr x20, [sp, #6648]
    ldr x21, [sp, #6640]
    ldr x22, [sp, #6632]
    ldr x23, [sp, #6624]
    ldr x24, [sp, #6616]
    ldr x25, [sp, #6608]
    ldr x26, [sp, #6600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_33:
L35_34:
    b L35_17
L35_16:
L35_17:
    sub x21, x29, #992
    sub x14, x29, #208
    ldr w14, [x14]
    sub x15, x29, #224
    ldrb w15, [x15]
    mov x0, x22
    mov x1, x14
    mov x2, x15
    sub x8, x29, #1080
    bl _lb_files_Replacement_prepare
    sub x15, x29, #1080
    add x14, x15, #80
    ldrb w14, [x14]
    cbnz w14, L35_37
    b L35_36
L35_37:
    add x14, x15, #56
    sub x19, x29, #128
    add x21, x19, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    movz x16, #5792
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #5792
    sub x21, x29, x16
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L35_114
    b L35_113
L35_114:
    movz x16, #5760
    sub x14, x29, x16
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L35_111
L35_113:
    b L35_112
L35_111:
L35_112:
L35_115:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6656]
    ldr x20, [sp, #6648]
    ldr x21, [sp, #6640]
    ldr x22, [sp, #6632]
    ldr x23, [sp, #6624]
    ldr x24, [sp, #6616]
    ldr x25, [sp, #6608]
    ldr x26, [sp, #6600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_36:
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    movz x16, #5176
    sub x23, x29, x16
    mov x0, x23
    mov x1, #0
    movz x2, #4096
    bl _memset
    movz x16, #5192
    sub x14, x29, x16
    str x20, [x14]
    adrp x24, _lb_vt_files_File_Reader@PAGE
    add x24, x24, _lb_vt_files_File_Reader@PAGEOFF
    add x25, x14, #8
    str x24, [x25]
    add x24, x21, #8
    movz x16, #5208
    sub x25, x29, x16
    str x24, [x25]
    adrp x24, _lb_vt_files_TemporaryFile_Writer@PAGE
    add x24, x24, _lb_vt_files_TemporaryFile_Writer@PAGEOFF
    add x26, x25, #8
    str x24, [x26]
    movz x16, #5224
    sub x24, x29, x16
    str x23, [x24]
    add x26, x24, #8
    movz x9, #4096
    str x9, [x26]
    sub x26, x29, #176
    ldr x26, [x26]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x25
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x9, x24
    ldr x4, [x9]
    ldr x5, [x9, #8]
    mov x6, x26
    mov x7, #0
    movz x16, #5264
    sub x8, x29, x16
    bl _lb_io_10copy_limit
    movz x16, #5264
    sub x24, x29, x16
    add x14, x24, #32
    ldrb w14, [x14]
    cbnz w14, L35_40
    b L35_39
L35_40:
    add x14, x24, #8
    sub x19, x29, #128
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x0, x20
    movz x16, #5792
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #5792
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L35_119
    b L35_118
L35_119:
    movz x16, #5760
    sub x14, x29, x16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L35_116
L35_118:
    b L35_117
L35_116:
L35_117:
L35_120:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6656]
    ldr x20, [sp, #6648]
    ldr x21, [sp, #6640]
    ldr x22, [sp, #6632]
    ldr x23, [sp, #6624]
    ldr x24, [sp, #6616]
    ldr x25, [sp, #6608]
    ldr x26, [sp, #6600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_39:
    ldr x25, [x24]
    cmp x26, x25
    b.ne L35_43
L35_42:
L35_48:
    movz x16, #5280
    sub x14, x29, x16
    str x23, [x14]
    add x15, x14, #8
    movz x9, #1
    str x9, [x15]
    mov x0, x20
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    movz x16, #5320
    sub x8, x29, x16
    bl _lb_files_File_read
    movz x16, #5320
    sub x15, x29, x16
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L35_51
    b L35_50
L35_51:
    add x14, x15, #8
    sub x19, x29, #128
    add x22, x19, #8
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x0, x20
    movz x16, #5792
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #5792
    sub x22, x29, x16
    add x14, x22, #24
    ldrb w14, [x14]
    cbnz w14, L35_124
    b L35_123
L35_124:
    movz x16, #5760
    sub x14, x29, x16
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L35_121
L35_123:
    b L35_122
L35_121:
L35_122:
L35_125:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6656]
    ldr x20, [sp, #6648]
    ldr x21, [sp, #6640]
    ldr x22, [sp, #6632]
    ldr x23, [sp, #6624]
    ldr x24, [sp, #6616]
    ldr x25, [sp, #6608]
    ldr x26, [sp, #6600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_50:
    ldr x14, [x15]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L35_46
L35_45:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_files_9too_large@PAGE
    add x15, x15, _lb_files_9too_large@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_93@PAGE
    add x15, x15, l_text_93@PAGEOFF
    movz x16, #5336
    sub x22, x29, x16
    str x15, [x22]
    add x15, x22, #8
    movz x9, #43
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x0, x20
    movz x16, #5792
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #5792
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L35_129
    b L35_128
L35_129:
    movz x16, #5760
    sub x14, x29, x16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L35_126
L35_128:
    b L35_127
L35_126:
L35_127:
L35_130:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6656]
    ldr x20, [sp, #6648]
    ldr x21, [sp, #6640]
    ldr x22, [sp, #6632]
    ldr x23, [sp, #6624]
    ldr x24, [sp, #6616]
    ldr x25, [sp, #6608]
    ldr x26, [sp, #6600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_46:
L35_47:
    b L35_44
L35_43:
L35_44:
    mov x0, x20
    movz x16, #5368
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #5368
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L35_55
    b L35_54
L35_55:
    sub x19, x29, #128
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x0, x20
    movz x16, #5792
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #5792
    sub x22, x29, x16
    add x14, x22, #24
    ldrb w14, [x14]
    cbnz w14, L35_134
    b L35_133
L35_134:
    movz x16, #5760
    sub x14, x29, x16
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L35_131
L35_133:
    b L35_132
L35_131:
L35_132:
L35_135:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6656]
    ldr x20, [sp, #6648]
    ldr x21, [sp, #6640]
    ldr x22, [sp, #6632]
    ldr x23, [sp, #6624]
    ldr x24, [sp, #6616]
    ldr x25, [sp, #6608]
    ldr x26, [sp, #6600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_54:
    sub x14, x29, #192
    ldrb w14, [x14]
    mov x0, x21
    mov x1, x22
    mov x2, x14
    mov x3, x19
    movz x16, #5400
    sub x8, x29, x16
    bl _lb_files_Replacement_finish
    movz x16, #5400
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L35_58
    b L35_57
L35_58:
    sub x19, x29, #128
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x0, x20
    movz x16, #5792
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #5792
    sub x22, x29, x16
    add x14, x22, #24
    ldrb w14, [x14]
    cbnz w14, L35_139
    b L35_138
L35_139:
    movz x16, #5760
    sub x14, x29, x16
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L35_136
L35_138:
    b L35_137
L35_136:
L35_137:
L35_140:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6656]
    ldr x20, [sp, #6648]
    ldr x21, [sp, #6640]
    ldr x22, [sp, #6632]
    ldr x23, [sp, #6624]
    ldr x24, [sp, #6616]
    ldr x25, [sp, #6608]
    ldr x26, [sp, #6600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_57:
    sub x19, x29, #128
    str x25, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x0, x20
    movz x16, #5792
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #5792
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L35_144
    b L35_143
L35_144:
    movz x16, #5760
    sub x14, x29, x16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L35_141
L35_143:
    b L35_142
L35_141:
L35_142:
L35_145:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6656]
    ldr x20, [sp, #6648]
    ldr x21, [sp, #6640]
    ldr x22, [sp, #6632]
    ldr x23, [sp, #6624]
    ldr x24, [sp, #6616]
    ldr x25, [sp, #6608]
    ldr x26, [sp, #6600]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_read
_lb_files_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    sub x16, x29, #104
    str x0, [x16]
    sub x14, x29, #104
    ldr x14, [x14]
    mov x0, x14
    movn x1, #0
    sub x8, x29, #152
    bl _lb_files_10read_limit
    sub x15, x29, #152
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L36_2
    b L36_1
L36_2:
    add x14, x15, #16
    sub x19, x29, #88
    add x20, x19, #16
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L36_3:
L36_1:
    sub x19, x29, #88
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L36_4:
    adrp x0, l_text_96@PAGE
    add x0, x0, l_text_96@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_10read_limit
_lb_files_10read_limit:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #5008
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #4976]
    str x20, [sp, #4968]
    str x21, [sp, #4960]
    str x22, [sp, #4952]
    str x23, [sp, #4944]
    str x24, [sp, #4936]
    str x25, [sp, #4928]
    str x26, [sp, #4920]
    str x27, [sp, #4912]
    str x28, [sp, #4904]
    sub x16, x29, #168
    str x0, [x16]
    sub x16, x29, #184
    str x1, [x16]
    sub x19, x29, #192
    sub x14, x29, #168
    ldr x14, [x14]
    mov x0, x14
    mov x1, #0
    movz x2, #420
    sub x8, x29, #232
    bl _lb_files_File_open
    sub x15, x29, #232
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L37_2
    b L37_1
L37_2:
    add x14, x15, #8
    sub x19, x29, #152
    add x20, x19, #16
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4976]
    ldr x20, [sp, #4968]
    ldr x21, [sp, #4960]
    ldr x22, [sp, #4952]
    ldr x23, [sp, #4944]
    ldr x24, [sp, #4936]
    ldr x25, [sp, #4928]
    ldr x26, [sp, #4920]
    ldr x27, [sp, #4912]
    ldr x28, [sp, #4904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_1:
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x9, x29, #248
    str x9, [sp, #232]
    ldr x11, [sp, #232]
    stp xzr, xzr, [x11, #0]
    movz x16, #4344
    sub x21, x29, x16
    mov x0, x21
    mov x1, #0
    movz x2, #4096
    bl _memset
    sub x9, x29, #184
    str x9, [sp, #224]
    movz x16, #4360
    sub x9, x29, x16
    str x9, [sp, #216]
    ldr x9, [sp, #216]
    add x9, x9, #8
    str x9, [sp, #208]
    movz x16, #4400
    sub x9, x29, x16
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x25, x9, #32
    ldr x9, [sp, #232]
    add x9, x9, #8
    str x9, [sp, #200]
    movz x16, #4424
    sub x9, x29, x16
    str x9, [sp, #192]
    movz x16, #4440
    sub x9, x29, x16
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #184]
    movz x16, #4560
    sub x9, x29, x16
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #40
    str x9, [sp, #72]
    movz x16, #4488
    sub x9, x29, x16
    str x9, [sp, #8]
    movz x16, #4512
    sub x9, x29, x16
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #16
    str x9, [sp, #144]
    ldr x9, [sp, #8]
    add x9, x9, #8
    str x9, [sp, #96]
    ldr x9, [sp, #8]
    add x9, x9, #40
    str x9, [sp, #88]
    ldr x9, [sp, #8]
    add x9, x9, #16
    str x9, [sp, #136]
    adrp x9, l_text_61@PAGE
    add x9, x9, l_text_61@PAGEOFF
    str x9, [sp, #128]
    ldr x9, [sp, #136]
    add x9, x9, #8
    str x9, [sp, #120]
    ldr x9, [sp, #136]
    add x9, x9, #16
    str x9, [sp, #112]
    ldr x9, [sp, #8]
    add x9, x9, #40
    str x9, [sp, #104]
    ldr x9, [sp, #8]
    add x28, x9, #16
    adrp x9, l_text_58@PAGE
    add x9, x9, l_text_58@PAGEOFF
    str x9, [sp, #176]
    add x9, x28, #8
    str x9, [sp, #168]
    add x9, x28, #16
    str x9, [sp, #160]
    ldr x9, [sp, #8]
    add x9, x9, #40
    str x9, [sp, #152]
    ldr x9, [sp, #8]
    add x9, x9, #40
    str x9, [sp, #80]
    movz x16, #4576
    sub x9, x29, x16
    str x9, [sp, #64]
    ldr x9, [sp, #64]
    add x9, x9, #8
    str x9, [sp, #56]
    movz x16, #4592
    sub x9, x29, x16
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x9, x9, #8
    str x9, [sp, #40]
    mov x9, #0
    mov x27, x9
L37_4:
L37_5:
    ldr x9, [sp, #224]
    ldr x20, [x9]
    mov x9, x20
    mov x10, x27
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_97@PAGE
    add x0, x0, l_text_97@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x10, #0
    cmp x14, x10
    cset w26, eq
    cbnz w26, L37_7
    b L37_8
L37_7:
    movz x9, #1
    mov x14, x9
    b L37_9
L37_8:
    movz x10, #4096
    cmp x14, x10
    b.hs L37_11
L37_10:
    mov x15, x14
    b L37_12
L37_11:
    movz x9, #4096
    mov x15, x9
L37_12:
    mov x14, x15
L37_9:
    movz x10, #4097
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_98@PAGE
    add x0, x0, l_text_98@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls L37_13
L37_14:
    adrp x0, l_text_98@PAGE
    add x0, x0, l_text_98@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L37_13:
    ldr x10, [sp, #216]
    str x21, [x10]
    ldr x10, [sp, #208]
    str x14, [x10]
    mov x0, x19
    ldr x9, [sp, #216]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    movz x16, #4400
    sub x8, x29, x16
    bl _lb_files_File_read
    ldrb w15, [x25]
    cbnz w15, L37_16
    b L37_15
L37_16:
    ldr x9, [sp, #32]
    add x14, x9, #8
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #232]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_14release_buffer
    mov x0, x19
    movz x16, #4768
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #4768
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L37_82
    b L37_81
L37_82:
    movz x16, #4736
    sub x14, x29, x16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L37_79
L37_81:
    b L37_80
L37_79:
L37_80:
L37_83:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4976]
    ldr x20, [sp, #4968]
    ldr x21, [sp, #4960]
    ldr x22, [sp, #4952]
    ldr x23, [sp, #4944]
    ldr x24, [sp, #4936]
    ldr x25, [sp, #4928]
    ldr x26, [sp, #4920]
    ldr x27, [sp, #4912]
    ldr x28, [sp, #4904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_15:
    ldr x9, [sp, #32]
    ldr x22, [x9]
    mov x10, #0
    cmp x22, x10
    b.ne L37_19
L37_18:
    b L37_6
L37_19:
L37_20:
    cbnz w26, L37_22
    b L37_23
L37_22:
    sub x20, x29, #152
    add x14, x20, #16
    adrp x15, _lb_files_9too_large@PAGE
    add x15, x15, _lb_files_9too_large@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_99@PAGE
    add x15, x15, l_text_99@PAGEOFF
    movz x16, #4416
    sub x21, x29, x16
    str x15, [x21]
    add x15, x21, #8
    movz x9, #31
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #232]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_14release_buffer
    mov x0, x19
    movz x16, #4768
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #4768
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L37_87
    b L37_86
L37_87:
    movz x16, #4736
    sub x14, x29, x16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L37_84
L37_86:
    b L37_85
L37_84:
L37_85:
L37_88:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4976]
    ldr x20, [sp, #4968]
    ldr x21, [sp, #4960]
    ldr x22, [sp, #4952]
    ldr x23, [sp, #4944]
    ldr x24, [sp, #4936]
    ldr x25, [sp, #4928]
    ldr x26, [sp, #4920]
    ldr x27, [sp, #4912]
    ldr x28, [sp, #4904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_23:
L37_24:
    mov x9, x22
    mov x10, x27
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_100@PAGE
    add x0, x0, l_text_100@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x26, x9
    ldr x9, [sp, #200]
    ldr x14, [x9]
    cmp x26, x14
    b.ls L37_27
L37_26:
    mov x0, x14
    movz x1, #2
    movz x2, #64
    ldr x3, [sp, #192]
    bl _lb_core_6qmul_u
    mov w15, w0
    ldr x9, [sp, #192]
    ldr x23, [x9]
    ldr x10, [sp, #24]
    str x23, [x10]
    ldr x10, [sp, #184]
    strb w15, [x10]
    ldr x9, [sp, #184]
    ldrb w15, [x9]
    cbnz w15, L37_29
    b L37_30
L37_29:
    mov x14, x23
    b L37_31
L37_30:
    mov x14, x20
L37_31:
    movz x10, #4096
    cmp x14, x10
    b.hs L37_33
L37_32:
    movz x9, #4096
    mov x14, x9
    b L37_34
L37_33:
L37_34:
    cmp x14, x26
    b.hs L37_36
L37_35:
    mov x14, x26
    b L37_37
L37_36:
L37_37:
    cmp x14, x20
    b.ls L37_39
L37_38:
    mov x23, x20
    b L37_40
L37_39:
    mov x23, x14
L37_40:
    ldr x9, [sp, #200]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ne L37_42
L37_41:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    movz x10, #16384, lsl #48
    cmp x23, x10
    b.ls L37_45
L37_44:
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x28]
    ldr x9, [sp, #176]
    ldr x10, [sp, #168]
    str x9, [x10]
    movz x9, #47
    ldr x10, [sp, #160]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #152]
    strb w9, [x10]
    b L37_46
L37_45:
    ldr x14, [x15]
    add x20, x15, #8
    ldr x20, [x20]
    cbnz x20, L37_47
    b L37_48
L37_48:
    adrp x0, l_text_101@PAGE
    add x0, x0, l_text_101@PAGEOFF
    adrp x1, l_text_59@PAGE
    add x1, x1, l_text_59@PAGEOFF
    bl _lb_core_7trap_at
L37_47:
    ldr x15, [x20]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x23
    movz x2, #1
    movz x16, #4512
    sub x8, x29, x16
    ldr x17, [sp], #16
    blr x17
    ldr x9, [sp, #144]
    ldrb w15, [x9]
    mov x10, #0
    cmp x23, x10
    cset w24, ne
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w24, w15
    cbnz w15, L37_49
    b L37_50
L37_49:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #136]
    str w9, [x10]
    ldr x9, [sp, #128]
    ldr x10, [sp, #120]
    str x9, [x10]
    movz x9, #16
    ldr x10, [sp, #112]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #104]
    strb w9, [x10]
    b L37_46
L37_50:
    ldr x9, [sp, #0]
    ldr x14, [x9]
    ldr x10, [sp, #8]
    str x14, [x10]
    ldr x10, [sp, #96]
    str x23, [x10]
    mov x9, #0
    ldr x10, [sp, #88]
    strb w9, [x10]
L37_46:
    ldr x9, [sp, #80]
    ldrb w14, [x9]
    cbnz w14, L37_52
    b L37_51
L37_52:
    ldr x9, [sp, #8]
    add x14, x9, #16
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #232]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_14release_buffer
    mov x0, x19
    movz x16, #4768
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #4768
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L37_92
    b L37_91
L37_92:
    movz x16, #4736
    sub x14, x29, x16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L37_89
L37_91:
    b L37_90
L37_89:
L37_90:
L37_93:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4976]
    ldr x20, [sp, #4968]
    ldr x21, [sp, #4960]
    ldr x22, [sp, #4952]
    ldr x23, [sp, #4944]
    ldr x24, [sp, #4936]
    ldr x25, [sp, #4928]
    ldr x26, [sp, #4920]
    ldr x27, [sp, #4912]
    ldr x28, [sp, #4904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_51:
    ldr x10, [sp, #8]
    ldr x11, [sp, #232]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L37_43
L37_42:
    ldr x9, [sp, #232]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x23
    movz x16, #4560
    sub x8, x29, x16
    bl _lb_memory_grow
    ldr x9, [sp, #72]
    ldrb w14, [x9]
    cbnz w14, L37_55
    b L37_54
L37_55:
    ldr x9, [sp, #16]
    add x14, x9, #16
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #232]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_14release_buffer
    mov x0, x19
    movz x16, #4768
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #4768
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L37_97
    b L37_96
L37_97:
    movz x16, #4736
    sub x14, x29, x16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L37_94
L37_96:
    b L37_95
L37_94:
L37_95:
L37_98:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4976]
    ldr x20, [sp, #4968]
    ldr x21, [sp, #4960]
    ldr x22, [sp, #4952]
    ldr x23, [sp, #4944]
    ldr x24, [sp, #4936]
    ldr x25, [sp, #4928]
    ldr x26, [sp, #4920]
    ldr x27, [sp, #4912]
    ldr x28, [sp, #4904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_54:
    ldr x10, [sp, #16]
    ldr x11, [sp, #232]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L37_43:
    b L37_28
L37_27:
L37_28:
    ldr x9, [sp, #232]
    ldr x15, [x9]
    ldr x9, [sp, #200]
    ldr x20, [x9]
    add x14, x20, #1
    cmp x27, x14
    b.lo 1f
    adrp x0, l_text_102@PAGE
    add x0, x0, l_text_102@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x14
    b.lo 1f
    adrp x0, l_text_102@PAGE
    add x0, x0, l_text_102@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x27, x20
    b.ls L37_57
L37_58:
    adrp x0, l_text_102@PAGE
    add x0, x0, l_text_102@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L37_57:
    add x14, x27, x15
    sub x23, x20, x27
    ldr x10, [sp, #64]
    str x14, [x10]
    ldr x10, [sp, #56]
    str x23, [x10]
    ldr x10, [sp, #48]
    str x21, [x10]
    movz x9, #4096
    ldr x10, [sp, #40]
    str x9, [x10]
    ldr x9, [sp, #64]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #48]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x22
    bl _lb_memory_copy_0g1_u8
    mov x27, x26
    b L37_4
L37_6:
    mov x0, x19
    movz x16, #4624
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #4624
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L37_60
    b L37_59
L37_60:
    sub x20, x29, #152
    add x14, x20, #16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #232]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_14release_buffer
    mov x0, x19
    movz x16, #4768
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #4768
    sub x21, x29, x16
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L37_102
    b L37_101
L37_102:
    movz x16, #4736
    sub x14, x29, x16
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L37_99
L37_101:
    b L37_100
L37_99:
L37_100:
L37_103:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4976]
    ldr x20, [sp, #4968]
    ldr x21, [sp, #4960]
    ldr x22, [sp, #4952]
    ldr x23, [sp, #4944]
    ldr x24, [sp, #4936]
    ldr x25, [sp, #4928]
    ldr x26, [sp, #4920]
    ldr x27, [sp, #4912]
    ldr x28, [sp, #4904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_59:
    ldr x9, [sp, #232]
    add x14, x9, #8
    ldr x14, [x14]
    cmp x14, x27
    cset w14, eq
    cbnz w14, L37_65
    b L37_124
L37_124:
    mov w15, w14
    b L37_66
L37_65:
    mov x10, #0
    cmp x27, x10
    cset w15, hi
L37_66:
    and w14, w15, #255
    cbnz w14, L37_62
    b L37_63
L37_62:
    sub x20, x29, #152
    ldr x10, [sp, #232]
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    movz x16, #4768
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #4768
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L37_107
    b L37_106
L37_107:
    movz x16, #4736
    sub x14, x29, x16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L37_104
L37_106:
    b L37_105
L37_104:
L37_105:
L37_108:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4976]
    ldr x20, [sp, #4968]
    ldr x21, [sp, #4960]
    ldr x22, [sp, #4952]
    ldr x23, [sp, #4944]
    ldr x24, [sp, #4936]
    ldr x25, [sp, #4928]
    ldr x26, [sp, #4920]
    ldr x27, [sp, #4912]
    ldr x28, [sp, #4904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_63:
L37_64:
    movz x16, #4640
    sub x20, x29, x16
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    movz x16, #4688
    sub x21, x29, x16
    movz x10, #16384, lsl #48
    cmp x27, x10
    b.ls L37_69
L37_68:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_58@PAGE
    add x15, x15, l_text_58@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b L37_70
L37_69:
    ldr x14, [x15]
    add x22, x15, #8
    ldr x22, [x22]
    cbnz x22, L37_71
    b L37_72
L37_72:
    adrp x0, l_text_104@PAGE
    add x0, x0, l_text_104@PAGEOFF
    adrp x1, l_text_59@PAGE
    add x1, x1, l_text_59@PAGEOFF
    bl _lb_core_7trap_at
L37_71:
    ldr x15, [x22]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #1
    movz x16, #4712
    sub x8, x29, x16
    ldr x17, [sp], #16
    blr x17
    movz x16, #4712
    sub x24, x29, x16
    add x15, x24, #16
    ldrb w15, [x15]
    mov x10, #0
    cmp x27, x10
    cset w23, ne
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w23, w15
    cbnz w15, L37_73
    b L37_74
L37_73:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_61@PAGE
    add x15, x15, l_text_61@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b L37_70
L37_74:
    ldr x14, [x24]
    str x14, [x21]
    add x14, x21, #8
    str x27, [x14]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
L37_70:
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, L37_76
    b L37_75
L37_76:
    add x14, x21, #16
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #232]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_14release_buffer
    mov x0, x19
    movz x16, #4768
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #4768
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L37_112
    b L37_111
L37_112:
    movz x16, #4736
    sub x14, x29, x16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L37_109
L37_111:
    b L37_110
L37_109:
L37_110:
L37_113:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4976]
    ldr x20, [sp, #4968]
    ldr x21, [sp, #4960]
    ldr x22, [sp, #4952]
    ldr x23, [sp, #4944]
    ldr x24, [sp, #4936]
    ldr x25, [sp, #4928]
    ldr x26, [sp, #4920]
    ldr x27, [sp, #4912]
    ldr x28, [sp, #4904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_75:
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #232]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x27
    bl _lb_memory_copy_0g1_u8
    ldr x9, [sp, #232]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_14release_buffer
    sub x22, x29, #152
    mov x10, x20
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    movz x16, #4768
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #4768
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L37_117
    b L37_116
L37_117:
    movz x16, #4736
    sub x14, x29, x16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L37_114
L37_116:
    b L37_115
L37_114:
L37_115:
L37_118:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4976]
    ldr x20, [sp, #4968]
    ldr x21, [sp, #4960]
    ldr x22, [sp, #4952]
    ldr x23, [sp, #4944]
    ldr x24, [sp, #4936]
    ldr x25, [sp, #4928]
    ldr x26, [sp, #4920]
    ldr x27, [sp, #4912]
    ldr x28, [sp, #4904]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_write
_lb_files_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #272]
    str x20, [sp, #264]
    str x21, [sp, #256]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    str x2, [x16, #8]
    sub x19, x29, #120
    sub x14, x29, #96
    ldr x14, [x14]
    mov x0, x14
    movz x1, #2
    movz x2, #420
    sub x8, x29, #160
    bl _lb_files_File_open
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L38_2
    b L38_1
L38_2:
    add x14, x15, #8
    sub x19, x29, #80
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L38_3:
L38_1:
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x14, x29, #176
    str x19, [x14]
    adrp x20, _lb_vt_files_File_Writer@PAGE
    add x20, x20, _lb_vt_files_File_Writer@PAGEOFF
    add x21, x14, #8
    str x20, [x21]
    sub x20, x29, #112
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #208
    bl _lb_io_9write_all
    sub x20, x29, #208
    add x14, x20, #24
    ldrb w14, [x14]
    cbnz w14, L38_5
    b L38_4
L38_5:
    sub x21, x29, #80
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    sub x8, x29, #296
    bl _lb_files_File_close
    sub x15, x29, #296
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L38_13
    b L38_12
L38_13:
    sub x14, x29, #264
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L38_10
L38_12:
    b L38_11
L38_10:
L38_11:
L38_14:
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L38_6:
L38_4:
    mov x0, x19
    sub x8, x29, #240
    bl _lb_files_File_close
    sub x15, x29, #240
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L38_8
    b L38_7
L38_8:
    sub x20, x29, #80
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    sub x8, x29, #296
    bl _lb_files_File_close
    sub x21, x29, #296
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L38_18
    b L38_17
L38_18:
    sub x14, x29, #264
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L38_15
L38_17:
    b L38_16
L38_15:
L38_16:
L38_19:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L38_9:
L38_7:
    mov x0, x19
    sub x8, x29, #296
    bl _lb_files_File_close
    sub x15, x29, #296
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L38_23
    b L38_22
L38_23:
    sub x14, x29, #264
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L38_20
L38_22:
    b L38_21
L38_20:
L38_21:
L38_24:
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_14release_buffer
_lb_files_14release_buffer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    sub x16, x29, #56
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #56
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls L39_2
L39_1:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x20, x29, #72
    ldr x21, [x14]
    str x21, [x20]
    add x21, x20, #8
    str x15, [x21]
    ldr x21, [x19]
    add x19, x19, #8
    ldr x19, [x19]
    cbnz x19, L39_5
    b L39_4
L39_5:
    add x14, x19, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L39_4:
    b L39_3
L39_2:
L39_3:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_Directory_open
_lb_files_Directory_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str w1, [x16]
    adrp x14, _lb_files_20current_directory_fd@PAGE
    add x14, x14, _lb_files_20current_directory_fd@PAGEOFF
    ldrsw x14, [x14]
    sub x15, x29, #96
    ldr x15, [x15]
    sub x19, x29, #112
    ldrb w19, [x19]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    sub x8, x29, #152
    bl _lb_files_17open_directory_at
    sub x15, x29, #152
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L40_2
    b L40_1
L40_2:
    add x14, x15, #8
    sub x19, x29, #80
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L40_3:
L40_1:
    sub x19, x29, #80
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L40_4:
    adrp x0, l_text_107@PAGE
    add x0, x0, l_text_107@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_Directory_descriptor
_lb_files_Directory_descriptor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x14, [x9]
    ldr x14, [x14]
    cbnz x14, L41_1
    b L41_2
L41_1:
    b L41_3
L41_2:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_io_closed@PAGE
    add x15, x15, _lb_io_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_108@PAGE
    add x15, x15, l_text_108@PAGEOFF
    sub x20, x29, #104
    str x15, [x20]
    add x15, x20, #8
    movz x9, #23
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L41_4:
L41_3:
    mov x0, x14
    bl _dirfd
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ge L41_6
L41_5:
    sub x19, x29, #80
    add x20, x19, #8
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_109@PAGE
    add x14, x14, l_text_109@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L41_8:
    b L41_7
L41_6:
L41_7:
    sub x14, x29, #80
    str w15, [x14]
    add x19, x14, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L41_9:
    adrp x0, l_text_110@PAGE
    add x0, x0, l_text_110@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_Directory_metadata
_lb_files_Directory_metadata:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #416
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #384]
    str x20, [sp, #376]
    sub x16, x29, #208
    str x0, [x16]
    sub x9, x29, #208
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #248
    bl _lb_files_Directory_descriptor
    sub x15, x29, #248
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L42_2
    b L42_1
L42_2:
    add x14, x15, #8
    sub x19, x29, #200
    add x20, x19, #128
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #152
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L42_3:
L42_1:
    ldrsw x14, [x15]
    mov x0, x14
    sub x8, x29, #408
    bl _lb_files_19metadata_descriptor
    sub x19, x29, #408
    add x14, x19, #152
    ldrb w14, [x14]
    cbnz w14, L42_5
    b L42_4
L42_5:
    add x14, x19, #128
    sub x20, x29, #200
    add x15, x20, #128
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #152
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L42_6:
L42_4:
    sub x20, x29, #200
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    add x14, x20, #152
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L42_7:
    adrp x0, l_text_111@PAGE
    add x0, x0, l_text_111@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_Directory_9open_file
_lb_files_Directory_9open_file:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #288]
    str x20, [sp, #280]
    str x21, [sp, #272]
    str x22, [sp, #264]
    str x23, [sp, #256]
    str x24, [sp, #248]
    str x25, [sp, #240]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #144
    str x1, [x16]
    sub x16, x29, #160
    str w2, [x16]
    sub x16, x29, #176
    str w3, [x16]
    sub x16, x29, #192
    str w4, [x16]
    sub x16, x29, #208
    str w5, [x16]
    sub x9, x29, #128
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #248
    bl _lb_files_Directory_descriptor
    sub x15, x29, #248
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L43_2
    b L43_1
L43_2:
    add x14, x15, #8
    sub x19, x29, #120
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_3:
L43_1:
    ldrsw x19, [x15]
    sub x14, x29, #160
    ldrb w14, [x14]
    sub x20, x29, #176
    ldr w20, [x20]
    mov x0, x14
    mov x1, x20
    sub x8, x29, #288
    bl _lb_files_15file_open_flags
    sub x21, x29, #288
    add x14, x21, #32
    ldrb w14, [x14]
    cbnz w14, L43_5
    b L43_4
L43_5:
    add x14, x21, #8
    sub x19, x29, #120
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_6:
L43_4:
    ldrsw x14, [x21]
    sub x15, x29, #192
    ldrb w15, [x15]
    mov x10, #0
    cmp w15, w10
    b.ne L43_8
L43_7:
    adrp x15, _lb_files_14no_follow_flag@PAGE
    add x15, x15, _lb_files_14no_follow_flag@PAGEOFF
    ldrsw x15, [x15]
    orr w15, w14, w15
    b L43_9
L43_8:
    mov w15, w14
L43_9:
    sub x14, x29, #208
    ldrb w14, [x14]
    cbnz w14, L43_10
    b L43_11
L43_10:
    adrp x14, _lb_platform_macos@PAGE
    add x14, x14, _lb_platform_macos@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L43_13
    b L43_14
L43_13:
    movz x9, #4
    mov w14, w9
    b L43_15
L43_14:
    movz x9, #2048
    mov w14, w9
L43_15:
    orr w21, w15, w14
    b L43_12
L43_11:
    mov w21, w15
L43_12:
    sub x14, x29, #144
    ldr x22, [x14]
    movz x16, #16
    sub sp, sp, x16
    mov w9, w20
    str x9, [sp, #0]
    mov x0, x19
    mov x1, x22
    mov x2, x21
    bl _openat
    movz x16, #16
    add sp, sp, x16
    mov w14, w0
    adrp x23, _lb_c_interrupted@PAGE
    add x23, x23, _lb_c_interrupted@PAGEOFF
    mov w24, w14
L43_16:
    mov x10, #0
    cmp w24, w10
    cset w25, lt
    cbnz w25, L43_19
    b L43_26
L43_26:
    mov w14, w25
    b L43_20
L43_19:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x23]
    cmp w14, w15
    cset w14, eq
L43_20:
    and w15, w14, #255
    cbnz w15, L43_17
    b L43_18
L43_17:
    movz x16, #16
    sub sp, sp, x16
    mov w9, w20
    str x9, [sp, #0]
    mov x0, x19
    mov x1, x22
    mov x2, x21
    bl _openat
    movz x16, #16
    add sp, sp, x16
    mov w24, w0
    b L43_16
L43_18:
    cbnz w25, L43_21
    b L43_22
L43_21:
    sub x19, x29, #120
    add x20, x19, #8
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_114@PAGE
    add x14, x14, l_text_114@PAGEOFF
    sub x15, x29, #304
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_24:
    b L43_23
L43_22:
L43_23:
    sub x19, x29, #312
    mov x11, x19
    str xzr, [x11, #0]
    sub x14, x29, #320
    str w24, [x14]
    add x15, x14, #4
    movz x9, #1
    strb w9, [x15]
    mov x10, x14
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x20, x29, #120
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_25:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_Directory_next
_lb_files_Directory_next:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #720
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #688]
    str x20, [sp, #680]
    str x21, [sp, #672]
    str x22, [sp, #664]
    str x23, [sp, #656]
    str x24, [sp, #648]
    str x25, [sp, #640]
    str x26, [sp, #632]
    str x27, [sp, #624]
    str x28, [sp, #616]
    sub x16, x29, #168
    str x0, [x16]
    sub x9, x29, #168
    ldr x14, [x9]
    ldr x9, [x14]
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    cbnz x9, L44_1
    b L44_2
L44_1:
    b L44_3
L44_2:
    sub x19, x29, #160
    add x14, x19, #24
    adrp x15, _lb_io_closed@PAGE
    add x15, x15, _lb_io_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_108@PAGE
    add x15, x15, l_text_108@PAGEOFF
    sub x20, x29, #184
    str x15, [x20]
    add x15, x20, #8
    movz x9, #23
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44_3:
    sub x25, x29, #200
    adrp x9, _lb_c_interrupted@PAGE
    add x9, x9, _lb_c_interrupted@PAGEOFF
    str x9, [sp, #104]
    sub x9, x29, #520
    str x9, [sp, #56]
    sub x9, x29, #408
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x9, x9, #48
    str x9, [sp, #40]
    sub x9, x29, #408
    str x9, [sp, #96]
    ldr x9, [sp, #96]
    add x21, x9, #24
    adrp x9, l_text_9@PAGE
    add x9, x9, l_text_9@PAGEOFF
    str x9, [sp, #88]
    sub x23, x29, #496
    add x9, x23, #8
    str x9, [sp, #80]
    add x9, x21, #8
    str x9, [sp, #72]
    ldr x9, [sp, #96]
    add x9, x9, #48
    str x9, [sp, #64]
    sub x28, x29, #440
    add x27, x28, #8
    sub x26, x29, #456
    add x9, x26, #8
    str x9, [sp, #128]
    sub x24, x29, #480
    add x9, x24, #16
    str x9, [sp, #120]
    sub x22, x29, #408
    add x9, x22, #48
    str x9, [sp, #112]
    sub x9, x29, #256
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #48
    str x9, [sp, #192]
    ldr x9, [sp, #24]
    add x9, x9, #16
    str x9, [sp, #184]
    sub x9, x29, #272
    str x9, [sp, #176]
    adrp x9, l_text_116@PAGE
    add x9, x9, l_text_116@PAGEOFF
    str x9, [sp, #168]
    sub x9, x29, #312
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #160]
    add x9, x25, #8
    str x9, [sp, #152]
    adrp x9, l_text_117@PAGE
    add x9, x9, l_text_117@PAGEOFF
    str x9, [sp, #144]
    sub x9, x29, #328
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #8
    str x9, [sp, #136]
L44_5:
L44_6:
    ldr x9, [sp, #32]
    sub x10, x29, #424
    str x9, [x10]
L44_25:
L44_26:
    mov x0, #0
    bl _lb_c_9set_errno
    ldr x0, [sp, #32]
    bl _readdir
    mov x14, x0
    cbnz x14, L44_31
    b L44_29
L44_31:
L44_28:
    add x19, x14, #21
    add x15, x14, #18
    ldrh w15, [x15]
    mov w20, w15
    movz x10, #1025
    cmp x20, x10
    b.lo 1f
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x20
    b.ls L44_32
L44_33:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L44_32:
    str x19, [x28]
    str x20, [x27]
    str x19, [x26]
    ldr x10, [sp, #128]
    str x20, [x10]
    mov x10, x26
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #1
    ldr x10, [sp, #120]
    strb w9, [x10]
    mov x10, x24
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x9, #0
    ldr x10, [sp, #112]
    strb w9, [x10]
    mov x10, x22
    sub x11, x29, #256
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    b L44_44
L44_29:
L44_30:
    bl _lb_c_errno
    mov w14, w0
    ldr x9, [sp, #104]
    ldrsw x15, [x9]
    cmp w14, w15
    b.ne L44_36
L44_35:
    b L44_25
L44_36:
L44_37:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L44_40
L44_39:
    mov x0, x14
    bl _lb_files_14classify_error
    mov w15, w0
    str w15, [x21]
    ldr x9, [sp, #88]
    str x9, [x23]
    movz x9, #31
    ldr x10, [sp, #80]
    str x9, [x10]
    mov x10, x23
    ldr x11, [sp, #72]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #1
    ldr x10, [sp, #64]
    strb w9, [x10]
    ldr x10, [sp, #96]
    sub x11, x29, #256
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    b L44_44
L44_40:
L44_41:
    ldr x11, [sp, #56]
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr x10, [sp, #56]
    ldr x11, [sp, #48]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x9, #0
    ldr x10, [sp, #40]
    strb w9, [x10]
    ldr x10, [sp, #48]
    sub x11, x29, #256
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
L44_44:
    ldr x9, [sp, #192]
    ldrb w14, [x9]
    cbnz w14, L44_9
    b L44_8
L44_9:
    ldr x9, [sp, #24]
    add x14, x9, #24
    sub x19, x29, #160
    add x15, x19, #24
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44_8:
    ldr x9, [sp, #184]
    ldrb w14, [x9]
    cbnz w14, L44_11
    b L44_12
L44_11:
    ldr x10, [sp, #24]
    ldr x11, [sp, #176]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L44_13
L44_12:
    sub x19, x29, #296
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #160
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
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44_13:
    ldr x10, [sp, #176]
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #168]
    ldr x10, [sp, #16]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #160]
    str x9, [x10]
    ldr x9, [sp, #152]
    ldr x19, [x9]
    movz x10, #1
    cmp x19, x10
    cset w14, eq
    cbnz w14, L44_18
    b L44_45
L44_45:
    mov w15, w14
    b L44_19
L44_18:
    ldr x14, [x25]
    mov x0, x14
    ldr x1, [sp, #168]
    mov x2, x19
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L44_19:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L44_20
    b L44_46
L44_46:
    mov w15, w14
    b L44_21
L44_20:
    ldr x9, [sp, #144]
    ldr x10, [sp, #8]
    str x9, [x10]
    movz x9, #2
    ldr x10, [sp, #136]
    str x9, [x10]
    movz x10, #2
    cmp x19, x10
    cset w14, eq
    cbnz w14, L44_22
    b L44_47
L44_47:
    mov w15, w14
    b L44_23
L44_22:
    ldr x14, [x25]
    mov x0, x14
    ldr x1, [sp, #144]
    mov x2, x19
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L44_23:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov w15, w14
L44_21:
    and w14, w15, #255
    cbnz w14, L44_15
    b L44_16
L44_15:
    sub x19, x29, #352
    mov x10, x25
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #160
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
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44_16:
L44_17:
    b L44_5

    .p2align 2
    .globl _lb_files_Directory_close
_lb_files_Directory_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    ldr x15, [x14]
    cbnz x15, L45_1
    b L45_2
L45_1:
    b L45_3
L45_2:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_4:
L45_3:
    mov x9, #0
    str x9, [x14]
    mov x0, x15
    bl _closedir
    mov w19, w0
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    b.ne L45_6
L45_5:
    sub x19, x29, #64
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #88
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_8:
    b L45_7
L45_6:
L45_7:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_17open_directory_at
_lb_files_17open_directory_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str x21, [sp, #160]
    str x22, [sp, #152]
    str x23, [sp, #144]
    str x24, [sp, #136]
    sub x16, x29, #128
    str w0, [x16]
    sub x16, x29, #144
    str x1, [x16]
    sub x16, x29, #160
    str w2, [x16]
    adrp x14, _lb_files_14directory_flag@PAGE
    add x14, x14, _lb_files_14directory_flag@PAGEOFF
    ldrsw x14, [x14]
    adrp x15, _lb_files_13close_on_exec@PAGE
    add x15, x15, _lb_files_13close_on_exec@PAGEOFF
    ldrsw x15, [x15]
    orr w14, w14, w15
    sub x15, x29, #160
    ldrb w15, [x15]
    mov x10, #0
    cmp w15, w10
    b.ne L46_2
L46_1:
    adrp x15, _lb_files_14no_follow_flag@PAGE
    add x15, x15, _lb_files_14no_follow_flag@PAGEOFF
    ldrsw x15, [x15]
    orr w15, w14, w15
    mov w19, w15
    b L46_3
L46_2:
    mov w19, w14
L46_3:
    sub x14, x29, #128
    ldrsw x20, [x14]
    sub x14, x29, #144
    ldr x21, [x14]
    mov x0, x20
    mov x1, x21
    mov x2, x19
    bl _openat
    mov w14, w0
    adrp x22, _lb_c_interrupted@PAGE
    add x22, x22, _lb_c_interrupted@PAGEOFF
    mov w23, w14
L46_4:
    mov x10, #0
    cmp w23, w10
    cset w24, lt
    cbnz w24, L46_7
    b L46_19
L46_19:
    mov w14, w24
    b L46_8
L46_7:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x22]
    cmp w14, w15
    cset w14, eq
L46_8:
    and w15, w14, #255
    cbnz w15, L46_5
    b L46_6
L46_5:
    mov x0, x20
    mov x1, x21
    mov x2, x19
    bl _openat
    mov w23, w0
    b L46_4
L46_6:
    cbnz w24, L46_9
    b L46_10
L46_9:
    sub x19, x29, #112
    add x20, x19, #8
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L46_12:
    b L46_11
L46_10:
L46_11:
    mov x0, x23
    bl _fdopendir
    mov x19, x0
    cbnz x19, L46_16
    b L46_14
L46_16:
L46_13:
    sub x20, x29, #184
    mov x11, x20
    str xzr, [x11, #0]
    str x19, [x20]
    sub x21, x29, #112
    mov x10, x20
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L46_17:
    b L46_15
L46_14:
L46_15:
    bl _lb_c_errno
    mov w19, w0
    mov x0, x23
    bl _close
    mov w14, w0
    sub x20, x29, #112
    add x21, x20, #8
    mov x0, x19
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x21]
    adrp x14, l_text_121@PAGE
    add x14, x14, l_text_121@PAGEOFF
    sub x15, x29, #200
    str x14, [x15]
    add x14, x15, #8
    movz x9, #41
    str x9, [x14]
    add x14, x21, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L46_18:
    adrp x0, l_text_122@PAGE
    add x0, x0, l_text_122@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_list
_lb_files_list:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1312
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1280]
    str x20, [sp, #1272]
    str x21, [sp, #1264]
    str x22, [sp, #1256]
    str x23, [sp, #1248]
    str x24, [sp, #1240]
    str x25, [sp, #1232]
    str x26, [sp, #1224]
    str x27, [sp, #1216]
    str x28, [sp, #1208]
    sub x16, x29, #168
    str x0, [x16]
    sub x19, x29, #176
    sub x14, x29, #168
    ldr x14, [x14]
    mov x0, x14
    movz x1, #1
    sub x8, x29, #216
    bl _lb_files_Directory_open
    sub x15, x29, #216
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L47_2
    b L47_1
L47_2:
    add x14, x15, #8
    sub x19, x29, #152
    add x20, x19, #16
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1280]
    ldr x20, [sp, #1272]
    ldr x21, [sp, #1264]
    ldr x22, [sp, #1256]
    ldr x23, [sp, #1248]
    ldr x24, [sp, #1240]
    ldr x25, [sp, #1232]
    ldr x26, [sp, #1224]
    ldr x27, [sp, #1216]
    ldr x28, [sp, #1208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_1:
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x20, x29, #232
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #56]
    sub x22, x29, #280
L47_5:
    ldr x9, [sp, #56]
    ldr x14, [x9]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #392]
    ldr x9, [sp, #392]
    ldr x15, [x9]
    cbnz x15, L47_7
    b L47_8
L47_8:
    adrp x0, l_text_123@PAGE
    add x0, x0, l_text_123@PAGEOFF
    adrp x1, l_text_59@PAGE
    add x1, x1, l_text_59@PAGEOFF
    bl _lb_core_7trap_at
L47_7:
    ldr x24, [x15]
    mov x17, x24
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #256
    movz x2, #8
    sub x8, x29, #304
    ldr x17, [sp], #16
    blr x17
    sub x25, x29, #304
    add x24, x25, #16
    ldrb w24, [x24]
    mov x10, #0
    cmp w24, w10
    cset w24, eq
    movz x10, #1
    and w24, w24, w10
    cbnz w24, L47_9
    b L47_10
L47_9:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_61@PAGE
    add x15, x15, l_text_61@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b L47_6
L47_10:
    ldr x14, [x25]
    str x14, [x22]
    add x14, x22, #8
    movz x9, #16
    str x9, [x14]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
L47_6:
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, L47_12
    b L47_11
L47_12:
    add x14, x22, #16
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    sub x8, x29, #880
    bl _lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L47_79
    b L47_78
L47_79:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L47_76
L47_78:
    b L47_77
L47_76:
L47_77:
L47_80:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1280]
    ldr x20, [sp, #1272]
    ldr x21, [sp, #1264]
    ldr x22, [sp, #1256]
    ldr x23, [sp, #1248]
    ldr x24, [sp, #1240]
    ldr x25, [sp, #1232]
    ldr x26, [sp, #1224]
    ldr x27, [sp, #1216]
    ldr x28, [sp, #1208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_11:
    mov x10, x22
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x9, x29, #360
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x9, x9, #48
    str x9, [sp, #384]
    ldr x9, [sp, #48]
    add x9, x9, #16
    str x9, [sp, #376]
    sub x9, x29, #376
    str x9, [sp, #368]
    add x9, x20, #8
    str x9, [sp, #360]
    sub x9, x29, #384
    str x9, [sp, #352]
    sub x9, x29, #400
    str x9, [sp, #40]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #344]
    sub x9, x29, #432
    str x9, [sp, #32]
    sub x9, x29, #480
    str x9, [sp, #24]
    sub x9, x29, #504
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #16
    str x9, [sp, #296]
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #248]
    ldr x9, [sp, #24]
    add x9, x9, #40
    str x9, [sp, #240]
    ldr x9, [sp, #24]
    add x9, x9, #16
    str x9, [sp, #288]
    adrp x9, l_text_61@PAGE
    add x9, x9, l_text_61@PAGEOFF
    str x9, [sp, #280]
    ldr x9, [sp, #288]
    add x9, x9, #8
    str x9, [sp, #272]
    ldr x9, [sp, #288]
    add x9, x9, #16
    str x9, [sp, #264]
    ldr x9, [sp, #24]
    add x9, x9, #40
    str x9, [sp, #256]
    ldr x9, [sp, #24]
    add x9, x9, #16
    str x9, [sp, #336]
    adrp x9, l_text_58@PAGE
    add x9, x9, l_text_58@PAGEOFF
    str x9, [sp, #328]
    ldr x9, [sp, #336]
    add x9, x9, #8
    str x9, [sp, #320]
    ldr x9, [sp, #336]
    add x9, x9, #16
    str x9, [sp, #312]
    ldr x9, [sp, #24]
    add x9, x9, #40
    str x9, [sp, #304]
    ldr x9, [sp, #24]
    add x9, x9, #40
    str x9, [sp, #232]
    sub x9, x29, #520
    str x9, [sp, #224]
    ldr x9, [sp, #224]
    add x9, x9, #8
    str x9, [sp, #216]
    sub x9, x29, #536
    str x9, [sp, #8]
    ldr x9, [sp, #368]
    add x9, x9, #8
    str x9, [sp, #208]
    sub x25, x29, #584
    sub x26, x29, #608
    add x9, x26, #16
    str x9, [sp, #168]
    add x9, x25, #8
    str x9, [sp, #120]
    add x9, x25, #40
    str x9, [sp, #112]
    add x9, x25, #16
    str x9, [sp, #160]
    adrp x9, l_text_61@PAGE
    add x9, x9, l_text_61@PAGEOFF
    str x9, [sp, #152]
    ldr x9, [sp, #160]
    add x9, x9, #8
    str x9, [sp, #144]
    ldr x9, [sp, #160]
    add x9, x9, #16
    str x9, [sp, #136]
    add x9, x25, #40
    str x9, [sp, #128]
    add x23, x25, #16
    adrp x9, l_text_58@PAGE
    add x9, x9, l_text_58@PAGEOFF
    str x9, [sp, #200]
    add x9, x23, #8
    str x9, [sp, #192]
    add x9, x23, #16
    str x9, [sp, #184]
    add x9, x25, #40
    str x9, [sp, #176]
    add x9, x25, #40
    str x9, [sp, #104]
    ldr x9, [sp, #8]
    add x9, x9, #8
    str x9, [sp, #96]
    sub x9, x29, #624
    str x9, [sp, #88]
    ldr x9, [sp, #88]
    add x9, x9, #8
    str x9, [sp, #80]
    sub x9, x29, #640
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    add x9, x9, #8
    str x9, [sp, #64]
    mov x9, #0
    mov x21, x9
L47_14:
    mov x0, x19
    sub x8, x29, #360
    bl _lb_files_Directory_next
    ldr x9, [sp, #384]
    ldrb w14, [x9]
    cbnz w14, L47_18
    b L47_17
L47_18:
    ldr x9, [sp, #48]
    add x14, x9, #24
    sub x22, x29, #152
    add x15, x22, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    bl _lb_files_15release_entries
    mov x0, x19
    sub x8, x29, #880
    bl _lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L47_84
    b L47_83
L47_84:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L47_81
L47_83:
    b L47_82
L47_81:
L47_82:
L47_85:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1280]
    ldr x20, [sp, #1272]
    ldr x21, [sp, #1264]
    ldr x22, [sp, #1256]
    ldr x23, [sp, #1248]
    ldr x24, [sp, #1240]
    ldr x25, [sp, #1232]
    ldr x26, [sp, #1224]
    ldr x27, [sp, #1216]
    ldr x28, [sp, #1208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_17:
    ldr x9, [sp, #376]
    ldrb w14, [x9]
    cbnz w14, L47_20
    b L47_16
L47_20:
    ldr x10, [sp, #48]
    ldr x11, [sp, #368]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L47_15:
    ldr x9, [sp, #360]
    ldr x14, [x9]
    cmp x14, x21
    b.ne L47_22
L47_21:
    mov x0, x14
    movz x1, #2
    movz x2, #64
    ldr x3, [sp, #352]
    bl _lb_core_6qmul_u
    mov w15, w0
    ldr x9, [sp, #352]
    ldr x22, [x9]
    ldr x10, [sp, #40]
    str x22, [x10]
    ldr x10, [sp, #344]
    strb w15, [x10]
    ldr x9, [sp, #344]
    ldrb w15, [x9]
    cbnz w15, L47_24
    b L47_25
L47_24:
    b L47_26
L47_25:
    sub x22, x29, #152
    add x14, x22, #16
    adrp x15, _lb_memory_exhausted@PAGE
    add x15, x15, _lb_memory_exhausted@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_124@PAGE
    add x15, x15, l_text_124@PAGEOFF
    sub x23, x29, #416
    str x15, [x23]
    add x15, x23, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    bl _lb_files_15release_entries
    mov x0, x19
    sub x8, x29, #880
    bl _lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L47_89
    b L47_88
L47_89:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L47_86
L47_88:
    b L47_87
L47_86:
L47_87:
L47_90:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1280]
    ldr x20, [sp, #1272]
    ldr x21, [sp, #1264]
    ldr x22, [sp, #1256]
    ldr x23, [sp, #1248]
    ldr x24, [sp, #1240]
    ldr x25, [sp, #1232]
    ldr x26, [sp, #1224]
    ldr x27, [sp, #1216]
    ldr x28, [sp, #1208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_26:
    movz x10, #1024, lsl #48
    cmp x22, x10
    b.ls L47_29
L47_28:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #336]
    str w9, [x10]
    ldr x9, [sp, #328]
    ldr x10, [sp, #320]
    str x9, [x10]
    movz x9, #47
    ldr x10, [sp, #312]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #304]
    strb w9, [x10]
    b L47_30
L47_29:
    lsl x24, x22, #4
    ldr x9, [sp, #56]
    ldr x14, [x9]
    ldr x9, [sp, #392]
    ldr x15, [x9]
    cbnz x15, L47_31
    b L47_32
L47_32:
    adrp x0, l_text_125@PAGE
    add x0, x0, l_text_125@PAGEOFF
    adrp x1, l_text_59@PAGE
    add x1, x1, l_text_59@PAGEOFF
    bl _lb_core_7trap_at
L47_31:
    ldr x28, [x15]
    mov x17, x28
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x24
    movz x2, #8
    sub x8, x29, #504
    ldr x17, [sp], #16
    blr x17
    ldr x9, [sp, #296]
    ldrb w28, [x9]
    mov x10, #0
    cmp x24, x10
    cset w27, ne
    mov x10, #0
    cmp w28, w10
    cset w28, eq
    and w27, w27, w28
    cbnz w27, L47_33
    b L47_34
L47_33:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #288]
    str w9, [x10]
    ldr x9, [sp, #280]
    ldr x10, [sp, #272]
    str x9, [x10]
    movz x9, #16
    ldr x10, [sp, #264]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #256]
    strb w9, [x10]
    b L47_30
L47_34:
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x10, [sp, #24]
    str x14, [x10]
    ldr x10, [sp, #248]
    str x22, [x10]
    mov x9, #0
    ldr x10, [sp, #240]
    strb w9, [x10]
L47_30:
    ldr x9, [sp, #232]
    ldrb w14, [x9]
    cbnz w14, L47_36
    b L47_35
L47_36:
    ldr x9, [sp, #24]
    add x14, x9, #16
    sub x22, x29, #152
    add x15, x22, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    bl _lb_files_15release_entries
    mov x0, x19
    sub x8, x29, #880
    bl _lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L47_94
    b L47_93
L47_94:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L47_91
L47_93:
    b L47_92
L47_91:
L47_92:
L47_95:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1280]
    ldr x20, [sp, #1272]
    ldr x21, [sp, #1264]
    ldr x22, [sp, #1256]
    ldr x23, [sp, #1248]
    ldr x24, [sp, #1240]
    ldr x25, [sp, #1232]
    ldr x26, [sp, #1224]
    ldr x27, [sp, #1216]
    ldr x28, [sp, #1208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_35:
    ldr x10, [sp, #24]
    ldr x11, [sp, #32]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #32]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x21
    bl _lb_memory_copy_0g1_str
    ldr x14, [x20]
    ldr x9, [sp, #360]
    ldr x15, [x9]
    mov x9, x15
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_126@PAGE
    add x0, x0, l_text_126@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x10, [sp, #224]
    str x14, [x10]
    ldr x10, [sp, #216]
    str x15, [x10]
    ldr x9, [sp, #56]
    ldr x14, [x9]
    ldr x9, [sp, #392]
    ldr x15, [x9]
    cbnz x15, L47_39
    b L47_38
L47_39:
    add x22, x15, #16
    ldr x22, [x22]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x14
    ldr x9, [sp, #240]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L47_38:
    ldr x10, [sp, #32]
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L47_23
L47_22:
L47_23:
    ldr x9, [sp, #208]
    ldr x14, [x9]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_127@PAGE
    add x0, x0, l_text_127@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    movz x10, #16384, lsl #48
    cmp x22, x10
    b.ls L47_41
L47_40:
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x23]
    ldr x9, [sp, #200]
    ldr x10, [sp, #192]
    str x9, [x10]
    movz x9, #47
    ldr x10, [sp, #184]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #176]
    strb w9, [x10]
    b L47_42
L47_41:
    ldr x9, [sp, #56]
    ldr x14, [x9]
    ldr x9, [sp, #392]
    ldr x15, [x9]
    cbnz x15, L47_43
    b L47_44
L47_44:
    adrp x0, l_text_127@PAGE
    add x0, x0, l_text_127@PAGEOFF
    adrp x1, l_text_59@PAGE
    add x1, x1, l_text_59@PAGEOFF
    bl _lb_core_7trap_at
L47_43:
    ldr x24, [x15]
    mov x17, x24
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x22
    movz x2, #1
    sub x8, x29, #608
    ldr x17, [sp], #16
    blr x17
    ldr x9, [sp, #168]
    ldrb w24, [x9]
    mov x10, #0
    cmp x22, x10
    cset w27, ne
    mov x10, #0
    cmp w24, w10
    cset w24, eq
    and w24, w27, w24
    cbnz w24, L47_45
    b L47_46
L47_45:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #160]
    str w9, [x10]
    ldr x9, [sp, #152]
    ldr x10, [sp, #144]
    str x9, [x10]
    movz x9, #16
    ldr x10, [sp, #136]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #128]
    strb w9, [x10]
    b L47_42
L47_46:
    ldr x14, [x26]
    str x14, [x25]
    ldr x10, [sp, #120]
    str x22, [x10]
    mov x9, #0
    ldr x10, [sp, #112]
    strb w9, [x10]
L47_42:
    ldr x9, [sp, #104]
    ldrb w14, [x9]
    cbnz w14, L47_48
    b L47_47
L47_48:
    add x14, x25, #16
    sub x22, x29, #152
    add x15, x22, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    bl _lb_files_15release_entries
    mov x0, x19
    sub x8, x29, #880
    bl _lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L47_99
    b L47_98
L47_99:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L47_96
L47_98:
    b L47_97
L47_96:
L47_97:
L47_100:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1280]
    ldr x20, [sp, #1272]
    ldr x21, [sp, #1264]
    ldr x22, [sp, #1256]
    ldr x23, [sp, #1248]
    ldr x24, [sp, #1240]
    ldr x25, [sp, #1232]
    ldr x26, [sp, #1224]
    ldr x27, [sp, #1216]
    ldr x28, [sp, #1208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_47:
    mov x10, x25
    ldr x11, [sp, #8]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #208]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #368]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_u8
    ldr x9, [sp, #208]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    ldr x9, [sp, #96]
    ldr x22, [x9]
    cmp x14, x22
    b.lo 1f
    adrp x0, l_text_128@PAGE
    add x0, x0, l_text_128@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, x15
    mov x9, #0
    strb w9, [x14]
    ldr x14, [x20]
    ldr x9, [sp, #360]
    ldr x15, [x9]
    cmp x21, x15
    b.lo 1f
    adrp x0, l_text_129@PAGE
    add x0, x0, l_text_129@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x21, #4
    add x15, x14, x15
    ldr x9, [sp, #8]
    ldr x22, [x9]
    ldr x9, [sp, #96]
    ldr x14, [x9]
    ldr x9, [sp, #208]
    ldr x24, [x9]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_129@PAGE
    add x0, x0, l_text_129@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x24, x14
    b.lo 1f
    adrp x0, l_text_129@PAGE
    add x0, x0, l_text_129@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x24
    b.ls L47_50
L47_51:
    adrp x0, l_text_129@PAGE
    add x0, x0, l_text_129@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_50:
    ldr x10, [sp, #88]
    str x22, [x10]
    ldr x10, [sp, #80]
    str x24, [x10]
    ldr x10, [sp, #72]
    str x22, [x10]
    ldr x10, [sp, #64]
    str x24, [x10]
    ldr x10, [sp, #72]
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #1
    mov x21, x14
    b L47_14
L47_16:
    mov x0, x19
    sub x8, x29, #672
    bl _lb_files_Directory_close
    sub x15, x29, #672
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L47_53
    b L47_52
L47_53:
    sub x22, x29, #152
    add x14, x22, #16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    bl _lb_files_15release_entries
    mov x0, x19
    sub x8, x29, #880
    bl _lb_files_Directory_close
    sub x23, x29, #880
    add x14, x23, #24
    ldrb w14, [x14]
    cbnz w14, L47_104
    b L47_103
L47_104:
    sub x14, x29, #848
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L47_101
L47_103:
    b L47_102
L47_101:
L47_102:
L47_105:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1280]
    ldr x20, [sp, #1272]
    ldr x21, [sp, #1264]
    ldr x22, [sp, #1256]
    ldr x23, [sp, #1248]
    ldr x24, [sp, #1240]
    ldr x25, [sp, #1232]
    ldr x26, [sp, #1224]
    ldr x27, [sp, #1216]
    ldr x28, [sp, #1208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_52:
    ldr x15, [x20]
    add x22, x20, #8
    ldr x14, [x22]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_131@PAGE
    add x0, x0, l_text_131@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x21, x14
    b.lo 1f
    adrp x0, l_text_131@PAGE
    add x0, x0, l_text_131@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x21
    b.ls L47_55
L47_56:
    adrp x0, l_text_131@PAGE
    add x0, x0, l_text_131@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L47_55:
    sub x14, x29, #688
    str x15, [x14]
    add x23, x14, #8
    str x21, [x23]
    mov x10, x14
    sub x11, x29, #896
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #896
    add x24, x23, #8
L47_107:
    movz x10, #2
    udiv x14, x21, x10
L47_108:
    mov x10, #0
    cmp x14, x10
    b.ls L47_110
L47_109:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_138@PAGE
    add x0, x0, l_text_138@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    ldr x15, [x24]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x25
    mov x3, x15
    bl _lb_files_10sift_names
    mov x14, x25
    b L47_108
L47_110:
    ldr x14, [x24]
    sub x25, x29, #912
L47_111:
    movz x10, #1
    cmp x14, x10
    b.ls L47_113
L47_112:
    sub x26, x14, #1
    ldr x27, [x23]
    ldr x28, [x24]
    mov x9, #0
    cmp x9, x28
    b.lo 1f
    adrp x0, l_text_140@PAGE
    add x0, x0, l_text_140@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x10, x27
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    cmp x26, x28
    b.lo 1f
    adrp x0, l_text_141@PAGE
    add x0, x0, l_text_141@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x28, x26, #4
    add x15, x27, x28
    mov x10, x15
    mov x11, x27
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x15, [x23]
    ldr x27, [x24]
    cmp x26, x27
    b.lo 1f
    adrp x0, l_text_142@PAGE
    add x0, x0, l_text_142@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x28, x15
    mov x10, x25
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, #0
    mov x3, x26
    bl _lb_files_10sift_names
    mov x14, x26
    b L47_111
L47_113:
L47_114:
    mov x10, #0
    cmp x21, x10
    b.ne L47_58
L47_57:
    sub x14, x29, #704
    ldr x15, [x20]
    ldr x21, [x22]
    mov x9, x21
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_132@PAGE
    add x0, x0, l_text_132@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    str x15, [x14]
    add x15, x14, #8
    str x21, [x15]
    ldr x9, [sp, #56]
    ldr x15, [x9]
    ldr x9, [sp, #392]
    ldr x21, [x9]
    cbnz x21, L47_61
    b L47_60
L47_61:
    add x20, x21, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L47_60:
    sub x20, x29, #720
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    sub x21, x29, #152
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    sub x8, x29, #880
    bl _lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L47_118
    b L47_117
L47_118:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L47_115
L47_117:
    b L47_116
L47_115:
L47_116:
L47_119:
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1280]
    ldr x20, [sp, #1272]
    ldr x21, [sp, #1264]
    ldr x22, [sp, #1256]
    ldr x23, [sp, #1248]
    ldr x24, [sp, #1240]
    ldr x25, [sp, #1232]
    ldr x26, [sp, #1224]
    ldr x27, [sp, #1216]
    ldr x28, [sp, #1208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_58:
L47_59:
    sub x23, x29, #736
    sub x24, x29, #784
    movz x10, #1024, lsl #48
    cmp x21, x10
    b.ls L47_64
L47_63:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_58@PAGE
    add x15, x15, l_text_58@PAGEOFF
    add x25, x14, #8
    str x15, [x25]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L47_65
L47_64:
    lsl x25, x21, #4
    ldr x9, [sp, #56]
    ldr x14, [x9]
    ldr x9, [sp, #392]
    ldr x15, [x9]
    cbnz x15, L47_66
    b L47_67
L47_67:
    adrp x0, l_text_133@PAGE
    add x0, x0, l_text_133@PAGEOFF
    adrp x1, l_text_59@PAGE
    add x1, x1, l_text_59@PAGEOFF
    bl _lb_core_7trap_at
L47_66:
    ldr x26, [x15]
    mov x17, x26
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x25
    movz x2, #8
    sub x8, x29, #808
    ldr x17, [sp], #16
    blr x17
    sub x28, x29, #808
    add x26, x28, #16
    ldrb w26, [x26]
    mov x10, #0
    cmp x25, x10
    cset w27, ne
    mov x10, #0
    cmp w26, w10
    cset w26, eq
    and w26, w27, w26
    cbnz w26, L47_68
    b L47_69
L47_68:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_61@PAGE
    add x15, x15, l_text_61@PAGEOFF
    add x25, x14, #8
    str x15, [x25]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L47_65
L47_69:
    ldr x14, [x28]
    str x14, [x24]
    add x14, x24, #8
    str x21, [x14]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
L47_65:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, L47_71
    b L47_70
L47_71:
    add x14, x24, #16
    sub x22, x29, #152
    add x15, x22, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    bl _lb_files_15release_entries
    mov x0, x19
    sub x8, x29, #880
    bl _lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L47_123
    b L47_122
L47_123:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L47_120
L47_122:
    b L47_121
L47_120:
L47_121:
L47_124:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1280]
    ldr x20, [sp, #1272]
    ldr x21, [sp, #1264]
    ldr x22, [sp, #1256]
    ldr x23, [sp, #1248]
    ldr x24, [sp, #1240]
    ldr x25, [sp, #1232]
    ldr x26, [sp, #1224]
    ldr x27, [sp, #1216]
    ldr x28, [sp, #1208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_70:
    mov x10, x24
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x21
    bl _lb_memory_copy_0g1_str
    sub x14, x29, #824
    ldr x15, [x20]
    ldr x25, [x22]
    mov x9, x25
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_134@PAGE
    add x0, x0, l_text_134@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    str x15, [x14]
    add x15, x14, #8
    str x25, [x15]
    ldr x9, [sp, #56]
    ldr x15, [x9]
    ldr x9, [sp, #392]
    ldr x25, [x9]
    cbnz x25, L47_74
    b L47_73
L47_74:
    add x20, x25, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L47_73:
    sub x20, x29, #152
    mov x10, x23
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    sub x8, x29, #880
    bl _lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L47_128
    b L47_127
L47_128:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L47_125
L47_127:
    b L47_126
L47_125:
L47_126:
L47_129:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1280]
    ldr x20, [sp, #1272]
    ldr x21, [sp, #1264]
    ldr x22, [sp, #1256]
    ldr x23, [sp, #1248]
    ldr x24, [sp, #1240]
    ldr x25, [sp, #1232]
    ldr x26, [sp, #1224]
    ldr x27, [sp, #1216]
    ldr x28, [sp, #1208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_10sift_names
_lb_files_10sift_names:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    str x22, [sp, #112]
    str x23, [sp, #104]
    str x24, [sp, #96]
    str x25, [sp, #88]
    str x26, [sp, #80]
    str x27, [sp, #72]
    str x28, [sp, #64]
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #128
    str x2, [x16]
    sub x16, x29, #144
    str x3, [x16]
    sub x14, x29, #128
    ldr x14, [x14]
    sub x19, x29, #144
    sub x20, x29, #112
    add x21, x20, #8
    sub x22, x29, #112
    add x23, x22, #8
    sub x24, x29, #160
    mov x25, x14
L48_1:
    ldr x14, [x19]
L48_5:
    movz x10, #2
    udiv x15, x14, x10
    cmp x25, x15
    b.hs L48_3
L48_2:
    mov x9, x25
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_144@PAGE
    add x0, x0, l_text_144@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_144@PAGE
    add x0, x0, l_text_144@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x26, x9
    mov x9, x26
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_145@PAGE
    add x0, x0, l_text_145@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x27, x9
    cmp x27, x14
    cset w15, lo
    cbnz w15, L48_9
    b L48_15
L48_15:
    mov w14, w15
    b L48_10
L48_9:
    ldr x14, [x20]
    ldr x15, [x21]
    cmp x26, x15
    b.lo 1f
    adrp x0, l_text_145@PAGE
    add x0, x0, l_text_145@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x28, x26, #4
    add x28, x14, x28
    cmp x27, x15
    b.lo 1f
    adrp x0, l_text_145@PAGE
    add x0, x0, l_text_145@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x27, #4
    add x14, x14, x15
    mov x9, x28
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11str_compare
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
L48_10:
    and w15, w14, #255
    cbnz w15, L48_6
    b L48_7
L48_6:
    mov x26, x27
    b L48_8
L48_7:
L48_8:
    ldr x14, [x22]
    ldr x15, [x23]
    cmp x25, x15
    b.lo 1f
    adrp x0, l_text_147@PAGE
    add x0, x0, l_text_147@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x27, x25, #4
    add x27, x14, x27
    cmp x26, x15
    b.lo 1f
    adrp x0, l_text_147@PAGE
    add x0, x0, l_text_147@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x26, #4
    add x28, x14, x15
    mov x9, x27
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x28
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11str_compare
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    mov x10, #0
    cmp w14, w10
    b.ne L48_12
L48_11:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    ldr x24, [sp, #96]
    ldr x25, [sp, #88]
    ldr x26, [sp, #80]
    ldr x27, [sp, #72]
    ldr x28, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L48_12:
L48_13:
    mov x10, x27
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x28
    mov x11, x27
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    mov x11, x28
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x25, x26
    b L48_1
L48_3:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    ldr x24, [sp, #96]
    ldr x25, [sp, #88]
    ldr x26, [sp, #80]
    ldr x27, [sp, #72]
    ldr x28, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_15release_entries
_lb_files_15release_entries:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    str x19, [sp, #200]
    str x20, [sp, #192]
    str x21, [sp, #184]
    str x22, [sp, #176]
    str x23, [sp, #168]
    str x24, [sp, #160]
    str x25, [sp, #152]
    str x26, [sp, #144]
    str x27, [sp, #136]
    str x28, [sp, #128]
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #128
    str x2, [x16]
    sub x14, x29, #112
    ldr x20, [x14]
    add x14, x14, #8
    ldr x19, [x14]
    sub x14, x29, #128
    ldr x9, [x14]
    str x9, [sp, #8]
    add x14, x19, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_151@PAGE
    add x0, x0, l_text_151@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #8]
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_151@PAGE
    add x0, x0, l_text_151@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #8]
    cmp x9, x10
    b.ls L49_5
L49_6:
    adrp x0, l_text_151@PAGE
    add x0, x0, l_text_151@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L49_5:
    sub x14, x29, #144
    str x20, [x14]
    add x14, x14, #8
    ldr x9, [sp, #8]
    str x9, [x14]
    sub x22, x29, #160
    add x23, x22, #8
    sub x24, x29, #176
    add x25, x24, #8
    sub x26, x29, #192
    add x27, x26, #8
    mov x9, #0
    mov x28, x9
L49_1:
    ldr x10, [sp, #8]
    cmp x28, x10
    b.hs L49_4
L49_2:
    lsl x14, x28, #4
    add x14, x14, x20
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x22]
    ldr x15, [x23]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_152@PAGE
    add x0, x0, l_text_152@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x14, [x24]
    str x15, [x25]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    str x14, [x26]
    str x15, [x27]
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    cbnz x15, L49_8
    b L49_7
L49_8:
    add x21, x15, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x26
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L49_7:
L49_3:
    add x14, x28, #1
    mov x28, x14
    b L49_1
L49_4:
    mov x10, #0
    cmp x19, x10
    b.ls L49_10
L49_9:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #208
    mov x9, x19
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_153@PAGE
    add x0, x0, l_text_153@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    str x20, [x15]
    add x22, x15, #8
    str x21, [x22]
    ldr x21, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L49_13
    b L49_12
L49_13:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L49_12:
    b L49_11
L49_10:
L49_11:
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    ldr x22, [sp, #176]
    ldr x23, [sp, #168]
    ldr x24, [sp, #160]
    ldr x25, [sp, #152]
    ldr x26, [sp, #144]
    ldr x27, [sp, #136]
    ldr x28, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_walk
_lb_files_walk:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #4688
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #4656]
    str x20, [sp, #4648]
    str x21, [sp, #4640]
    str x22, [sp, #4632]
    str x23, [sp, #4624]
    str x24, [sp, #4616]
    str x25, [sp, #4608]
    str x26, [sp, #4600]
    str x27, [sp, #4592]
    str x28, [sp, #4584]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #184
    str x3, [x16]
    sub x19, x29, #200
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #1208]
    ldr x10, [sp, #1208]
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #328
    sub x14, x29, #152
    ldr x21, [x14]
    mov x0, x21
    movz x1, #1
    sub x8, x29, #488
    bl _lb_files_metadata
    sub x15, x29, #488
    add x14, x15, #152
    ldrb w14, [x14]
    cbnz w14, L50_2
    b L50_1
L50_2:
    add x14, x15, #128
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_1:
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    sub x14, x29, #168
    ldr x9, [x14]
    str x9, [sp, #1200]
    add x14, x14, #8
    ldr x9, [x14]
    str x9, [sp, #1192]
    ldr x9, [sp, #1192]
    ldr x25, [x9]
    mov x0, x21
    bl _strlen
    mov x14, x0
    sub x26, x29, #504
    str x21, [x26]
    add x27, x26, #8
    str x14, [x27]
    mov x17, x25
    str x17, [sp, #-16]!
    ldr x0, [sp, #1216]
    mov x9, x26
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x22
    mov x3, x9
    mov x4, #0
    sub x8, x29, #544
    ldr x17, [sp], #16
    blr x17
    sub x25, x29, #544
    add x14, x25, #32
    ldrb w14, [x14]
    cbnz w14, L50_5
    b L50_4
L50_5:
    add x14, x25, #8
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_4:
    ldrb w14, [x25]
    ldrb w15, [x22]
    movz x10, #2
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, L50_174
    b L50_10
L50_174:
    mov w14, w15
    b L50_11
L50_10:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L50_11:
    and w15, w14, #255
    cbnz w15, L50_7
    b L50_8
L50_7:
    sub x14, x29, #136
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_8:
L50_9:
    sub x25, x29, #624
    mov x0, x21
    mov x9, x22
    mov x1, x9
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #736
    bl _lb_files_WalkState_start
    sub x15, x29, #736
    add x14, x15, #104
    ldrb w14, [x14]
    cbnz w14, L50_14
    b L50_13
L50_14:
    add x14, x15, #80
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_13:
    mov x10, x15
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    add x9, x25, #16
    str x9, [sp, #1184]
    sub x9, x29, #760
    str x9, [sp, #184]
    add x9, x25, #8
    str x9, [sp, #1176]
    sub x9, x29, #816
    str x9, [sp, #176]
    ldr x9, [sp, #176]
    add x9, x9, #48
    str x9, [sp, #1168]
    ldr x9, [sp, #184]
    add x9, x9, #16
    str x9, [sp, #1160]
    sub x9, x29, #864
    str x9, [sp, #168]
    sub x9, x29, #880
    str x9, [sp, #1144]
    sub x9, x29, #184
    str x9, [sp, #1136]
    sub x9, x29, #1024
    str x9, [sp, #160]
    sub x28, x29, #2136
    add x9, x28, #32
    str x9, [sp, #872]
    sub x9, x29, #2096
    str x9, [sp, #832]
    sub x9, x29, #2504
    str x9, [sp, #768]
    adrp x9, _lb_files_17at_no_follow_flag@PAGE
    add x9, x9, _lb_files_17at_no_follow_flag@PAGEOFF
    str x9, [sp, #760]
    sub x9, x29, #2648
    str x9, [sp, #752]
    adrp x9, _lb_c_interrupted@PAGE
    add x9, x9, _lb_c_interrupted@PAGEOFF
    str x9, [sp, #720]
    sub x9, x29, #2456
    str x9, [sp, #712]
    ldr x9, [sp, #712]
    add x9, x9, #128
    str x9, [sp, #704]
    adrp x9, l_text_20@PAGE
    add x9, x9, l_text_20@PAGEOFF
    str x9, [sp, #696]
    sub x9, x29, #2792
    str x9, [sp, #688]
    ldr x9, [sp, #688]
    add x9, x9, #8
    str x9, [sp, #680]
    ldr x9, [sp, #704]
    add x9, x9, #8
    str x9, [sp, #672]
    ldr x9, [sp, #712]
    add x9, x9, #152
    str x9, [sp, #664]
    sub x9, x29, #2776
    str x9, [sp, #744]
    sub x9, x29, #2456
    str x9, [sp, #736]
    ldr x9, [sp, #736]
    add x9, x9, #152
    str x9, [sp, #728]
    sub x9, x29, #2296
    str x9, [sp, #152]
    ldr x9, [sp, #152]
    add x9, x9, #152
    str x9, [sp, #824]
    sub x9, x29, #2064
    str x9, [sp, #784]
    ldr x9, [sp, #784]
    add x9, x9, #152
    str x9, [sp, #776]
    ldr x9, [sp, #152]
    add x9, x9, #128
    str x9, [sp, #816]
    sub x9, x29, #2064
    str x9, [sp, #808]
    ldr x9, [sp, #808]
    add x9, x9, #128
    str x9, [sp, #800]
    ldr x9, [sp, #808]
    add x9, x9, #152
    str x9, [sp, #792]
    add x9, x28, #8
    str x9, [sp, #864]
    sub x9, x29, #2064
    str x9, [sp, #856]
    ldr x9, [sp, #856]
    add x9, x9, #128
    str x9, [sp, #848]
    ldr x9, [sp, #856]
    add x9, x9, #152
    str x9, [sp, #840]
    sub x9, x29, #1184
    str x9, [sp, #144]
    ldr x9, [sp, #144]
    add x9, x9, #152
    str x9, [sp, #1128]
    add x9, x25, #24
    str x9, [sp, #1120]
    sub x14, x29, #1200
    add x9, x14, #8
    str x9, [sp, #1112]
    sub x9, x29, #1216
    str x9, [sp, #1104]
    ldr x9, [sp, #1104]
    add x9, x9, #8
    str x9, [sp, #1096]
    adrp x9, l_text_159@PAGE
    add x9, x9, l_text_159@PAGEOFF
    str x9, [sp, #1088]
    sub x9, x29, #1232
    str x9, [sp, #1080]
    ldr x9, [sp, #1080]
    add x9, x9, #8
    str x9, [sp, #1072]
    sub x9, x29, #1264
    str x9, [sp, #136]
    ldr x9, [sp, #136]
    add x9, x9, #24
    str x9, [sp, #1064]
    sub x9, x29, #1296
    str x9, [sp, #128]
    ldr x9, [sp, #128]
    add x9, x9, #24
    str x9, [sp, #1056]
    sub x9, x29, #1312
    str x9, [sp, #1048]
    sub x9, x29, #1352
    str x9, [sp, #120]
    ldr x9, [sp, #120]
    add x9, x9, #32
    str x9, [sp, #1040]
    ldr x9, [sp, #160]
    add x9, x9, #16
    str x9, [sp, #1024]
    ldr x9, [sp, #160]
    add x9, x9, #24
    str x9, [sp, #1016]
    sub x9, x29, #2840
    str x9, [sp, #656]
    ldr x9, [sp, #656]
    add x9, x9, #8
    str x9, [sp, #648]
    sub x9, x29, #2872
    str x9, [sp, #640]
    ldr x9, [sp, #640]
    add x9, x9, #8
    str x9, [sp, #632]
    ldr x9, [sp, #640]
    add x9, x9, #16
    str x9, [sp, #624]
    sub x9, x29, #1408
    str x9, [sp, #112]
    sub x9, x29, #2992
    str x9, [sp, #104]
    ldr x9, [sp, #104]
    add x9, x9, #32
    str x9, [sp, #616]
    sub x9, x29, #2952
    str x9, [sp, #576]
    sub x9, x29, #3032
    str x9, [sp, #96]
    ldr x9, [sp, #96]
    add x9, x9, #32
    str x9, [sp, #568]
    sub x9, x29, #2920
    str x9, [sp, #528]
    ldr x9, [sp, #528]
    add x9, x9, #32
    str x9, [sp, #520]
    ldr x9, [sp, #96]
    add x9, x9, #8
    str x9, [sp, #560]
    sub x9, x29, #2920
    str x9, [sp, #552]
    ldr x9, [sp, #552]
    add x9, x9, #8
    str x9, [sp, #544]
    ldr x9, [sp, #552]
    add x9, x9, #32
    str x9, [sp, #536]
    ldr x9, [sp, #104]
    add x9, x9, #8
    str x9, [sp, #608]
    sub x9, x29, #2920
    str x9, [sp, #600]
    ldr x9, [sp, #600]
    add x9, x9, #8
    str x9, [sp, #592]
    ldr x9, [sp, #600]
    add x9, x9, #32
    str x9, [sp, #584]
    sub x9, x29, #1448
    str x9, [sp, #88]
    ldr x9, [sp, #88]
    add x9, x9, #32
    str x9, [sp, #1008]
    sub x9, x29, #1576
    str x9, [sp, #80]
    sub x9, x29, #1736
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    add x9, x9, #152
    str x9, [sp, #1000]
    ldr x9, [sp, #80]
    add x9, x9, #16
    str x9, [sp, #992]
    ldr x9, [sp, #80]
    add x9, x9, #24
    str x9, [sp, #984]
    sub x9, x29, #3272
    str x9, [sp, #512]
    sub x9, x29, #3288
    str x9, [sp, #64]
    ldr x9, [sp, #64]
    add x9, x9, #8
    str x9, [sp, #504]
    sub x9, x29, #3120
    str x9, [sp, #496]
    adrp x9, _lb_memory_exhausted@PAGE
    add x9, x9, _lb_memory_exhausted@PAGEOFF
    str x9, [sp, #488]
    adrp x9, l_text_169@PAGE
    add x9, x9, l_text_169@PAGEOFF
    str x9, [sp, #480]
    sub x9, x29, #3304
    str x9, [sp, #472]
    ldr x9, [sp, #472]
    add x9, x9, #8
    str x9, [sp, #464]
    ldr x9, [sp, #496]
    add x9, x9, #8
    str x9, [sp, #456]
    ldr x9, [sp, #496]
    add x9, x9, #24
    str x9, [sp, #448]
    sub x9, x29, #3320
    str x9, [sp, #440]
    add x9, x25, #64
    str x9, [sp, #432]
    sub x9, x29, #3336
    str x9, [sp, #56]
    sub x9, x29, #3384
    str x9, [sp, #48]
    ldr x9, [sp, #1208]
    add x9, x9, #8
    str x9, [sp, #384]
    sub x9, x29, #3408
    str x9, [sp, #40]
    ldr x9, [sp, #40]
    add x9, x9, #16
    str x9, [sp, #376]
    ldr x9, [sp, #48]
    add x9, x9, #8
    str x9, [sp, #328]
    ldr x9, [sp, #48]
    add x9, x9, #40
    str x9, [sp, #320]
    ldr x9, [sp, #48]
    add x9, x9, #16
    str x9, [sp, #368]
    adrp x9, l_text_61@PAGE
    add x9, x9, l_text_61@PAGEOFF
    str x9, [sp, #360]
    ldr x9, [sp, #368]
    add x9, x9, #8
    str x9, [sp, #352]
    ldr x9, [sp, #368]
    add x9, x9, #16
    str x9, [sp, #344]
    ldr x9, [sp, #48]
    add x9, x9, #40
    str x9, [sp, #336]
    ldr x9, [sp, #48]
    add x9, x9, #16
    str x9, [sp, #424]
    adrp x9, l_text_58@PAGE
    add x9, x9, l_text_58@PAGEOFF
    str x9, [sp, #416]
    ldr x9, [sp, #424]
    add x9, x9, #8
    str x9, [sp, #408]
    ldr x9, [sp, #424]
    add x9, x9, #16
    str x9, [sp, #400]
    ldr x9, [sp, #48]
    add x9, x9, #40
    str x9, [sp, #392]
    ldr x9, [sp, #48]
    add x9, x9, #40
    str x9, [sp, #312]
    sub x9, x29, #3424
    str x9, [sp, #280]
    ldr x9, [sp, #280]
    add x9, x9, #8
    str x9, [sp, #272]
    ldr x9, [sp, #1208]
    add x9, x9, #8
    str x9, [sp, #264]
    sub x9, x29, #3456
    str x9, [sp, #256]
    sub x9, x29, #3136
    str x9, [sp, #248]
    sub x14, x29, #3264
    ldr x9, [sp, #256]
    add x9, x9, #8
    str x9, [sp, #240]
    add x9, x14, #24
    str x9, [sp, #232]
    ldr x9, [sp, #256]
    add x9, x9, #16
    str x9, [sp, #224]
    sub x14, x29, #3472
    add x9, x14, #8
    str x9, [sp, #216]
    ldr x9, [sp, #256]
    add x9, x9, #24
    str x9, [sp, #208]
    sub x9, x29, #3120
    str x9, [sp, #200]
    ldr x9, [sp, #200]
    add x9, x9, #24
    str x9, [sp, #192]
    ldr x9, [sp, #48]
    add x9, x9, #16
    str x9, [sp, #304]
    sub x9, x29, #3120
    str x9, [sp, #296]
    ldr x9, [sp, #296]
    add x9, x9, #24
    str x9, [sp, #288]
    sub x9, x29, #1784
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x9, x9, #24
    str x9, [sp, #976]
    sub x9, x29, #1384
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #24
    str x9, [sp, #1032]
    sub x9, x29, #1872
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #24
    str x9, [sp, #968]
    add x9, x25, #24
    str x9, [sp, #920]
    sub x9, x29, #1904
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #24
    str x9, [sp, #912]
    sub x9, x29, #1816
    str x9, [sp, #888]
    ldr x9, [sp, #888]
    add x9, x9, #24
    str x9, [sp, #880]
    sub x9, x29, #1816
    str x9, [sp, #904]
    ldr x9, [sp, #904]
    add x9, x9, #24
    str x9, [sp, #896]
    sub x9, x29, #1840
    str x9, [sp, #960]
    sub x9, x29, #1816
    str x9, [sp, #952]
    ldr x9, [sp, #960]
    add x9, x9, #8
    str x9, [sp, #944]
    ldr x9, [sp, #952]
    add x9, x9, #8
    str x9, [sp, #936]
    ldr x9, [sp, #952]
    add x9, x9, #24
    str x9, [sp, #928]
    sub x9, x29, #848
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #24
    str x9, [sp, #1152]
L50_16:
    ldr x9, [sp, #1184]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ls L50_18
L50_17:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_154@PAGE
    add x0, x0, l_text_154@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    ldr x15, [x25]
    ldr x9, [sp, #1176]
    ldr x21, [x9]
    cmp x20, x21
    b.lo 1f
    adrp x0, l_text_155@PAGE
    add x0, x0, l_text_155@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x21, x20, #5
    add x15, x15, x21
    mov x0, x15
    sub x8, x29, #816
    bl _lb_files_Directory_next
    ldr x9, [sp, #1168]
    ldrb w15, [x9]
    cbnz w15, L50_20
    b L50_19
L50_20:
    ldr x9, [sp, #176]
    add x14, x9, #24
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_19:
    ldr x10, [sp, #176]
    ldr x11, [sp, #184]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x9, [sp, #1160]
    ldrb w14, [x9]
    mov x10, #0
    cmp w14, w10
    b.ne L50_23
L50_22:
    ldr x9, [sp, #1184]
    ldr x14, [x9]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_174@PAGE
    add x0, x0, l_text_174@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x15, [x25]
    ldr x9, [sp, #1176]
    ldr x20, [x9]
    cmp x14, x20
    b.lo 1f
    adrp x0, l_text_175@PAGE
    add x0, x0, l_text_175@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #5
    add x14, x15, x14
    mov x0, x14
    sub x8, x29, #1872
    bl _lb_files_Directory_close
    ldr x9, [sp, #968]
    ldrb w14, [x9]
    cbnz w14, L50_85
    b L50_84
L50_85:
    ldr x10, [sp, #16]
    ldr x11, [sp, #960]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L50_82
L50_84:
    b L50_83
L50_82:
    ldr x9, [sp, #1184]
    ldr x14, [x9]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_176@PAGE
    add x0, x0, l_text_176@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x10, [sp, #1184]
    str x14, [x10]
    ldr x9, [sp, #960]
    ldr w14, [x9]
    ldr x10, [sp, #952]
    str w14, [x10]
    ldr x10, [sp, #944]
    ldr x11, [sp, #936]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #1
    ldr x10, [sp, #928]
    strb w9, [x10]
    ldr x10, [sp, #952]
    sub x11, x29, #848
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L50_93
L50_83:
    ldr x9, [sp, #1184]
    ldr x14, [x9]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_175@PAGE
    add x0, x0, l_text_175@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x10, [sp, #1184]
    str x14, [x10]
    mov x10, #0
    cmp x14, x10
    b.ls L50_88
L50_87:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_177@PAGE
    add x0, x0, l_text_177@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x20, [x25]
    ldr x9, [sp, #1176]
    ldr x21, [x9]
    cmp x15, x21
    b.lo 1f
    adrp x0, l_text_177@PAGE
    add x0, x0, l_text_177@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x15, #5
    add x15, x20, x15
    add x15, x15, #24
    ldr x15, [x15]
    ldr x0, [sp, #920]
    mov x1, x15
    sub x8, x29, #1904
    bl _lb_strings_Builder_truncate
    ldr x9, [sp, #912]
    ldrb w15, [x9]
    cbnz w15, L50_91
    b L50_90
L50_91:
    ldr x10, [sp, #8]
    ldr x11, [sp, #904]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    movz x9, #1
    ldr x10, [sp, #896]
    strb w9, [x10]
    ldr x10, [sp, #904]
    sub x11, x29, #848
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L50_93
L50_90:
    b L50_89
L50_88:
L50_89:
    mov x9, #0
    ldr x10, [sp, #880]
    strb w9, [x10]
    ldr x10, [sp, #888]
    sub x11, x29, #848
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L50_93:
    ldr x9, [sp, #1152]
    ldrb w14, [x9]
    cbnz w14, L50_26
    b L50_25
L50_26:
    sub x19, x29, #136
    ldr x10, [sp, #0]
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_25:
    b L50_16
L50_23:
L50_24:
    cbnz w14, L50_29
    b L50_30
L50_29:
    ldr x10, [sp, #184]
    ldr x11, [sp, #1144]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L50_31
L50_30:
    b L50_16
L50_31:
    ldr x10, [sp, #1144]
    ldr x11, [sp, #168]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #1184]
    ldr x19, [x9]
    ldr x9, [sp, #1136]
    ldr x14, [x9]
    cmp x19, x14
    b.ls L50_34
L50_33:
    sub x19, x29, #136
    adrp x14, _lb_files_11depth_limit@PAGE
    add x14, x14, _lb_files_11depth_limit@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_156@PAGE
    add x14, x14, l_text_156@PAGEOFF
    sub x15, x29, #896
    str x14, [x15]
    add x14, x15, #8
    movz x9, #44
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_34:
L50_35:
    ldr x14, [x25]
    ldr x9, [sp, #1176]
    ldr x15, [x9]
    cmp x20, x15
    b.lo 1f
    adrp x0, l_text_157@PAGE
    add x0, x0, l_text_157@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x21, x14
    ldr x9, [sp, #168]
    ldr x22, [x9]
    sub x10, x29, #2080
    str x22, [x10]
    mov x9, #0
    sub x10, x29, #2096
    str w9, [x10]
    mov x0, x14
    sub x8, x29, #2136
    bl _lb_files_Directory_descriptor
    ldr x9, [sp, #872]
    ldrb w14, [x9]
    cbnz w14, L50_95
    b L50_94
L50_95:
    ldr x10, [sp, #864]
    ldr x11, [sp, #848]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    movz x9, #1
    ldr x10, [sp, #840]
    strb w9, [x10]
    sub x0, x29, #1184
    ldr x1, [sp, #856]
    movz x2, #160
    bl _memcpy
    b L50_116
L50_94:
    ldrsw x23, [x28]
    ldr x9, [sp, #832]
    ldrb w14, [x9]
    sub x10, x29, #2472
    str w23, [x10]
    sub x10, x29, #2488
    str x22, [x10]
    sub x10, x29, #2504
    str w14, [x10]
    ldr x9, [sp, #768]
    ldrb w14, [x9]
    cbnz w14, L50_101
    b L50_102
L50_101:
    mov x9, #0
    mov w24, w9
    b L50_103
L50_102:
    ldr x9, [sp, #760]
    ldrsw x24, [x9]
L50_103:
    ldr x0, [sp, #752]
    mov x1, #0
    movz x2, #144
    bl _memset
L50_104:
L50_105:
    mov x0, x23
    mov x1, x22
    ldr x2, [sp, #752]
    mov x3, x24
    bl _fstatat
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L50_108
L50_107:
    ldr x9, [sp, #752]
    mov x0, x9
    sub x8, x29, #2776
    bl _lb_files_12mac_metadata
    ldr x10, [sp, #744]
    ldr x11, [sp, #736]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    mov x9, #0
    ldr x10, [sp, #728]
    strb w9, [x10]
    sub x0, x29, #2296
    ldr x1, [sp, #736]
    movz x2, #160
    bl _memcpy
    b L50_115
L50_108:
L50_109:
    bl _lb_c_errno
    mov w14, w0
    ldr x9, [sp, #720]
    ldrsw x15, [x9]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L50_112
L50_111:
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    ldr x10, [sp, #704]
    str w14, [x10]
    ldr x9, [sp, #696]
    ldr x10, [sp, #688]
    str x9, [x10]
    movz x9, #42
    ldr x10, [sp, #680]
    str x9, [x10]
    ldr x10, [sp, #688]
    ldr x11, [sp, #672]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #1
    ldr x10, [sp, #664]
    strb w9, [x10]
    sub x0, x29, #2296
    ldr x1, [sp, #712]
    movz x2, #160
    bl _memcpy
    b L50_115
L50_112:
L50_113:
    b L50_104
L50_115:
    ldr x9, [sp, #824]
    ldrb w14, [x9]
    cbnz w14, L50_98
    b L50_97
L50_98:
    ldr x10, [sp, #816]
    ldr x11, [sp, #800]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    movz x9, #1
    ldr x10, [sp, #792]
    strb w9, [x10]
    sub x0, x29, #1184
    ldr x1, [sp, #808]
    movz x2, #160
    bl _memcpy
    b L50_116
L50_97:
    ldr x10, [sp, #152]
    ldr x11, [sp, #784]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    mov x9, #0
    ldr x10, [sp, #776]
    strb w9, [x10]
    sub x0, x29, #1184
    ldr x1, [sp, #784]
    movz x2, #160
    bl _memcpy
L50_116:
    ldr x9, [sp, #1128]
    ldrb w14, [x9]
    cbnz w14, L50_38
    b L50_37
L50_38:
    ldr x9, [sp, #144]
    add x14, x9, #128
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_37:
    ldr x10, [sp, #144]
    ldr x11, [sp, #160]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    ldr x0, [sp, #1120]
    bl _lb_strings_Builder_view
    sub x16, x29, #1200
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #1112]
    ldr x22, [x9]
    mov x10, #0
    cmp x22, x10
    cset w14, hi
    cbnz w14, L50_43
    b L50_175
L50_175:
    mov w15, w14
    b L50_44
L50_43:
    mov x9, x22
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_158@PAGE
    add x0, x0, l_text_158@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    ldr x0, [sp, #1120]
    bl _lb_strings_Builder_view
    sub x16, x29, #1216
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #1104]
    ldr x14, [x9]
    ldr x9, [sp, #1096]
    ldr x15, [x9]
    cmp x23, x15
    b.lo 1f
    adrp x0, l_text_158@PAGE
    add x0, x0, l_text_158@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x23, x14
    ldrb w14, [x14]
    movz x10, #47
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L50_44:
    and w14, w15, #255
    cbnz w14, L50_40
    b L50_41
L50_40:
    ldr x9, [sp, #1088]
    ldr x10, [sp, #1080]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #1072]
    str x9, [x10]
    ldr x0, [sp, #1120]
    ldr x9, [sp, #1080]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #1264
    bl _lb_strings_Builder_put
    ldr x9, [sp, #1064]
    ldrb w14, [x9]
    cbnz w14, L50_46
    b L50_45
L50_46:
    sub x19, x29, #136
    ldr x10, [sp, #136]
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_45:
    b L50_42
L50_41:
L50_42:
    ldr x0, [sp, #1120]
    ldr x9, [sp, #168]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #1296
    bl _lb_strings_Builder_put
    ldr x9, [sp, #1056]
    ldrb w14, [x9]
    cbnz w14, L50_49
    b L50_48
L50_49:
    sub x19, x29, #136
    ldr x10, [sp, #128]
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_48:
    ldr x9, [sp, #1192]
    ldr x23, [x9]
    ldr x0, [sp, #1120]
    bl _lb_strings_Builder_view
    sub x16, x29, #1312
    str x0, [x16, #0]
    str x1, [x16, #8]
    mov x17, x23
    str x17, [sp, #-16]!
    ldr x0, [sp, #1216]
    ldr x9, [sp, #1064]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x9, [sp, #176]
    mov x3, x9
    mov x4, x19
    sub x8, x29, #1352
    ldr x17, [sp], #16
    blr x17
    ldr x9, [sp, #1040]
    ldrb w14, [x9]
    cbnz w14, L50_52
    b L50_51
L50_52:
    ldr x9, [sp, #120]
    add x14, x9, #8
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_51:
    ldr x9, [sp, #120]
    ldrb w14, [x9]
    ldr x9, [sp, #160]
    ldrb w15, [x9]
    movz x10, #2
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, L50_176
    b L50_57
L50_176:
    mov w14, w15
    b L50_58
L50_57:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L50_58:
    and w15, w14, #255
    cbnz w15, L50_54
    b L50_55
L50_54:
    ldr x0, [sp, #1120]
    mov x1, x22
    sub x8, x29, #1384
    bl _lb_strings_Builder_truncate
    ldr x9, [sp, #1032]
    ldrb w14, [x9]
    cbnz w14, L50_60
    b L50_59
L50_60:
    sub x19, x29, #136
    ldr x10, [sp, #24]
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_59:
    b L50_16
L50_55:
L50_56:
    ldr x9, [sp, #1024]
    ldr x19, [x9]
    ldr x9, [sp, #1016]
    ldr x22, [x9]
    sub x10, x29, #2808
    str x19, [x10]
    sub x10, x29, #2824
    str x22, [x10]
    ldr x24, [x25]
    ldr x9, [sp, #1176]
    ldr x23, [x9]
    ldr x9, [sp, #1184]
    ldr x26, [x9]
    add x14, x23, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_167@PAGE
    add x0, x0, l_text_167@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x26, x14
    b.lo 1f
    adrp x0, l_text_167@PAGE
    add x0, x0, l_text_167@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x26
    b.ls L50_121
L50_122:
    adrp x0, l_text_167@PAGE
    add x0, x0, l_text_167@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L50_121:
    ldr x10, [sp, #656]
    str x24, [x10]
    ldr x10, [sp, #648]
    str x26, [x10]
    mov x9, #0
    mov x27, x9
L50_117:
    cmp x27, x26
    b.hs L50_120
L50_118:
    lsl x14, x27, #5
    add x14, x14, x24
    mov x10, x14
    ldr x11, [sp, #640]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x9, [sp, #632]
    ldr x14, [x9]
    cmp x19, x14
    cset w14, eq
    cbnz w14, L50_126
    b L50_177
L50_177:
    mov w15, w14
    b L50_127
L50_126:
    ldr x9, [sp, #624]
    ldr x14, [x9]
    cmp x22, x14
    cset w15, eq
L50_127:
    and w14, w15, #255
    cbnz w14, L50_123
    b L50_124
L50_123:
    movz x9, #1
    sub x10, x29, #2880
    str w9, [x10]
    movz x9, #1
    mov w14, w9
    b L50_130
L50_124:
L50_125:
L50_119:
    add x14, x27, #1
    mov x27, x14
    b L50_117
L50_120:
    mov x9, #0
    sub x10, x29, #2880
    str w9, [x10]
    mov x9, #0
    mov w14, w9
L50_130:
    cbnz w14, L50_63
    b L50_64
L50_63:
    sub x19, x29, #136
    adrp x14, _lb_files_15directory_cycle@PAGE
    add x14, x14, _lb_files_15directory_cycle@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_160@PAGE
    add x14, x14, l_text_160@PAGEOFF
    sub x15, x29, #1400
    str x14, [x15]
    add x14, x15, #8
    movz x9, #49
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_64:
L50_65:
    cmp x20, x23
    b.lo 1f
    adrp x0, l_text_161@PAGE
    add x0, x0, l_text_161@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x21, x24
    ldr x9, [sp, #168]
    ldr x19, [x9]
    sub x10, x29, #2936
    str x19, [x10]
    mov x9, #0
    sub x10, x29, #2952
    str w9, [x10]
    mov x0, x14
    sub x8, x29, #2992
    bl _lb_files_Directory_descriptor
    ldr x9, [sp, #616]
    ldrb w14, [x9]
    cbnz w14, L50_132
    b L50_131
L50_132:
    ldr x10, [sp, #608]
    ldr x11, [sp, #592]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    movz x9, #1
    ldr x10, [sp, #584]
    strb w9, [x10]
    ldr x10, [sp, #600]
    sub x11, x29, #1448
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L50_138
L50_131:
    ldr x9, [sp, #104]
    ldrsw x14, [x9]
    ldr x9, [sp, #576]
    ldrb w15, [x9]
    mov x0, x14
    mov x1, x19
    mov x2, x15
    sub x8, x29, #3032
    bl _lb_files_17open_directory_at
    ldr x9, [sp, #568]
    ldrb w14, [x9]
    cbnz w14, L50_135
    b L50_134
L50_135:
    ldr x10, [sp, #560]
    ldr x11, [sp, #544]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    movz x9, #1
    ldr x10, [sp, #536]
    strb w9, [x10]
    ldr x10, [sp, #552]
    sub x11, x29, #1448
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L50_138
L50_134:
    ldr x10, [sp, #96]
    ldr x11, [sp, #528]
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x9, #0
    ldr x10, [sp, #520]
    strb w9, [x10]
    ldr x10, [sp, #528]
    sub x11, x29, #1448
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
L50_138:
    ldr x9, [sp, #1008]
    ldrb w14, [x9]
    cbnz w14, L50_68
    b L50_67
L50_68:
    ldr x9, [sp, #88]
    add x14, x9, #8
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_67:
    ldr x10, [sp, #88]
    ldr x11, [sp, #112]
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr x0, [sp, #112]
    sub x8, x29, #1736
    bl _lb_files_Directory_metadata
    ldr x9, [sp, #1000]
    ldrb w14, [x9]
    cbnz w14, L50_71
    b L50_70
L50_71:
    ldr x9, [sp, #72]
    add x14, x9, #128
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #112]
    sub x8, x29, #3088
    bl _lb_files_Directory_close
    sub x15, x29, #3088
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L50_142
    b L50_141
L50_142:
    sub x14, x29, #3056
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L50_139
L50_141:
    b L50_140
L50_139:
L50_140:
L50_143:
    mov x0, x25
    bl _lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_70:
    ldr x10, [sp, #72]
    ldr x11, [sp, #80]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    ldr x9, [sp, #992]
    ldr x19, [x9]
    ldr x9, [sp, #1024]
    ldr x14, [x9]
    cmp x19, x14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L50_178
    b L50_76
L50_178:
    mov w15, w14
    b L50_77
L50_76:
    ldr x9, [sp, #984]
    ldr x14, [x9]
    ldr x9, [sp, #1016]
    ldr x15, [x9]
    cmp x14, x15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L50_77:
    and w14, w15, #255
    cbnz w14, L50_73
    b L50_74
L50_73:
    sub x19, x29, #136
    adrp x14, _lb_files_failed@PAGE
    add x14, x14, _lb_files_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_162@PAGE
    add x14, x14, l_text_162@PAGEOFF
    sub x15, x29, #1752
    str x14, [x15]
    add x14, x15, #8
    movz x9, #51
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #112]
    sub x8, x29, #3088
    bl _lb_files_Directory_close
    sub x15, x29, #3088
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L50_147
    b L50_146
L50_147:
    sub x14, x29, #3056
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L50_144
L50_146:
    b L50_145
L50_144:
L50_145:
L50_148:
    mov x0, x25
    bl _lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_74:
L50_75:
    ldr x10, [sp, #112]
    sub x11, x29, #3136
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr x10, [sp, #80]
    sub x11, x29, #3264
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    ldr x9, [sp, #1184]
    ldr x14, [x9]
    ldr x9, [sp, #1176]
    ldr x15, [x9]
    cmp x14, x15
    b.ne L50_150
L50_149:
    mov x0, x15
    movz x1, #2
    movz x2, #64
    ldr x3, [sp, #512]
    bl _lb_core_6qmul_u
    mov w14, w0
    ldr x9, [sp, #512]
    ldr x20, [x9]
    ldr x10, [sp, #64]
    str x20, [x10]
    ldr x10, [sp, #504]
    strb w14, [x10]
    ldr x9, [sp, #504]
    ldrb w14, [x9]
    cbnz w14, L50_152
    b L50_153
L50_152:
    b L50_154
L50_153:
    ldr x9, [sp, #488]
    ldr w14, [x9]
    ldr x10, [sp, #496]
    str w14, [x10]
    ldr x9, [sp, #480]
    ldr x10, [sp, #472]
    str x9, [x10]
    movz x9, #32
    ldr x10, [sp, #464]
    str x9, [x10]
    ldr x10, [sp, #472]
    ldr x11, [sp, #456]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #1
    ldr x10, [sp, #448]
    strb w9, [x10]
    ldr x10, [sp, #496]
    sub x11, x29, #1784
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L50_168
L50_154:
    ldr x10, [sp, #1208]
    ldr x11, [sp, #440]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x10, [sp, #432]
    ldr x11, [sp, #1208]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x10, #512, lsl #48
    cmp x20, x10
    b.ls L50_157
L50_156:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #424]
    str w9, [x10]
    ldr x9, [sp, #416]
    ldr x10, [sp, #408]
    str x9, [x10]
    movz x9, #47
    ldr x10, [sp, #400]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #392]
    strb w9, [x10]
    b L50_158
L50_157:
    lsl x21, x20, #5
    ldr x9, [sp, #1208]
    ldr x14, [x9]
    ldr x9, [sp, #384]
    ldr x15, [x9]
    cbnz x15, L50_159
    b L50_160
L50_160:
    adrp x0, l_text_170@PAGE
    add x0, x0, l_text_170@PAGEOFF
    adrp x1, l_text_59@PAGE
    add x1, x1, l_text_59@PAGEOFF
    bl _lb_core_7trap_at
L50_159:
    ldr x22, [x15]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x21
    movz x2, #8
    sub x8, x29, #3408
    ldr x17, [sp], #16
    blr x17
    ldr x9, [sp, #376]
    ldrb w22, [x9]
    mov x10, #0
    cmp x21, x10
    cset w23, ne
    mov x10, #0
    cmp w22, w10
    cset w22, eq
    and w22, w23, w22
    cbnz w22, L50_161
    b L50_162
L50_161:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #368]
    str w9, [x10]
    ldr x9, [sp, #360]
    ldr x10, [sp, #352]
    str x9, [x10]
    movz x9, #16
    ldr x10, [sp, #344]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #336]
    strb w9, [x10]
    b L50_158
L50_162:
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x10, [sp, #48]
    str x14, [x10]
    ldr x10, [sp, #328]
    str x20, [x10]
    mov x9, #0
    ldr x10, [sp, #320]
    strb w9, [x10]
L50_158:
    ldr x9, [sp, #312]
    ldrb w14, [x9]
    cbnz w14, L50_164
    b L50_163
L50_164:
    ldr x10, [sp, #304]
    ldr x11, [sp, #296]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    movz x9, #1
    ldr x10, [sp, #288]
    strb w9, [x10]
    ldr x10, [sp, #440]
    ldr x11, [sp, #1208]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x10, [sp, #296]
    sub x11, x29, #1784
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L50_168
L50_163:
    ldr x10, [sp, #48]
    ldr x11, [sp, #56]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #1184]
    ldr x14, [x9]
    ldr x9, [sp, #56]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x25
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_files_WalkFrame
    ldr x14, [x25]
    ldr x9, [sp, #1176]
    ldr x15, [x9]
    mov x9, x15
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_171@PAGE
    add x0, x0, l_text_171@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x10, [sp, #280]
    str x14, [x10]
    ldr x10, [sp, #272]
    str x15, [x10]
    ldr x9, [sp, #1208]
    ldr x14, [x9]
    ldr x9, [sp, #264]
    ldr x15, [x9]
    cbnz x15, L50_167
    b L50_166
L50_167:
    add x20, x15, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x14
    ldr x9, [sp, #296]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L50_166:
    ldr x10, [sp, #56]
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x10, [sp, #440]
    ldr x11, [sp, #1208]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L50_151
L50_150:
L50_151:
    ldr x9, [sp, #1184]
    ldr x14, [x9]
    ldr x15, [x25]
    ldr x9, [sp, #1176]
    ldr x20, [x9]
    cmp x14, x20
    b.lo 1f
    adrp x0, l_text_172@PAGE
    add x0, x0, l_text_172@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #5
    add x20, x15, x14
    ldr x11, [sp, #256]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    ldr x10, [sp, #248]
    ldr x11, [sp, #256]
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr x10, [sp, #240]
    str x19, [x10]
    ldr x9, [sp, #232]
    ldr x14, [x9]
    ldr x10, [sp, #224]
    str x14, [x10]
    ldr x0, [sp, #1120]
    bl _lb_strings_Builder_view
    sub x16, x29, #3472
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #216]
    ldr x14, [x9]
    ldr x10, [sp, #208]
    str x14, [x10]
    ldr x10, [sp, #256]
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x9, [sp, #1184]
    ldr x14, [x9]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_173@PAGE
    add x0, x0, l_text_173@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x10, [sp, #1184]
    str x14, [x10]
    mov x9, #0
    ldr x10, [sp, #192]
    strb w9, [x10]
    ldr x10, [sp, #200]
    sub x11, x29, #1784
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L50_168:
    ldr x9, [sp, #976]
    ldrb w14, [x9]
    cbnz w14, L50_80
    b L50_79
L50_80:
    sub x19, x29, #136
    ldr x10, [sp, #32]
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #112]
    sub x8, x29, #3088
    bl _lb_files_Directory_close
    sub x15, x29, #3088
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L50_172
    b L50_171
L50_172:
    sub x14, x29, #3056
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L50_169
L50_171:
    b L50_170
L50_169:
L50_170:
L50_173:
    mov x0, x25
    bl _lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_79:
    b L50_16
L50_18:
    mov x0, x25
    bl _lb_files_WalkState_destroy
    sub x14, x29, #136
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4656]
    ldr x20, [sp, #4648]
    ldr x21, [sp, #4640]
    ldr x22, [sp, #4632]
    ldr x23, [sp, #4624]
    ldr x24, [sp, #4616]
    ldr x25, [sp, #4608]
    ldr x26, [sp, #4600]
    ldr x27, [sp, #4592]
    ldr x28, [sp, #4584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_WalkState_start
_lb_files_WalkState_start:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1184
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1152]
    str x20, [sp, #1144]
    str x21, [sp, #1136]
    str x22, [sp, #1128]
    str x23, [sp, #1120]
    str x24, [sp, #1112]
    str x25, [sp, #1104]
    str x26, [sp, #1096]
    str x27, [sp, #1088]
    str x28, [sp, #1080]
    sub x16, x29, #232
    str x0, [x16]
    sub x16, x29, #360
    str x1, [x16]
    sub x16, x29, #376
    str x2, [x16]
    str x3, [x16, #8]
    sub x0, x29, #360
    ldr x1, [x0]
    movz x2, #128
    bl _memcpy
    sub x20, x29, #384
    sub x14, x29, #232
    ldr x19, [x14]
    mov x0, x19
    movz x1, #1
    sub x8, x29, #424
    bl _lb_files_Directory_open
    sub x15, x29, #424
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L51_2
    b L51_1
L51_2:
    add x14, x15, #8
    sub x19, x29, #216
    add x20, x19, #80
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #104
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #112
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_1:
    mov x10, x15
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x21, x29, #552
    mov x0, x20
    sub x8, x29, #712
    bl _lb_files_Directory_metadata
    sub x22, x29, #712
    add x14, x22, #152
    ldrb w14, [x14]
    cbnz w14, L51_5
    b L51_4
L51_5:
    add x14, x22, #128
    sub x19, x29, #216
    add x15, x19, #80
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #104
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    sub x8, x29, #1176
    bl _lb_files_Directory_close
    sub x15, x29, #1176
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_33
    b L51_32
L51_33:
    sub x14, x29, #1144
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L51_30
L51_32:
    b L51_31
L51_30:
L51_31:
L51_34:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #112
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_4:
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    add x14, x21, #16
    ldr x23, [x14]
    sub x14, x29, #360
    add x15, x14, #16
    ldr x15, [x15]
    cmp x23, x15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, L51_55
    b L51_10
L51_55:
    mov w14, w15
    b L51_11
L51_10:
    add x15, x21, #24
    ldr x15, [x15]
    add x22, x14, #24
    ldr x22, [x22]
    cmp x15, x22
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L51_11:
    and w15, w14, #255
    cbnz w15, L51_7
    b L51_8
L51_7:
    sub x19, x29, #216
    add x14, x19, #80
    adrp x15, _lb_files_failed@PAGE
    add x15, x15, _lb_files_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_163@PAGE
    add x15, x15, l_text_163@PAGEOFF
    sub x21, x29, #728
    str x15, [x21]
    add x15, x21, #8
    movz x9, #52
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #104
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    sub x8, x29, #1176
    bl _lb_files_Directory_close
    sub x15, x29, #1176
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_38
    b L51_37
L51_38:
    sub x14, x29, #1144
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L51_35
L51_37:
    b L51_36
L51_35:
L51_36:
L51_39:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #112
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_8:
L51_9:
    sub x22, x29, #744
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x24, x0
    mov x10, x24
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x9, x29, #376
    str x9, [sp, #0]
    ldr x10, [sp, #0]
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x26, x29, #784
    movz x0, #64
    sub x8, x29, #856
    bl _lb_strings_Builder_create
    sub x15, x29, #856
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L51_14
    b L51_13
L51_14:
    add x14, x15, #40
    sub x19, x29, #216
    add x21, x19, #80
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #104
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x20
    sub x8, x29, #1176
    bl _lb_files_Directory_close
    sub x21, x29, #1176
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L51_43
    b L51_42
L51_43:
    sub x14, x29, #1144
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L51_40
L51_42:
    b L51_41
L51_40:
L51_41:
L51_44:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #112
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_13:
    mov x10, x15
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    mov x0, x19
    bl _strlen
    mov x14, x0
    sub x27, x29, #872
    str x19, [x27]
    add x28, x27, #8
    str x14, [x28]
    mov x0, x26
    mov x9, x27
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #904
    bl _lb_strings_Builder_put
    sub x27, x29, #904
    add x14, x27, #24
    ldrb w14, [x14]
    cbnz w14, L51_17
    b L51_16
L51_17:
    sub x19, x29, #216
    add x14, x19, #80
    mov x10, x27
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #104
    movz x9, #1
    strb w9, [x14]
    mov x0, x26
    bl _lb_strings_Builder_destroy
    mov x10, x22
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x20
    sub x8, x29, #1176
    bl _lb_files_Directory_close
    sub x15, x29, #1176
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_48
    b L51_47
L51_48:
    sub x14, x29, #1144
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L51_45
L51_47:
    b L51_46
L51_45:
L51_46:
L51_49:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #112
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_16:
    sub x19, x29, #920
    sub x27, x29, #968
L51_20:
    ldr x14, [x24]
    add x15, x24, #8
    ldr x15, [x15]
    cbnz x15, L51_22
    b L51_23
L51_23:
    adrp x0, l_text_164@PAGE
    add x0, x0, l_text_164@PAGEOFF
    adrp x1, l_text_59@PAGE
    add x1, x1, l_text_59@PAGEOFF
    bl _lb_core_7trap_at
L51_22:
    ldr x28, [x15]
    mov x17, x28
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #256
    movz x2, #8
    sub x8, x29, #992
    ldr x17, [sp], #16
    blr x17
    sub x25, x29, #992
    add x28, x25, #16
    ldrb w28, [x28]
    mov x10, #0
    cmp w28, w10
    cset w28, eq
    movz x10, #1
    and w28, w28, w10
    cbnz w28, L51_24
    b L51_25
L51_24:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_61@PAGE
    add x15, x15, l_text_61@PAGEOFF
    add x25, x14, #8
    str x15, [x25]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b L51_21
L51_25:
    ldr x14, [x25]
    str x14, [x27]
    add x14, x27, #8
    movz x9, #8
    str x9, [x14]
    add x14, x27, #40
    mov x9, #0
    strb w9, [x14]
L51_21:
    add x14, x27, #40
    ldrb w14, [x14]
    cbnz w14, L51_27
    b L51_26
L51_27:
    add x14, x27, #16
    sub x19, x29, #216
    add x15, x19, #80
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #104
    movz x9, #1
    strb w9, [x14]
    mov x0, x26
    bl _lb_strings_Builder_destroy
    mov x10, x22
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x20
    sub x8, x29, #1176
    bl _lb_files_Directory_close
    sub x15, x29, #1176
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_53
    b L51_52
L51_53:
    sub x14, x29, #1144
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L51_50
L51_52:
    b L51_51
L51_50:
L51_51:
L51_54:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #112
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_26:
    mov x10, x27
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x25, [x19]
    add x14, x19, #8
    ldr x14, [x14]
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_165@PAGE
    add x0, x0, l_text_165@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    sub x28, x29, #1024
    mov x11, x28
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    mov x10, x20
    mov x11, x28
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x28, #8
    str x23, [x14]
    add x14, x21, #24
    ldr x14, [x14]
    add x15, x28, #16
    str x14, [x15]
    mov x0, x26
    bl _lb_strings_Builder_view
    sub x16, x29, #1040
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #1040
    add x14, x14, #8
    ldr x14, [x14]
    add x15, x28, #24
    str x14, [x15]
    mov x10, x28
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x25, x29, #1120
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    mov x10, x19
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x25, #16
    movz x9, #1
    str x9, [x14]
    add x14, x25, #24
    mov x10, x26
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x25, #64
    ldr x10, [sp, #0]
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x28, x29, #216
    mov x10, x25
    mov x11, x28
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    add x14, x28, #104
    mov x9, #0
    strb w9, [x14]
    mov x10, x22
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x1, x28
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #112
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_WalkState_destroy
_lb_files_WalkState_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    str x20, [sp, #144]
    str x21, [sp, #136]
    str x22, [sp, #128]
    str x23, [sp, #120]
    str x24, [sp, #112]
    str x25, [sp, #104]
    str x26, [sp, #96]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x23, [x9]
    add x19, x23, #16
    add x20, x23, #8
    sub x24, x29, #176
    add x21, x24, #24
    sub x22, x29, #144
L52_1:
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ls L52_3
L52_2:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_178@PAGE
    add x0, x0, l_text_178@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x19]
    ldr x25, [x23]
    ldr x26, [x20]
    cmp x15, x26
    b.lo 1f
    adrp x0, l_text_179@PAGE
    add x0, x0, l_text_179@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x15, #5
    add x15, x25, x15
    mov x0, x15
    sub x8, x29, #176
    bl _lb_files_Directory_close
    ldrb w15, [x21]
    cbnz w15, L52_12
    b L52_11
L52_12:
    mov x10, x24
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L52_9
L52_11:
    b L52_10
L52_9:
L52_10:
L52_13:
    b L52_1
L52_3:
    add x14, x23, #24
    mov x0, x14
    bl _lb_strings_Builder_destroy
    add x14, x23, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L52_5
L52_4:
    add x15, x23, #64
    sub x19, x29, #104
    ldr x20, [x23]
    mov x9, x14
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_180@PAGE
    add x0, x0, l_text_180@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    str x20, [x19]
    add x20, x19, #8
    str x21, [x20]
    ldr x20, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L52_8
    b L52_7
L52_8:
    add x14, x15, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L52_7:
    sub x19, x29, #120
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    mov x10, x19
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L52_6
L52_5:
L52_6:
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    ldr x22, [sp, #128]
    ldr x23, [sp, #120]
    ldr x24, [sp, #112]
    ldr x25, [sp, #104]
    ldr x26, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_22windows_create_symlink
_lb_files_22windows_create_symlink:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1072
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1040]
    str x20, [sp, #1032]
    str x21, [sp, #1024]
    str x22, [sp, #1016]
    str x23, [sp, #1008]
    str x24, [sp, #1000]
    str x25, [sp, #992]
    str x26, [sp, #984]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #152
    str x1, [x16]
    sub x16, x29, #168
    str x2, [x16]
    sub x15, x29, #168
    add x14, x15, #1
    ldrb w14, [x14]
    cbnz w14, L53_4
    b L53_2
L53_4:
    ldrb w14, [x15]
L53_1:
    and w15, w14, #255
    mov w19, w15
    b L53_3
L53_2:
    sub x21, x29, #184
    sub x14, x29, #152
    ldr x19, [x14]
    mov x0, x19
    bl _strlen
    mov x14, x0
    sub x15, x29, #200
    str x19, [x15]
    add x19, x15, #8
    str x14, [x19]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_paths_directory
    sub x16, x29, #216
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x19, x29, #216
    sub x14, x29, #136
    ldr x20, [x14]
    mov x0, x20
    bl _strlen
    mov x14, x0
    sub x15, x29, #232
    str x20, [x15]
    add x20, x15, #8
    str x14, [x20]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #280
    bl _lb_paths_join
    sub x15, x29, #280
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L53_6
    b L53_5
L53_6:
    add x14, x15, #16
    sub x19, x29, #120
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L53_7:
L53_5:
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x19, x29, #408
    ldr x14, [x21]
    mov x0, x14
    movz x1, #1
    sub x8, x29, #720
    bl _lb_files_metadata
    sub x20, x29, #720
    add x14, x20, #152
    ldrb w14, [x14]
    cbnz w14, L53_11
    b L53_10
L53_11:
    add x14, x20, #128
    sub x22, x29, #560
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L53_8
L53_10:
    sub x14, x29, #536
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    b L53_9
L53_8:
    ldr w14, [x22]
    adrp x15, _lb_files_missing@PAGE
    add x15, x15, _lb_files_missing@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L53_13
L53_12:
    sub x19, x29, #120
    str w14, [x19]
    add x15, x22, #8
    add x20, x19, #8
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #24
    movz x9, #1
    strb w9, [x15]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L53_15:
    b L53_14
L53_13:
L53_14:
    sub x20, x29, #848
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    stp xzr, xzr, [x11, #112]
    sub x14, x29, #536
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    b L53_9
L53_16:
L53_9:
    sub x14, x29, #536
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    ldrb w14, [x19]
    movz x10, #2
    cmp w14, w10
    cset w20, eq
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov w19, w20
L53_3:
    sub x20, x29, #864
    sub x14, x29, #152
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #912
    bl _lb_files_9wide_path
    sub x15, x29, #912
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L53_18
    b L53_17
L53_18:
    add x14, x15, #16
    sub x19, x29, #120
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L53_19:
L53_17:
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #928
    sub x14, x29, #136
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #976
    bl _lb_files_9wide_path
    sub x22, x29, #976
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, L53_21
    b L53_20
L53_21:
    add x14, x22, #16
    sub x19, x29, #120
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #992
    ldr x21, [x20]
    add x23, x20, #8
    ldr x23, [x23]
    mov x9, x23
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_181@PAGE
    add x0, x0, l_text_181@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    str x21, [x15]
    add x21, x15, #8
    str x23, [x21]
    ldr x21, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L53_23
    b L53_22
L53_23:
    add x20, x14, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L53_22:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L53_24:
L53_20:
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x23, [x20]
    ldr x24, [x21]
    and w14, w19, #255
    cbnz w14, L53_28
    b L53_29
L53_28:
    movz x9, #1
    mov w14, w9
    b L53_30
L53_29:
    mov x9, #0
    mov w14, w9
L53_30:
    movz x10, #2
    orr w15, w14, w10
    mov x0, x23
    mov x1, x24
    mov x2, x15
    bl _CreateSymbolicLinkW
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ne L53_26
L53_25:
    sub x19, x29, #120
    bl _GetLastError
    mov w14, w0
    mov x0, x14
    bl _lb_files_13windows_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_55@PAGE
    add x14, x14, l_text_55@PAGEOFF
    sub x15, x29, #1008
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x22, x0
    sub x14, x29, #1024
    add x15, x21, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_182@PAGE
    add x0, x0, l_text_182@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x24, [x14]
    add x25, x14, #8
    str x15, [x25]
    ldr x15, [x22]
    add x25, x22, #8
    ldr x26, [x25]
    cbnz x26, L53_32
    b L53_31
L53_32:
    add x21, x26, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L53_31:
    sub x14, x29, #1040
    add x15, x20, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_182@PAGE
    add x0, x0, l_text_182@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x23, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x15, [x22]
    ldr x21, [x25]
    cbnz x21, L53_34
    b L53_33
L53_34:
    add x20, x21, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L53_33:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L53_35:
    b L53_27
L53_26:
L53_27:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x14, x29, #1056
    add x15, x21, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_182@PAGE
    add x0, x0, l_text_182@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x24, [x14]
    add x22, x14, #8
    str x15, [x22]
    ldr x15, [x19]
    add x22, x19, #8
    ldr x25, [x22]
    cbnz x25, L53_37
    b L53_36
L53_37:
    add x21, x25, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L53_36:
    sub x14, x29, #1072
    add x15, x20, #8
    ldr x15, [x15]
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_182@PAGE
    add x0, x0, l_text_182@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x23, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x15, [x19]
    ldr x21, [x22]
    cbnz x21, L53_39
    b L53_38
L53_39:
    add x19, x21, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L53_38:
    sub x14, x29, #120
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1040]
    ldr x20, [sp, #1032]
    ldr x21, [sp, #1024]
    ldr x22, [sp, #1016]
    ldr x23, [sp, #1008]
    ldr x24, [sp, #1000]
    ldr x25, [sp, #992]
    ldr x26, [sp, #984]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_20windows_read_symlink
_lb_files_20windows_read_symlink:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #16928
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #16896]
    str x20, [sp, #16888]
    str x21, [sp, #16880]
    str x22, [sp, #16872]
    str x23, [sp, #16864]
    str x24, [sp, #16856]
    str x25, [sp, #16848]
    str x26, [sp, #16840]
    str x27, [sp, #16832]
    str x28, [sp, #16824]
    sub x16, x29, #168
    str x0, [x16]
    sub x16, x29, #184
    str x1, [x16]
    sub x14, x29, #168
    ldr x14, [x14]
    mov x0, x14
    mov x1, #0
    mov x2, #0
    sub x8, x29, #224
    bl _lb_files_19windows_path_handle
    sub x15, x29, #224
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L54_2
    b L54_1
L54_2:
    add x14, x15, #8
    sub x19, x29, #152
    add x20, x19, #16
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #16896]
    ldr x20, [sp, #16888]
    ldr x21, [sp, #16880]
    ldr x22, [sp, #16872]
    ldr x23, [sp, #16864]
    ldr x24, [sp, #16856]
    ldr x25, [sp, #16848]
    ldr x26, [sp, #16840]
    ldr x27, [sp, #16832]
    ldr x28, [sp, #16824]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_1:
    ldr x19, [x15]
    movz x16, #16608
    sub x20, x29, x16
    mov x0, x20
    mov x1, #0
    movz x2, #16384
    bl _memset
    movz x16, #16612
    sub x21, x29, x16
    mov x9, #0
    str w9, [x21]
    mov x0, x19
    movz x1, #168
    movk x1, #9, lsl #16
    mov x2, #0
    mov x3, #0
    mov x4, x20
    movz x5, #16384
    mov x6, x21
    mov x7, #0
    bl _DeviceIoControl
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L54_5
L54_4:
    sub x20, x29, #152
    add x21, x20, #16
    bl _GetLastError
    mov w14, w0
    mov x0, x14
    bl _lb_files_13windows_error
    mov w14, w0
    str w14, [x21]
    adrp x14, l_text_62@PAGE
    add x14, x14, l_text_62@PAGEOFF
    movz x16, #16632
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #35
    str x9, [x14]
    add x14, x21, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #16896]
    ldr x20, [sp, #16888]
    ldr x21, [sp, #16880]
    ldr x22, [sp, #16872]
    ldr x23, [sp, #16864]
    ldr x24, [sp, #16856]
    ldr x25, [sp, #16848]
    ldr x26, [sp, #16840]
    ldr x27, [sp, #16832]
    ldr x28, [sp, #16824]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_5:
L54_6:
    ldr w14, [x20]
    movz x10, #12
    movk x10, #40960, lsl #16
    cmp w14, w10
    cset w15, eq
    cbnz w15, L54_8
    b L54_9
L54_8:
    movz x9, #20
    mov x22, x9
    b L54_10
L54_9:
    movz x9, #16
    mov x22, x9
L54_10:
    mov x10, #0
    cmp w15, w10
    cset w23, eq
    cbnz w23, L54_14
    b L54_71
L54_71:
    mov w14, w23
    b L54_15
L54_14:
    movz x10, #3
    movk x10, #40960, lsl #16
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L54_15:
    and w15, w14, #255
    cbnz w15, L54_72
    b L54_16
L54_72:
    mov w14, w15
    b L54_17
L54_16:
    ldr w14, [x21]
    cmp w14, w22
    cset w14, lo
L54_17:
    and w15, w14, #255
    cbnz w15, L54_11
    b L54_12
L54_11:
    sub x20, x29, #152
    add x14, x20, #16
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_186@PAGE
    add x15, x15, l_text_186@PAGEOFF
    movz x16, #16648
    sub x21, x29, x16
    str x15, [x21]
    add x15, x21, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #16896]
    ldr x20, [sp, #16888]
    ldr x21, [sp, #16880]
    ldr x22, [sp, #16872]
    ldr x23, [sp, #16864]
    ldr x24, [sp, #16856]
    ldr x25, [sp, #16848]
    ldr x26, [sp, #16840]
    ldr x27, [sp, #16832]
    ldr x28, [sp, #16824]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_12:
L54_13:
    add x14, x20, #12
    ldrh w14, [x14]
    mov w14, w14
    add x15, x20, #14
    ldrh w15, [x15]
    mov w15, w15
L54_23:
    movz x10, #2
    udiv x11, x14, x10
    msub x23, x11, x10, x14
    mov x10, #0
    cmp x23, x10
    cset w23, eq
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    cbnz w23, L54_73
    b L54_24
L54_73:
    mov w24, w23
    b L54_25
L54_24:
L54_27:
    movz x10, #2
    udiv x11, x15, x10
    msub x23, x11, x10, x15
    mov x10, #0
    cmp x23, x10
    cset w23, eq
    mov x10, #0
    cmp w23, w10
    cset w24, eq
L54_25:
    and w23, w24, #255
    cbnz w23, L54_74
    b L54_28
L54_74:
    mov w21, w23
    b L54_29
L54_28:
    mov x9, x14
    mov x10, x22
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_187@PAGE
    add x0, x0, l_text_187@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    mov x9, x15
    mov x10, x23
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_187@PAGE
    add x0, x0, l_text_187@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    ldr w24, [x21]
    mov w24, w24
    cmp x23, x24
    cset w23, hi
    mov w21, w23
L54_29:
    and w23, w21, #255
    cbnz w23, L54_19
    b L54_20
L54_19:
    sub x20, x29, #152
    add x14, x20, #16
    adrp x15, _lb_files_failed@PAGE
    add x15, x15, _lb_files_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_188@PAGE
    add x15, x15, l_text_188@PAGEOFF
    movz x16, #16664
    sub x21, x29, x16
    str x15, [x21]
    add x15, x21, #8
    movz x9, #47
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #16896]
    ldr x20, [sp, #16888]
    ldr x21, [sp, #16880]
    ldr x22, [sp, #16872]
    ldr x23, [sp, #16864]
    ldr x24, [sp, #16856]
    ldr x25, [sp, #16848]
    ldr x26, [sp, #16840]
    ldr x27, [sp, #16832]
    ldr x28, [sp, #16824]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_20:
L54_21:
    mov x10, #0
    cmp x15, x10
    b.ne L54_32
L54_31:
    adrp x14, l_text_86@PAGE
    add x14, x14, l_text_86@PAGEOFF
    movz x16, #16680
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x16, #16728
    sub x8, x29, x16
    bl _lb_strings_copy
    movz x16, #16728
    sub x15, x29, x16
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L54_35
    b L54_34
L54_35:
    add x14, x15, #16
    sub x20, x29, #152
    add x21, x20, #16
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #16896]
    ldr x20, [sp, #16888]
    ldr x21, [sp, #16880]
    ldr x22, [sp, #16872]
    ldr x23, [sp, #16864]
    ldr x24, [sp, #16856]
    ldr x25, [sp, #16848]
    ldr x26, [sp, #16840]
    ldr x27, [sp, #16832]
    ldr x28, [sp, #16824]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_34:
    sub x20, x29, #152
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #16896]
    ldr x20, [sp, #16888]
    ldr x21, [sp, #16880]
    ldr x22, [sp, #16872]
    ldr x23, [sp, #16864]
    ldr x24, [sp, #16856]
    ldr x25, [sp, #16848]
    ldr x26, [sp, #16840]
    ldr x27, [sp, #16832]
    ldr x28, [sp, #16824]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_32:
L54_33:
    mov x9, x14
    mov x10, x22
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_189@PAGE
    add x0, x0, l_text_189@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
L54_39:
    movz x10, #2
    udiv x14, x21, x10
    lsl x14, x14, #1
    add x22, x20, x14
L54_41:
    movz x10, #2
    udiv x20, x15, x10
    movz x0, #65001
    movz x1, #128
    mov x2, x22
    mov x3, x20
    mov x4, #0
    mov x5, #0
    mov x6, #0
    mov x7, #0
    bl _WideCharToMultiByte
    mov w21, w0
    mov x10, #0
    cmp w21, w10
    b.gt L54_43
L54_42:
    sub x20, x29, #152
    add x14, x20, #16
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_191@PAGE
    add x15, x15, l_text_191@PAGEOFF
    movz x16, #16744
    sub x21, x29, x16
    str x15, [x21]
    add x15, x21, #8
    movz x9, #42
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #16896]
    ldr x20, [sp, #16888]
    ldr x21, [sp, #16880]
    ldr x22, [sp, #16872]
    ldr x23, [sp, #16864]
    ldr x24, [sp, #16856]
    ldr x25, [sp, #16848]
    ldr x26, [sp, #16840]
    ldr x27, [sp, #16832]
    ldr x28, [sp, #16824]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_43:
L54_44:
    sxtw x9, w21
    str x9, [sp, #8]
    sub x14, x29, #184
    ldr x14, [x14]
    ldr x9, [sp, #8]
    cmp x9, x14
    b.ls L54_47
L54_46:
    sub x20, x29, #152
    add x14, x20, #16
    adrp x15, _lb_files_9too_large@PAGE
    add x15, x15, _lb_files_9too_large@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_64@PAGE
    add x15, x15, l_text_64@PAGEOFF
    movz x16, #16760
    sub x21, x29, x16
    str x15, [x21]
    add x15, x21, #8
    movz x9, #43
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #16896]
    ldr x20, [sp, #16888]
    ldr x21, [sp, #16880]
    ldr x22, [sp, #16872]
    ldr x23, [sp, #16864]
    ldr x24, [sp, #16856]
    ldr x25, [sp, #16848]
    ldr x26, [sp, #16840]
    ldr x27, [sp, #16832]
    ldr x28, [sp, #16824]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_47:
L54_48:
    movz x16, #16776
    sub x24, x29, x16
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #0]
    ldr x9, [sp, #8]
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_192@PAGE
    add x0, x0, l_text_192@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x26, x9
    movz x16, #16824
    sub x27, x29, x16
    movz x10, #16384, lsl #48
    cmp x26, x10
    b.ls L54_51
L54_50:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_58@PAGE
    add x15, x15, l_text_58@PAGEOFF
    add x26, x14, #8
    str x15, [x26]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b L54_52
L54_51:
    ldr x9, [sp, #0]
    ldr x14, [x9]
    ldr x9, [sp, #0]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L54_53
    b L54_54
L54_54:
    adrp x0, l_text_192@PAGE
    add x0, x0, l_text_192@PAGEOFF
    adrp x1, l_text_59@PAGE
    add x1, x1, l_text_59@PAGEOFF
    bl _lb_core_7trap_at
L54_53:
    ldr x28, [x15]
    mov x17, x28
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x26
    movz x2, #1
    movz x16, #16848
    sub x8, x29, x16
    ldr x17, [sp], #16
    blr x17
    movz x16, #16848
    sub x25, x29, x16
    add x28, x25, #16
    ldrb w28, [x28]
    mov x10, #0
    cmp x26, x10
    cset w23, ne
    mov x10, #0
    cmp w28, w10
    cset w28, eq
    and w23, w23, w28
    cbnz w23, L54_55
    b L54_56
L54_55:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_61@PAGE
    add x15, x15, l_text_61@PAGEOFF
    add x23, x14, #8
    str x15, [x23]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b L54_52
L54_56:
    ldr x14, [x25]
    str x14, [x27]
    add x14, x27, #8
    str x26, [x14]
    add x14, x27, #40
    mov x9, #0
    strb w9, [x14]
L54_52:
    add x14, x27, #40
    ldrb w14, [x14]
    cbnz w14, L54_58
    b L54_57
L54_58:
    add x14, x27, #16
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #16896]
    ldr x20, [sp, #16888]
    ldr x21, [sp, #16880]
    ldr x22, [sp, #16872]
    ldr x23, [sp, #16864]
    ldr x24, [sp, #16856]
    ldr x25, [sp, #16848]
    ldr x26, [sp, #16840]
    ldr x27, [sp, #16832]
    ldr x28, [sp, #16824]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_57:
    mov x10, x27
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L54_64:
    ldr x23, [x24]
    movz x0, #65001
    movz x1, #128
    mov x2, x22
    mov x3, x20
    mov x4, x23
    mov x5, x21
    mov x6, #0
    mov x7, #0
    bl _WideCharToMultiByte
    mov w14, w0
    cmp w21, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L54_61
L54_60:
    movz x16, #16864
    sub x14, x29, x16
    add x15, x24, #8
    ldr x15, [x15]
    str x23, [x14]
    add x20, x14, #8
    str x15, [x20]
    ldr x9, [sp, #0]
    ldr x15, [x9]
    ldr x9, [sp, #0]
    add x20, x9, #8
    ldr x20, [x20]
    cbnz x20, L54_66
    b L54_65
L54_66:
    add x21, x20, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L54_65:
    sub x20, x29, #152
    add x14, x20, #16
    adrp x15, _lb_files_failed@PAGE
    add x15, x15, _lb_files_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_195@PAGE
    add x15, x15, l_text_195@PAGEOFF
    movz x16, #16880
    sub x21, x29, x16
    str x15, [x21]
    add x15, x21, #8
    movz x9, #45
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #16896]
    ldr x20, [sp, #16888]
    ldr x21, [sp, #16880]
    ldr x22, [sp, #16872]
    ldr x23, [sp, #16864]
    ldr x24, [sp, #16856]
    ldr x25, [sp, #16848]
    ldr x26, [sp, #16840]
    ldr x27, [sp, #16832]
    ldr x28, [sp, #16824]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54_61:
L54_62:
    add x14, x24, #8
    ldr x14, [x14]
    ldr x9, [sp, #8]
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_196@PAGE
    add x0, x0, l_text_196@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #8]
    add x15, x9, x23
    mov x9, #0
    strb w9, [x15]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_197@PAGE
    add x0, x0, l_text_197@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #8]
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_197@PAGE
    add x0, x0, l_text_197@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #8]
    cmp x9, x10
    b.ls L54_68
L54_69:
    adrp x0, l_text_197@PAGE
    add x0, x0, l_text_197@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L54_68:
    movz x16, #16896
    sub x14, x29, x16
    str x23, [x14]
    add x14, x14, #8
    ldr x9, [sp, #8]
    str x9, [x14]
    movz x16, #16912
    sub x14, x29, x16
    str x23, [x14]
    add x15, x14, #8
    ldr x9, [sp, #8]
    str x9, [x15]
    sub x20, x29, #152
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #16896]
    ldr x20, [sp, #16888]
    ldr x21, [sp, #16880]
    ldr x22, [sp, #16872]
    ldr x23, [sp, #16864]
    ldr x24, [sp, #16856]
    ldr x25, [sp, #16848]
    ldr x26, [sp, #16840]
    ldr x27, [sp, #16832]
    ldr x28, [sp, #16824]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_19windows_permissions
_lb_files_19windows_permissions:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    str x22, [sp, #184]
    str x23, [sp, #176]
    sub x16, x29, #112
    str w0, [x16]
    sub x16, x29, #128
    str w1, [x16]
    sub x14, x29, #112
    ldrsw x14, [x14]
    mov x0, x14
    bl __get_osfhandle
    mov x19, x0
    sub x20, x29, #168
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    mov x0, x19
    mov x1, #0
    mov x2, x20
    movz x3, #40
    bl _GetFileInformationByHandleEx
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L55_2
L55_1:
    sub x19, x29, #96
    bl _GetLastError
    mov w14, w0
    mov x0, x14
    bl _lb_files_13windows_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_198@PAGE
    add x14, x14, l_text_198@PAGEOFF
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L55_4:
    b L55_3
L55_2:
L55_3:
    sub x21, x29, #224
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    add x22, x21, #32
    sub x14, x29, #128
    ldr w14, [x14]
    movz x10, #146
    and w14, w14, w10
    mov x10, #0
    cmp w14, w10
    b.ne L55_6
L55_5:
    add x14, x20, #32
    ldr w14, [x14]
    movz x10, #1
    orr w14, w14, w10
    b L55_7
L55_6:
    add x14, x20, #32
    ldr w23, [x14]
    adrp x14, l_text_199@PAGE
    add x14, x14, l_text_199@PAGEOFF
    movz x0, #1
    movz x1, #64
    movz x2, #1
    movz x3, #32
    mov x4, #0
    mov x5, #0
    mov x6, x14
    bl _lb_core_6conv_s
    mov x14, x0
    movn x10, #0
    eor w14, w14, w10
    and w14, w23, w14
L55_7:
    str w14, [x22]
    mov x10, #0
    cmp w14, w10
    b.ne L55_9
L55_8:
    movz x9, #128
    str w9, [x22]
    b L55_10
L55_9:
L55_10:
    mov x0, x19
    mov x1, #0
    mov x2, x21
    movz x3, #40
    bl _SetFileInformationByHandle
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L55_12
L55_11:
    sub x19, x29, #96
    bl _GetLastError
    mov w14, w0
    mov x0, x14
    bl _lb_files_13windows_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_200@PAGE
    add x14, x14, l_text_200@PAGEOFF
    sub x15, x29, #240
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L55_14:
    b L55_13
L55_12:
L55_13:
    sub x14, x29, #96
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_13windows_ticks
_lb_files_13windows_ticks:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #224]
    str x20, [sp, #216]
    str x21, [sp, #208]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #104
    ldr x14, [x19]
    sub x20, x29, #112
    mov x0, x14
    movz x1, #37120
    movk x1, #46608, lsl #16
    movk x1, #2, lsl #32
    movz x2, #64
    mov x3, x20
    bl _lb_core_6qadd_s
    mov w14, w0
    sub x21, x29, #128
    ldr x15, [x20]
    str x15, [x21]
    add x20, x21, #8
    strb w14, [x20]
    ldrb w14, [x20]
    cbnz w14, L56_1
    b L56_2
L56_1:
    b L56_3
L56_2:
    sub x19, x29, #88
    add x14, x19, #8
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_201@PAGE
    add x15, x15, l_text_201@PAGEOFF
    sub x20, x29, #144
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L56_3:
    mov x10, #0
    cmp x15, x10
    b.ge L56_6
L56_5:
    sub x19, x29, #88
    add x14, x19, #8
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_202@PAGE
    add x15, x15, l_text_202@PAGEOFF
    sub x20, x29, #160
    str x15, [x20]
    add x15, x20, #8
    movz x9, #36
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L56_6:
L56_7:
    sub x20, x29, #168
    mov x0, x15
    movz x1, #38528
    movk x1, #152, lsl #16
    movz x2, #64
    mov x3, x20
    bl _lb_core_6qmul_u
    mov w14, w0
    sub x21, x29, #184
    ldr x20, [x20]
    str x20, [x21]
    add x21, x21, #8
    strb w14, [x21]
    ldrb w14, [x21]
    cbnz w14, L56_9
    b L56_10
L56_9:
    b L56_11
L56_10:
    sub x19, x29, #88
    add x14, x19, #8
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_201@PAGE
    add x15, x15, l_text_201@PAGEOFF
    sub x20, x29, #200
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L56_11:
    add x14, x19, #8
    ldr w14, [x14]
L56_14:
    movz x10, #100
    udiv w15, w14, w10
    mov w15, w15
    sub x19, x29, #208
    mov x0, x20
    mov x1, x15
    movz x2, #64
    mov x3, x19
    bl _lb_core_6qadd_u
    mov w15, w0
    sub x21, x29, #224
    ldr x19, [x19]
    str x19, [x21]
    add x21, x21, #8
    strb w15, [x21]
    ldrb w15, [x21]
    cbnz w15, L56_15
    b L56_16
L56_15:
    b L56_17
L56_16:
    sub x19, x29, #88
    add x14, x19, #8
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_201@PAGE
    add x15, x15, l_text_201@PAGEOFF
    sub x20, x29, #240
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L56_17:
    movz x10, #65535
    movk x10, #65535, lsl #16
    movk x10, #65535, lsl #32
    movk x10, #32767, lsl #48
    cmp x19, x10
    b.lo L56_20
L56_19:
    sub x19, x29, #88
    add x14, x19, #8
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_201@PAGE
    add x15, x15, l_text_201@PAGEOFF
    sub x20, x29, #256
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L56_20:
L56_21:
    sub x14, x29, #88
    str x19, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_17windows_set_times
_lb_files_17windows_set_times:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    sub x16, x29, #96
    str w0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #128
    str x3, [x16]
    str x4, [x16, #8]
    sub x19, x29, #136
    sub x14, x29, #112
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #176
    bl _lb_files_13windows_ticks
    sub x15, x29, #176
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L57_2
    b L57_1
L57_2:
    add x14, x15, #8
    sub x19, x29, #80
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L57_3:
L57_1:
    ldr x14, [x15]
    str x14, [x19]
    sub x20, x29, #184
    sub x14, x29, #128
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #224
    bl _lb_files_13windows_ticks
    sub x21, x29, #224
    add x14, x21, #32
    ldrb w14, [x14]
    cbnz w14, L57_5
    b L57_4
L57_5:
    add x14, x21, #8
    sub x19, x29, #80
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L57_6:
L57_4:
    ldr x14, [x21]
    str x14, [x20]
    sub x14, x29, #96
    ldrsw x14, [x14]
    mov x0, x14
    bl __get_osfhandle
    mov x14, x0
    mov x0, x14
    mov x1, #0
    mov x2, x19
    mov x3, x20
    bl _SetFileTime
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L57_8
L57_7:
    sub x19, x29, #80
    bl _GetLastError
    mov w14, w0
    mov x0, x14
    bl _lb_files_13windows_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_34@PAGE
    add x14, x14, l_text_34@PAGEOFF
    sub x15, x29, #240
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L57_10:
    b L57_9
L57_8:
L57_9:
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_9wide_path
_lb_files_9wide_path:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    str x21, [sp, #144]
    str x22, [sp, #136]
    sub x16, x29, #120
    str x0, [x16]
    sub x19, x29, #136
    sub x14, x29, #120
    ldr x14, [x14]
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    mov x0, x14
    mov x1, x15
    sub x8, x29, #184
    bl _lb_12windows_text_wide
    sub x15, x29, #184
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L58_2
    b L58_1
L58_2:
    add x14, x15, #16
    sub x19, x29, #104
    add x20, x19, #16
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L58_3:
L58_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #8
    ldr x14, [x14]
    ldr x20, [x19]
    mov x9, #0
    mov x21, x9
L58_4:
    cmp x21, x14
    b.hs L58_7
L58_5:
    lsl x15, x21, #1
    add x15, x20, x15
    ldrh w22, [x15]
    movz x10, #47
    cmp w22, w10
    b.ne L58_9
L58_8:
    movz x9, #92
    strh w9, [x15]
    b L58_10
L58_9:
L58_10:
L58_6:
    add x15, x21, #1
    mov x21, x15
    b L58_4
L58_7:
    sub x20, x29, #104
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L58_11:
    adrp x0, l_text_207@PAGE
    add x0, x0, l_text_207@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_13windows_error
_lb_files_13windows_error:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str w0, [x16]
    sub x14, x29, #40
    ldr w14, [x14]
    movz x10, #2
    cmp w14, w10
    cset w15, eq
    cbnz w15, L59_40
    b L59_4
L59_40:
    mov w19, w15
    b L59_5
L59_4:
    movz x10, #3
    cmp w14, w10
    cset w19, eq
L59_5:
    and w15, w19, #255
    cbnz w15, L59_1
    b L59_2
L59_1:
    adrp x14, _lb_files_missing@PAGE
    add x14, x14, _lb_files_missing@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_6:
    b L59_3
L59_2:
L59_3:
    movz x10, #5
    cmp w14, w10
    cset w15, eq
    cbnz w15, L59_41
    b L59_10
L59_41:
    mov w19, w15
    b L59_11
L59_10:
    movz x10, #1314
    cmp w14, w10
    cset w19, eq
L59_11:
    and w15, w19, #255
    cbnz w15, L59_7
    b L59_8
L59_7:
    adrp x14, _lb_files_17permission_denied@PAGE
    add x14, x14, _lb_files_17permission_denied@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_12:
    b L59_9
L59_8:
L59_9:
    movz x10, #80
    cmp w14, w10
    cset w15, eq
    cbnz w15, L59_42
    b L59_16
L59_42:
    mov w19, w15
    b L59_17
L59_16:
    movz x10, #183
    cmp w14, w10
    cset w19, eq
L59_17:
    and w15, w19, #255
    cbnz w15, L59_13
    b L59_14
L59_13:
    adrp x14, _lb_files_14already_exists@PAGE
    add x14, x14, _lb_files_14already_exists@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_18:
    b L59_15
L59_14:
L59_15:
    movz x10, #112
    cmp w14, w10
    b.ne L59_20
L59_19:
    adrp x14, _lb_files_8no_space@PAGE
    add x14, x14, _lb_files_8no_space@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_22:
    b L59_21
L59_20:
L59_21:
    movz x10, #145
    cmp w14, w10
    b.ne L59_24
L59_23:
    adrp x14, _lb_files_9not_empty@PAGE
    add x14, x14, _lb_files_9not_empty@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_26:
    b L59_25
L59_24:
L59_25:
    movz x10, #206
    cmp w14, w10
    b.ne L59_28
L59_27:
    adrp x14, _lb_files_13name_too_long@PAGE
    add x14, x14, _lb_files_13name_too_long@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_30:
    b L59_29
L59_28:
L59_29:
    movz x10, #17
    cmp w14, w10
    b.ne L59_32
L59_31:
    adrp x14, _lb_files_12cross_device@PAGE
    add x14, x14, _lb_files_12cross_device@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_34:
    b L59_33
L59_32:
L59_33:
    movz x10, #267
    cmp w14, w10
    b.ne L59_36
L59_35:
    adrp x14, _lb_files_13not_directory@PAGE
    add x14, x14, _lb_files_13not_directory@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_38:
    b L59_37
L59_36:
L59_37:
    adrp x14, _lb_files_failed@PAGE
    add x14, x14, _lb_files_failed@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_39:
    adrp x0, l_text_208@PAGE
    add x0, x0, l_text_208@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_12windows_open
_lb_files_12windows_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #592
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #560]
    str x20, [sp, #552]
    str x21, [sp, #544]
    str x22, [sp, #536]
    str x23, [sp, #528]
    str x24, [sp, #520]
    str x25, [sp, #512]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #152
    str w1, [x16]
    sub x16, x29, #168
    str w2, [x16]
    sub x16, x29, #184
    str w3, [x16]
    sub x16, x29, #200
    str w4, [x16]
    sub x19, x29, #216
    sub x14, x29, #136
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #264
    bl _lb_files_9wide_path
    sub x15, x29, #264
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L60_2
    b L60_1
L60_2:
    add x14, x15, #16
    sub x19, x29, #120
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #560]
    ldr x20, [sp, #552]
    ldr x21, [sp, #544]
    ldr x22, [sp, #536]
    ldr x23, [sp, #528]
    ldr x24, [sp, #520]
    ldr x25, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L60_3:
L60_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #152
    ldrsw x20, [x14]
    movz x10, #3
    and w14, w20, w10
    movz x10, #2
    cmp w14, w10
    b.ne L60_5
L60_4:
    movz x9, #49152, lsl #16
    mov w14, w9
    b L60_6
L60_5:
    movz x10, #1
    cmp w14, w10
    b.ne L60_8
L60_7:
    movz x9, #16384, lsl #16
    mov w14, w9
    b L60_9
L60_8:
    movz x9, #32768, lsl #16
    mov w14, w9
L60_9:
L60_6:
    adrp x15, _lb_files_create@PAGE
    add x15, x15, _lb_files_create@PAGEOFF
    ldrsw x15, [x15]
    and w15, w20, w15
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L60_11
L60_10:
    adrp x15, _lb_files_14exclusive_flag@PAGE
    add x15, x15, _lb_files_14exclusive_flag@PAGEOFF
    ldrsw x15, [x15]
    and w15, w20, w15
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L60_14
L60_13:
    movz x9, #1
    mov w15, w9
    b L60_15
L60_14:
    movz x9, #4
    mov w15, w9
L60_15:
    mov w21, w15
    b L60_12
L60_11:
    movz x9, #3
    mov w21, w9
L60_12:
    sub x15, x29, #168
    ldr w15, [x15]
    movz x10, #146
    and w15, w15, w10
    mov x10, #0
    cmp w15, w10
    b.ne L60_17
L60_16:
    movz x9, #1
    mov w15, w9
    b L60_18
L60_17:
    movz x9, #128
    mov w15, w9
L60_18:
    sub x22, x29, #184
    ldrb w22, [x22]
    cbnz w22, L60_19
    b L60_20
L60_19:
    mov x9, #0
    mov w23, w9
    b L60_21
L60_20:
    movz x9, #32, lsl #16
    mov w23, w9
L60_21:
    orr w24, w15, w23
    ldr x25, [x19]
    mov x0, x25
    mov x1, x14
    movz x2, #7
    mov x3, #0
    mov x4, x21
    mov x5, x24
    mov x6, #0
    bl _CreateFileW
    mov x24, x0
    cbnz x24, L60_22
    b L60_23
L60_23:
    adrp x0, l_text_210@PAGE
    add x0, x0, l_text_210@PAGEOFF
    adrp x1, l_text_209@PAGE
    add x1, x1, l_text_209@PAGEOFF
    bl _lb_core_7trap_at
L60_22:
    movn x10, #0
    cmp x24, x10
    b.ne L60_25
L60_24:
    sub x20, x29, #120
    add x21, x20, #8
    bl _GetLastError
    mov w14, w0
    mov x0, x14
    bl _lb_files_13windows_error
    mov w14, w0
    str w14, [x21]
    adrp x14, l_text_22@PAGE
    add x14, x14, l_text_22@PAGEOFF
    sub x15, x29, #280
    str x14, [x15]
    add x14, x15, #8
    movz x9, #28
    str x9, [x14]
    add x14, x21, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #296
    add x21, x19, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_211@PAGE
    add x0, x0, l_text_211@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    str x25, [x15]
    add x22, x15, #8
    str x21, [x22]
    ldr x21, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L60_28
    b L60_27
L60_28:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L60_27:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #560]
    ldr x20, [sp, #552]
    ldr x21, [sp, #544]
    ldr x22, [sp, #536]
    ldr x23, [sp, #528]
    ldr x24, [sp, #520]
    ldr x25, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L60_29:
    b L60_26
L60_25:
L60_26:
    sub x14, x29, #200
    ldrb w14, [x14]
    cbnz w14, L60_33
    b L60_74
L60_74:
    mov w15, w14
    b L60_34
L60_33:
    mov x0, x24
    bl _GetFileType
    mov w14, w0
    movz x10, #1
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L60_34:
    and w14, w15, #255
    cbnz w14, L60_30
    b L60_31
L60_30:
    mov x0, x24
    bl _CloseHandle
    mov w14, w0
    sub x20, x29, #120
    add x14, x20, #8
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_212@PAGE
    add x15, x15, l_text_212@PAGEOFF
    sub x21, x29, #312
    str x15, [x21]
    add x15, x21, #8
    movz x9, #53
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #328
    add x21, x19, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_213@PAGE
    add x0, x0, l_text_213@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    str x25, [x15]
    add x22, x15, #8
    str x21, [x22]
    ldr x21, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L60_36
    b L60_35
L60_36:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L60_35:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #560]
    ldr x20, [sp, #552]
    ldr x21, [sp, #544]
    ldr x22, [sp, #536]
    ldr x23, [sp, #528]
    ldr x24, [sp, #520]
    ldr x25, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L60_37:
    b L60_32
L60_31:
L60_32:
    sub x21, x29, #380
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str wzr, [x11, #48]
    mov x10, #0
    cmp w22, w10
    b.ne L60_39
L60_38:
    mov x0, x24
    mov x1, x21
    bl _GetFileInformationByHandle
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L60_42
L60_41:
    bl _GetLastError
    mov w20, w0
    mov x0, x24
    bl _CloseHandle
    mov w14, w0
    sub x21, x29, #120
    add x22, x21, #8
    mov x0, x20
    bl _lb_files_13windows_error
    mov w14, w0
    str w14, [x22]
    adrp x14, l_text_214@PAGE
    add x14, x14, l_text_214@PAGEOFF
    sub x15, x29, #400
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    add x14, x22, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #416
    add x20, x19, #8
    ldr x20, [x20]
    mov x9, x20
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_215@PAGE
    add x0, x0, l_text_215@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x25, [x15]
    add x22, x15, #8
    str x20, [x22]
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L60_45
    b L60_44
L60_45:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L60_44:
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #560]
    ldr x20, [sp, #552]
    ldr x21, [sp, #544]
    ldr x22, [sp, #536]
    ldr x23, [sp, #528]
    ldr x24, [sp, #520]
    ldr x25, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L60_46:
    b L60_43
L60_42:
L60_43:
    ldr w14, [x21]
    movz x10, #1024
    and w14, w14, w10
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L60_48
L60_47:
    mov x0, x24
    bl _CloseHandle
    mov w14, w0
    sub x20, x29, #120
    add x14, x20, #8
    adrp x15, _lb_files_12symlink_loop@PAGE
    add x15, x15, _lb_files_12symlink_loop@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_216@PAGE
    add x15, x15, l_text_216@PAGEOFF
    sub x21, x29, #432
    str x15, [x21]
    add x15, x21, #8
    movz x9, #36
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #448
    add x21, x19, #8
    ldr x21, [x21]
    mov x9, x21
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_217@PAGE
    add x0, x0, l_text_217@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    str x25, [x15]
    add x22, x15, #8
    str x21, [x22]
    ldr x21, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L60_51
    b L60_50
L60_51:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L60_50:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #560]
    ldr x20, [sp, #552]
    ldr x21, [sp, #544]
    ldr x22, [sp, #536]
    ldr x23, [sp, #528]
    ldr x24, [sp, #520]
    ldr x25, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L60_52:
    b L60_49
L60_48:
L60_49:
    b L60_40
L60_39:
L60_40:
    movz x10, #32907
    and w14, w20, w10
    mov x0, x24
    mov x1, x14
    bl __open_osfhandle
    mov w21, w0
    mov x10, #0
    cmp w21, w10
    b.ge L60_54
L60_53:
    bl _lb_c_errno
    mov w20, w0
    mov x0, x24
    bl _CloseHandle
    mov w14, w0
    sub x21, x29, #120
    add x22, x21, #8
    mov x0, x20
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x22]
    adrp x14, l_text_218@PAGE
    add x14, x14, l_text_218@PAGEOFF
    sub x15, x29, #464
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    add x14, x22, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #480
    add x20, x19, #8
    ldr x20, [x20]
    mov x9, x20
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_219@PAGE
    add x0, x0, l_text_219@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x25, [x15]
    add x22, x15, #8
    str x20, [x22]
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L60_57
    b L60_56
L60_57:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L60_56:
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #560]
    ldr x20, [sp, #552]
    ldr x21, [sp, #544]
    ldr x22, [sp, #536]
    ldr x23, [sp, #528]
    ldr x24, [sp, #520]
    ldr x25, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L60_58:
    b L60_55
L60_54:
L60_55:
    adrp x14, _lb_files_truncate@PAGE
    add x14, x14, _lb_files_truncate@PAGEOFF
    ldrsw x14, [x14]
    and w14, w20, w14
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L60_62
    b L60_75
L60_75:
    mov w15, w14
    b L60_63
L60_62:
    sub x10, x29, #560
    str w21, [x10]
    mov x9, #0
    sub x10, x29, #576
    str x9, [x10]
    mov x0, x21
    mov x1, #0
    bl _ftruncate
    mov w14, w0
    sub x10, x29, #584
    str w14, [x10]
    b L60_73
L60_72:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L60_73:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
L60_63:
    and w14, w15, #255
    cbnz w14, L60_59
    b L60_60
L60_59:
    bl _lb_c_errno
    mov w20, w0
    mov x0, x21
    bl _close
    mov w14, w0
    sub x22, x29, #120
    add x23, x22, #8
    mov x0, x20
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x23]
    adrp x14, l_text_220@PAGE
    add x14, x14, l_text_220@PAGEOFF
    sub x15, x29, #496
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
    str x9, [x14]
    add x14, x23, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #512
    add x20, x19, #8
    ldr x20, [x20]
    mov x9, x20
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_221@PAGE
    add x0, x0, l_text_221@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x25, [x15]
    add x23, x15, #8
    str x20, [x23]
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L60_65
    b L60_64
L60_65:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L60_64:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #560]
    ldr x20, [sp, #552]
    ldr x21, [sp, #544]
    ldr x22, [sp, #536]
    ldr x23, [sp, #528]
    ldr x24, [sp, #520]
    ldr x25, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L60_66:
    b L60_61
L60_60:
L60_61:
    sub x20, x29, #120
    str w21, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #528
    add x22, x19, #8
    ldr x22, [x22]
    mov x9, x22
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_222@PAGE
    add x0, x0, l_text_222@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    str x25, [x15]
    add x23, x15, #8
    str x22, [x23]
    ldr x22, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L60_68
    b L60_67
L60_68:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x22
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L60_67:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #560]
    ldr x20, [sp, #552]
    ldr x21, [sp, #544]
    ldr x22, [sp, #536]
    ldr x23, [sp, #528]
    ldr x24, [sp, #520]
    ldr x25, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L60_69:
    sub x14, x29, #216
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x19, x29, #544
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_222@PAGE
    add x0, x0, l_text_222@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L60_71
    b L60_70
L60_71:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L60_70:
    adrp x0, l_text_222@PAGE
    add x0, x0, l_text_222@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_19windows_path_handle
_lb_files_19windows_path_handle:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #384
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #352]
    str x20, [sp, #344]
    str x21, [sp, #336]
    str x22, [sp, #328]
    str x23, [sp, #320]
    str x24, [sp, #312]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #144
    str w1, [x16]
    sub x16, x29, #160
    str w2, [x16]
    sub x19, x29, #176
    sub x14, x29, #128
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #224
    bl _lb_files_9wide_path
    sub x15, x29, #224
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L61_2
    b L61_1
L61_2:
    add x14, x15, #16
    sub x19, x29, #112
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L61_3:
L61_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x20, [x19]
    sub x14, x29, #144
    ldrb w21, [x14]
    cbnz w21, L61_4
    b L61_5
L61_4:
    mov x9, #0
    mov w14, w9
    b L61_6
L61_5:
    movz x9, #32, lsl #16
    mov w14, w9
L61_6:
    movz x10, #512, lsl #16
    orr w15, w14, w10
    mov x0, x20
    mov x1, #0
    movz x2, #7
    mov x3, #0
    movz x4, #3
    mov x5, x15
    mov x6, #0
    bl _CreateFileW
    mov x22, x0
    cbnz x22, L61_7
    b L61_8
L61_8:
    adrp x0, l_text_223@PAGE
    add x0, x0, l_text_223@PAGEOFF
    adrp x1, l_text_209@PAGE
    add x1, x1, l_text_209@PAGEOFF
    bl _lb_core_7trap_at
L61_7:
    movn x10, #0
    cmp x22, x10
    b.ne L61_10
L61_9:
    sub x21, x29, #112
    add x22, x21, #8
    bl _GetLastError
    mov w14, w0
    mov x0, x14
    bl _lb_files_13windows_error
    mov w14, w0
    str w14, [x22]
    adrp x14, l_text_224@PAGE
    add x14, x14, l_text_224@PAGEOFF
    sub x15, x29, #240
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    add x14, x22, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #256
    add x22, x19, #8
    ldr x22, [x22]
    mov x9, x22
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_225@PAGE
    add x0, x0, l_text_225@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    str x20, [x15]
    add x23, x15, #8
    str x22, [x23]
    ldr x22, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L61_13
    b L61_12
L61_13:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x22
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L61_12:
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L61_14:
    b L61_11
L61_10:
L61_11:
    sub x14, x29, #160
    ldrb w14, [x14]
    cbnz w14, L61_15
    b L61_16
L61_15:
    sub x23, x29, #308
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str wzr, [x11, #48]
    mov x0, x22
    mov x1, x23
    bl _GetFileInformationByHandle
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L61_35
    b L61_21
L61_35:
    mov w15, w14
    b L61_22
L61_21:
    ldr w14, [x23]
    movz x10, #16
    and w14, w14, w10
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L61_22:
    and w14, w15, #255
    cbnz w14, L61_36
    b L61_23
L61_36:
    mov w15, w14
    b L61_24
L61_23:
    mov x10, #0
    cmp w21, w10
    cset w14, eq
    cbnz w14, L61_25
    b L61_37
L61_37:
    mov w15, w14
    b L61_26
L61_25:
    ldr w14, [x23]
    movz x10, #1024
    and w14, w14, w10
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L61_26:
    and w14, w15, #255
    mov w15, w14
L61_24:
    and w14, w15, #255
    cbnz w14, L61_18
    b L61_19
L61_18:
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    sub x21, x29, #112
    add x14, x21, #8
    adrp x15, _lb_files_13not_directory@PAGE
    add x15, x15, _lb_files_13not_directory@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_226@PAGE
    add x15, x15, l_text_226@PAGEOFF
    sub x23, x29, #328
    str x15, [x23]
    add x15, x23, #8
    movz x9, #36
    str x9, [x15]
    add x14, x14, #8
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #344
    add x23, x19, #8
    ldr x23, [x23]
    mov x9, x23
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_227@PAGE
    add x0, x0, l_text_227@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    str x20, [x15]
    add x24, x15, #8
    str x23, [x24]
    ldr x23, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L61_28
    b L61_27
L61_28:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x23
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L61_27:
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L61_29:
    b L61_20
L61_19:
L61_20:
    b L61_17
L61_16:
L61_17:
    sub x21, x29, #112
    str x22, [x21]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #360
    add x23, x19, #8
    ldr x23, [x23]
    mov x9, x23
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_228@PAGE
    add x0, x0, l_text_228@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    str x20, [x15]
    add x24, x15, #8
    str x23, [x24]
    ldr x23, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L61_31
    b L61_30
L61_31:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x23
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L61_30:
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L61_32:
    sub x14, x29, #176
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x19, x29, #376
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_228@PAGE
    add x0, x0, l_text_228@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L61_34
    b L61_33
L61_34:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L61_33:
    adrp x0, l_text_228@PAGE
    add x0, x0, l_text_228@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_12windows_time
_lb_files_12windows_time:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    str x22, [sp, #48]
    sub x16, x29, #80
    str x0, [x16]
    sub x14, x29, #80
    ldr x19, [x14]
L62_2:
    movz x10, #32768, lsl #48
    cmp x19, x10
    cset w14, eq
    mov x10, #0
    and w20, w14, w10
    cbnz w20, L62_3
    b L62_4
L62_3:
    adrp x0, l_text_229@PAGE
    add x0, x0, l_text_229@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
L62_4:
    movz x10, #38528
    movk x10, #152, lsl #16
    sdiv x14, x19, x10
    mov x9, x14
    movz x10, #37120
    movk x10, #46608, lsl #16
    movk x10, #2, lsl #32
    subs x9, x9, x10
    b.vc 1f
    adrp x0, l_text_229@PAGE
    add x0, x0, l_text_229@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    sub x22, x29, #96
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    str x21, [x22]
L62_6:
    cbnz w20, L62_7
    b L62_8
L62_7:
    adrp x0, l_text_231@PAGE
    add x0, x0, l_text_231@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
L62_8:
    movz x10, #38528
    movk x10, #152, lsl #16
    sdiv x11, x19, x10
    msub x14, x11, x10, x19
    mov w9, w14
    movz x10, #100
    mov w9, w9
    mov w10, w10
    mul x9, x9, x10
    cmp x9, w9, uxtw
    b.eq 1f
    adrp x0, l_text_231@PAGE
    add x0, x0, l_text_231@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    add x15, x22, #8
    str w14, [x15]
    sub x20, x29, #64
    mov x10, x22
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_16windows_metadata
_lb_files_16windows_metadata:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #640
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #608]
    str x20, [sp, #600]
    str x21, [sp, #592]
    str x22, [sp, #584]
    str x23, [sp, #576]
    str x24, [sp, #568]
    str x25, [sp, #560]
    str x26, [sp, #552]
    sub x16, x29, #264
    str x0, [x16]
    sub x16, x29, #280
    str w1, [x16]
    sub x19, x29, #332
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str wzr, [x11, #48]
    sub x20, x29, #376
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x21, x29, #400
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x14, x29, #264
    ldr x22, [x14]
    mov x0, x22
    mov x1, x19
    bl _GetFileInformationByHandle
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L63_32
    b L63_4
L63_32:
    mov w15, w14
    b L63_5
L63_4:
    mov x0, x22
    mov x1, #0
    mov x2, x20
    movz x3, #40
    bl _GetFileInformationByHandleEx
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L63_5:
    and w14, w15, #255
    cbnz w14, L63_33
    b L63_6
L63_33:
    mov w15, w14
    b L63_7
L63_6:
    mov x0, x22
    movz x1, #1
    mov x2, x21
    movz x3, #24
    bl _GetFileInformationByHandleEx
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L63_7:
    and w14, w15, #255
    cbnz w14, L63_1
    b L63_2
L63_1:
    sub x19, x29, #248
    add x20, x19, #128
    bl _GetLastError
    mov w14, w0
    mov x0, x14
    bl _lb_files_13windows_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
    sub x15, x29, #416
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #152
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L63_2:
L63_3:
    ldr w22, [x19]
    movz x10, #16
    and w14, w22, w10
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L63_10
L63_9:
    movz x9, #2
    mov w14, w9
    b L63_11
L63_10:
    movz x9, #1
    mov w14, w9
L63_11:
    and w15, w14, #255
    sub x23, x29, #280
    ldrb w23, [x23]
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    cbnz w23, L63_15
    b L63_34
L63_34:
    mov w14, w23
    b L63_16
L63_15:
    movz x10, #1024
    and w14, w22, w10
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L63_16:
    and w23, w14, #255
    cbnz w23, L63_12
    b L63_13
L63_12:
    movz x9, #3
    mov w23, w9
    b L63_14
L63_13:
    mov w23, w15
L63_14:
    add x14, x19, #32
    ldr w14, [x14]
    mov w14, w14
L63_18:
    lsl x15, x14, #32
    add x24, x19, #36
    ldr w24, [x24]
    mov w24, w24
    orr x24, x15, x24
    sub x26, x29, #544
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    stp xzr, xzr, [x11, #112]
    and w15, w23, #255
    strb w15, [x26]
    movz x10, #1
    and w25, w22, w10
    mov x10, #0
    cmp w25, w10
    cset w25, eq
    mov x10, #0
    cmp w25, w10
    b.ne L63_20
L63_19:
    movz x9, #292
    mov w14, w9
    b L63_21
L63_20:
    movz x9, #438
    mov w14, w9
L63_21:
    movz x10, #2
    cmp w15, w10
    b.ne L63_23
L63_22:
    movz x9, #73
    mov w15, w9
    b L63_24
L63_23:
    mov x9, #0
    mov w15, w9
L63_24:
    orr w22, w14, w15
    add x23, x26, #4
    str w22, [x23]
    add x22, x26, #8
    str x24, [x22]
    add x22, x19, #28
    ldr w22, [x22]
    mov w22, w22
    add x23, x26, #16
    str x22, [x23]
    add x22, x19, #44
    ldr w22, [x22]
    mov w22, w22
L63_26:
    lsl x14, x22, #32
    add x15, x19, #48
    ldr w15, [x15]
    mov w15, w15
    orr x14, x14, x15
    add x15, x26, #24
    str x14, [x15]
    add x14, x19, #40
    ldr w14, [x14]
    mov w14, w14
    add x15, x26, #32
    str x14, [x15]
    add x14, x26, #40
    mov x9, #0
    str w9, [x14]
    add x14, x26, #44
    mov x9, #0
    str w9, [x14]
    ldr x14, [x21]
L63_28:
    movz x10, #32768, lsl #48
    cmp x14, x10
    cset w15, eq
    mov x10, #0
    and w15, w15, w10
    cbnz w15, L63_29
    b L63_30
L63_29:
    adrp x0, l_text_233@PAGE
    add x0, x0, l_text_233@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
L63_30:
    movz x10, #512
    sdiv x15, x14, x10
    add x19, x26, #48
    str x15, [x19]
    add x15, x20, #8
    ldr x15, [x15]
    mov x0, x15
    bl _lb_files_12windows_time
    sub x16, x29, #560
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #560
    add x19, x26, #56
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x20, #16
    ldr x15, [x15]
    mov x0, x15
    bl _lb_files_12windows_time
    sub x16, x29, #576
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #576
    add x19, x26, #72
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x20, #24
    ldr x15, [x15]
    mov x0, x15
    bl _lb_files_12windows_time
    sub x16, x29, #592
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #592
    add x19, x26, #88
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x15, [x20]
    mov x0, x15
    bl _lb_files_12windows_time
    sub x16, x29, #608
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #608
    sub x19, x29, #632
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #16
    movz x9, #1
    strb w9, [x15]
    add x15, x26, #104
    mov x10, x19
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    sub x19, x29, #248
    mov x10, x26
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    add x15, x19, #152
    mov x9, #0
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_16windows_relative
_lb_files_16windows_relative:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #800
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #768]
    str x20, [sp, #760]
    str x21, [sp, #752]
    str x22, [sp, #744]
    str x23, [sp, #736]
    str x24, [sp, #728]
    str x25, [sp, #720]
    str x26, [sp, #712]
    str x27, [sp, #704]
    str x28, [sp, #696]
    sub x16, x29, #168
    str w0, [x16]
    sub x16, x29, #184
    str x1, [x16]
    sub x14, x29, #168
    ldrsw x19, [x14]
    adrp x14, _lb_files_20current_directory_fd@PAGE
    add x14, x14, _lb_files_20current_directory_fd@PAGEOFF
    ldrsw x14, [x14]
    cmp w19, w14
    cset w14, eq
    cbnz w14, L64_73
    b L64_4
L64_73:
    mov w15, w14
    b L64_5
L64_4:
    sub x14, x29, #184
    ldr x20, [x14]
    mov x0, x20
    bl _strlen
    mov x14, x0
    sub x15, x29, #200
    str x20, [x15]
    add x20, x15, #8
    str x14, [x20]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_paths_11is_absolute
    mov w15, w0
L64_5:
    and w14, w15, #255
    cbnz w14, L64_1
    b L64_2
L64_1:
    sub x14, x29, #184
    ldr x19, [x14]
    mov x0, x19
    bl _strlen
    mov x14, x0
    sub x15, x29, #216
    str x19, [x15]
    add x19, x15, #8
    str x14, [x19]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #264
    bl _lb_strings_copy
    sub x15, x29, #264
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L64_7
    b L64_6
L64_7:
    add x14, x15, #16
    sub x19, x29, #152
    add x20, x19, #16
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #768]
    ldr x20, [sp, #760]
    ldr x21, [sp, #752]
    ldr x22, [sp, #744]
    ldr x23, [sp, #736]
    ldr x24, [sp, #728]
    ldr x25, [sp, #720]
    ldr x26, [sp, #712]
    ldr x27, [sp, #704]
    ldr x28, [sp, #696]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_6:
    sub x19, x29, #152
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #768]
    ldr x20, [sp, #760]
    ldr x21, [sp, #752]
    ldr x22, [sp, #744]
    ldr x23, [sp, #736]
    ldr x24, [sp, #728]
    ldr x25, [sp, #720]
    ldr x26, [sp, #712]
    ldr x27, [sp, #704]
    ldr x28, [sp, #696]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_2:
L64_3:
    sub x20, x29, #280
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    sub x22, x29, #328
L64_11:
    ldr x14, [x21]
    add x23, x21, #8
    ldr x15, [x23]
    cbnz x15, L64_13
    b L64_14
L64_14:
    adrp x0, l_text_234@PAGE
    add x0, x0, l_text_234@PAGEOFF
    adrp x1, l_text_59@PAGE
    add x1, x1, l_text_59@PAGEOFF
    bl _lb_core_7trap_at
L64_13:
    ldr x24, [x15]
    mov x17, x24
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #1, lsl #16
    movz x2, #2
    sub x8, x29, #352
    ldr x17, [sp], #16
    blr x17
    sub x25, x29, #352
    add x24, x25, #16
    ldrb w24, [x24]
    mov x10, #0
    cmp w24, w10
    cset w24, eq
    movz x10, #1
    and w24, w24, w10
    cbnz w24, L64_15
    b L64_16
L64_15:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_61@PAGE
    add x15, x15, l_text_61@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b L64_12
L64_16:
    ldr x14, [x25]
    str x14, [x22]
    add x14, x22, #8
    movz x9, #32768
    str x9, [x14]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
L64_12:
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, L64_18
    b L64_17
L64_18:
    add x14, x22, #16
    sub x19, x29, #152
    add x15, x19, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #768]
    ldr x20, [sp, #760]
    ldr x21, [sp, #752]
    ldr x22, [sp, #744]
    ldr x23, [sp, #736]
    ldr x24, [sp, #728]
    ldr x25, [sp, #720]
    ldr x26, [sp, #712]
    ldr x27, [sp, #704]
    ldr x28, [sp, #696]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_17:
    mov x10, x22
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x19
    bl __get_osfhandle
    mov x14, x0
    ldr x24, [x20]
    add x15, x20, #8
    ldr x25, [x15]
    mov x0, x14
    mov x1, x24
    mov x2, x25
    mov x3, #0
    bl _GetFinalPathNameByHandleW
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, L64_74
    b L64_23
L64_74:
    mov w19, w15
    b L64_24
L64_23:
    cmp w14, w25
    cset w19, hs
L64_24:
    and w15, w19, #255
    cbnz w15, L64_20
    b L64_21
L64_20:
    sub x19, x29, #152
    add x20, x19, #16
    bl _GetLastError
    mov w14, w0
    mov x0, x14
    bl _lb_files_13windows_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_235@PAGE
    add x14, x14, l_text_235@PAGEOFF
    sub x15, x29, #368
    str x14, [x15]
    add x14, x15, #8
    movz x9, #41
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #384
    mov x9, x25
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_236@PAGE
    add x0, x0, l_text_236@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x24, [x14]
    add x20, x14, #8
    str x15, [x20]
    ldr x15, [x21]
    ldr x20, [x23]
    cbnz x20, L64_26
    b L64_25
L64_26:
    add x21, x20, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L64_25:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #768]
    ldr x20, [sp, #760]
    ldr x21, [sp, #752]
    ldr x22, [sp, #744]
    ldr x23, [sp, #736]
    ldr x24, [sp, #728]
    ldr x25, [sp, #720]
    ldr x26, [sp, #712]
    ldr x27, [sp, #704]
    ldr x28, [sp, #696]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_21:
L64_22:
    sub x20, x29, #400
    mov w9, w14
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    lsl x15, x9, #2
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_237@PAGE
    add x0, x0, l_text_237@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    sub x26, x29, #448
    movz x10, #16384, lsl #48
    cmp x22, x10
    b.ls L64_29
L64_28:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_58@PAGE
    add x15, x15, l_text_58@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L64_30
L64_29:
    ldr x14, [x21]
    ldr x15, [x23]
    cbnz x15, L64_31
    b L64_32
L64_32:
    adrp x0, l_text_237@PAGE
    add x0, x0, l_text_237@PAGEOFF
    adrp x1, l_text_59@PAGE
    add x1, x1, l_text_59@PAGEOFF
    bl _lb_core_7trap_at
L64_31:
    ldr x27, [x15]
    mov x17, x27
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x22
    movz x2, #1
    sub x8, x29, #472
    ldr x17, [sp], #16
    blr x17
    sub x19, x29, #472
    add x27, x19, #16
    ldrb w27, [x27]
    mov x10, #0
    cmp x22, x10
    cset w28, ne
    mov x10, #0
    cmp w27, w10
    cset w27, eq
    and w27, w28, w27
    cbnz w27, L64_33
    b L64_34
L64_33:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_61@PAGE
    add x15, x15, l_text_61@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L64_30
L64_34:
    ldr x14, [x19]
    str x14, [x26]
    add x14, x26, #8
    str x22, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
L64_30:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, L64_36
    b L64_35
L64_36:
    add x14, x26, #16
    sub x19, x29, #152
    add x15, x19, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #488
    mov x9, x25
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_237@PAGE
    add x0, x0, l_text_237@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x24, [x14]
    add x20, x14, #8
    str x15, [x20]
    ldr x15, [x21]
    ldr x20, [x23]
    cbnz x20, L64_38
    b L64_37
L64_38:
    add x21, x20, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L64_37:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #768]
    ldr x20, [sp, #760]
    ldr x21, [sp, #752]
    ldr x22, [sp, #744]
    ldr x23, [sp, #736]
    ldr x24, [sp, #728]
    ldr x25, [sp, #720]
    ldr x26, [sp, #712]
    ldr x27, [sp, #704]
    ldr x28, [sp, #696]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_35:
    mov x10, x26
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x19, [x20]
    add x14, x20, #8
    ldr x22, [x14]
    mov x9, x22
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_238@PAGE
    add x0, x0, l_text_238@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x0, #65001
    movz x1, #128
    mov x2, x24
    ldr x3, [sp, #0]
    mov x4, x19
    mov x5, x14
    mov x6, #0
    mov x7, #0
    bl _WideCharToMultiByte
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L64_41
L64_40:
    sub x20, x29, #152
    add x14, x20, #16
    adrp x15, _lb_files_failed@PAGE
    add x15, x15, _lb_files_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_239@PAGE
    add x15, x15, l_text_239@PAGEOFF
    sub x26, x29, #504
    str x15, [x26]
    add x15, x26, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x26
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #520
    str x19, [x14]
    add x15, x14, #8
    str x22, [x15]
    ldr x15, [x21]
    ldr x26, [x23]
    cbnz x26, L64_44
    b L64_43
L64_44:
    add x19, x26, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L64_43:
    sub x14, x29, #536
    mov x9, x25
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_240@PAGE
    add x0, x0, l_text_240@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x24, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x15, [x21]
    ldr x19, [x23]
    cbnz x19, L64_46
    b L64_45
L64_46:
    add x21, x19, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L64_45:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #768]
    ldr x20, [sp, #760]
    ldr x21, [sp, #752]
    ldr x22, [sp, #744]
    ldr x23, [sp, #736]
    ldr x24, [sp, #728]
    ldr x25, [sp, #720]
    ldr x26, [sp, #712]
    ldr x27, [sp, #704]
    ldr x28, [sp, #696]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_41:
L64_42:
    sub x20, x29, #552
    sxtw x26, w14
    add x15, x22, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_241@PAGE
    add x0, x0, l_text_241@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x26, x15
    b.lo 1f
    adrp x0, l_text_241@PAGE
    add x0, x0, l_text_241@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x26
    b.ls L64_48
L64_49:
    adrp x0, l_text_241@PAGE
    add x0, x0, l_text_241@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L64_48:
    sub x14, x29, #568
    str x19, [x14]
    add x14, x14, #8
    str x26, [x14]
    sub x27, x29, #584
    str x19, [x27]
    add x14, x27, #8
    str x26, [x14]
    sub x14, x29, #184
    ldr x28, [x14]
    mov x0, x28
    bl _strlen
    mov x14, x0
    sub x15, x29, #600
    str x28, [x15]
    add x28, x15, #8
    str x14, [x28]
    mov x9, x27
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #648
    bl _lb_paths_join
    sub x15, x29, #648
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L64_51
    b L64_50
L64_51:
    add x14, x15, #16
    sub x20, x29, #152
    add x26, x20, #16
    mov x10, x14
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #664
    str x19, [x14]
    add x26, x14, #8
    str x22, [x26]
    ldr x26, [x21]
    ldr x27, [x23]
    cbnz x27, L64_53
    b L64_52
L64_53:
    add x15, x27, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x26
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L64_52:
    sub x14, x29, #680
    mov x9, x25
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_241@PAGE
    add x0, x0, l_text_241@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x24, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x15, [x21]
    ldr x19, [x23]
    cbnz x19, L64_55
    b L64_54
L64_55:
    add x21, x19, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L64_54:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #768]
    ldr x20, [sp, #760]
    ldr x21, [sp, #752]
    ldr x22, [sp, #744]
    ldr x23, [sp, #736]
    ldr x24, [sp, #728]
    ldr x25, [sp, #720]
    ldr x26, [sp, #712]
    ldr x27, [sp, #704]
    ldr x28, [sp, #696]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_50:
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #728
    bl _lb_paths_normalize
    sub x26, x29, #728
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, L64_58
    b L64_57
L64_58:
    add x14, x26, #16
    sub x27, x29, #152
    add x15, x27, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    sub x14, x29, #744
    str x19, [x14]
    add x15, x14, #8
    str x22, [x15]
    ldr x15, [x21]
    ldr x28, [x23]
    cbnz x28, L64_60
    b L64_59
L64_60:
    add x19, x28, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L64_59:
    sub x14, x29, #760
    mov x9, x25
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_242@PAGE
    add x0, x0, l_text_242@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x24, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x15, [x21]
    ldr x19, [x23]
    cbnz x19, L64_62
    b L64_61
L64_62:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L64_61:
    mov x1, x27
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #768]
    ldr x20, [sp, #760]
    ldr x21, [sp, #752]
    ldr x22, [sp, #744]
    ldr x23, [sp, #736]
    ldr x24, [sp, #728]
    ldr x25, [sp, #720]
    ldr x26, [sp, #712]
    ldr x27, [sp, #704]
    ldr x28, [sp, #696]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_57:
    sub x27, x29, #152
    mov x10, x26
    mov x11, x27
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x27, #40
    mov x9, #0
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    sub x14, x29, #776
    str x19, [x14]
    add x15, x14, #8
    str x22, [x15]
    ldr x15, [x21]
    ldr x28, [x23]
    cbnz x28, L64_65
    b L64_64
L64_65:
    add x19, x28, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L64_64:
    sub x14, x29, #792
    mov x9, x25
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_242@PAGE
    add x0, x0, l_text_242@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x24, [x14]
    add x19, x14, #8
    str x15, [x19]
    ldr x15, [x21]
    ldr x19, [x23]
    cbnz x19, L64_67
    b L64_66
L64_67:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L64_66:
    mov x1, x27
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #768]
    ldr x20, [sp, #760]
    ldr x21, [sp, #752]
    ldr x22, [sp, #744]
    ldr x23, [sp, #736]
    ldr x24, [sp, #728]
    ldr x25, [sp, #720]
    ldr x26, [sp, #712]
    ldr x27, [sp, #704]
    ldr x28, [sp, #696]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_22windows_directory_open
_lb_files_22windows_directory_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #2048
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #2016]
    str x20, [sp, #2008]
    str x21, [sp, #2000]
    str x22, [sp, #1992]
    str x23, [sp, #1984]
    str x24, [sp, #1976]
    sub x16, x29, #128
    str w0, [x16]
    sub x16, x29, #144
    str x1, [x16]
    sub x16, x29, #160
    str w2, [x16]
    sub x19, x29, #176
    sub x14, x29, #128
    ldrsw x14, [x14]
    sub x15, x29, #144
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    sub x8, x29, #224
    bl _lb_files_16windows_relative
    sub x15, x29, #224
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L65_2
    b L65_1
L65_2:
    add x14, x15, #16
    sub x19, x29, #112
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2016]
    ldr x20, [sp, #2008]
    ldr x21, [sp, #2000]
    ldr x22, [sp, #1992]
    ldr x23, [sp, #1984]
    ldr x24, [sp, #1976]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_3:
L65_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    sub x20, x29, #160
    ldrb w20, [x20]
    mov x0, x14
    mov x1, x20
    movz x2, #1
    sub x8, x29, #264
    bl _lb_files_19windows_path_handle
    sub x20, x29, #264
    add x14, x20, #32
    ldrb w14, [x14]
    cbnz w14, L65_5
    b L65_4
L65_5:
    add x14, x20, #8
    sub x21, x29, #112
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2016]
    ldr x20, [sp, #2008]
    ldr x21, [sp, #2000]
    ldr x22, [sp, #1992]
    ldr x23, [sp, #1984]
    ldr x24, [sp, #1976]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_6:
L65_4:
    ldr x21, [x20]
    mov x0, x21
    movz x1, #128
    bl __open_osfhandle
    mov w22, w0
    mov x10, #0
    cmp w22, w10
    b.ge L65_8
L65_7:
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    sub x20, x29, #112
    add x14, x20, #8
    adrp x15, _lb_files_failed@PAGE
    add x15, x15, _lb_files_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_243@PAGE
    add x15, x15, l_text_243@PAGEOFF
    sub x22, x29, #280
    str x15, [x22]
    add x15, x22, #8
    movz x9, #45
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2016]
    ldr x20, [sp, #2008]
    ldr x21, [sp, #2000]
    ldr x22, [sp, #1992]
    ldr x23, [sp, #1984]
    ldr x24, [sp, #1976]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_10:
    b L65_9
L65_8:
L65_9:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x20, x29, #320
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #360
    ldr x14, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    cbnz x15, L65_13
    b L65_14
L65_14:
    adrp x0, l_text_244@PAGE
    add x0, x0, l_text_244@PAGEOFF
    adrp x1, l_text_59@PAGE
    add x1, x1, l_text_59@PAGEOFF
    bl _lb_core_7trap_at
L65_13:
    ldr x20, [x15]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #1656
    movz x2, #8
    sub x8, x29, #384
    ldr x17, [sp], #16
    blr x17
    sub x23, x29, #384
    add x20, x23, #16
    ldrb w20, [x20]
    cbnz w20, L65_15
    b L65_16
L65_16:
    add x14, x21, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_61@PAGE
    add x15, x15, l_text_61@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    b L65_17
L65_15:
    ldr x20, [x23]
    sub x24, x29, #2040
    mov x0, x24
    mov x1, #0
    movz x2, #1656
    bl _memset
    str w22, [x24]
    mov x0, x20
    mov x1, x24
    movz x2, #1656
    bl _memcpy
    str x20, [x21]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
L65_17:
    add x14, x21, #32
    ldrb w14, [x14]
    cbnz w14, L65_19
    b L65_18
L65_19:
    add x14, x21, #8
    sub x20, x29, #304
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L65_11
L65_18:
    ldr x20, [x21]
    b L65_12
L65_11:
    mov x0, x22
    bl _close
    mov w14, w0
    sub x21, x29, #112
    add x14, x21, #8
    ldr w15, [x20]
    str w15, [x14]
    add x15, x20, #8
    add x14, x14, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2016]
    ldr x20, [sp, #2008]
    ldr x21, [sp, #2000]
    ldr x22, [sp, #1992]
    ldr x23, [sp, #1984]
    ldr x24, [sp, #1976]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_20:
L65_12:
    sub x21, x29, #2048
    mov x11, x21
    str xzr, [x11, #0]
    str x20, [x21]
    sub x22, x29, #112
    mov x10, x21
    mov x11, x22
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x22, #32
    mov x9, #0
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2016]
    ldr x20, [sp, #2008]
    ldr x21, [sp, #2000]
    ldr x22, [sp, #1992]
    ldr x23, [sp, #1984]
    ldr x24, [sp, #1976]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_21:
    sub x14, x29, #176
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    adrp x0, l_text_245@PAGE
    add x0, x0, l_text_245@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_12windows_next
_lb_files_12windows_next:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #512
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #480]
    str x20, [sp, #472]
    str x21, [sp, #464]
    str x22, [sp, #456]
    str x23, [sp, #448]
    str x24, [sp, #440]
    str x25, [sp, #432]
    str x26, [sp, #424]
    sub x16, x29, #160
    str x0, [x16]
    sub x14, x29, #160
    ldr x19, [x14]
    add x20, x19, #16
    ldrb w14, [x20]
    cbnz w14, L66_1
    b L66_2
L66_1:
    sub x19, x29, #184
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #144
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
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_4:
    b L66_3
L66_2:
L66_3:
    add x21, x19, #8
    ldr x14, [x21]
    cbnz x14, L66_8
    b L66_6
L66_8:
L66_5:
    add x15, x19, #20
    mov x0, x14
    mov x1, x15
    bl _FindNextFileW
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ne L66_10
L66_9:
    bl _GetLastError
    mov w14, w0
    movz x10, #18
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L66_13
L66_12:
    sub x19, x29, #144
    add x20, x19, #24
    bl _GetLastError
    mov w14, w0
    mov x0, x14
    bl _lb_files_13windows_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_246@PAGE
    add x14, x14, l_text_246@PAGEOFF
    sub x15, x29, #200
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_15:
    b L66_14
L66_13:
L66_14:
    movz x9, #1
    strb w9, [x20]
    sub x19, x29, #224
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x21, x29, #144
    mov x10, x19
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_16:
    b L66_11
L66_10:
L66_11:
    b L66_7
L66_6:
    sub x22, x29, #240
    ldrsw x14, [x19]
    adrp x15, l_text_247@PAGE
    add x15, x15, l_text_247@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x8, x29, #288
    bl _lb_files_16windows_relative
    sub x15, x29, #288
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L66_18
    b L66_17
L66_18:
    add x14, x15, #16
    sub x19, x29, #144
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_19:
L66_17:
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #304
    ldr x14, [x22]
    mov x0, x14
    sub x8, x29, #352
    bl _lb_files_9wide_path
    sub x24, x29, #352
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, L66_21
    b L66_20
L66_21:
    add x14, x24, #16
    sub x19, x29, #144
    add x15, x19, #24
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_22:
L66_20:
    mov x10, x24
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x25, [x23]
    add x14, x19, #20
    mov x0, x25
    mov x1, x14
    bl _FindFirstFileW
    mov x14, x0
    cbnz x14, L66_23
    b L66_24
L66_24:
    adrp x0, l_text_248@PAGE
    add x0, x0, l_text_248@PAGEOFF
    adrp x1, l_text_209@PAGE
    add x1, x1, l_text_209@PAGEOFF
    bl _lb_core_7trap_at
L66_23:
    movn x10, #0
    cmp x14, x10
    b.ne L66_26
L66_25:
    bl _GetLastError
    mov w14, w0
    movz x10, #2
    cmp w14, w10
    b.ne L66_29
L66_28:
    movz x9, #1
    strb w9, [x20]
    sub x19, x29, #376
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x21, x29, #144
    mov x10, x19
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #48
    mov x9, #0
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #392
    add x19, x23, #8
    ldr x19, [x19]
    mov x9, x19
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_249@PAGE
    add x0, x0, l_text_249@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    str x25, [x15]
    add x24, x15, #8
    str x19, [x24]
    ldr x19, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L66_32
    b L66_31
L66_32:
    add x20, x14, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L66_31:
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_33:
    b L66_30
L66_29:
L66_30:
    sub x19, x29, #144
    add x20, x19, #24
    bl _GetLastError
    mov w14, w0
    mov x0, x14
    bl _lb_files_13windows_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_246@PAGE
    add x14, x14, l_text_246@PAGEOFF
    sub x15, x29, #408
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #424
    add x20, x23, #8
    ldr x20, [x20]
    mov x9, x20
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_250@PAGE
    add x0, x0, l_text_250@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x25, [x15]
    add x21, x15, #8
    str x20, [x21]
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L66_35
    b L66_34
L66_35:
    add x21, x14, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L66_34:
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_36:
    b L66_27
L66_26:
L66_27:
    str x14, [x21]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x20, x29, #440
    add x24, x23, #8
    ldr x24, [x24]
    mov x9, x24
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_251@PAGE
    add x0, x0, l_text_251@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    str x25, [x20]
    add x26, x20, #8
    str x24, [x26]
    ldr x24, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L66_38
    b L66_37
L66_38:
    add x14, x15, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x24
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L66_37:
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
L66_7:
    add x14, x19, #20
    add x14, x14, #44
    add x20, x19, #612
    movz x0, #65001
    movz x1, #128
    mov x2, x14
    movn x3, #0
    mov x4, x20
    movz x5, #1041
    mov x6, #0
    mov x7, #0
    bl _WideCharToMultiByte
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.gt L66_40
L66_39:
    sub x19, x29, #144
    add x14, x19, #24
    adrp x15, _lb_files_failed@PAGE
    add x15, x15, _lb_files_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_253@PAGE
    add x15, x15, l_text_253@PAGEOFF
    sub x20, x29, #456
    str x15, [x20]
    add x15, x20, #8
    movz x9, #47
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_42:
    b L66_41
L66_40:
L66_41:
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_254@PAGE
    add x0, x0, l_text_254@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    sxtw x19, w15
    movz x10, #1042
    cmp x19, x10
    b.lo 1f
    adrp x0, l_text_254@PAGE
    add x0, x0, l_text_254@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x19
    b.ls L66_43
L66_44:
    adrp x0, l_text_254@PAGE
    add x0, x0, l_text_254@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L66_43:
    sub x14, x29, #472
    str x20, [x14]
    add x14, x14, #8
    str x19, [x14]
    sub x14, x29, #488
    str x20, [x14]
    add x15, x14, #8
    str x19, [x15]
    sub x21, x29, #512
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #16
    movz x9, #1
    strb w9, [x14]
    sub x22, x29, #144
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
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_45:
    adrp x0, l_text_254@PAGE
    add x0, x0, l_text_254@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_23windows_directory_close
_lb_files_23windows_directory_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    str x21, [sp, #80]
    sub x16, x29, #96
    str x0, [x16]
    sub x14, x29, #96
    ldr x19, [x14]
    add x14, x19, #8
    ldr x14, [x14]
    cbnz x14, L67_4
    b L67_2
L67_4:
L67_1:
    mov x0, x14
    bl _FindClose
    mov w14, w0
    b L67_3
L67_2:
L67_3:
    ldrsw x14, [x19]
    mov x0, x14
    bl _close
    mov w20, w0
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #112
    str x19, [x15]
    add x21, x15, #8
    movz x9, #1656
    str x9, [x21]
    ldr x21, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L67_6
    b L67_5
L67_6:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L67_5:
    mov x10, #0
    cmp w20, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L67_8
L67_7:
    sub x19, x29, #80
    adrp x14, _lb_files_failed@PAGE
    add x14, x14, _lb_files_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_119@PAGE
    add x14, x14, l_text_119@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L67_10:
    b L67_9
L67_8:
L67_9:
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_canonical
_lb_files_canonical:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    str x21, [sp, #144]
    sub x16, x29, #112
    str x0, [x16]
    sub x14, x29, #112
    ldr x14, [x14]
    mov x0, x14
    mov x1, #0
    bl _realpath
    mov x19, x0
    cbnz x19, L68_1
    b L68_2
L68_1:
    b L68_3
L68_2:
    sub x19, x29, #96
    add x20, x19, #16
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_255@PAGE
    add x14, x14, l_text_255@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #41
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L68_4:
L68_3:
    mov x0, x19
    bl _strlen
    mov x14, x0
    sub x15, x29, #144
    str x19, [x15]
    add x20, x15, #8
    str x14, [x20]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #192
    bl _lb_strings_copy
    sub x15, x29, #192
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L68_6
    b L68_5
L68_6:
    add x14, x15, #16
    sub x20, x29, #96
    add x21, x20, #16
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _free
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L68_7:
L68_5:
    sub x20, x29, #96
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _free
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L68_8:
    mov x0, x14
    bl _free
    adrp x0, l_text_256@PAGE
    add x0, x0, l_text_256@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_11remove_tree
_lb_files_11remove_tree:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #896
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #864]
    str x20, [sp, #856]
    str x21, [sp, #848]
    str x22, [sp, #840]
    str x23, [sp, #832]
    str x24, [sp, #824]
    str x25, [sp, #816]
    str x26, [sp, #808]
    str x27, [sp, #800]
    str x28, [sp, #792]
    sub x16, x29, #152
    str x0, [x16]
    sub x20, x29, #280
    sub x14, x29, #152
    ldr x19, [x14]
    mov x0, x19
    mov x1, #0
    sub x8, x29, #592
    bl _lb_files_metadata
    sub x15, x29, #592
    add x14, x15, #152
    ldrb w14, [x14]
    cbnz w14, L69_4
    b L69_3
L69_4:
    add x14, x15, #128
    sub x19, x29, #432
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L69_1
L69_3:
    sub x21, x29, #408
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    b L69_2
L69_1:
    ldr w14, [x19]
    adrp x15, _lb_files_missing@PAGE
    add x15, x15, _lb_files_missing@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    b.ne L69_6
L69_5:
    sub x14, x29, #136
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #864]
    ldr x20, [sp, #856]
    ldr x21, [sp, #848]
    ldr x22, [sp, #840]
    ldr x23, [sp, #832]
    ldr x24, [sp, #824]
    ldr x25, [sp, #816]
    ldr x26, [sp, #808]
    ldr x27, [sp, #800]
    ldr x28, [sp, #792]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L69_8:
    b L69_7
L69_6:
L69_7:
    sub x20, x29, #136
    str w14, [x20]
    add x15, x19, #8
    add x21, x20, #8
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x20, #24
    movz x9, #1
    strb w9, [x15]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #864]
    ldr x20, [sp, #856]
    ldr x21, [sp, #848]
    ldr x22, [sp, #840]
    ldr x23, [sp, #832]
    ldr x24, [sp, #824]
    ldr x25, [sp, #816]
    ldr x26, [sp, #808]
    ldr x27, [sp, #800]
    ldr x28, [sp, #792]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L69_9:
L69_2:
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    ldrb w14, [x20]
    movz x10, #2
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L69_11
L69_10:
    mov x0, x19
    sub x8, x29, #624
    bl _lb_files_11remove_file
    sub x15, x29, #624
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L69_14
    b L69_13
L69_14:
    sub x19, x29, #136
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #864]
    ldr x20, [sp, #856]
    ldr x21, [sp, #848]
    ldr x22, [sp, #840]
    ldr x23, [sp, #832]
    ldr x24, [sp, #824]
    ldr x25, [sp, #816]
    ldr x26, [sp, #808]
    ldr x27, [sp, #800]
    ldr x28, [sp, #792]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L69_15:
L69_13:
    sub x14, x29, #136
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #864]
    ldr x20, [sp, #856]
    ldr x21, [sp, #848]
    ldr x22, [sp, #840]
    ldr x23, [sp, #832]
    ldr x24, [sp, #824]
    ldr x25, [sp, #816]
    ldr x26, [sp, #808]
    ldr x27, [sp, #800]
    ldr x28, [sp, #792]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L69_16:
    b L69_12
L69_11:
L69_12:
    sub x20, x29, #640
    mov x0, x19
    sub x8, x29, #688
    bl _lb_files_list
    sub x15, x29, #688
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L69_18
    b L69_17
L69_18:
    add x14, x15, #16
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #864]
    ldr x20, [sp, #856]
    ldr x21, [sp, #848]
    ldr x22, [sp, #840]
    ldr x23, [sp, #832]
    ldr x24, [sp, #824]
    ldr x25, [sp, #816]
    ldr x26, [sp, #808]
    ldr x27, [sp, #800]
    ldr x28, [sp, #792]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L69_19:
L69_17:
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x21, [x20]
    add x14, x20, #8
    ldr x22, [x14]
    sub x23, x29, #704
    sub x9, x29, #720
    str x9, [sp, #16]
    sub x24, x29, #736
    add x25, x24, #8
    sub x9, x29, #784
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x26, x9, #40
    sub x27, x29, #816
    add x9, x27, #24
    str x9, [sp, #24]
    mov x9, #0
    mov x28, x9
L69_20:
    cmp x28, x22
    b.hs L69_23
L69_21:
    lsl x14, x28, #4
    add x14, x21, x14
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x19
    bl _strlen
    mov x14, x0
    str x19, [x24]
    str x14, [x25]
    mov x9, x24
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x23
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #784
    bl _lb_paths_join
    ldrb w14, [x26]
    cbnz w14, L69_25
    b L69_24
L69_25:
    ldr x9, [sp, #8]
    add x14, x9, #16
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #864
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #864
    add x15, x14, #8
    ldr x15, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x15
    bl _lb_files_15release_entries
L69_33:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #864]
    ldr x20, [sp, #856]
    ldr x21, [sp, #848]
    ldr x22, [sp, #840]
    ldr x23, [sp, #832]
    ldr x24, [sp, #824]
    ldr x25, [sp, #816]
    ldr x26, [sp, #808]
    ldr x27, [sp, #800]
    ldr x28, [sp, #792]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L69_26:
L69_24:
    ldr x10, [sp, #8]
    ldr x11, [sp, #16]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #16]
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #816
    bl _lb_files_11remove_tree
    ldr x9, [sp, #24]
    ldrb w14, [x9]
    cbnz w14, L69_28
    b L69_27
L69_28:
    sub x19, x29, #136
    mov x10, x27
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #16]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x10, x20
    sub x11, x29, #864
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #864
    add x15, x14, #8
    ldr x15, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x15
    bl _lb_files_15release_entries
L69_34:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #864]
    ldr x20, [sp, #856]
    ldr x21, [sp, #848]
    ldr x22, [sp, #840]
    ldr x23, [sp, #832]
    ldr x24, [sp, #824]
    ldr x25, [sp, #816]
    ldr x26, [sp, #808]
    ldr x27, [sp, #800]
    ldr x28, [sp, #792]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L69_29:
L69_27:
    ldr x9, [sp, #16]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
L69_22:
    add x14, x28, #1
    mov x28, x14
    b L69_20
L69_23:
    mov x0, x19
    sub x8, x29, #848
    bl _lb_files_16remove_directory
    sub x15, x29, #848
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L69_31
    b L69_30
L69_31:
    sub x19, x29, #136
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #864
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #864
    add x21, x14, #8
    ldr x21, [x21]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    bl _lb_files_15release_entries
L69_35:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #864]
    ldr x20, [sp, #856]
    ldr x21, [sp, #848]
    ldr x22, [sp, #840]
    ldr x23, [sp, #832]
    ldr x24, [sp, #824]
    ldr x25, [sp, #816]
    ldr x26, [sp, #808]
    ldr x27, [sp, #800]
    ldr x28, [sp, #792]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L69_32:
L69_30:
    mov x10, x20
    sub x11, x29, #864
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #864
    add x15, x14, #8
    ldr x15, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x15
    bl _lb_files_15release_entries
L69_36:
    sub x14, x29, #136
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #864]
    ldr x20, [sp, #856]
    ldr x21, [sp, #848]
    ldr x22, [sp, #840]
    ldr x23, [sp, #832]
    ldr x24, [sp, #824]
    ldr x25, [sp, #816]
    ldr x26, [sp, #808]
    ldr x27, [sp, #800]
    ldr x28, [sp, #792]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_TemporaryDirectory_init
_lb_files_TemporaryDirectory_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #720
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #688]
    str x20, [sp, #680]
    str x21, [sp, #672]
    str x22, [sp, #664]
    str x23, [sp, #656]
    str x24, [sp, #648]
    str x25, [sp, #640]
    str x26, [sp, #632]
    str x27, [sp, #624]
    str x28, [sp, #616]
    sub x16, x29, #144
    str x0, [x16]
    sub x16, x29, #160
    str x1, [x16]
    sub x9, x29, #144
    ldr x9, [x9]
    str x9, [sp, #8]
    sub x21, x29, #176
    sub x14, x29, #160
    ldr x19, [x14]
    mov x0, x19
    bl _strlen
    mov x14, x0
    sub x15, x29, #208
    str x19, [x15]
    add x15, x15, #8
    str x14, [x15]
    mov x10, #0
    cmp x14, x10
    b.ls L70_2
L70_1:
    mov x0, x19
    bl _strlen
    mov x14, x0
    sub x15, x29, #224
    str x19, [x15]
    add x22, x15, #8
    str x14, [x22]
    sub x14, x29, #192
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L70_3
L70_2:
    bl _lb_io_path_temp
    sub x16, x29, #240
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #240
    sub x15, x29, #192
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L70_3:
    sub x14, x29, #192
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x19, [x21]
    sub x10, x29, #352
    str x19, [x10]
    movz x9, #448
    sub x10, x29, #368
    str w9, [x10]
    sub x22, x29, #384
    mov x0, x19
    bl _strlen
    mov x14, x0
    sub x15, x29, #400
    str x19, [x15]
    add x19, x15, #8
    str x14, [x19]
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    sub x19, x29, #416
    str x14, [x19]
    add x14, x19, #8
    movz x9, #38
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #464
    bl _lb_paths_join
    sub x15, x29, #464
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L70_8
    b L70_7
L70_8:
    add x14, x15, #16
    sub x19, x29, #336
    add x21, x19, #16
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #288
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    b L70_33
L70_7:
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #480
    adrp x9, l_text_70@PAGE
    add x9, x9, l_text_70@PAGEOFF
    str x9, [sp, #80]
    sub x21, x29, #496
    ldr x9, [sp, #80]
    str x9, [x21]
    add x23, x21, #8
    movz x9, #16
    str x9, [x23]
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x21, [x22]
    add x14, x22, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #32
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_257@PAGE
    add x0, x0, l_text_257@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #72]
    sub x9, x29, #512
    str x9, [sp, #64]
    sub x9, x29, #528
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #48]
    sub x28, x29, #560
    add x9, x28, #24
    str x9, [sp, #40]
    sub x19, x29, #616
    add x9, x19, #24
    str x9, [sp, #32]
    sub x9, x29, #584
    str x9, [sp, #24]
    adrp x9, _lb_files_14already_exists@PAGE
    add x9, x9, _lb_files_14already_exists@PAGEOFF
    str x9, [sp, #16]
    mov x9, #0
    mov x20, x9
L70_10:
    movz x10, #128
    cmp x20, x10
    b.hs L70_12
L70_11:
    ldr x11, [sp, #64]
    stp xzr, xzr, [x11, #0]
    ldr x9, [sp, #64]
    ldr x10, [sp, #56]
    str x9, [x10]
    movz x9, #16
    ldr x10, [sp, #48]
    str x9, [x10]
    ldr x9, [sp, #56]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #560
    bl _lb_os_12random_bytes
    ldr x9, [sp, #40]
    ldrb w14, [x9]
    cbnz w14, L70_14
    b L70_13
L70_14:
    sub x19, x29, #336
    add x14, x19, #16
    mov x10, x28
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x10, x19
    sub x11, x29, #288
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    b L70_33
L70_13:
    mov x9, #0
    mov x14, x9
L70_16:
    movz x10, #16
    cmp x14, x10
    b.hs L70_19
L70_17:
    lsl x15, x14, #1
    ldr x9, [sp, #72]
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_258@PAGE
    add x0, x0, l_text_258@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    add x26, x21, x15
    ldr x9, [sp, #64]
    add x25, x9, x14
    ldrb w27, [x25]
L70_21:
    lsr w23, w27, #4
    and w23, w23, #255
    mov w23, w23
    movz x10, #16
    cmp x23, x10
    b.lo 1f
    adrp x0, l_text_258@PAGE
    add x0, x0, l_text_258@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #80]
    add x23, x9, x23
    ldrb w23, [x23]
    strb w23, [x26]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_259@PAGE
    add x0, x0, l_text_259@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    add x23, x21, x23
    ldrb w24, [x25]
    movz x10, #15
    and w24, w24, w10
    mov w24, w24
    ldr x9, [sp, #80]
    add x24, x9, x24
    ldrb w24, [x24]
    strb w24, [x23]
L70_18:
    add x15, x14, #1
    mov x14, x15
    b L70_16
L70_19:
    ldr x14, [x22]
    mov x0, x14
    movz x1, #448
    sub x8, x29, #616
    bl _lb_files_16create_directory
    ldr x9, [sp, #32]
    ldrb w14, [x9]
    cbnz w14, L70_25
    b L70_24
L70_25:
    mov x10, x19
    ldr x11, [sp, #24]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L70_22
L70_24:
    b L70_23
L70_22:
    ldr x9, [sp, #24]
    ldr w14, [x9]
    ldr x9, [sp, #16]
    ldr w15, [x9]
    cmp w14, w15
    b.ne L70_27
L70_26:
    add x14, x20, #1
    mov x20, x14
    b L70_10
L70_27:
L70_28:
    sub x19, x29, #336
    add x15, x19, #16
    str w14, [x15]
    ldr x9, [sp, #24]
    add x20, x9, #8
    add x15, x15, #8
    mov x10, x20
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #40
    movz x9, #1
    strb w9, [x15]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x10, x19
    sub x11, x29, #288
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    b L70_33
L70_23:
    sub x19, x29, #336
    mov x10, x22
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #288
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    b L70_33
L70_12:
    sub x19, x29, #336
    add x14, x19, #16
    adrp x15, _lb_files_14already_exists@PAGE
    add x15, x15, _lb_files_14already_exists@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_261@PAGE
    add x15, x15, l_text_261@PAGEOFF
    sub x20, x29, #632
    str x15, [x20]
    add x15, x20, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x10, x19
    sub x11, x29, #288
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
L70_33:
    sub x15, x29, #288
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L70_5
    b L70_4
L70_5:
    add x14, x15, #16
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L70_4:
    mov x10, x15
    ldr x11, [sp, #8]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #8]
    add x14, x9, #16
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #136
    add x19, x14, #24
    mov x9, #0
    strb w9, [x19]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #688]
    ldr x20, [sp, #680]
    ldr x21, [sp, #672]
    ldr x22, [sp, #664]
    ldr x23, [sp, #656]
    ldr x24, [sp, #648]
    ldr x25, [sp, #640]
    ldr x26, [sp, #632]
    ldr x27, [sp, #624]
    ldr x28, [sp, #616]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_TemporaryDirectory_path
_lb_files_TemporaryDirectory_path:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #48
    str x0, [x16]
    sub x9, x29, #48
    ldr x14, [x9]
    sub x19, x29, #40
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71_1:
    adrp x0, l_text_263@PAGE
    add x0, x0, l_text_263@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_TemporaryDirectory_12release_name
_lb_files_TemporaryDirectory_12release_name:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    str x20, [sp, #144]
    str x21, [sp, #136]
    str x22, [sp, #128]
    str x23, [sp, #120]
    str x24, [sp, #112]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x19, [x9]
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L72_2
L72_1:
    sub x20, x29, #88
    add x21, x19, #16
    ldr x14, [x21]
    cbnz x14, L72_4
    b L72_5
L72_4:
    sub x22, x29, #104
    mov x10, x21
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L72_6
L72_5:
    adrp x14, l_text_264@PAGE
    add x14, x14, l_text_264@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    adrp x14, l_text_265@PAGE
    add x14, x14, l_text_265@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_265@PAGE
    add x0, x0, l_text_265@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L72_6:
    mov x10, x22
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #136
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x24, x0
    mov x10, x24
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x10, x23
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, l_text_86@PAGE
    add x14, x14, l_text_86@PAGEOFF
    sub x15, x29, #152
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #168
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L72_3
L72_2:
L72_3:
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    ldr x22, [sp, #128]
    ldr x23, [sp, #120]
    ldr x24, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_TemporaryDirectory_destroy
_lb_files_TemporaryDirectory_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x19, [x9]
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L73_6
L73_5:
    sub x14, x29, #128
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #96
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L73_12
L73_8:
    b L73_7
L73_6:
L73_7:
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #160
    bl _lb_files_11remove_tree
    sub x15, x29, #160
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L73_10
    b L73_9
L73_10:
    sub x20, x29, #128
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #96
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L73_12
L73_11:
L73_9:
    mov x0, x19
    bl _lb_files_TemporaryDirectory_12release_name
    sub x14, x29, #128
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #96
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L73_12:
    sub x15, x29, #96
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L73_4
    b L73_3
L73_4:
    sub x14, x29, #64
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L73_1
L73_3:
    b L73_2
L73_1:
L73_2:
    mov x0, x19
    bl _lb_files_TemporaryDirectory_12release_name
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_9text_path
_lb_files_9text_path:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    str x21, [sp, #144]
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #112
    add x20, x19, #8
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    cbnz w14, L74_19
    b L74_4
L74_19:
    mov w15, w14
    b L74_5
L74_4:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L74_5:
    and w14, w15, #255
    cbnz w14, L74_1
    b L74_2
L74_1:
    sub x19, x29, #96
    add x14, x19, #16
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_266@PAGE
    add x15, x15, l_text_266@PAGEOFF
    sub x20, x29, #128
    str x15, [x20]
    add x15, x20, #8
    movz x9, #29
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L74_6:
    b L74_3
L74_2:
L74_3:
    ldr x14, [x19]
    ldr x15, [x20]
    mov x9, #0
    mov x21, x9
L74_7:
    cmp x21, x15
    b.hs L74_10
L74_8:
    add x20, x14, x21
    ldrb w20, [x20]
    and w20, w20, #255
    mov x10, #0
    cmp w20, w10
    b.ne L74_12
L74_11:
    sub x19, x29, #96
    add x14, x19, #16
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_267@PAGE
    add x15, x15, l_text_267@PAGEOFF
    sub x20, x29, #144
    str x15, [x20]
    add x15, x20, #8
    movz x9, #25
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L74_14:
    b L74_13
L74_12:
L74_13:
L74_9:
    add x20, x21, #1
    mov x21, x20
    b L74_7
L74_10:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #192
    bl _lb_strings_copy
    sub x15, x29, #192
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L74_16
    b L74_15
L74_16:
    add x14, x15, #16
    sub x19, x29, #96
    add x20, x19, #16
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L74_17:
L74_15:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L74_18:
    adrp x0, l_text_268@PAGE
    add x0, x0, l_text_268@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_9read_text
_lb_files_9read_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #448
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #416]
    str x20, [sp, #408]
    str x21, [sp, #400]
    str x22, [sp, #392]
    str x23, [sp, #384]
    str x24, [sp, #376]
    str x25, [sp, #368]
    sub x16, x29, #152
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #168
    str x2, [x16]
    sub x19, x29, #184
    sub x14, x29, #152
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #232
    bl _lb_files_9text_path
    sub x15, x29, #232
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L75_2
    b L75_1
L75_2:
    add x14, x15, #16
    sub x19, x29, #136
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    ldr x24, [sp, #376]
    ldr x25, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L75_3:
L75_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #248
    ldr x14, [x19]
    sub x20, x29, #168
    ldr x20, [x20]
    mov x0, x14
    mov x1, x20
    sub x8, x29, #296
    bl _lb_files_10read_limit
    sub x20, x29, #296
    add x14, x20, #40
    ldrb w14, [x14]
    cbnz w14, L75_5
    b L75_4
L75_5:
    add x14, x20, #16
    sub x21, x29, #136
    add x15, x21, #24
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #48
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    ldr x24, [sp, #376]
    ldr x25, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L75_6:
L75_4:
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L75_8
L75_7:
    sub x20, x29, #136
    add x14, x20, #24
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_269@PAGE
    add x15, x15, l_text_269@PAGEOFF
    sub x22, x29, #312
    str x15, [x22]
    add x15, x22, #8
    movz x9, #27
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #328
    ldr x22, [x21]
    add x23, x21, #8
    ldr x23, [x23]
    str x22, [x15]
    add x22, x15, #8
    str x23, [x22]
    ldr x22, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L75_11
    b L75_10
L75_11:
    add x21, x14, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x22
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L75_10:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    ldr x24, [sp, #376]
    ldr x25, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L75_12:
    b L75_9
L75_8:
L75_9:
    ldr x14, [x21]
    add x20, x21, #8
    ldr x15, [x20]
    sub x22, x29, #344
    str x14, [x22]
    add x14, x22, #8
    str x15, [x14]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #400
    bl _lb_interop_9copy_text
    sub x15, x29, #400
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L75_14
    b L75_13
L75_14:
    add x14, x15, #24
    sub x22, x29, #136
    add x23, x22, #24
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #48
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x23, x29, #416
    ldr x24, [x21]
    ldr x25, [x20]
    str x24, [x23]
    add x24, x23, #8
    str x25, [x24]
    ldr x24, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L75_16
    b L75_15
L75_16:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x24
    mov x9, x23
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L75_15:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    ldr x24, [sp, #376]
    ldr x25, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L75_17:
L75_13:
    sub x22, x29, #136
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #48
    mov x9, #0
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x23, x29, #432
    ldr x24, [x21]
    ldr x25, [x20]
    str x24, [x23]
    add x24, x23, #8
    str x25, [x24]
    ldr x24, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L75_19
    b L75_18
L75_19:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x24
    mov x9, x23
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L75_18:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    ldr x24, [sp, #376]
    ldr x25, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L75_20:
    sub x14, x29, #248
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x19, x29, #448
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #1
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_271@PAGE
    add x0, x0, l_text_271@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L75_22
    b L75_21
L75_22:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L75_21:
    sub x14, x29, #184
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    adrp x0, l_text_271@PAGE
    add x0, x0, l_text_271@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_10write_text
_lb_files_10write_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1328
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1296]
    str x20, [sp, #1288]
    str x21, [sp, #1280]
    str x22, [sp, #1272]
    str x23, [sp, #1264]
    str x24, [sp, #1256]
    sub x16, x29, #120
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #136
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #136
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L76_2
L76_1:
    sub x19, x29, #104
    adrp x14, _lb_files_15invalid_options@PAGE
    add x14, x14, _lb_files_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_272@PAGE
    add x14, x14, l_text_272@PAGEOFF
    sub x15, x29, #152
    str x14, [x15]
    add x14, x15, #8
    movz x9, #29
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1296]
    ldr x20, [sp, #1288]
    ldr x21, [sp, #1280]
    ldr x22, [sp, #1272]
    ldr x23, [sp, #1264]
    ldr x24, [sp, #1256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L76_2:
L76_3:
    sub x20, x29, #168
    sub x14, x29, #120
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #216
    bl _lb_files_9text_path
    sub x15, x29, #216
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L76_6
    b L76_5
L76_6:
    add x14, x15, #16
    sub x19, x29, #104
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1296]
    ldr x20, [sp, #1288]
    ldr x21, [sp, #1280]
    ldr x22, [sp, #1272]
    ldr x23, [sp, #1264]
    ldr x24, [sp, #1256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L76_5:
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #232
    ldr x14, [x20]
    mov x0, x14
    sub x8, x29, #320
    bl _lb_files_canonical
    sub x22, x29, #320
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, L76_11
    b L76_10
L76_11:
    add x14, x22, #16
    sub x23, x29, #272
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L76_8
L76_10:
    sub x14, x29, #248
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L76_9
L76_8:
    ldr w14, [x23]
    adrp x15, _lb_files_missing@PAGE
    add x15, x15, _lb_files_missing@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L76_13
L76_12:
    sub x19, x29, #104
    str w14, [x19]
    add x15, x23, #8
    add x21, x19, #8
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #24
    movz x9, #1
    strb w9, [x15]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1296]
    ldr x20, [sp, #1288]
    ldr x21, [sp, #1280]
    ldr x22, [sp, #1272]
    ldr x23, [sp, #1264]
    ldr x24, [sp, #1256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L76_13:
L76_14:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #368
    bl _lb_strings_copy
    sub x15, x29, #368
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L76_17
    b L76_16
L76_17:
    add x14, x15, #16
    sub x19, x29, #104
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1296]
    ldr x20, [sp, #1288]
    ldr x21, [sp, #1280]
    ldr x22, [sp, #1272]
    ldr x23, [sp, #1264]
    ldr x24, [sp, #1256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L76_16:
    sub x14, x29, #248
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L76_9:
    sub x14, x29, #248
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #496
    ldr x14, [x21]
    mov x0, x14
    movz x1, #1
    sub x8, x29, #808
    bl _lb_files_metadata
    sub x15, x29, #808
    add x14, x15, #152
    ldrb w14, [x14]
    cbnz w14, L76_23
    b L76_22
L76_23:
    add x14, x15, #128
    sub x23, x29, #648
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L76_20
L76_22:
    sub x14, x29, #624
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    b L76_21
L76_20:
    ldr w14, [x23]
    adrp x15, _lb_files_missing@PAGE
    add x15, x15, _lb_files_missing@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L76_25
L76_24:
    sub x19, x29, #104
    str w14, [x19]
    add x15, x23, #8
    add x22, x19, #8
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #24
    movz x9, #1
    strb w9, [x15]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1296]
    ldr x20, [sp, #1288]
    ldr x21, [sp, #1280]
    ldr x22, [sp, #1272]
    ldr x23, [sp, #1264]
    ldr x24, [sp, #1256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L76_25:
L76_26:
    sub x23, x29, #936
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    stp xzr, xzr, [x11, #112]
    movz x9, #1
    strb w9, [x23]
    add x14, x23, #4
    movz x9, #420
    str w9, [x14]
    sub x14, x29, #624
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
L76_21:
    sub x14, x29, #624
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    ldrb w14, [x22]
    movz x10, #1
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L76_30
L76_29:
    sub x19, x29, #104
    adrp x14, _lb_files_15invalid_options@PAGE
    add x14, x14, _lb_files_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_273@PAGE
    add x14, x14, l_text_273@PAGEOFF
    sub x15, x29, #952
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1296]
    ldr x20, [sp, #1288]
    ldr x21, [sp, #1280]
    ldr x22, [sp, #1272]
    ldr x23, [sp, #1264]
    ldr x24, [sp, #1256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L76_30:
L76_31:
    ldr x23, [x21]
    add x14, x22, #4
    ldr w24, [x14]
    sub x10, x29, #1032
    str x23, [x10]
    mov x10, x19
    sub x11, x29, #1048
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x10, x29, #1064
    str w24, [x10]
    mov x9, #0
    sub x10, x29, #1080
    str w9, [x10]
    mov x9, #0
    sub x10, x29, #1096
    str x9, [x10]
L76_37:
L76_38:
    sub x19, x29, #1152
    sub x14, x29, #1080
    ldrb w14, [x14]
    mov x0, x23
    mov x1, x24
    mov x2, x14
    sub x8, x29, #1240
    bl _lb_files_Replacement_prepare
    sub x15, x29, #1240
    add x14, x15, #80
    ldrb w14, [x14]
    cbnz w14, L76_41
    b L76_40
L76_41:
    add x14, x15, #56
    sub x19, x29, #1016
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #984
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L76_49
L76_40:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x14, x19, #8
    sub x22, x29, #1256
    str x14, [x22]
    adrp x14, _lb_vt_files_TemporaryFile_Writer@PAGE
    add x14, x14, _lb_vt_files_TemporaryFile_Writer@PAGEOFF
    add x24, x22, #8
    str x14, [x24]
    sub x14, x29, #1048
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #1288
    bl _lb_io_9write_all
    sub x22, x29, #1288
    add x14, x22, #24
    ldrb w14, [x14]
    cbnz w14, L76_44
    b L76_43
L76_44:
    sub x23, x29, #1016
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x23, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_files_Replacement_destroy
    mov x10, x23
    sub x11, x29, #984
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L76_49
L76_43:
    mov x0, x19
    mov x1, x23
    movz x2, #1
    mov x3, #0
    sub x8, x29, #1320
    bl _lb_files_Replacement_finish
    sub x15, x29, #1320
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L76_47
    b L76_46
L76_47:
    sub x22, x29, #1016
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_files_Replacement_destroy
    mov x10, x22
    sub x11, x29, #984
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L76_49
L76_46:
    mov x0, x19
    bl _lb_files_Replacement_destroy
    sub x14, x29, #1016
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #984
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L76_49:
    sub x15, x29, #984
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L76_34
    b L76_33
L76_34:
    sub x19, x29, #104
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1296]
    ldr x20, [sp, #1288]
    ldr x21, [sp, #1280]
    ldr x22, [sp, #1272]
    ldr x23, [sp, #1264]
    ldr x24, [sp, #1256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L76_33:
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    sub x14, x29, #104
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1296]
    ldr x20, [sp, #1288]
    ldr x21, [sp, #1280]
    ldr x22, [sp, #1272]
    ldr x23, [sp, #1264]
    ldr x24, [sp, #1256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_13absolute_path
_lb_files_13absolute_path:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #288]
    str x20, [sp, #280]
    str x21, [sp, #272]
    str x22, [sp, #264]
    sub x16, x29, #128
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #144
    sub x14, x29, #128
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #192
    bl _lb_files_9text_path
    sub x15, x29, #192
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L77_2
    b L77_1
L77_2:
    add x14, x15, #16
    sub x19, x29, #112
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L77_3:
L77_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #208
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #256
    bl _lb_files_canonical
    sub x21, x29, #256
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, L77_5
    b L77_4
L77_5:
    add x14, x21, #16
    sub x20, x29, #112
    add x15, x20, #24
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L77_6:
L77_4:
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #312
    bl _lb_interop_9copy_text
    sub x15, x29, #312
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L77_8
    b L77_7
L77_8:
    add x14, x15, #24
    sub x21, x29, #112
    add x22, x21, #24
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #48
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L77_9:
L77_7:
    sub x21, x29, #112
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #48
    mov x9, #0
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L77_10:
    sub x14, x29, #208
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    sub x14, x29, #144
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    adrp x0, l_text_274@PAGE
    add x0, x0, l_text_274@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_9path_kind
_lb_files_9path_kind:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #320]
    str x20, [sp, #312]
    str x21, [sp, #304]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #120
    str w2, [x16]
    sub x19, x29, #136
    sub x14, x29, #104
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #184
    bl _lb_files_9text_path
    sub x15, x29, #184
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L78_2
    b L78_1
L78_2:
    add x14, x15, #16
    sub x19, x29, #88
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L78_3:
L78_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    sub x20, x29, #120
    ldrb w20, [x20]
    mov x0, x14
    mov x1, x20
    sub x8, x29, #344
    bl _lb_files_metadata
    sub x20, x29, #344
    add x14, x20, #152
    ldrb w14, [x14]
    cbnz w14, L78_5
    b L78_4
L78_5:
    add x14, x20, #128
    sub x21, x29, #88
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L78_6:
L78_4:
    ldrb w14, [x20]
    sub x21, x29, #88
    strb w14, [x21]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L78_7:
    sub x14, x29, #136
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    adrp x0, l_text_275@PAGE
    add x0, x0, l_text_275@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_Entries_init
_lb_files_Entries_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #368
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #336]
    str x20, [sp, #328]
    str x21, [sp, #320]
    str x22, [sp, #312]
    str x23, [sp, #304]
    str x24, [sp, #296]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #112
    ldr x19, [x9]
    sub x20, x29, #144
    sub x14, x29, #128
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #192
    bl _lb_files_9text_path
    sub x15, x29, #192
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L79_2
    b L79_1
L79_2:
    add x14, x15, #16
    sub x19, x29, #104
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L79_3:
L79_1:
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x21, [x20]
    sub x10, x29, #304
    str x21, [x10]
    sub x22, x29, #320
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x23, x0
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x21
    sub x8, x29, #368
    bl _lb_files_list
    sub x21, x29, #368
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, L79_8
    b L79_7
L79_8:
    add x14, x21, #16
    sub x24, x29, #288
    add x15, x24, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #240
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    b L79_11
L79_9:
L79_7:
    sub x24, x29, #288
    mov x10, x21
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #240
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    b L79_11
L79_10:
    sub x14, x29, #320
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x0, l_text_281@PAGE
    add x0, x0, l_text_281@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L79_11:
    sub x15, x29, #240
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L79_5
    b L79_4
L79_5:
    add x14, x15, #16
    sub x19, x29, #104
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L79_6:
L79_4:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    sub x14, x29, #104
    add x21, x14, #24
    mov x9, #0
    strb w9, [x21]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_Entries_count
_lb_files_Entries_count:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L80_1:
    adrp x0, l_text_276@PAGE
    add x0, x0, l_text_276@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_Entries_name
_lb_files_Entries_name:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    sub x9, x29, #112
    ldr x19, [x9]
    sub x14, x29, #128
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, lt
    cbnz w15, L81_15
    b L81_4
L81_15:
    mov w20, w15
    b L81_5
L81_4:
    add x15, x19, #8
    ldr x15, [x15]
    cmp x14, x15
    cset w20, hs
L81_5:
    and w15, w20, #255
    cbnz w15, L81_1
    b L81_2
L81_1:
    sub x19, x29, #104
    add x14, x19, #24
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_277@PAGE
    add x15, x15, l_text_277@PAGEOFF
    sub x20, x29, #144
    str x15, [x20]
    add x15, x20, #8
    movz x9, #49
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L81_6:
    b L81_3
L81_2:
L81_3:
    sub x20, x29, #160
    ldr x15, [x19]
    add x21, x19, #8
    ldr x21, [x21]
    cmp x14, x21
    b.lo 1f
    adrp x0, l_text_278@PAGE
    add x0, x0, l_text_278@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x21, x14, #4
    add x15, x15, x21
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ne L81_8
L81_7:
    sub x19, x29, #104
    add x14, x19, #24
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_279@PAGE
    add x15, x15, l_text_279@PAGEOFF
    sub x20, x29, #176
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L81_10:
    b L81_9
L81_8:
L81_9:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #232
    bl _lb_interop_9copy_text
    sub x15, x29, #232
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L81_12
    b L81_11
L81_12:
    add x14, x15, #24
    sub x19, x29, #104
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L81_13:
L81_11:
    sub x19, x29, #104
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L81_14:
    adrp x0, l_text_280@PAGE
    add x0, x0, l_text_280@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_Entries_close
_lb_files_Entries_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    str x22, [sp, #64]
    sub x16, x29, #56
    str x0, [x16]
    sub x9, x29, #56
    ldr x21, [x9]
    sub x19, x29, #72
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x21
    sub x11, x29, #104
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #104
    add x15, x14, #8
    ldr x15, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x15
    bl _lb_files_15release_entries
L82_1:
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #88
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_16ensure_directory
_lb_files_16ensure_directory:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #400
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #368]
    str x20, [sp, #360]
    str x21, [sp, #352]
    str x22, [sp, #344]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #120
    sub x14, x29, #104
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #168
    bl _lb_files_9text_path
    sub x15, x29, #168
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L83_2
    b L83_1
L83_2:
    add x14, x15, #16
    sub x19, x29, #88
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L83_3:
L83_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    mov x0, x14
    movz x1, #493
    sub x8, x29, #224
    bl _lb_files_16create_directory
    sub x20, x29, #224
    add x14, x20, #24
    ldrb w14, [x14]
    cbnz w14, L83_7
    b L83_6
L83_7:
    sub x21, x29, #192
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L83_4
L83_6:
    b L83_5
L83_4:
    ldr w14, [x21]
    adrp x15, _lb_files_14already_exists@PAGE
    add x15, x15, _lb_files_14already_exists@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L83_9
L83_8:
    sub x20, x29, #88
    str w14, [x20]
    add x15, x21, #8
    add x22, x20, #8
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x20, #24
    movz x9, #1
    strb w9, [x15]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L83_11:
    b L83_10
L83_9:
L83_10:
    ldr x14, [x19]
    mov x0, x14
    movz x1, #1
    sub x8, x29, #384
    bl _lb_files_metadata
    sub x15, x29, #384
    add x14, x15, #152
    ldrb w14, [x14]
    cbnz w14, L83_16
    b L83_15
L83_16:
    add x14, x15, #128
    sub x20, x29, #88
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L83_17:
L83_15:
    ldrb w14, [x15]
    movz x10, #2
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L83_13
L83_12:
    sub x20, x29, #88
    adrp x14, _lb_files_13not_directory@PAGE
    add x14, x14, _lb_files_13not_directory@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_282@PAGE
    add x14, x14, l_text_282@PAGEOFF
    sub x15, x29, #400
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L83_18:
    b L83_14
L83_13:
L83_14:
L83_5:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    sub x14, x29, #88
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_14home_directory
_lb_files_14home_directory:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    sub x19, x29, #112
    sub x8, x29, #160
    bl _lb_io_path_user
    sub x15, x29, #160
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L84_2
    b L84_1
L84_2:
    add x14, x15, #16
    sub x19, x29, #96
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L84_3:
L84_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L84_5
L84_4:
    sub x19, x29, #96
    add x14, x19, #24
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_283@PAGE
    add x15, x15, l_text_283@PAGEOFF
    sub x20, x29, #176
    str x15, [x20]
    add x15, x20, #8
    movz x9, #32
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L84_7:
    b L84_6
L84_5:
L84_6:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #232
    bl _lb_interop_9copy_text
    sub x15, x29, #232
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L84_9
    b L84_8
L84_9:
    add x14, x15, #24
    sub x19, x29, #96
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L84_10:
L84_8:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L84_11:
    adrp x0, l_text_284@PAGE
    add x0, x0, l_text_284@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_11create_text
_lb_files_11create_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #432
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #400]
    str x20, [sp, #392]
    str x21, [sp, #384]
    str x22, [sp, #376]
    str x23, [sp, #368]
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #128
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #128
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L85_2
L85_1:
    sub x19, x29, #96
    adrp x14, _lb_files_15invalid_options@PAGE
    add x14, x14, _lb_files_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_272@PAGE
    add x14, x14, l_text_272@PAGEOFF
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #29
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L85_4:
    b L85_3
L85_2:
L85_3:
    sub x20, x29, #160
    sub x14, x29, #112
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #208
    bl _lb_files_9text_path
    sub x15, x29, #208
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L85_6
    b L85_5
L85_6:
    add x14, x15, #16
    sub x19, x29, #96
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L85_7:
L85_5:
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #264
    ldr x14, [x20]
    mov x0, x14
    movz x1, #420
    mov x2, #0
    sub x8, x29, #352
    bl _lb_files_Replacement_prepare
    sub x22, x29, #352
    add x14, x22, #80
    ldrb w14, [x14]
    cbnz w14, L85_9
    b L85_8
L85_9:
    add x14, x22, #56
    sub x19, x29, #96
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L85_10:
L85_8:
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x14, x21, #8
    sub x15, x29, #368
    str x14, [x15]
    adrp x14, _lb_vt_files_TemporaryFile_Writer@PAGE
    add x14, x14, _lb_vt_files_TemporaryFile_Writer@PAGEOFF
    add x23, x15, #8
    str x14, [x23]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #400
    bl _lb_io_9write_all
    sub x15, x29, #400
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L85_12
    b L85_11
L85_12:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L85_13:
L85_11:
    ldr x14, [x20]
    mov x0, x21
    mov x1, x14
    mov x2, #0
    mov x3, #0
    sub x8, x29, #432
    bl _lb_files_Replacement_finish
    sub x15, x29, #432
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L85_15
    b L85_14
L85_15:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L85_16:
L85_14:
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    sub x14, x29, #96
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_9copy_path
_lb_files_9copy_path:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #256]
    str x20, [sp, #248]
    str x21, [sp, #240]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #112
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #128
    sub x14, x29, #96
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #176
    bl _lb_files_9text_path
    sub x15, x29, #176
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L86_2
    b L86_1
L86_2:
    add x14, x15, #16
    sub x19, x29, #80
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L86_3:
L86_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #192
    sub x14, x29, #112
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #240
    bl _lb_files_9text_path
    sub x21, x29, #240
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, L86_5
    b L86_4
L86_5:
    add x14, x21, #16
    sub x20, x29, #80
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L86_6:
L86_4:
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    ldr x15, [x20]
    mov x0, x14
    mov x1, x15
    movn x2, #0
    mov x3, #0
    movz x4, #420
    mov x5, #0
    mov x6, #0
    sub x8, x29, #280
    bl _lb_files_9copy_file
    sub x15, x29, #280
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L86_8
    b L86_7
L86_8:
    add x14, x15, #8
    sub x21, x29, #80
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L86_9:
L86_7:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_9move_path
_lb_files_9move_path:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #272
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #240]
    str x20, [sp, #232]
    str x21, [sp, #224]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #112
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #128
    sub x14, x29, #96
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #176
    bl _lb_files_9text_path
    sub x15, x29, #176
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L87_2
    b L87_1
L87_2:
    add x14, x15, #16
    sub x19, x29, #80
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L87_3:
L87_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #192
    sub x14, x29, #112
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #240
    bl _lb_files_9text_path
    sub x21, x29, #240
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, L87_5
    b L87_4
L87_5:
    add x14, x21, #16
    sub x20, x29, #80
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L87_6:
L87_4:
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    ldr x15, [x20]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    sub x8, x29, #272
    bl _lb_files_rename
    sub x15, x29, #272
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L87_8
    b L87_7
L87_8:
    sub x21, x29, #80
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L87_9:
L87_7:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_14make_directory
_lb_files_14make_directory:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    str x21, [sp, #144]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #112
    sub x14, x29, #96
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #160
    bl _lb_files_9text_path
    sub x15, x29, #160
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L88_2
    b L88_1
L88_2:
    add x14, x15, #16
    sub x19, x29, #80
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88_3:
L88_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    mov x0, x14
    movz x1, #493
    sub x8, x29, #192
    bl _lb_files_16create_directory
    sub x20, x29, #192
    add x14, x20, #24
    ldrb w14, [x14]
    cbnz w14, L88_5
    b L88_4
L88_5:
    sub x21, x29, #80
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88_6:
L88_4:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_11delete_path
_lb_files_11delete_path:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #432
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #400]
    str x20, [sp, #392]
    sub x16, x29, #88
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #104
    str w2, [x16]
    sub x19, x29, #120
    sub x14, x29, #88
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #168
    bl _lb_files_9text_path
    sub x15, x29, #168
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L89_2
    b L89_1
L89_2:
    add x14, x15, #16
    sub x19, x29, #72
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L89_3:
L89_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #104
    ldrb w14, [x14]
    cbnz w14, L89_4
    b L89_5
L89_4:
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #200
    bl _lb_files_11remove_tree
    sub x15, x29, #200
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L89_8
    b L89_7
L89_8:
    sub x20, x29, #72
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L89_9:
L89_7:
    b L89_6
L89_5:
    ldr x14, [x19]
    mov x0, x14
    mov x1, #0
    sub x8, x29, #360
    bl _lb_files_metadata
    sub x15, x29, #360
    add x14, x15, #152
    ldrb w14, [x14]
    cbnz w14, L89_14
    b L89_13
L89_14:
    add x14, x15, #128
    sub x20, x29, #72
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L89_15:
L89_13:
    ldrb w14, [x15]
    movz x10, #2
    cmp w14, w10
    b.ne L89_11
L89_10:
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #392
    bl _lb_files_16remove_directory
    sub x15, x29, #392
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L89_17
    b L89_16
L89_17:
    sub x20, x29, #72
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L89_18:
L89_16:
    b L89_12
L89_11:
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #424
    bl _lb_files_11remove_file
    sub x15, x29, #424
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L89_20
    b L89_19
L89_20:
    sub x20, x29, #72
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L89_21:
L89_19:
L89_12:
L89_6:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    sub x14, x29, #72
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_copy_0g1_u8
    .weak_definition _lb_memory_copy_0g1_u8
_lb_memory_copy_0g1_u8:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #48
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #64
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #80
    str x4, [x16]
    sub x14, x29, #80
    ldr x19, [x14]
    sub x20, x29, #48
    add x14, x20, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w14, hi
    cbnz w14, L90_11
    b L90_4
L90_11:
    mov w15, w14
    b L90_5
L90_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L90_5:
    and w14, w15, #255
    cbnz w14, L90_1
    b L90_2
L90_1:
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_285@PAGE
    add x14, x14, l_text_285@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L90_3
L90_2:
L90_3:
    mov x10, #0
    cmp x19, x10
    b.ls L90_7
L90_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L90_9
    b L90_10
L90_10:
    adrp x0, l_text_286@PAGE
    add x0, x0, l_text_286@PAGEOFF
    adrp x1, l_text_209@PAGE
    add x1, x1, l_text_209@PAGEOFF
    bl _lb_core_7trap_at
L90_9:
    b L90_8
L90_7:
L90_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_copy_0g1_str
    .weak_definition _lb_memory_copy_0g1_str
_lb_memory_copy_0g1_str:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #56
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #72
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #88
    str x4, [x16]
    sub x14, x29, #88
    ldr x19, [x14]
    sub x20, x29, #56
    add x14, x20, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w14, hi
    cbnz w14, L91_11
    b L91_4
L91_11:
    mov w15, w14
    b L91_5
L91_4:
    sub x14, x29, #72
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L91_5:
    and w14, w15, #255
    cbnz w14, L91_1
    b L91_2
L91_1:
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_285@PAGE
    add x14, x14, l_text_285@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L91_3
L91_2:
L91_3:
    mov x10, #0
    cmp x19, x10
    b.ls L91_7
L91_6:
    ldr x14, [x20]
    sub x15, x29, #72
    ldr x15, [x15]
    mov x9, x19
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_286@PAGE
    add x0, x0, l_text_286@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    mov x0, x14
    mov x1, x15
    mov x2, x21
    bl _memcpy
    mov x14, x0
    cbnz x14, L91_9
    b L91_10
L91_10:
    adrp x0, l_text_286@PAGE
    add x0, x0, l_text_286@PAGEOFF
    adrp x1, l_text_209@PAGE
    add x1, x1, l_text_209@PAGEOFF
    bl _lb_core_7trap_at
L91_9:
    b L91_8
L91_7:
L91_8:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_copy_0g1_files_WalkFrame
    .weak_definition _lb_memory_copy_0g1_files_WalkFrame
_lb_memory_copy_0g1_files_WalkFrame:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #56
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #72
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #88
    str x4, [x16]
    sub x14, x29, #88
    ldr x19, [x14]
    sub x20, x29, #56
    add x14, x20, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w14, hi
    cbnz w14, L92_11
    b L92_4
L92_11:
    mov w15, w14
    b L92_5
L92_4:
    sub x14, x29, #72
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L92_5:
    and w14, w15, #255
    cbnz w14, L92_1
    b L92_2
L92_1:
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_285@PAGE
    add x14, x14, l_text_285@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L92_3
L92_2:
L92_3:
    mov x10, #0
    cmp x19, x10
    b.ls L92_7
L92_6:
    ldr x14, [x20]
    sub x15, x29, #72
    ldr x15, [x15]
    mov x9, x19
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_286@PAGE
    add x0, x0, l_text_286@PAGEOFF
    adrp x1, l_text_230@PAGE
    add x1, x1, l_text_230@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    mov x0, x14
    mov x1, x15
    mov x2, x21
    bl _memcpy
    mov x14, x0
    cbnz x14, L92_9
    b L92_10
L92_10:
    adrp x0, l_text_286@PAGE
    add x0, x0, l_text_286@PAGEOFF
    adrp x1, l_text_209@PAGE
    add x1, x1, l_text_209@PAGEOFF
    bl _lb_core_7trap_at
L92_9:
    b L92_8
L92_7:
L92_8:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_files_0init

    .section __TEXT,__const
l_text_0:
    .asciz "Directory entries"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/files/module.lucb:21:5"
l_text_3:
    .asciz "src/std/files/module.lucb:26:5"
l_text_4:
    .asciz "src/std/files/module.lucb:36:5"
l_text_5:
    .asciz "src/std/files/module.lucb:40:5"
l_text_6:
    .asciz "src/std/files/module.lucb:49:5"
l_text_7:
    .asciz "src/std/files/module.lucb:95:17"
l_text_8:
    .asciz "index out of bounds"
l_text_9:
    .asciz "the directory could not be read"
l_text_10:
    .asciz "src/std/files/module.lucb:107:9"
l_text_11:
    .asciz "src/std/files/metadata.lucb:133:5"
l_text_12:
    .asciz "src/std/files/metadata.lucb:136:5"
l_text_13:
    .asciz "src/std/files/metadata.lucb:139:5"
l_text_14:
    .asciz "src/std/files/metadata.lucb:147:5"
l_text_15:
    .asciz "src/std/files/metadata.lucb:154:5"
l_text_16:
    .asciz "file metadata could not be read"
l_text_17:
    .asciz "src/std/files/metadata.lucb:175:17"
l_text_18:
    .asciz "open-file metadata could not be read"
l_text_19:
    .asciz "src/std/files/metadata.lucb:202:17"
l_text_20:
    .asciz "directory-entry metadata could not be read"
l_text_21:
    .asciz "src/std/files/metadata.lucb:231:17"
l_text_22:
    .asciz "the file could not be opened"
l_text_23:
    .asciz "src/std/files/handles.lucb:33:9"
l_text_24:
    .asciz "src/std/files/handles.lucb:38:9"
l_text_25:
    .asciz "the file is closed"
l_text_26:
    .asciz "src/std/files/handles.lucb:43:9"
l_text_27:
    .asciz "a file length cannot be negative"
l_text_28:
    .asciz "the file length could not be changed"
l_text_29:
    .asciz "file permissions must fit the Unix mode bits"
l_text_30:
    .asciz "file permissions could not be changed"
l_text_31:
    .asciz "a timestamp nanosecond fraction must be below one billion"
l_text_32:
    .asciz "src/std/files/handles.lucb:87:9"
l_text_33:
    .asciz "src/std/files/handles.lucb:89:13"
l_text_34:
    .asciz "file timestamps could not be changed"
l_text_35:
    .asciz "the file could not be read"
l_text_36:
    .asciz "src/std/files/handles.lucb:105:9"
l_text_37:
    .asciz "the file could not be written"
l_text_38:
    .asciz "src/std/files/handles.lucb:119:9"
l_text_39:
    .asciz "the file could not be positioned"
l_text_40:
    .asciz "src/std/files/handles.lucb:130:9"
l_text_41:
    .asciz "the file could not be synchronized"
l_text_42:
    .asciz "the file could not be closed"
l_text_43:
    .asciz "src/std/files/handles.lucb:183:5"
l_text_44:
    .asciz "src/std/files/handles.lucb:189:5"
l_text_45:
    .asciz "unknown file opening mode"
l_text_46:
    .asciz "src/std/files/handles.lucb:207:5"
l_text_47:
    .asciz "src/std/files/entries.lucb:8:9"
l_text_48:
    .asciz "the path could not be inspected"
l_text_49:
    .asciz "src/std/files/entries.lucb:30:5"
l_text_50:
    .asciz "directory permissions must fit the Unix mode bits"
l_text_51:
    .asciz "the directory could not be created"
l_text_52:
    .asciz "the file entry could not be removed"
l_text_53:
    .asciz "the directory could not be removed"
l_text_54:
    .asciz "the entry could not be renamed"
l_text_55:
    .asciz "the symbolic link could not be created"
l_text_56:
    .asciz "the hard link could not be created"
l_text_57:
    .asciz "the link target limit overflows"
l_text_58:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_59:
    .asciz "memory.unset"
l_text_60:
    .asciz "src/std/files/entries.lucb:136:5"
l_text_61:
    .asciz "memory.exhausted"
l_text_62:
    .asciz "the symbolic link could not be read"
l_text_63:
    .asciz "src/std/files/entries.lucb:142:9"
l_text_64:
    .asciz "the link target exceeds the requested limit"
l_text_65:
    .asciz "src/std/files/entries.lucb:144:9"
l_text_66:
    .asciz "src/std/files/entries.lucb:146:5"
l_text_67:
    .asciz "src/std/files/entries.lucb:148:5"
l_text_68:
    .asciz "src/std/files/entries.lucb:149:5"
l_text_69:
    .asciz ".luce-00000000000000000000000000000000"
l_text_70:
    .asciz "0123456789abcdef"
l_text_71:
    .asciz "src/std/files/temporary.lucb:18:9"
l_text_72:
    .asciz "temporary filename randomness is unavailable"
l_text_73:
    .asciz "src/std/files/temporary.lucb:25:17"
l_text_74:
    .asciz "shift count out of range"
l_text_75:
    .asciz "src/std/files/temporary.lucb:26:17"
l_text_76:
    .asciz "src/std/files/temporary.lucb:29:21"
l_text_77:
    .asciz "no unused temporary filename was found"
l_text_78:
    .asciz "src/std/files/temporary.lucb:33:9"
l_text_79:
    .asciz "src/std/files/temporary.lucb:37:9"
l_text_80:
    .asciz "src/std/files/temporary.lucb:40:9"
l_text_81:
    .asciz "src/std/files/temporary.lucb:43:9"
l_text_82:
    .asciz "src/std/files/temporary.lucb:46:9"
l_text_83:
    .asciz "the temporary file has no owned pathname"
l_text_84:
    .asciz "a temporary pathname lost its allocator"
l_text_85:
    .asciz "src/std/files/temporary.lucb:66:13"
l_text_86:
    .asciz ""
l_text_87:
    .asciz "src/std/files/temporary.lucb:128:9"
l_text_88:
    .asciz "a directory cannot be copied as file bytes"
l_text_89:
    .asciz "the copy destination already exists"
l_text_90:
    .asciz "source and destination identify the same file"
l_text_91:
    .asciz "the copy destination is a directory"
l_text_92:
    .asciz "src/std/files/copy.lucb:30:9"
l_text_93:
    .asciz "the copy source exceeds the requested limit"
l_text_94:
    .asciz "src/std/files/copy.lucb:34:5"
l_text_95:
    .asciz "src/std/files/copy.lucb:41:5"
l_text_96:
    .asciz "src/std/files/contents.lucb:5:5"
l_text_97:
    .asciz "src/std/files/contents.lucb:19:9"
l_text_98:
    .asciz "src/std/files/contents.lucb:21:9"
l_text_99:
    .asciz "the file exceeds the read limit"
l_text_100:
    .asciz "src/std/files/contents.lucb:26:9"
l_text_101:
    .asciz "src/std/files/contents.lucb:36:17"
l_text_102:
    .asciz "src/std/files/contents.lucb:39:9"
l_text_103:
    .asciz "src/std/files/contents.lucb:40:9"
l_text_104:
    .asciz "src/std/files/contents.lucb:44:5"
l_text_105:
    .asciz "src/std/files/contents.lucb:47:5"
l_text_106:
    .asciz "src/std/files/contents.lucb:60:9"
l_text_107:
    .asciz "src/std/files/directory.lucb:9:9"
l_text_108:
    .asciz "the directory is closed"
l_text_109:
    .asciz "the directory has no usable descriptor"
l_text_110:
    .asciz "src/std/files/directory.lucb:19:9"
l_text_111:
    .asciz "src/std/files/directory.lucb:23:9"
l_text_112:
    .asciz "src/std/files/directory.lucb:29:9"
l_text_113:
    .asciz "src/std/files/directory.lucb:35:9"
l_text_114:
    .asciz "the directory-relative file could not be opened"
l_text_115:
    .asciz "src/std/files/directory.lucb:58:9"
l_text_116:
    .asciz "."
l_text_117:
    .asciz ".."
l_text_118:
    .asciz "src/std/files/directory.lucb:68:17"
l_text_119:
    .asciz "the directory could not be closed"
l_text_120:
    .asciz "the directory could not be opened"
l_text_121:
    .asciz "the directory stream could not be created"
l_text_122:
    .asciz "src/std/files/directory.lucb:102:5"
l_text_123:
    .asciz "src/std/files/directory.lucb:111:5"
l_text_124:
    .asciz "the directory listing is too large"
l_text_125:
    .asciz "src/std/files/directory.lucb:117:13"
l_text_126:
    .asciz "src/std/files/directory.lucb:119:13"
l_text_127:
    .asciz "src/std/files/directory.lucb:121:9"
l_text_128:
    .asciz "src/std/files/directory.lucb:123:9"
l_text_129:
    .asciz "src/std/files/directory.lucb:124:9"
l_text_130:
    .asciz "src/std/files/directory.lucb:125:9"
l_text_131:
    .asciz "src/std/files/directory.lucb:127:5"
l_text_132:
    .asciz "src/std/files/directory.lucb:130:9"
l_text_133:
    .asciz "src/std/files/directory.lucb:133:5"
l_text_134:
    .asciz "src/std/files/directory.lucb:135:5"
l_text_135:
    .asciz "src/std/files/directory.lucb:136:5"
l_text_136:
    .asciz "division by zero"
l_text_137:
    .asciz "src/std/files/directory.lucb:141:5"
l_text_138:
    .asciz "src/std/files/directory.lucb:143:9"
l_text_139:
    .asciz "src/std/files/directory.lucb:147:9"
l_text_140:
    .asciz "src/std/files/directory.lucb:148:9"
l_text_141:
    .asciz "src/std/files/directory.lucb:149:9"
l_text_142:
    .asciz "src/std/files/directory.lucb:150:9"
l_text_143:
    .asciz "src/std/files/directory.lucb:155:5"
l_text_144:
    .asciz "src/std/files/directory.lucb:156:9"
l_text_145:
    .asciz "src/std/files/directory.lucb:157:9"
l_text_146:
    .asciz "src/std/files/directory.lucb:158:13"
l_text_147:
    .asciz "src/std/files/directory.lucb:159:9"
l_text_148:
    .asciz "src/std/files/directory.lucb:161:9"
l_text_149:
    .asciz "src/std/files/directory.lucb:162:9"
l_text_150:
    .asciz "src/std/files/directory.lucb:163:9"
l_text_151:
    .asciz "src/std/files/directory.lucb:174:5"
l_text_152:
    .asciz "src/std/files/directory.lucb:175:9"
l_text_153:
    .asciz "src/std/files/directory.lucb:177:9"
l_text_154:
    .asciz "src/std/files/walk.lucb:30:9"
l_text_155:
    .asciz "src/std/files/walk.lucb:31:9"
l_text_156:
    .asciz "directory traversal exceeded its depth limit"
l_text_157:
    .asciz "src/std/files/walk.lucb:39:9"
l_text_158:
    .asciz "src/std/files/walk.lucb:41:9"
l_text_159:
    .asciz "/"
l_text_160:
    .asciz "directory traversal encountered an ancestor again"
l_text_161:
    .asciz "src/std/files/walk.lucb:50:9"
l_text_162:
    .asciz "a directory changed before traversal could enter it"
l_text_163:
    .asciz "the traversal root changed before it could be opened"
l_text_164:
    .asciz "src/std/files/walk.lucb:82:13"
l_text_165:
    .asciz "src/std/files/walk.lucb:83:13"
l_text_166:
    .asciz "src/std/files/walk.lucb:85:13"
l_text_167:
    .asciz "src/std/files/walk.lucb:88:9"
l_text_168:
    .asciz "src/std/files/walk.lucb:91:9"
l_text_169:
    .asciz "the traversal stack is too large"
l_text_170:
    .asciz "src/std/files/walk.lucb:99:17"
l_text_171:
    .asciz "src/std/files/walk.lucb:101:17"
l_text_172:
    .asciz "src/std/files/walk.lucb:103:9"
l_text_173:
    .asciz "src/std/files/walk.lucb:105:9"
l_text_174:
    .asciz "src/std/files/walk.lucb:108:9"
l_text_175:
    .asciz "src/std/files/walk.lucb:112:9"
l_text_176:
    .asciz "src/std/files/walk.lucb:110:13"
l_text_177:
    .asciz "src/std/files/walk.lucb:114:13"
l_text_178:
    .asciz "src/std/files/walk.lucb:118:13"
l_text_179:
    .asciz "src/std/files/walk.lucb:119:13"
l_text_180:
    .asciz "src/std/files/walk.lucb:122:13"
l_text_181:
    .asciz "src/std/files/windows.lucb:38:5"
l_text_182:
    .asciz "src/std/files/windows.lucb:41:9"
l_text_183:
    .asciz "src/std/files/windows.lucb:48:5"
l_text_184:
    .asciz "src/std/files/windows.lucb:50:5"
l_text_185:
    .asciz "src/std/files/windows.lucb:51:5"
l_text_186:
    .asciz "the entry is not a symbolic link or junction"
l_text_187:
    .asciz "src/std/files/windows.lucb:57:5"
l_text_188:
    .asciz "the symbolic link contains invalid reparse data"
l_text_189:
    .asciz "src/std/files/windows.lucb:61:5"
l_text_190:
    .asciz "src/std/files/windows.lucb:62:5"
l_text_191:
    .asciz "the symbolic link target is invalid UTF-16"
l_text_192:
    .asciz "src/std/files/windows.lucb:67:5"
l_text_193:
    .asciz "src/std/files/windows.lucb:68:5"
l_text_194:
    .asciz "src/std/files/windows.lucb:69:9"
l_text_195:
    .asciz "the symbolic link target could not be encoded"
l_text_196:
    .asciz "src/std/files/windows.lucb:71:5"
l_text_197:
    .asciz "src/std/files/windows.lucb:72:5"
l_text_198:
    .asciz "file attributes could not be read"
l_text_199:
    .asciz "src/std/files/windows.lucb:82:5"
l_text_200:
    .asciz "file attributes could not be changed"
l_text_201:
    .asciz "timestamp is outside the Windows range"
l_text_202:
    .asciz "timestamp predates the Windows epoch"
l_text_203:
    .asciz "src/std/files/windows.lucb:92:5"
l_text_204:
    .asciz "src/std/files/windows.lucb:95:5"
l_text_205:
    .asciz "src/std/files/windows.lucb:150:9"
l_text_206:
    .asciz "src/std/files/windows.lucb:151:13"
l_text_207:
    .asciz "src/std/files/windows.lucb:152:5"
l_text_208:
    .asciz "src/std/files/windows.lucb:163:5"
l_text_209:
    .asciz "null_foreign"
l_text_210:
    .asciz "src/std/files/windows.lucb:171:5"
l_text_211:
    .asciz "src/std/files/windows.lucb:173:9"
l_text_212:
    .asciz "nonblocking Windows file opening requires a disk file"
l_text_213:
    .asciz "src/std/files/windows.lucb:176:9"
l_text_214:
    .asciz "the opened file could not be inspected"
l_text_215:
    .asciz "src/std/files/windows.lucb:182:13"
l_text_216:
    .asciz "a final symbolic link is not allowed"
l_text_217:
    .asciz "src/std/files/windows.lucb:185:13"
l_text_218:
    .asciz "the file descriptor could not be created"
l_text_219:
    .asciz "src/std/files/windows.lucb:190:9"
l_text_220:
    .asciz "the file could not be truncated"
l_text_221:
    .asciz "src/std/files/windows.lucb:194:9"
l_text_222:
    .asciz "src/std/files/windows.lucb:195:5"
l_text_223:
    .asciz "src/std/files/windows.lucb:200:5"
l_text_224:
    .asciz "the file path could not be opened"
l_text_225:
    .asciz "src/std/files/windows.lucb:202:9"
l_text_226:
    .asciz "the path is not an allowed directory"
l_text_227:
    .asciz "src/std/files/windows.lucb:207:13"
l_text_228:
    .asciz "src/std/files/windows.lucb:208:5"
l_text_229:
    .asciz "src/std/files/windows.lucb:211:5"
l_text_230:
    .asciz "integer overflow"
l_text_231:
    .asciz "src/std/files/windows.lucb:212:5"
l_text_232:
    .asciz "src/std/files/windows.lucb:223:5"
l_text_233:
    .asciz "src/std/files/windows.lucb:224:5"
l_text_234:
    .asciz "src/std/files/windows.lucb:232:5"
l_text_235:
    .asciz "the open directory path could not be read"
l_text_236:
    .asciz "src/std/files/windows.lucb:236:9"
l_text_237:
    .asciz "src/std/files/windows.lucb:237:5"
l_text_238:
    .asciz "src/std/files/windows.lucb:239:5"
l_text_239:
    .asciz "the open directory path could not be encoded"
l_text_240:
    .asciz "src/std/files/windows.lucb:241:9"
l_text_241:
    .asciz "src/std/files/windows.lucb:242:5"
l_text_242:
    .asciz "src/std/files/windows.lucb:246:5"
l_text_243:
    .asciz "the directory descriptor could not be created"
l_text_244:
    .asciz "src/std/files/windows.lucb:256:5"
l_text_245:
    .asciz "src/std/files/windows.lucb:259:5"
l_text_246:
    .asciz "the directory could not be enumerated"
l_text_247:
    .asciz "*"
l_text_248:
    .asciz "src/std/files/windows.lucb:275:9"
l_text_249:
    .asciz "src/std/files/windows.lucb:279:17"
l_text_250:
    .asciz "src/std/files/windows.lucb:280:13"
l_text_251:
    .asciz "src/std/files/windows.lucb:281:9"
l_text_252:
    .asciz "src/std/files/windows.lucb:282:5"
l_text_253:
    .asciz "a directory entry could not be encoded as UTF-8"
l_text_254:
    .asciz "src/std/files/windows.lucb:285:5"
l_text_255:
    .asciz "the filesystem path could not be resolved"
l_text_256:
    .asciz "src/std/files/workspace.lucb:33:5"
l_text_257:
    .asciz "src/std/files/workspace.lucb:42:5"
l_text_258:
    .asciz "src/std/files/workspace.lucb:48:13"
l_text_259:
    .asciz "src/std/files/workspace.lucb:49:13"
l_text_260:
    .asciz "src/std/files/workspace.lucb:52:17"
l_text_261:
    .asciz "no unused temporary directory name was found"
l_text_262:
    .asciz "src/std/files/workspace.lucb:56:5"
l_text_263:
    .asciz "src/std/files/workspace.lucb:90:9"
l_text_264:
    .asciz "a temporary directory lost its allocator"
l_text_265:
    .asciz "src/std/files/workspace.lucb:94:13"
l_text_266:
    .asciz "a path must be nonempty UTF-8"
l_text_267:
    .asciz "a path cannot contain NUL"
l_text_268:
    .asciz "src/std/files/text.lucb:12:5"
l_text_269:
    .asciz "the file is not valid UTF-8"
l_text_270:
    .asciz "src/std/files/text.lucb:21:9"
l_text_271:
    .asciz "src/std/files/text.lucb:22:5"
l_text_272:
    .asciz "file text must be valid UTF-8"
l_text_273:
    .asciz "text can only replace a regular file"
l_text_274:
    .asciz "src/std/files/text.lucb:49:5"
l_text_275:
    .asciz "src/std/files/text.lucb:54:5"
l_text_276:
    .asciz "src/std/files/text.lucb:67:9"
l_text_277:
    .asciz "the directory entry index is outside the snapshot"
l_text_278:
    .asciz "src/std/files/text.lucb:72:9"
l_text_279:
    .asciz "the directory entry is not valid UTF-8"
l_text_280:
    .asciz "src/std/files/text.lucb:75:9"
l_text_281:
    .asciz "src/std/files/text.lucb:87:9"
l_text_282:
    .asciz "the existing path is not a directory"
l_text_283:
    .asciz "the user home directory is empty"
l_text_284:
    .asciz "src/std/files/text.lucb:105:5"
l_text_285:
    .asciz "src/std/memory.lucb:326:9"
l_text_286:
    .asciz "src/std/memory.lucb:328:9"

    .section __DATA,__const
    .p2align 3
    .globl _lb_vt_files_File_Reader
    .weak_definition _lb_vt_files_File_Reader
_lb_vt_files_File_Reader:
    .quad _lb_files_File_read
    .globl _lb_vt_files_File_Writer
    .weak_definition _lb_vt_files_File_Writer
_lb_vt_files_File_Writer:
    .quad _lb_files_File_write
    .globl _lb_vt_files_TemporaryFile_Writer
    .weak_definition _lb_vt_files_TemporaryFile_Writer
_lb_vt_files_TemporaryFile_Writer:
    .quad _lb_files_TemporaryFile_write
    .globl _lb_files_10write_only
    .zerofill __DATA,__bss,_lb_files_10write_only,4,2
    .globl _lb_files_create
    .zerofill __DATA,__bss,_lb_files_create,4,2
    .globl _lb_files_truncate
    .zerofill __DATA,__bss,_lb_files_truncate,4,2
    .globl _lb_files_13close_on_exec
    .zerofill __DATA,__bss,_lb_files_13close_on_exec,4,2
    .globl _lb_files_11append_flag
    .zerofill __DATA,__bss,_lb_files_11append_flag,4,2
    .globl _lb_files_14exclusive_flag
    .zerofill __DATA,__bss,_lb_files_14exclusive_flag,4,2
    .globl _lb_files_17would_block_errno
    .zerofill __DATA,__bss,_lb_files_17would_block_errno,4,2
    .globl _lb_files_14transfer_limit
    .zerofill __DATA,__bss,_lb_files_14transfer_limit,8,3
    .globl _lb_files_20current_directory_fd
    .zerofill __DATA,__bss,_lb_files_20current_directory_fd,4,2
    .globl _lb_files_14directory_flag
    .zerofill __DATA,__bss,_lb_files_14directory_flag,4,2
    .globl _lb_files_14no_follow_flag
    .zerofill __DATA,__bss,_lb_files_14no_follow_flag,4,2
    .globl _lb_files_17at_no_follow_flag
    .zerofill __DATA,__bss,_lb_files_17at_no_follow_flag,4,2
    .globl _lb_files_missing
    .zerofill __DATA,__bss,_lb_files_missing,4,2
    .globl _lb_files_17permission_denied
    .zerofill __DATA,__bss,_lb_files_17permission_denied,4,2
    .globl _lb_files_14already_exists
    .zerofill __DATA,__bss,_lb_files_14already_exists,4,2
    .globl _lb_files_8no_space
    .zerofill __DATA,__bss,_lb_files_8no_space,4,2
    .globl _lb_files_11would_block
    .zerofill __DATA,__bss,_lb_files_11would_block,4,2
    .globl _lb_files_15invalid_options
    .zerofill __DATA,__bss,_lb_files_15invalid_options,4,2
    .globl _lb_files_9too_large
    .zerofill __DATA,__bss,_lb_files_9too_large,4,2
    .globl _lb_files_13not_directory
    .zerofill __DATA,__bss,_lb_files_13not_directory,4,2
    .globl _lb_files_12is_directory
    .zerofill __DATA,__bss,_lb_files_12is_directory,4,2
    .globl _lb_files_20read_only_filesystem
    .zerofill __DATA,__bss,_lb_files_20read_only_filesystem,4,2
    .globl _lb_files_9not_empty
    .zerofill __DATA,__bss,_lb_files_9not_empty,4,2
    .globl _lb_files_12cross_device
    .zerofill __DATA,__bss,_lb_files_12cross_device,4,2
    .globl _lb_files_12symlink_loop
    .zerofill __DATA,__bss,_lb_files_12symlink_loop,4,2
    .globl _lb_files_13name_too_long
    .zerofill __DATA,__bss,_lb_files_13name_too_long,4,2
    .globl _lb_files_failed
    .zerofill __DATA,__bss,_lb_files_failed,4,2
    .globl _lb_files_15directory_cycle
    .zerofill __DATA,__bss,_lb_files_15directory_cycle,4,2
    .globl _lb_files_11depth_limit
    .zerofill __DATA,__bss,_lb_files_11depth_limit,4,2
    .globl _lb_files_12entries_type
    .zerofill __DATA,__bss,_lb_files_12entries_type,40,3

