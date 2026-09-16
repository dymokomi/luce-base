    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_process_13command_posix_0init
_lb_process_13command_posix_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_15capture_command
    .no_dead_strip _lb_process_15capture_command
_lb_process_15capture_command:
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
    str x24, [sp, #424]
    str x25, [sp, #416]
    str x26, [sp, #408]
    str x27, [sp, #400]
    str x28, [sp, #392]
    sub x16, x29, #160
    str w0, [x16]
    sub x16, x29, #176
    str x1, [x16]
    sub x16, x29, #192
    str x2, [x16]
    sub x16, x29, #208
    str x3, [x16]
    sub x9, x29, #176
    str x9, [sp, #96]
    ldr x9, [sp, #96]
    ldr x14, [x9]
    ldrsw x14, [x14]
    movz x16, #16
    sub sp, sp, x16
    movz x9, #4
    str x9, [sp, #0]
    mov x0, x14
    movz x1, #4
    bl _fcntl
    movz x16, #16
    add sp, sp, x16
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    cbnz w14, L1_65
    b L1_4
L1_65:
    mov w15, w14
    b L1_5
L1_4:
    sub x14, x29, #192
    ldr x14, [x14]
    ldrsw x14, [x14]
    movz x16, #16
    sub sp, sp, x16
    movz x9, #4
    str x9, [sp, #0]
    mov x0, x14
    movz x1, #4
    bl _fcntl
    movz x16, #16
    add sp, sp, x16
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, lt
L1_5:
    and w14, w15, #255
    cbnz w14, L1_1
    b L1_2
L1_1:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_1@PAGE
    add x15, x15, l_text_1@PAGEOFF
    sub x12, x29, #224
    str x15, [x12]
    add x15, x12, #8
    movz x9, #33
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #160
    ldrsw x20, [x14]
    sub x10, x29, #392
    str w20, [x10]
    mov x9, #0
    mov w10, w20
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    mov x0, x14
    movz x1, #9
    bl _kill
    mov w14, w0
    mov x0, x20
    bl _lb_process_terminate
L1_59:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    ldr x27, [sp, #400]
    ldr x28, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_2:
L1_3:
    sub x9, x29, #208
    str x9, [sp, #88]
    sub x21, x29, #256
    sub x28, x29, #264
    add x22, x28, #4
    add x23, x28, #6
    add x27, x21, #8
    sub x26, x29, #272
    sub x24, x29, #192
    add x9, x26, #4
    str x9, [sp, #72]
    add x9, x26, #6
    str x9, [sp, #64]
    add x9, x21, #6
    str x9, [sp, #56]
    sub x9, x29, #320
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #24
    str x9, [sp, #48]
    add x9, x27, #6
    str x9, [sp, #40]
    sub x9, x29, #352
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #24
    str x9, [sp, #32]
    sub x9, x29, #356
    str x9, [sp, #24]
    sub x9, x29, #160
    str x9, [sp, #16]
L1_7:
L1_8:
    ldr x9, [sp, #88]
    ldr x14, [x9]
    mov x9, x14
    ldarb w9, [x9]
    mov w14, w9
    cbnz w14, L1_10
    b L1_11
L1_10:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    sub x12, x29, #240
    str x15, [x12]
    add x15, x12, #8
    movz x9, #17
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #160
    ldrsw x20, [x14]
    sub x10, x29, #392
    str w20, [x10]
    mov x9, #0
    mov w10, w20
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    mov x0, x14
    movz x1, #9
    bl _kill
    mov w14, w0
    mov x0, x20
    bl _lb_process_terminate
L1_60:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    ldr x27, [sp, #400]
    ldr x28, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_11:
L1_12:
    mov x11, x28
    str xzr, [x11, #0]
    ldr x9, [sp, #96]
    ldr x9, [x9]
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    add x20, x9, #32
    ldrb w14, [x20]
    cbnz w14, L1_14
    b L1_15
L1_14:
    ldr x9, [sp, #80]
    ldrsw x14, [x9]
    b L1_16
L1_15:
    movn x9, #0
    mov w14, w9
L1_16:
    str w14, [x28]
    movz x9, #1
    strh w9, [x22]
    mov x9, #0
    strh w9, [x23]
    mov x10, x28
    mov x11, x21
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x11, x26
    str xzr, [x11, #0]
    ldr x19, [x24]
    add x25, x19, #32
    ldrb w15, [x25]
    cbnz w15, L1_17
    b L1_18
L1_17:
    ldrsw x14, [x19]
    b L1_19
L1_18:
    movn x9, #0
    mov w14, w9
L1_19:
    str w14, [x26]
    movz x9, #1
    ldr x10, [sp, #72]
    strh w9, [x10]
    mov x9, #0
    ldr x10, [sp, #64]
    strh w9, [x10]
    mov x10, x26
    mov x11, x27
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x0, x21
    movz x1, #2
    movz x2, #20
    bl _poll
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ge L1_21
L1_20:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    b.ne L1_24
L1_23:
    b L1_7
L1_24:
L1_25:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_1@PAGE
    add x15, x15, l_text_1@PAGEOFF
    sub x12, x29, #288
    str x15, [x12]
    add x15, x12, #8
    movz x9, #33
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #160
    ldrsw x20, [x14]
    sub x10, x29, #392
    str w20, [x10]
    mov x9, #0
    mov w10, w20
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    mov x0, x14
    movz x1, #9
    bl _kill
    mov w14, w0
    mov x0, x20
    bl _lb_process_terminate
L1_61:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    ldr x27, [sp, #400]
    ldr x28, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_21:
L1_22:
    ldrb w14, [x20]
    cbnz w14, L1_31
    b L1_66
L1_66:
    mov w15, w14
    b L1_32
L1_31:
    ldr x9, [sp, #56]
    ldrsh w14, [x9]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L1_32:
    and w14, w15, #255
    cbnz w14, L1_28
    b L1_29
L1_28:
    ldr x9, [sp, #88]
    ldr x14, [x9]
    ldr x0, [sp, #80]
    mov x1, x14
    sub x8, x29, #320
    bl _lb_process_12pull_command
    ldr x9, [sp, #48]
    ldrb w14, [x9]
    cbnz w14, L1_34
    b L1_33
L1_34:
    sub x19, x29, #144
    add x14, x19, #8
    ldr x10, [sp, #8]
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #160
    ldrsw x20, [x14]
    sub x10, x29, #392
    str w20, [x10]
    mov x9, #0
    mov w10, w20
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    mov x0, x14
    movz x1, #9
    bl _kill
    mov w14, w0
    mov x0, x20
    bl _lb_process_terminate
L1_62:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    ldr x27, [sp, #400]
    ldr x28, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_33:
    b L1_30
L1_29:
L1_30:
    ldrb w14, [x25]
    cbnz w14, L1_39
    b L1_67
L1_67:
    mov w15, w14
    b L1_40
L1_39:
    ldr x9, [sp, #40]
    ldrsh w14, [x9]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L1_40:
    and w14, w15, #255
    cbnz w14, L1_36
    b L1_37
L1_36:
    ldr x9, [sp, #88]
    ldr x14, [x9]
    mov x0, x19
    mov x1, x14
    sub x8, x29, #352
    bl _lb_process_12pull_command
    ldr x9, [sp, #32]
    ldrb w14, [x9]
    cbnz w14, L1_42
    b L1_41
L1_42:
    sub x19, x29, #144
    add x14, x19, #8
    ldr x10, [sp, #0]
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #160
    ldrsw x20, [x14]
    sub x10, x29, #392
    str w20, [x10]
    mov x9, #0
    mov w10, w20
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    mov x0, x14
    movz x1, #9
    bl _kill
    mov w14, w0
    mov x0, x20
    bl _lb_process_terminate
L1_63:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    ldr x27, [sp, #400]
    ldr x28, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_41:
    b L1_38
L1_37:
L1_38:
    ldrb w14, [x20]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L1_47
    b L1_68
L1_68:
    mov w15, w14
    b L1_48
L1_47:
    ldrb w14, [x25]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L1_48:
    and w14, w15, #255
    cbnz w14, L1_44
    b L1_45
L1_44:
    mov x9, #0
    ldr x10, [sp, #24]
    str w9, [x10]
    ldr x9, [sp, #16]
    ldrsw x19, [x9]
    mov x0, x19
    ldr x1, [sp, #24]
    movz x2, #1
    bl _waitpid
    mov w14, w0
    cmp w19, w14
    b.ne L1_50
L1_49:
    ldr x9, [sp, #24]
    ldrsw x14, [x9]
    sub x15, x29, #144
    str w14, [x15]
    add x14, x15, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    ldr x27, [sp, #400]
    ldr x28, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_50:
L1_51:
    mov x10, #0
    cmp w14, w10
    cset w15, lt
    cbnz w15, L1_56
    b L1_69
L1_69:
    mov w14, w15
    b L1_57
L1_56:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L1_57:
    and w15, w14, #255
    cbnz w15, L1_53
    b L1_54
L1_53:
    sub x20, x29, #144
    add x14, x20, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    sub x12, x29, #376
    str x15, [x12]
    add x15, x12, #8
    movz x9, #33
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    sub x10, x29, #392
    str w19, [x10]
    mov x9, #0
    mov w10, w19
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    mov x0, x14
    movz x1, #9
    bl _kill
    mov w14, w0
    mov x0, x19
    bl _lb_process_terminate
L1_64:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    ldr x27, [sp, #400]
    ldr x28, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_54:
L1_55:
    b L1_46
L1_45:
L1_46:
    b L1_7

    .p2align 2
    .globl _lb_process_12pull_command
_lb_process_12pull_command:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #4272
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #4240]
    str x20, [sp, #4232]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str x1, [x16]
    movz x16, #4200
    sub x19, x29, x16
    mov x0, x19
    mov x1, #0
    movz x2, #4096
    bl _memset
    sub x14, x29, #88
    ldr x20, [x14]
    ldrsw x14, [x20]
    mov x0, x14
    mov x1, x19
    movz x2, #4096
    bl _read
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    b.ne L2_2
L2_1:
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    b L2_3
L2_2:
    mov x10, #0
    cmp x14, x10
    b.le L2_5
L2_4:
    sub x15, x29, #104
    ldr x15, [x15]
    movz x10, #4097
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls L2_7
L2_8:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L2_7:
    movz x16, #4216
    sub x12, x29, x16
    str x19, [x12]
    add x13, x12, #8
    str x14, [x13]
    mov x0, x15
    mov x9, x12
    ldr x1, [x9]
    ldr x2, [x9, #8]
    movz x16, #4248
    sub x8, x29, x16
    bl _lb_process_14command_append
    movz x16, #4248
    sub x13, x29, x16
    add x12, x13, #24
    ldrb w12, [x12]
    cbnz w12, L2_10
    b L2_9
L2_10:
    sub x19, x29, #72
    mov x10, x13
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #4240]
    ldr x20, [sp, #4232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_11:
L2_9:
    b L2_6
L2_5:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L2_15
    b L2_18
L2_18:
    mov w15, w14
    b L2_16
L2_15:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #35
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L2_16:
    and w14, w15, #255
    cbnz w14, L2_12
    b L2_13
L2_12:
    sub x19, x29, #72
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    movz x16, #4264
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #4240]
    ldr x20, [sp, #4232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_17:
    b L2_14
L2_13:
L2_14:
L2_6:
L2_3:
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
    ldr x19, [sp, #4240]
    ldr x20, [sp, #4232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_process_13command_posix_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/process/command/posix.lucb:7:5"
l_text_1:
    .asciz "the command output cannot be read"
l_text_2:
    .asciz "command cancelled"
l_text_3:
    .asciz "src/std/process/command/posix.lucb:18:9"
l_text_4:
    .asciz "src/std/process/command/posix.lucb:19:9"
l_text_5:
    .asciz "src/std/process/command/posix.lucb:24:9"
l_text_6:
    .asciz "src/std/process/command/posix.lucb:26:9"
l_text_7:
    .asciz "the command status cannot be read"
l_text_8:
    .asciz "unreachable"
l_text_9:
    .asciz "src/std/process/command/posix.lucb:36:17"
l_text_10:
    .asciz "src/std/process/command/posix.lucb:40:5"
l_text_11:
    .asciz "src/std/process/command/posix.lucb:44:9"
l_text_12:
    .asciz "index out of bounds"
l_text_13:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
