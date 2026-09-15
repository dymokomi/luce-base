    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_process_15command_windows_0init
_lb_process_15command_windows_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_15monitor_windows
    .no_dead_strip _lb_process_15monitor_windows
_lb_process_15monitor_windows:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #480
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #448]
    str x20, [sp, #440]
    str x21, [sp, #432]
    str x22, [sp, #424]
    str x23, [sp, #416]
    str x24, [sp, #408]
    str x25, [sp, #400]
    str x26, [sp, #392]
    str x27, [sp, #384]
    str x28, [sp, #376]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    sub x16, x29, #184
    str x2, [x16]
    sub x16, x29, #200
    str x3, [x16]
    sub x16, x29, #216
    str x4, [x16]
    mov x0, #0
    mov x1, #0
    bl _CreateJobObjectW
    mov x19, x0
    cbnz x19, L1_1
    b L1_2
L1_1:
    b L1_3
L1_2:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #232
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
    sub x14, x29, #152
    ldr x14, [x14]
    mov x0, x14
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
    sub x9, x29, #152
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    ldr x21, [x9]
    mov x0, x19
    mov x1, x21
    bl _AssignProcessToJobObject
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L1_40
    b L1_8
L1_40:
    mov w15, w14
    b L1_9
L1_8:
    sub x14, x29, #168
    ldr x14, [x14]
    mov x0, x14
    bl _ResumeThread
    mov w14, w0
    movz x10, #65535
    movk x10, #65535, lsl #16
    cmp w14, w10
    cset w15, eq
L1_9:
    and w14, w15, #255
    cbnz w14, L1_5
    b L1_6
L1_5:
    sub x20, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    sub x15, x29, #248
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x21
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
L1_7:
    sub x14, x29, #184
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #288
    bl _lb_process_14command_reader
    sub x15, x29, #288
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_12
    b L1_11
L1_12:
    add x14, x15, #8
    sub x20, x29, #136
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x21
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_11:
    ldr x22, [x15]
    sub x14, x29, #200
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #328
    bl _lb_process_14command_reader
    sub x23, x29, #328
    add x14, x23, #32
    ldrb w14, [x14]
    cbnz w14, L1_15
    b L1_14
L1_15:
    add x14, x23, #8
    sub x20, x29, #136
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x21
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_14:
    ldr x21, [x23]
    sub x24, x29, #336
    mov x9, #0
    str x9, [x24]
    sub x9, x29, #344
    str x9, [sp, #24]
    mov x9, #0
    ldr x10, [sp, #24]
    str x9, [x10]
    sub x26, x29, #216
    sub x28, x29, #408
    add x27, x28, #24
    sub x9, x29, #440
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #24
    str x9, [sp, #16]
L1_17:
L1_18:
    ldr x14, [x26]
    mov x9, x14
    ldarb w9, [x9]
    mov w14, w9
    cbnz w14, L1_20
    b L1_21
L1_20:
    sub x23, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x23]
    adrp x14, l_text_2@PAGE
    add x14, x14, l_text_2@PAGEOFF
    sub x15, x29, #360
    str x14, [x15]
    add x14, x15, #8
    movz x9, #17
    str x9, [x14]
    add x14, x23, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    mov x0, x14
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x23
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_21:
L1_22:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    movz x1, #20
    bl _WaitForSingleObject
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w25, eq
    mov x10, #0
    cmp w25, w10
    cset w15, eq
    cbnz w15, L1_27
    b L1_41
L1_41:
    mov w14, w15
    b L1_28
L1_27:
    movz x10, #258
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L1_28:
    and w15, w14, #255
    cbnz w15, L1_24
    b L1_25
L1_24:
    sub x20, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    sub x15, x29, #376
    str x14, [x15]
    add x14, x15, #8
    movz x9, #30
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x23
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_25:
L1_26:
    ldr x20, [x26]
    mov x0, x22
    mov x1, x24
    mov x2, x20
    sub x8, x29, #408
    bl _lb_process_12pull_windows
    ldrb w14, [x27]
    cbnz w14, L1_31
    b L1_30
L1_31:
    sub x20, x29, #136
    mov x10, x28
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x23
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_30:
    mov x0, x21
    ldr x1, [sp, #24]
    mov x2, x20
    sub x8, x29, #440
    bl _lb_process_12pull_windows
    ldr x9, [sp, #16]
    ldrb w14, [x9]
    cbnz w14, L1_34
    b L1_33
L1_34:
    sub x20, x29, #136
    ldr x10, [sp, #8]
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x0, x23
    movz x1, #1
    bl _TerminateProcess
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_33:
    cbnz w25, L1_36
    b L1_37
L1_36:
    sub x20, x29, #136
    add x14, x20, #24
    mov x9, #0
    strb w9, [x14]
    mov x0, x21
    bl _CloseHandle
    mov w14, w0
    mov x0, x22
    bl _CloseHandle
    mov w14, w0
    mov x0, x19
    movz x1, #1
    bl _TerminateJobObject
    mov w14, w0
    mov x0, x19
    bl _CloseHandle
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #448]
    ldr x20, [sp, #440]
    ldr x21, [sp, #432]
    ldr x22, [sp, #424]
    ldr x23, [sp, #416]
    ldr x24, [sp, #408]
    ldr x25, [sp, #400]
    ldr x26, [sp, #392]
    ldr x27, [sp, #384]
    ldr x28, [sp, #376]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_37:
L1_38:
    b L1_17

    .p2align 2
    .globl _lb_process_12pull_windows
_lb_process_12pull_windows:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #4448
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #4416]
    str x20, [sp, #4408]
    str x21, [sp, #4400]
    str x22, [sp, #4392]
    str x23, [sp, #4384]
    str x24, [sp, #4376]
    str x25, [sp, #4368]
    str x26, [sp, #4360]
    str x27, [sp, #4352]
    str x28, [sp, #4344]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    sub x16, x29, #184
    str x2, [x16]
    sub x19, x29, #192
    mov x9, #0
    str x9, [x19]
    sub x20, x29, #152
    ldr x14, [x20]
    mov x0, x14
    mov x1, x19
    bl _GetFileSizeEx
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L2_33
    b L2_4
L2_33:
    mov w15, w14
    b L2_5
L2_4:
    ldr x14, [x19]
    sub x15, x29, #168
    ldr x15, [x15]
    ldr x15, [x15]
    cmp x14, x15
    cset w15, lt
L2_5:
    and w14, w15, #255
    cbnz w14, L2_1
    b L2_2
L2_1:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #208
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
    ldr x19, [sp, #4416]
    ldr x20, [sp, #4408]
    ldr x21, [sp, #4400]
    ldr x22, [sp, #4392]
    ldr x23, [sp, #4384]
    ldr x24, [sp, #4376]
    ldr x25, [sp, #4368]
    ldr x26, [sp, #4360]
    ldr x27, [sp, #4352]
    ldr x28, [sp, #4344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
    b L2_3
L2_2:
L2_3:
    ldr x14, [x19]
    sub x21, x29, #168
    ldr x22, [x21]
    ldr x15, [x22]
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.vc 1f
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_21@PAGE
    add x1, x1, l_text_21@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    sub x23, x29, #184
    ldr x24, [x23]
    add x15, x24, #48
    ldr x15, [x15]
    cmp x14, x15
    b.ls L2_8
L2_7:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    sub x15, x29, #224
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
    ldr x19, [sp, #4416]
    ldr x20, [sp, #4408]
    ldr x21, [sp, #4400]
    ldr x22, [sp, #4392]
    ldr x23, [sp, #4384]
    ldr x24, [sp, #4376]
    ldr x25, [sp, #4368]
    ldr x26, [sp, #4360]
    ldr x27, [sp, #4352]
    ldr x28, [sp, #4344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_10:
    b L2_9
L2_8:
L2_9:
    movz x16, #4320
    sub x25, x29, x16
    mov x0, x25
    mov x1, #0
    movz x2, #4096
    bl _memset
    movz x16, #4356
    sub x26, x29, x16
    movz x16, #4392
    sub x27, x29, x16
    add x9, x27, #8
    str x9, [sp, #16]
    movz x16, #4424
    sub x28, x29, x16
    add x9, x28, #24
    str x9, [sp, #8]
    mov x14, x22
    mov x15, x24
L2_11:
    ldr x22, [x14]
    ldr x24, [x19]
    cmp x22, x24
    b.ge L2_13
L2_12:
    mov x9, x15
    ldarb w9, [x9]
    mov w14, w9
    cbnz w14, L2_14
    b L2_15
L2_14:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_2@PAGE
    add x14, x14, l_text_2@PAGEOFF
    movz x16, #4336
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #17
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
    ldr x19, [sp, #4416]
    ldr x20, [sp, #4408]
    ldr x21, [sp, #4400]
    ldr x22, [sp, #4392]
    ldr x23, [sp, #4384]
    ldr x24, [sp, #4376]
    ldr x25, [sp, #4368]
    ldr x26, [sp, #4360]
    ldr x27, [sp, #4352]
    ldr x28, [sp, #4344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_17:
    b L2_16
L2_15:
L2_16:
    ldr x22, [x20]
    ldr x24, [x21]
    ldr x14, [x24]
    mov x0, x22
    mov x1, x14
    mov x2, #0
    mov x3, #0
    bl _SetFilePointerEx
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L2_19
L2_18:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_7@PAGE
    add x14, x14, l_text_7@PAGEOFF
    movz x16, #4352
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
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
    ldr x19, [sp, #4416]
    ldr x20, [sp, #4408]
    ldr x21, [sp, #4400]
    ldr x22, [sp, #4392]
    ldr x23, [sp, #4384]
    ldr x24, [sp, #4376]
    ldr x25, [sp, #4368]
    ldr x26, [sp, #4360]
    ldr x27, [sp, #4352]
    ldr x28, [sp, #4344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_21:
    b L2_20
L2_19:
L2_20:
    mov x9, #0
    str w9, [x26]
    ldr x14, [x19]
    ldr x15, [x24]
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.vc 1f
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_21@PAGE
    add x1, x1, l_text_21@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x0, #4096
    mov x1, x14
    bl _lb_process_13math_min_size
    mov x14, x0
    mov x0, x22
    mov x1, x25
    mov x2, x14
    mov x3, x26
    mov x4, #0
    bl _ReadFile
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L2_34
    b L2_25
L2_34:
    mov w15, w14
    b L2_26
L2_25:
    ldr w14, [x26]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L2_26:
    and w14, w15, #255
    cbnz w14, L2_22
    b L2_23
L2_22:
    sub x19, x29, #136
    adrp x14, _lb_process_failed@PAGE
    add x14, x14, _lb_process_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    movz x16, #4376
    sub x15, x29, x16
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
    ldr x19, [sp, #4416]
    ldr x20, [sp, #4408]
    ldr x21, [sp, #4400]
    ldr x22, [sp, #4392]
    ldr x23, [sp, #4384]
    ldr x24, [sp, #4376]
    ldr x25, [sp, #4368]
    ldr x26, [sp, #4360]
    ldr x27, [sp, #4352]
    ldr x28, [sp, #4344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_27:
    b L2_24
L2_23:
L2_24:
    ldr x22, [x23]
    ldr w14, [x26]
    mov w15, w14
    movz x10, #4097
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x15
    b.ls L2_28
L2_29:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L2_28:
    str x25, [x27]
    ldr x10, [sp, #16]
    str x15, [x10]
    mov x0, x22
    mov x9, x27
    ldr x1, [x9]
    ldr x2, [x9, #8]
    movz x16, #4424
    sub x8, x29, x16
    bl _lb_process_14command_append
    ldr x9, [sp, #8]
    ldrb w14, [x9]
    cbnz w14, L2_31
    b L2_30
L2_31:
    sub x19, x29, #136
    mov x10, x28
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
    ldr x19, [sp, #4416]
    ldr x20, [sp, #4408]
    ldr x21, [sp, #4400]
    ldr x22, [sp, #4392]
    ldr x23, [sp, #4384]
    ldr x24, [sp, #4376]
    ldr x25, [sp, #4368]
    ldr x26, [sp, #4360]
    ldr x27, [sp, #4352]
    ldr x28, [sp, #4344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_32:
L2_30:
    ldr x14, [x24]
    ldr w15, [x26]
    mov w15, w15
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.vc 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_21@PAGE
    add x1, x1, l_text_21@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x24]
    mov x14, x24
    mov x15, x22
    b L2_11
L2_13:
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
    ldr x19, [sp, #4416]
    ldr x20, [sp, #4408]
    ldr x21, [sp, #4400]
    ldr x22, [sp, #4392]
    ldr x23, [sp, #4384]
    ldr x24, [sp, #4376]
    ldr x25, [sp, #4368]
    ldr x26, [sp, #4360]
    ldr x27, [sp, #4352]
    ldr x28, [sp, #4344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_process_14command_reader
_lb_process_14command_reader:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #128
    movk x16, #1, lsl #16
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    sub x16, x29, #32
    str x19, [x16]
    sub x16, x29, #40
    str x20, [x16]
    sub x16, x29, #96
    str x0, [x16]
    movz x16, #96
    movk x16, #1, lsl #16
    sub x19, x29, x16
    mov x0, x19
    mov x1, #0
    movz x2, #1, lsl #16
    bl _memset
    sub x14, x29, #96
    ldr x14, [x14]
    mov x0, x14
    bl __fileno
    mov w14, w0
    mov x0, x14
    bl __get_osfhandle
    mov x14, x0
    mov x0, x14
    mov x1, x19
    movz x2, #32768
    mov x3, #0
    bl _GetFinalPathNameByHandleW
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, L3_14
    b L3_4
L3_14:
    mov w14, w15
    b L3_5
L3_4:
    movz x10, #32768
    cmp w14, w10
    cset w15, hs
    mov w14, w15
L3_5:
    and w15, w14, #255
    cbnz w15, L3_1
    b L3_2
L3_1:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_15@PAGE
    add x15, x15, l_text_15@PAGEOFF
    movz x16, #112
    movk x16, #1, lsl #16
    sub x20, x29, x16
    str x15, [x20]
    add x15, x20, #8
    movz x9, #39
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
    sub x16, x29, #32
    ldr x19, [x16]
    sub x16, x29, #40
    ldr x20, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_6:
    b L3_3
L3_2:
L3_3:
    mov x0, x19
    movz x1, #32768, lsl #16
    movz x2, #7
    mov x3, #0
    movz x4, #3
    movz x5, #128
    mov x6, #0
    bl _CreateFileW
    mov x14, x0
    cbnz x14, L3_7
    b L3_8
L3_8:
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
L3_7:
    movn x10, #0
    cmp x14, x10
    b.ne L3_10
L3_9:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_process_failed@PAGE
    add x15, x15, _lb_process_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_18@PAGE
    add x15, x15, l_text_18@PAGEOFF
    movz x16, #128
    movk x16, #1, lsl #16
    sub x20, x29, x16
    str x15, [x20]
    add x15, x20, #8
    movz x9, #46
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
    sub x16, x29, #32
    ldr x19, [x16]
    sub x16, x29, #40
    ldr x20, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_12:
    b L3_11
L3_10:
L3_11:
    sub x15, x29, #80
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    sub x16, x29, #32
    ldr x19, [x16]
    sub x16, x29, #40
    ldr x20, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_13:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_process_15command_windows_0init

    .section __TEXT,__const
l_text_0:
    .asciz "a command job could not be created"
l_text_1:
    .asciz "the command could not enter its process job"
l_text_2:
    .asciz "command cancelled"
l_text_3:
    .asciz "waiting for the command failed"
l_text_4:
    .asciz "the command output cannot be measured"
l_text_5:
    .asciz "src/std/process/command/windows.lucb:40:5"
l_text_6:
    .asciz "the command exceeded its output limit"
l_text_7:
    .asciz "the command output cannot be positioned"
l_text_8:
    .asciz "src/std/process/command/windows.lucb:49:9"
l_text_9:
    .asciz "src/std/process/command/windows.lucb:50:9"
l_text_10:
    .asciz "the command output cannot be read"
l_text_11:
    .asciz "src/std/process/command/windows.lucb:52:9"
l_text_12:
    .asciz "index out of bounds"
l_text_13:
    .asciz "src/std/process/command/windows.lucb:53:9"
l_text_14:
    .asciz "src/std/process/command/windows.lucb:62:5"
l_text_15:
    .asciz "the command capture path is unavailable"
l_text_16:
    .asciz "src/std/process/command/windows.lucb:65:5"
l_text_17:
    .asciz "null_foreign"
l_text_18:
    .asciz "the command capture reader could not be opened"
l_text_19:
    .asciz "unreachable"
l_text_20:
    .asciz "src/std/process/command/windows.lucb:68:5"
l_text_21:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
