    .text

    .p2align 2
    .globl lb_core_0init
    .type lb_core_0init, %function
lb_core_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_0init, .-lb_core_0init

    .p2align 2
    .globl lb_core_17on_initial_thread
    .type lb_core_17on_initial_thread, %function
lb_core_17on_initial_thread:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov x9, #0
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

    .size lb_core_17on_initial_thread, .-lb_core_17on_initial_thread

    .p2align 2
    .globl lb_core_13process_start
    .type lb_core_13process_start, %function
lb_core_13process_start:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_13process_start, .-lb_core_13process_start

    .p2align 2
    .globl lb_core_trap
    .type lb_core_trap, %function
lb_core_trap:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #64
    adrp x19, .Ltext_3
    add x19, x19, :lo12:.Ltext_3
    sub x15, x29, #80
    str x19, [x15]
    add x20, x15, #8
    movz x9, #6
    str x9, [x20]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #2
    sub x10, x29, #128
    str w9, [x10]
    sub x10, x29, #144
    str x19, [x10]
    movz x9, #6
    sub x10, x29, #160
    str x9, [x10]
    movz x0, #2
    mov x1, x19
    movz x2, #6
    bl write
    mov x14, x0
    b .L3_2
.L3_1:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L3_2:
    sub x14, x29, #48
    ldr x19, [x14]
    mov x0, x19
    bl strlen
    mov x14, x0
    movz x9, #2
    sub x10, x29, #128
    str w9, [x10]
    sub x10, x29, #144
    str x19, [x10]
    sub x10, x29, #160
    str x14, [x10]
    movz x0, #2
    mov x1, x19
    mov x2, x14
    bl write
    mov x14, x0
    b .L3_4
.L3_3:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L3_4:
    sub x14, x29, #96
    adrp x19, .Ltext_4
    add x19, x19, :lo12:.Ltext_4
    sub x15, x29, #112
    str x19, [x15]
    add x20, x15, #8
    movz x9, #1
    str x9, [x20]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #2
    sub x10, x29, #128
    str w9, [x10]
    sub x10, x29, #144
    str x19, [x10]
    movz x9, #1
    sub x10, x29, #160
    str x9, [x10]
    movz x0, #2
    mov x1, x19
    movz x2, #1
    bl write
    mov x14, x0
    b .L3_6
.L3_5:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L3_6:
    movz x0, #1
    bl exit
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_trap, .-lb_core_trap

    .p2align 2
    .globl lb_core_7trap_at
    .type lb_core_7trap_at, %function
lb_core_7trap_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    str x19, [sp, #184]
    str x20, [sp, #176]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x14, x29, #80
    adrp x19, .Ltext_3
    add x19, x19, :lo12:.Ltext_3
    sub x15, x29, #96
    str x19, [x15]
    add x20, x15, #8
    movz x9, #6
    str x9, [x20]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #2
    sub x10, x29, #176
    str w9, [x10]
    sub x10, x29, #192
    str x19, [x10]
    movz x9, #6
    sub x10, x29, #208
    str x9, [x10]
    movz x0, #2
    mov x1, x19
    movz x2, #6
    bl write
    mov x14, x0
    b .L4_2
.L4_1:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L4_2:
    sub x14, x29, #48
    ldr x19, [x14]
    mov x0, x19
    bl strlen
    mov x14, x0
    movz x9, #2
    sub x10, x29, #176
    str w9, [x10]
    sub x10, x29, #192
    str x19, [x10]
    sub x10, x29, #208
    str x14, [x10]
    movz x0, #2
    mov x1, x19
    mov x2, x14
    bl write
    mov x14, x0
    b .L4_4
.L4_3:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L4_4:
    sub x14, x29, #112
    adrp x19, .Ltext_5
    add x19, x19, :lo12:.Ltext_5
    sub x15, x29, #128
    str x19, [x15]
    add x20, x15, #8
    movz x9, #2
    str x9, [x20]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #2
    sub x10, x29, #176
    str w9, [x10]
    sub x10, x29, #192
    str x19, [x10]
    movz x9, #2
    sub x10, x29, #208
    str x9, [x10]
    movz x0, #2
    mov x1, x19
    movz x2, #2
    bl write
    mov x14, x0
    b .L4_6
.L4_5:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L4_6:
    sub x14, x29, #64
    ldr x19, [x14]
    mov x0, x19
    bl strlen
    mov x14, x0
    movz x9, #2
    sub x10, x29, #176
    str w9, [x10]
    sub x10, x29, #192
    str x19, [x10]
    sub x10, x29, #208
    str x14, [x10]
    movz x0, #2
    mov x1, x19
    mov x2, x14
    bl write
    mov x14, x0
    b .L4_8
.L4_7:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L4_8:
    sub x14, x29, #144
    adrp x19, .Ltext_4
    add x19, x19, :lo12:.Ltext_4
    sub x15, x29, #160
    str x19, [x15]
    add x20, x15, #8
    movz x9, #1
    str x9, [x20]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #2
    sub x10, x29, #176
    str w9, [x10]
    sub x10, x29, #192
    str x19, [x10]
    movz x9, #1
    sub x10, x29, #208
    str x9, [x10]
    movz x0, #2
    mov x1, x19
    movz x2, #1
    bl write
    mov x14, x0
    b .L4_10
.L4_9:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L4_10:
    movz x0, #1
    bl exit
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_7trap_at, .-lb_core_7trap_at

    .p2align 2
    .globl lb_core_11trap_two_at
    .type lb_core_11trap_two_at, %function
lb_core_11trap_two_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    str x19, [sp, #200]
    str x20, [sp, #192]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x16, x29, #80
    str x2, [x16]
    sub x14, x29, #96
    adrp x19, .Ltext_3
    add x19, x19, :lo12:.Ltext_3
    sub x15, x29, #112
    str x19, [x15]
    add x20, x15, #8
    movz x9, #6
    str x9, [x20]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #2
    sub x10, x29, #192
    str w9, [x10]
    sub x10, x29, #208
    str x19, [x10]
    movz x9, #6
    sub x10, x29, #224
    str x9, [x10]
    movz x0, #2
    mov x1, x19
    movz x2, #6
    bl write
    mov x14, x0
    b .L5_2
.L5_1:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L5_2:
    sub x14, x29, #48
    ldr x19, [x14]
    mov x0, x19
    bl strlen
    mov x14, x0
    movz x9, #2
    sub x10, x29, #192
    str w9, [x10]
    sub x10, x29, #208
    str x19, [x10]
    sub x10, x29, #224
    str x14, [x10]
    movz x0, #2
    mov x1, x19
    mov x2, x14
    bl write
    mov x14, x0
    b .L5_4
.L5_3:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L5_4:
    sub x14, x29, #128
    adrp x19, .Ltext_5
    add x19, x19, :lo12:.Ltext_5
    sub x15, x29, #144
    str x19, [x15]
    add x20, x15, #8
    movz x9, #2
    str x9, [x20]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #2
    sub x10, x29, #192
    str w9, [x10]
    sub x10, x29, #208
    str x19, [x10]
    movz x9, #2
    sub x10, x29, #224
    str x9, [x10]
    movz x0, #2
    mov x1, x19
    movz x2, #2
    bl write
    mov x14, x0
    b .L5_6
.L5_5:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L5_6:
    sub x14, x29, #64
    ldr x20, [x14]
    mov x0, x20
    bl strlen
    mov x14, x0
    movz x9, #2
    sub x10, x29, #192
    str w9, [x10]
    sub x10, x29, #208
    str x20, [x10]
    sub x10, x29, #224
    str x14, [x10]
    movz x0, #2
    mov x1, x20
    mov x2, x14
    bl write
    mov x14, x0
    b .L5_8
.L5_7:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L5_8:
    movz x9, #2
    sub x10, x29, #192
    str w9, [x10]
    sub x10, x29, #208
    str x19, [x10]
    movz x9, #2
    sub x10, x29, #224
    str x9, [x10]
    movz x0, #2
    mov x1, x19
    movz x2, #2
    bl write
    mov x14, x0
    b .L5_10
.L5_9:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L5_10:
    sub x14, x29, #80
    ldr x19, [x14]
    mov x0, x19
    bl strlen
    mov x14, x0
    movz x9, #2
    sub x10, x29, #192
    str w9, [x10]
    sub x10, x29, #208
    str x19, [x10]
    sub x10, x29, #224
    str x14, [x10]
    movz x0, #2
    mov x1, x19
    mov x2, x14
    bl write
    mov x14, x0
    b .L5_12
.L5_11:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L5_12:
    sub x14, x29, #160
    adrp x19, .Ltext_4
    add x19, x19, :lo12:.Ltext_4
    sub x15, x29, #176
    str x19, [x15]
    add x20, x15, #8
    movz x9, #1
    str x9, [x20]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #2
    sub x10, x29, #192
    str w9, [x10]
    sub x10, x29, #208
    str x19, [x10]
    movz x9, #1
    sub x10, x29, #224
    str x9, [x10]
    movz x0, #2
    mov x1, x19
    movz x2, #1
    bl write
    mov x14, x0
    b .L5_14
.L5_13:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L5_14:
    movz x0, #1
    bl exit
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_11trap_two_at, .-lb_core_11trap_two_at

    .p2align 2
    .globl lb_core_8trap_two
    .type lb_core_8trap_two, %function
lb_core_8trap_two:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    str x19, [sp, #184]
    str x20, [sp, #176]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x14, x29, #80
    adrp x19, .Ltext_3
    add x19, x19, :lo12:.Ltext_3
    sub x15, x29, #96
    str x19, [x15]
    add x20, x15, #8
    movz x9, #6
    str x9, [x20]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #2
    sub x10, x29, #176
    str w9, [x10]
    sub x10, x29, #192
    str x19, [x10]
    movz x9, #6
    sub x10, x29, #208
    str x9, [x10]
    movz x0, #2
    mov x1, x19
    movz x2, #6
    bl write
    mov x14, x0
    b .L6_2
.L6_1:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L6_2:
    sub x14, x29, #48
    ldr x19, [x14]
    mov x0, x19
    bl strlen
    mov x14, x0
    movz x9, #2
    sub x10, x29, #176
    str w9, [x10]
    sub x10, x29, #192
    str x19, [x10]
    sub x10, x29, #208
    str x14, [x10]
    movz x0, #2
    mov x1, x19
    mov x2, x14
    bl write
    mov x14, x0
    b .L6_4
.L6_3:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L6_4:
    sub x14, x29, #112
    adrp x19, .Ltext_5
    add x19, x19, :lo12:.Ltext_5
    sub x15, x29, #128
    str x19, [x15]
    add x20, x15, #8
    movz x9, #2
    str x9, [x20]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #2
    sub x10, x29, #176
    str w9, [x10]
    sub x10, x29, #192
    str x19, [x10]
    movz x9, #2
    sub x10, x29, #208
    str x9, [x10]
    movz x0, #2
    mov x1, x19
    movz x2, #2
    bl write
    mov x14, x0
    b .L6_6
.L6_5:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L6_6:
    sub x14, x29, #64
    ldr x19, [x14]
    mov x0, x19
    bl strlen
    mov x14, x0
    movz x9, #2
    sub x10, x29, #176
    str w9, [x10]
    sub x10, x29, #192
    str x19, [x10]
    sub x10, x29, #208
    str x14, [x10]
    movz x0, #2
    mov x1, x19
    mov x2, x14
    bl write
    mov x14, x0
    b .L6_8
.L6_7:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L6_8:
    sub x14, x29, #144
    adrp x19, .Ltext_4
    add x19, x19, :lo12:.Ltext_4
    sub x15, x29, #160
    str x19, [x15]
    add x20, x15, #8
    movz x9, #1
    str x9, [x20]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #2
    sub x10, x29, #176
    str w9, [x10]
    sub x10, x29, #192
    str x19, [x10]
    movz x9, #1
    sub x10, x29, #208
    str x9, [x10]
    movz x0, #2
    mov x1, x19
    movz x2, #1
    bl write
    mov x14, x0
    b .L6_10
.L6_9:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L6_10:
    movz x0, #1
    bl exit
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_8trap_two, .-lb_core_8trap_two

    .p2align 2
    .globl lb_core_12trap_text_at
    .type lb_core_12trap_text_at, %function
lb_core_12trap_text_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    str x2, [x16, #8]
    sub x14, x29, #48
    ldr x19, [x14]
    sub x10, x29, #96
    str x19, [x10]
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #6
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_16write_diagnostic
    sub x20, x29, #128
    mov x0, x19
    bl strlen
    mov x14, x0
    sub x15, x29, #144
    str x19, [x15]
    add x19, x15, #8
    str x14, [x19]
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_16write_diagnostic
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #2
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_16write_diagnostic
.L7_1:
    sub x14, x29, #64
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_16write_diagnostic
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_16write_diagnostic
    movz x0, #1
    bl exit
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_12trap_text_at, .-lb_core_12trap_text_at

    .p2align 2
    .globl lb_core_14trap_detail_at
    .type lb_core_14trap_detail_at, %function
lb_core_14trap_detail_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    str x19, [sp, #216]
    str x20, [sp, #208]
    str x21, [sp, #200]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #56
    ldr x19, [x14]
    sub x10, x29, #168
    str x19, [x10]
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #6
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_16write_diagnostic
    sub x20, x29, #200
    mov x0, x19
    bl strlen
    mov x14, x0
    sub x15, x29, #216
    str x19, [x15]
    add x19, x15, #8
    str x14, [x19]
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_16write_diagnostic
    adrp x19, .Ltext_5
    add x19, x19, :lo12:.Ltext_5
    sub x14, x29, #232
    str x19, [x14]
    add x15, x14, #8
    movz x9, #2
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_16write_diagnostic
.L8_1:
    sub x20, x29, #104
    sub x14, x29, #72
    ldr x21, [x14]
    mov x0, x21
    bl strlen
    mov x14, x0
    sub x15, x29, #120
    str x21, [x15]
    add x21, x15, #8
    str x14, [x21]
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_16write_diagnostic
    sub x14, x29, #136
    str x19, [x14]
    add x15, x14, #8
    movz x9, #2
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_16write_diagnostic
    sub x14, x29, #88
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_16write_diagnostic
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #152
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_16write_diagnostic
    movz x0, #1
    bl exit
    ldr x19, [sp, #216]
    ldr x20, [sp, #208]
    ldr x21, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_14trap_detail_at, .-lb_core_14trap_detail_at

    .p2align 2
    .globl lb_core_16write_diagnostic
    .type lb_core_16write_diagnostic, %function
lb_core_16write_diagnostic:
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
    str x27, [sp, #88]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #104
    add x20, x19, #8
    sub x21, x29, #120
    add x22, x21, #8
    adrp x23, lb_c_interrupted
    add x23, x23, :lo12:lb_c_interrupted
    mov x9, #0
    mov x24, x9
.L9_1:
    ldr x14, [x20]
    cmp x24, x14
    b.hs .L9_3
.L9_2:
    sub x15, x14, x24
    movz x10, #16384, lsl #16
    cmp x15, x10
    b.hs .L9_5
.L9_4:
    mov x25, x15
    b .L9_6
.L9_5:
    movz x9, #16384, lsl #16
    mov x25, x9
.L9_6:
    ldr x27, [x19]
    add x26, x14, #1
    cmp x24, x26
    b.lo 1f
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    cmp x14, x26
    b.lo 1f
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    cmp x24, x14
    b.ls .L9_7
.L9_8:
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L9_7:
    add x14, x24, x27
    str x14, [x21]
    str x15, [x22]
    movz x9, #2
    sub x10, x29, #136
    str w9, [x10]
    sub x10, x29, #152
    str x14, [x10]
    sub x10, x29, #168
    str x25, [x10]
    movz x0, #2
    mov x1, x14
    mov x2, x25
    bl write
    mov x26, x0
    b .L9_20
.L9_19:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L9_20:
    mov x10, #0
    cmp x26, x10
    cset w14, lt
    cbnz w14, .L9_12
    b .L9_21
.L9_21:
    mov w15, w14
    b .L9_13
.L9_12:
    bl lb_c_errno
    mov w14, w0
    ldrsw x15, [x23]
    cmp w14, w15
    cset w15, eq
.L9_13:
    and w14, w15, #255
    cbnz w14, .L9_9
    b .L9_10
.L9_9:
    b .L9_1
.L9_14:
    b .L9_11
.L9_10:
.L9_11:
    mov x10, #0
    cmp x26, x10
    b.gt .L9_16
.L9_15:
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    ldr x22, [sp, #128]
    ldr x23, [sp, #120]
    ldr x24, [sp, #112]
    ldr x25, [sp, #104]
    ldr x26, [sp, #96]
    ldr x27, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_18:
    b .L9_17
.L9_16:
.L9_17:
    mov x9, x26
    mov x10, x24
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x24, x14
    b .L9_1
.L9_3:
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    ldr x22, [sp, #128]
    ldr x23, [sp, #120]
    ldr x24, [sp, #112]
    ldr x25, [sp, #104]
    ldr x26, [sp, #96]
    ldr x27, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_16write_diagnostic, .-lb_core_16write_diagnostic

    .p2align 2
    .globl lb_core_10format_put
    .type lb_core_10format_put, %function
lb_core_10format_put:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str x2, [x16]
    sub x14, x29, #88
    ldr x19, [x14]
    sub x14, x29, #56
    ldr x20, [x14]
    add x14, x20, #8
    ldr x15, [x14]
    cmp x19, x15
    cset w15, hi
    cbnz w15, .L10_17
    b .L10_4
.L10_17:
    mov w21, w15
    b .L10_5
.L10_4:
    add x15, x20, #16
    ldr x15, [x15]
    ldr x21, [x14]
    mov x9, x21
    mov x10, x19
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x21, x9
    cmp x15, x21
    cset w21, hi
.L10_5:
    and w15, w21, #255
    cbnz w15, .L10_1
    b .L10_2
.L10_1:
    add x15, x20, #16
    ldr x19, [x14]
    add x19, x19, #1
    str x19, [x15]
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_6:
    b .L10_3
.L10_2:
.L10_3:
    sub x14, x29, #72
    ldr x14, [x14]
    cbnz x14, .L10_10
    b .L10_8
.L10_10:
.L10_7:
    mov x10, #0
    cmp x19, x10
    b.ls .L10_12
.L10_11:
    add x15, x20, #16
    ldr x15, [x15]
    ldr x21, [x20]
    add x15, x15, x21
    mov x0, x15
    mov x1, x14
    mov x2, x19
    bl memcpy
    mov x15, x0
    cbnz x15, .L10_14
    b .L10_15
.L10_15:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L10_14:
    b .L10_13
.L10_12:
.L10_13:
    b .L10_9
.L10_8:
.L10_9:
    add x14, x20, #16
    ldr x15, [x14]
    mov x9, x19
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_16:
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_10format_put, .-lb_core_10format_put

    .p2align 2
    .globl lb_core_10format_u64
    .type lb_core_10format_u64, %function
lb_core_10format_u64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x14, x29, #72
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne .L11_2
.L11_1:
    sub x15, x29, #96
    add x15, x15, #23
    movz x9, #48
    strb w9, [x15]
    movz x9, #1
    mov x15, x9
    b .L11_3
.L11_2:
    mov x9, #0
    mov x15, x9
.L11_3:
    sub x19, x29, #96
    mov x20, x15
    mov x21, x14
.L11_4:
    mov x10, #0
    cmp x21, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L11_6
.L11_5:
    mov x9, x20
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    movz x9, #24
    mov x10, x14
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x15, x9
    movz x10, #24
    cmp x15, x10
    b.lo 1f
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x15, x15, x19
.L11_8:
    movz x10, #10
    udiv x11, x21, x10
    msub x20, x11, x10, x21
    mov x9, x20
    movz x10, #48
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x20, x9
    and w20, w20, #255
    strb w20, [x15]
.L11_10:
    movz x10, #10
    udiv x15, x21, x10
    mov x20, x14
    mov x21, x15
    b .L11_4
.L11_6:
    sub x14, x29, #56
    ldr x14, [x14]
    movz x9, #24
    mov x10, x20
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x15, x9
    sub x19, x29, #96
    movz x10, #25
    cmp x15, x10
    b.lo 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x15, x15, x19
    mov x0, x14
    mov x1, x15
    mov x2, x20
    bl lb_core_10format_put
    mov w14, w0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_10format_u64, .-lb_core_10format_u64

    .p2align 2
    .globl lb_core_10format_i64
    .type lb_core_10format_i64, %function
lb_core_10format_i64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x14, x29, #72
    ldr x19, [x14]
    mov x10, #0
    cmp x19, x10
    b.ge .L12_2
.L12_1:
    sub x14, x29, #88
    adrp x20, .Ltext_21
    add x20, x20, :lo12:.Ltext_21
    sub x15, x29, #104
    str x20, [x15]
    add x21, x15, #8
    movz x9, #1
    str x9, [x21]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #56
    ldr x21, [x14]
    mov x0, x21
    mov x1, x20
    movz x2, #1
    bl lb_core_10format_put
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L12_5
.L12_4:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_7:
    b .L12_6
.L12_5:
.L12_6:
    mov x9, #0
    sub x14, x9, x19
    mov x0, x21
    mov x1, x14
    bl lb_core_10format_u64
    mov w14, w0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_8:
    b .L12_3
.L12_2:
.L12_3:
    sub x14, x29, #56
    ldr x14, [x14]
    mov x0, x14
    mov x1, x19
    bl lb_core_10format_u64
    mov w14, w0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_9:
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_10format_i64, .-lb_core_10format_i64

    .p2align 2
    .globl lb_core_10format_f64
    .type lb_core_10format_f64, %function
lb_core_10format_f64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str d0, [x16]
    sub x19, x29, #128
    adrp x14, .Ltext_24
    add x14, x14, :lo12:.Ltext_24
    sub x15, x29, #64
    ldr d24, [x15]
    fmov d16, d24
    fmov d0, d16
    mov x0, x19
    movz x1, #64
    mov x2, x14
    bl snprintf
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ge .L13_2
.L13_1:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_4:
    b .L13_3
.L13_2:
.L13_3:
    sub x15, x29, #48
    ldr x15, [x15]
    sxtw x20, w14
    mov x0, x15
    mov x1, x19
    mov x2, x20
    bl lb_core_10format_put
    mov w15, w0
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_5:
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_10format_f64, .-lb_core_10format_f64

    .p2align 2
    .globl lb_core_11format_bool
    .type lb_core_11format_bool, %function
lb_core_11format_bool:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str w1, [x16]
    sub x19, x29, #88
    sub x14, x29, #72
    ldrb w14, [x14]
    cbnz w14, .L14_1
    b .L14_2
.L14_1:
    adrp x20, .Ltext_26
    add x20, x20, :lo12:.Ltext_26
    sub x14, x29, #120
    str x20, [x14]
    add x15, x14, #8
    movz x9, #4
    str x9, [x15]
    sub x15, x29, #104
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #4
    mov x21, x9
    b .L14_3
.L14_2:
    adrp x20, .Ltext_27
    add x20, x20, :lo12:.Ltext_27
    sub x14, x29, #136
    str x20, [x14]
    add x15, x14, #8
    movz x9, #5
    str x9, [x15]
    sub x15, x29, #104
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #5
    mov x21, x9
.L14_3:
    sub x14, x29, #104
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #56
    ldr x14, [x14]
    mov x0, x14
    mov x1, x20
    mov x2, x21
    bl lb_core_10format_put
    mov w14, w0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L14_4:
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_11format_bool, .-lb_core_11format_bool

    .p2align 2
    .globl lb_core_11format_char
    .type lb_core_11format_char, %function
lb_core_11format_char:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    str x22, [sp, #48]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str w1, [x16]
    sub x14, x29, #80
    ldr w14, [x14]
    mov w19, w14
    sub x20, x29, #84
    mov x11, x20
    str wzr, [x11, #0]
    movz x10, #128
    cmp w19, w10
    b.hs .L15_2
.L15_1:
    mov w14, w19
    adrp x15, .Ltext_29
    add x15, x15, :lo12:.Ltext_29
    mov x0, x14
    movz x1, #32
    mov x2, #0
    movz x3, #8
    mov x4, #0
    mov x5, #0
    mov x6, x15
    bl lb_core_6conv_u
    mov x14, x0
    and w14, w14, #255
    strb w14, [x20]
    movz x9, #1
    mov x14, x9
    b .L15_3
.L15_2:
    movz x10, #2048
    cmp w19, w10
    b.hs .L15_5
.L15_4:
.L15_8:
    lsr w14, w19, #6
    movz x10, #192
    orr w14, w14, w10
    mov w14, w14
    adrp x15, .Ltext_30
    add x15, x15, :lo12:.Ltext_30
    mov x0, x14
    movz x1, #32
    mov x2, #0
    movz x3, #8
    mov x4, #0
    mov x5, #0
    mov x6, x15
    bl lb_core_6conv_u
    mov x14, x0
    and w14, w14, #255
    strb w14, [x20]
    add x21, x20, #1
    movz x10, #63
    and w14, w19, w10
    movz x10, #128
    orr w14, w14, w10
    mov w14, w14
    adrp x15, .Ltext_32
    add x15, x15, :lo12:.Ltext_32
    mov x0, x14
    movz x1, #32
    mov x2, #0
    movz x3, #8
    mov x4, #0
    mov x5, #0
    mov x6, x15
    bl lb_core_6conv_u
    mov x14, x0
    and w14, w14, #255
    strb w14, [x21]
    movz x9, #2
    mov x14, x9
    b .L15_6
.L15_5:
    movz x10, #1, lsl #16
    cmp w19, w10
    b.hs .L15_10
.L15_9:
.L15_13:
    lsr w14, w19, #12
    movz x10, #224
    orr w14, w14, w10
    mov w14, w14
    adrp x15, .Ltext_33
    add x15, x15, :lo12:.Ltext_33
    mov x0, x14
    movz x1, #32
    mov x2, #0
    movz x3, #8
    mov x4, #0
    mov x5, #0
    mov x6, x15
    bl lb_core_6conv_u
    mov x14, x0
    and w14, w14, #255
    strb w14, [x20]
    add x21, x20, #1
.L15_15:
    lsr w14, w19, #6
    movz x10, #63
    and w14, w14, w10
    movz x10, #128
    orr w14, w14, w10
    mov w14, w14
    adrp x15, .Ltext_34
    add x15, x15, :lo12:.Ltext_34
    mov x0, x14
    movz x1, #32
    mov x2, #0
    movz x3, #8
    mov x4, #0
    mov x5, #0
    mov x6, x15
    bl lb_core_6conv_u
    mov x14, x0
    and w14, w14, #255
    strb w14, [x21]
    add x22, x20, #2
    movz x10, #63
    and w14, w19, w10
    movz x10, #128
    orr w14, w14, w10
    mov w14, w14
    adrp x15, .Ltext_35
    add x15, x15, :lo12:.Ltext_35
    mov x0, x14
    movz x1, #32
    mov x2, #0
    movz x3, #8
    mov x4, #0
    mov x5, #0
    mov x6, x15
    bl lb_core_6conv_u
    mov x14, x0
    and w14, w14, #255
    strb w14, [x22]
    movz x9, #3
    mov x14, x9
    b .L15_11
.L15_10:
.L15_17:
    lsr w14, w19, #18
    movz x10, #240
    orr w14, w14, w10
    mov w14, w14
    adrp x15, .Ltext_36
    add x15, x15, :lo12:.Ltext_36
    mov x0, x14
    movz x1, #32
    mov x2, #0
    movz x3, #8
    mov x4, #0
    mov x5, #0
    mov x6, x15
    bl lb_core_6conv_u
    mov x14, x0
    and w14, w14, #255
    strb w14, [x20]
    add x21, x20, #1
.L15_19:
    lsr w14, w19, #12
    movz x10, #63
    and w14, w14, w10
    movz x10, #128
    orr w14, w14, w10
    mov w14, w14
    adrp x15, .Ltext_37
    add x15, x15, :lo12:.Ltext_37
    mov x0, x14
    movz x1, #32
    mov x2, #0
    movz x3, #8
    mov x4, #0
    mov x5, #0
    mov x6, x15
    bl lb_core_6conv_u
    mov x14, x0
    and w14, w14, #255
    strb w14, [x21]
    add x22, x20, #2
.L15_21:
    lsr w14, w19, #6
    movz x10, #63
    and w14, w14, w10
    movz x10, #128
    orr w14, w14, w10
    mov w14, w14
    adrp x15, .Ltext_38
    add x15, x15, :lo12:.Ltext_38
    mov x0, x14
    movz x1, #32
    mov x2, #0
    movz x3, #8
    mov x4, #0
    mov x5, #0
    mov x6, x15
    bl lb_core_6conv_u
    mov x14, x0
    and w14, w14, #255
    strb w14, [x22]
    add x21, x20, #3
    movz x10, #63
    and w14, w19, w10
    movz x10, #128
    orr w14, w14, w10
    mov w14, w14
    adrp x15, .Ltext_39
    add x15, x15, :lo12:.Ltext_39
    mov x0, x14
    movz x1, #32
    mov x2, #0
    movz x3, #8
    mov x4, #0
    mov x5, #0
    mov x6, x15
    bl lb_core_6conv_u
    mov x14, x0
    and w14, w14, #255
    strb w14, [x21]
    movz x9, #4
    mov x14, x9
.L15_11:
.L15_6:
.L15_3:
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x15
    mov x1, x20
    mov x2, x14
    bl lb_core_10format_put
    mov w15, w0
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_11format_char, .-lb_core_11format_char

    .p2align 2
    .globl lb_core_13format_finish
    .type lb_core_13format_finish, %function
lb_core_13format_finish:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    sub x16, x29, #72
    str x0, [x16]
    sub x14, x29, #72
    ldr x14, [x14]
    add x15, x14, #16
    ldr x19, [x15]
    add x20, x14, #8
    ldr x21, [x20]
    cmp x19, x21
    b.hs .L16_2
.L16_1:
    ldr x19, [x15]
    ldr x21, [x14]
    add x19, x19, x21
    mov x9, #0
    strb w9, [x19]
    b .L16_3
.L16_2:
.L16_3:
    ldr x19, [x15]
    ldr x21, [x20]
    cmp x19, x21
    b.ls .L16_5
.L16_4:
    adrp x14, .Ltext_41
    add x14, x14, :lo12:.Ltext_41
    sub x15, x29, #88
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    sub x19, x29, #56
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_7:
    b .L16_6
.L16_5:
.L16_6:
    ldr x19, [x14]
    ldr x20, [x15]
    sub x21, x29, #104
    str x19, [x21]
    add x21, x21, #8
    str x20, [x21]
    sub x21, x29, #120
    str x19, [x21]
    add x19, x21, #8
    str x20, [x19]
    sub x19, x29, #56
    mov x10, x21
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_8:
    adrp x0, .Ltext_42
    add x0, x0, :lo12:.Ltext_42
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_13format_finish, .-lb_core_13format_finish

    .p2align 2
    .globl lb_core_9show_take
    .type lb_core_9show_take, %function
lb_core_9show_take:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    adrp x0, :gottprel:lb_core_9show_next
    ldr x0, [x0, :gottprel_lo12:lb_core_9show_next]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    ldr w15, [x14]
    movz x10, #3
    and w19, w15, w10
    mov w19, w19
    lsl x19, x19, #8
    add w15, w15, #1
    str w15, [x14]
    sub x14, x29, #96
    ldr x14, [x14]
    movz x10, #255
    cmp x14, x10
    b.ls .L17_2
.L17_1:
    movz x9, #255
    mov x20, x9
    b .L17_3
.L17_2:
    mov x20, x14
.L17_3:
    mov x10, #0
    cmp x20, x10
    b.ls .L17_5
.L17_4:
    adrp x0, :gottprel:lb_core_10show_bytes
    ldr x0, [x0, :gottprel_lo12:lb_core_10show_bytes]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    movz x10, #1025
    cmp x19, x10
    b.lo 1f
    adrp x0, .Ltext_44
    add x0, x0, :lo12:.Ltext_44
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x14, x19, x14
    sub x15, x29, #80
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x20
    bl memcpy
    mov x14, x0
    cbnz x14, .L17_7
    b .L17_8
.L17_8:
    adrp x0, .Ltext_44
    add x0, x0, :lo12:.Ltext_44
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L17_7:
    b .L17_6
.L17_5:
.L17_6:
    mov x9, x19
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_45
    add x0, x0, :lo12:.Ltext_45
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    adrp x0, :gottprel:lb_core_10show_bytes
    ldr x0, [x0, :gottprel_lo12:lb_core_10show_bytes]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x15, x0
    movz x10, #1024
    cmp x14, x10
    b.lo 1f
    adrp x0, .Ltext_45
    add x0, x0, :lo12:.Ltext_45
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x21, x14, x15
    mov x9, #0
    strb w9, [x21]
    movz x10, #1025
    cmp x19, x10
    b.lo 1f
    adrp x0, .Ltext_46
    add x0, x0, :lo12:.Ltext_46
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    cmp x19, x14
    b.ls .L17_9
.L17_10:
    adrp x0, .Ltext_46
    add x0, x0, :lo12:.Ltext_46
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L17_9:
    add x20, x19, x15
    sub x21, x14, x19
    sub x22, x29, #112
    str x20, [x22]
    add x22, x22, #8
    str x21, [x22]
    sub x22, x29, #128
    str x20, [x22]
    add x20, x22, #8
    str x21, [x20]
    sub x20, x29, #64
    mov x10, x22
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_11:
    adrp x0, .Ltext_46
    add x0, x0, :lo12:.Ltext_46
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_9show_take, .-lb_core_9show_take

    .p2align 2
    .globl lb_core_8show_hex
    .type lb_core_8show_hex, %function
lb_core_8show_hex:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    str x23, [sp, #72]
    sub x16, x29, #88
    str x0, [x16]
    sub x14, x29, #88
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne .L18_2
.L18_1:
    sub x15, x29, #104
    add x15, x15, #15
    movz x9, #48
    strb w9, [x15]
    movz x9, #1
    mov x15, x9
    b .L18_3
.L18_2:
    mov x9, #0
    mov x15, x9
.L18_3:
    sub x19, x29, #104
    mov x20, x15
    mov x21, x14
.L18_4:
    mov x10, #0
    cmp x21, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L18_6
.L18_5:
    mov x9, x20
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_48
    add x0, x0, :lo12:.Ltext_48
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    movz x10, #15
    and x15, x21, x10
    and w15, w15, #255
    movz x9, #16
    mov x10, x14
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x22, x9
    movz x10, #16
    cmp x22, x10
    b.lo 1f
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x23, x22, x19
    and w15, w15, #255
    movz x10, #10
    cmp w15, w10
    b.hs .L18_8
.L18_7:
    add w22, w15, #48
    and w20, w22, #255
    cmp w20, w22
    b.eq .L18_10
.L18_11:
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
.L18_10:
    mov w15, w22
    b .L18_9
.L18_8:
    add w22, w15, #87
    and w20, w22, #255
    cmp w20, w22
    b.eq .L18_12
.L18_13:
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
.L18_12:
    mov w15, w22
.L18_9:
    and w20, w15, #255
    strb w20, [x23]
.L18_15:
    lsr x15, x21, #4
    mov x20, x14
    mov x21, x15
    b .L18_4
.L18_6:
    movz x9, #16
    mov x10, x20
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_52
    add x0, x0, :lo12:.Ltext_52
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    sub x15, x29, #104
    movz x10, #17
    cmp x14, x10
    b.lo 1f
    adrp x0, .Ltext_52
    add x0, x0, :lo12:.Ltext_52
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x14, x14, x15
    mov x0, x14
    mov x1, x20
    bl lb_core_9show_take
    sub x16, x29, #120
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #120
    sub x19, x29, #72
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_8show_hex, .-lb_core_8show_hex

    .p2align 2
    .globl lb_core_8show_bin
    .type lb_core_8show_bin, %function
lb_core_8show_bin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    str x20, [sp, #144]
    str x21, [sp, #136]
    str x22, [sp, #128]
    str x23, [sp, #120]
    sub x16, x29, #88
    str x0, [x16]
    sub x14, x29, #88
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne .L19_2
.L19_1:
    sub x15, x29, #152
    add x15, x15, #63
    movz x9, #48
    strb w9, [x15]
    movz x9, #1
    mov x15, x9
    b .L19_3
.L19_2:
    mov x9, #0
    mov x15, x9
.L19_3:
    sub x19, x29, #152
    mov x20, x15
    mov x21, x14
.L19_4:
    mov x10, #0
    cmp x21, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L19_6
.L19_5:
    mov x9, x20
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_54
    add x0, x0, :lo12:.Ltext_54
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    movz x9, #64
    mov x10, x14
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_55
    add x0, x0, :lo12:.Ltext_55
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x15, x9
    movz x10, #64
    cmp x15, x10
    b.lo 1f
    adrp x0, .Ltext_55
    add x0, x0, :lo12:.Ltext_55
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x22, x15, x19
    movz x10, #1
    and x15, x21, x10
    and w15, w15, #255
    add w23, w15, #48
    and w15, w23, #255
    cmp w15, w23
    b.eq .L19_7
.L19_8:
    adrp x0, .Ltext_55
    add x0, x0, :lo12:.Ltext_55
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
.L19_7:
    strb w23, [x22]
.L19_10:
    lsr x15, x21, #1
    mov x20, x14
    mov x21, x15
    b .L19_4
.L19_6:
    movz x9, #64
    mov x10, x20
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_57
    add x0, x0, :lo12:.Ltext_57
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    sub x15, x29, #152
    movz x10, #65
    cmp x14, x10
    b.lo 1f
    adrp x0, .Ltext_57
    add x0, x0, :lo12:.Ltext_57
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x14, x14, x15
    mov x0, x14
    mov x1, x20
    bl lb_core_9show_take
    sub x16, x29, #168
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #168
    sub x19, x29, #72
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    ldr x22, [sp, #128]
    ldr x23, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_8show_bin, .-lb_core_8show_bin

    .p2align 2
    .globl lb_core_8show_pad
    .type lb_core_8show_pad, %function
lb_core_8show_pad:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #384
    str x19, [sp, #360]
    str x20, [sp, #352]
    str x21, [sp, #344]
    str x22, [sp, #336]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #96
    str x2, [x16]
    sub x14, x29, #80
    add x15, x14, #8
    ldr x15, [x15]
    sub x19, x29, #96
    ldr x19, [x19]
    cmp x15, x19
    b.lo .L20_2
.L20_1:
    ldr x19, [x14]
    mov x0, x19
    mov x1, x15
    bl lb_core_9show_take
    sub x16, x29, #112
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x19, x29, #112
    sub x20, x29, #64
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #360]
    ldr x20, [sp, #352]
    ldr x21, [sp, #344]
    ldr x22, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L20_4:
    b .L20_3
.L20_2:
.L20_3:
    sub x20, x19, x15
    movz x10, #255
    cmp x19, x10
    b.ls .L20_6
.L20_5:
    movz x10, #255
    cmp x15, x10
    b.ls .L20_9
.L20_8:
    movz x9, #255
    mov x15, x9
    b .L20_10
.L20_9:
.L20_10:
    movz x9, #255
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_59
    add x0, x0, :lo12:.Ltext_59
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x19, x9
    mov x21, x15
    b .L20_7
.L20_6:
    mov x21, x15
    mov x19, x20
.L20_7:
    sub x15, x29, #368
    mov x9, #0
    mov x20, x9
.L20_11:
    cmp x20, x19
    b.hs .L20_14
.L20_12:
    movz x10, #256
    cmp x20, x10
    b.lo 1f
    adrp x0, .Ltext_60
    add x0, x0, :lo12:.Ltext_60
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x22, x15, x20
    movz x9, #32
    strb w9, [x22]
.L20_13:
    add x22, x20, #1
    mov x20, x22
    b .L20_11
.L20_14:
    mov x10, #0
    cmp x21, x10
    b.ls .L20_16
.L20_15:
    sub x15, x29, #368
    movz x10, #257
    cmp x19, x10
    b.lo 1f
    adrp x0, .Ltext_61
    add x0, x0, :lo12:.Ltext_61
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x15, x15, x19
    ldr x20, [x14]
    mov x0, x15
    mov x1, x20
    mov x2, x21
    bl memcpy
    mov x15, x0
    cbnz x15, .L20_18
    b .L20_19
.L20_19:
    adrp x0, .Ltext_61
    add x0, x0, :lo12:.Ltext_61
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L20_18:
    b .L20_17
.L20_16:
.L20_17:
    sub x14, x29, #368
    mov x9, x21
    mov x10, x19
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_62
    add x0, x0, :lo12:.Ltext_62
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x15, x9
    mov x0, x14
    mov x1, x15
    bl lb_core_9show_take
    sub x16, x29, #384
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #384
    sub x20, x29, #64
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #360]
    ldr x20, [sp, #352]
    ldr x21, [sp, #344]
    ldr x22, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L20_20:
    adrp x0, .Ltext_62
    add x0, x0, :lo12:.Ltext_62
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_8show_pad, .-lb_core_8show_pad

    .p2align 2
    .globl lb_core_arguments
    .type lb_core_arguments, %function
lb_core_arguments:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    str x19, [sp, #264]
    str x20, [sp, #256]
    str x21, [sp, #248]
    str x22, [sp, #240]
    str x23, [sp, #232]
    str x24, [sp, #224]
    str x25, [sp, #216]
    str x26, [sp, #208]
    str x27, [sp, #200]
    str x28, [sp, #192]
    sub x16, x29, #128
    str w0, [x16]
    sub x16, x29, #144
    str x1, [x16]
    sub x22, x29, #160
    sub x14, x29, #128
    ldrsw x14, [x14]
    sub x15, x29, #144
    ldr x19, [x15]
    sub x10, x29, #256
    str w14, [x10]
    sub x10, x29, #272
    str x19, [x10]
    sxtw x20, w14
    sub x14, x29, #288
    str x19, [x14]
    add x15, x14, #8
    str x20, [x15]
    sub x21, x29, #240
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x21
    sub x11, x29, #176
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L21_15
.L21_14:
    adrp x0, .Ltext_69
    add x0, x0, :lo12:.Ltext_69
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L21_15:
    sub x14, x29, #176
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, #0
    cmp x20, x10
    b.ls .L21_2
.L21_1:
    mov x14, x20
    b .L21_3
.L21_2:
    movz x9, #1
    mov x14, x9
.L21_3:
    mov x9, x14
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x15, x9
    mov x0, x15
    bl malloc
    mov x21, x0
    cbnz x21, .L21_4
    b .L21_5
.L21_4:
    b .L21_6
.L21_5:
    adrp x14, .Ltext_64
    add x14, x14, :lo12:.Ltext_64
    mov x0, x14
    bl lb_core_trap
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L21_6:
    sub x22, x29, #192
    sub x23, x29, #208
    add x24, x23, #8
    adrp x25, .Ltext_66
    add x25, x25, :lo12:.Ltext_66
    mov x9, #0
    mov x26, x9
.L21_7:
    cmp x26, x20
    b.hs .L21_9
.L21_8:
    lsl x14, x26, #3
    add x14, x19, x14
    ldr x27, [x14]
    mov x0, x27
    bl strlen
    mov x28, x0
    str x27, [x23]
    str x28, [x24]
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x27
    mov x1, x28
    bl lb_core_7utf8_ok
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L21_11
.L21_10:
    mov x0, x25
    bl lb_core_trap
    b .L21_12
.L21_11:
.L21_12:
    lsl x14, x26, #4
    add x14, x14, x21
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x26, #1
    mov x26, x14
    b .L21_7
.L21_9:
    sub x14, x29, #224
    str x21, [x14]
    add x15, x14, #8
    str x20, [x15]
    sub x19, x29, #112
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #264]
    ldr x20, [sp, #256]
    ldr x21, [sp, #248]
    ldr x22, [sp, #240]
    ldr x23, [sp, #232]
    ldr x24, [sp, #224]
    ldr x25, [sp, #216]
    ldr x26, [sp, #208]
    ldr x27, [sp, #200]
    ldr x28, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L21_13:
    adrp x0, .Ltext_68
    add x0, x0, :lo12:.Ltext_68
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_arguments, .-lb_core_arguments

    .p2align 2
    .globl lb_core_13raw_arguments
    .type lb_core_13raw_arguments, %function
lb_core_13raw_arguments:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #64
    str w0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    sub x15, x29, #64
    ldrsw x15, [x15]
    sxtw x15, w15
    sub x19, x29, #96
    str x14, [x19]
    add x14, x19, #8
    str x15, [x14]
    sub x20, x29, #48
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L22_1:
    adrp x0, .Ltext_69
    add x0, x0, :lo12:.Ltext_69
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_13raw_arguments, .-lb_core_13raw_arguments

    .p2align 2
    .globl lb_core_11main_failed
    .type lb_core_11main_failed, %function
lb_core_11main_failed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1328
    str x19, [sp, #1304]
    str x20, [sp, #1296]
    str x21, [sp, #1288]
    str x22, [sp, #1280]
    str x23, [sp, #1272]
    sub x16, x29, #72
    str w0, [x16]
    sub x16, x29, #88
    str x1, [x16]
    str x2, [x16, #8]
    sub x22, x29, #1128
    sub x14, x29, #1112
    sub x15, x29, #1184
    str x14, [x15]
    add x15, x15, #8
    movz x9, #1024
    str x9, [x15]
    sub x19, x29, #1208
    str x14, [x19]
    add x20, x19, #8
    movz x9, #1024
    str x9, [x20]
    add x21, x19, #16
    mov x9, #0
    str x9, [x21]
    adrp x14, .Ltext_71
    add x14, x14, :lo12:.Ltext_71
    mov x0, x19
    mov x1, x14
    movz x2, #6
    bl lb_core_10format_put
    mov w14, w0
    sub x14, x29, #72
    ldrsw x14, [x14]
    sxtw x14, w14
    mov x0, x19
    mov x1, x14
    bl lb_core_10format_i64
    mov w14, w0
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    mov x0, x19
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    sub x14, x29, #88
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x0, x19
    mov x1, x15
    mov x2, x14
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    mov x0, x19
    mov x1, x14
    movz x2, #1
    bl lb_core_10format_put
    mov w14, w0
    sub x23, x29, #1256
    ldr x14, [x21]
    ldr x15, [x20]
    cmp x14, x15
    b.ls .L23_4
.L23_3:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_72
    add x15, x15, :lo12:.Ltext_72
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #60
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b .L23_5
.L23_4:
    mov x0, x19
    bl lb_core_13format_finish
    sub x16, x29, #1272
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #1272
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
.L23_5:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, .L23_7
    b .L23_6
.L23_7:
    add x14, x23, #16
    sub x15, x29, #1168
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b .L23_1
.L23_6:
    sub x19, x29, #1144
    mov x10, x23
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L23_2
.L23_1:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #1304]
    ldr x20, [sp, #1296]
    ldr x21, [sp, #1288]
    ldr x22, [sp, #1280]
    ldr x23, [sp, #1272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L23_8:
.L23_2:
    mov x10, x19
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    movz x9, #2
    sub x10, x29, #1288
    str w9, [x10]
    sub x10, x29, #1304
    str x14, [x10]
    sub x10, x29, #1320
    str x15, [x10]
    movz x0, #2
    mov x1, x14
    mov x2, x15
    bl write
    mov x14, x0
    b .L23_11
.L23_10:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L23_11:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #1304]
    ldr x20, [sp, #1296]
    ldr x21, [sp, #1288]
    ldr x22, [sp, #1280]
    ldr x23, [sp, #1272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L23_9:
    adrp x0, .Ltext_73
    add x0, x0, :lo12:.Ltext_73
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_11main_failed, .-lb_core_11main_failed

    .p2align 2
    .globl lb_core_11test_report
    .type lb_core_11test_report, %function
lb_core_11test_report:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #3488
    str x19, [sp, #3464]
    str x20, [sp, #3456]
    str x21, [sp, #3448]
    str x22, [sp, #3440]
    str x23, [sp, #3432]
    sub x16, x29, #72
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #88
    str w2, [x16]
    sub x16, x29, #104
    str x3, [x16]
    str x4, [x16, #8]
    sub x21, x29, #1144
    sub x14, x29, #1128
    sub x15, x29, #1200
    str x14, [x15]
    add x15, x15, #8
    movz x9, #1024
    str x9, [x15]
    sub x22, x29, #1224
    str x14, [x22]
    add x19, x22, #8
    movz x9, #1024
    str x9, [x19]
    add x20, x22, #16
    mov x9, #0
    str x9, [x20]
    sub x14, x29, #88
    ldrb w14, [x14]
    cbnz w14, .L24_3
    b .L24_4
.L24_3:
    sub x14, x29, #2264
    sub x23, x29, #2288
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    adrp x14, .Ltext_74
    add x14, x14, :lo12:.Ltext_74
    mov x0, x23
    mov x1, x14
    movz x2, #6
    bl lb_core_10format_put
    mov w14, w0
    sub x14, x29, #72
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x0, x23
    mov x1, x15
    mov x2, x14
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_75
    add x14, x14, :lo12:.Ltext_75
    mov x0, x23
    mov x1, x14
    movz x2, #14
    bl lb_core_10format_put
    mov w14, w0
    sub x14, x29, #104
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x0, x23
    mov x1, x15
    mov x2, x14
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    mov x0, x23
    mov x1, x14
    movz x2, #1
    bl lb_core_10format_put
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    sub x16, x29, #2304
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #2304
    sub x15, x29, #1240
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L24_5
.L24_4:
    sub x14, x29, #3328
    sub x23, x29, #3352
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    adrp x14, .Ltext_76
    add x14, x14, :lo12:.Ltext_76
    mov x0, x23
    mov x1, x14
    movz x2, #6
    bl lb_core_10format_put
    mov w14, w0
    sub x14, x29, #72
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x0, x23
    mov x1, x15
    mov x2, x14
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    mov x0, x23
    mov x1, x14
    movz x2, #1
    bl lb_core_10format_put
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    sub x16, x29, #3368
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #3368
    sub x15, x29, #1240
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
.L24_5:
    sub x14, x29, #1240
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x0, x22
    mov x1, x15
    mov x2, x14
    bl lb_core_10format_put
    mov w14, w0
    sub x23, x29, #3416
    ldr x14, [x20]
    ldr x15, [x19]
    cmp x14, x15
    b.ls .L24_7
.L24_6:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_72
    add x15, x15, :lo12:.Ltext_72
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #60
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b .L24_8
.L24_7:
    mov x0, x22
    bl lb_core_13format_finish
    sub x16, x29, #3432
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #3432
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
.L24_8:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, .L24_10
    b .L24_9
.L24_10:
    add x14, x23, #16
    sub x15, x29, #1184
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b .L24_1
.L24_9:
    sub x19, x29, #1160
    mov x10, x23
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L24_2
.L24_1:
    ldr x19, [sp, #3464]
    ldr x20, [sp, #3456]
    ldr x21, [sp, #3448]
    ldr x22, [sp, #3440]
    ldr x23, [sp, #3432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L24_11:
.L24_2:
    mov x10, x19
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    movz x9, #1
    sub x10, x29, #3448
    str w9, [x10]
    sub x10, x29, #3464
    str x14, [x10]
    sub x10, x29, #3480
    str x15, [x10]
    movz x0, #1
    mov x1, x14
    mov x2, x15
    bl write
    mov x14, x0
    b .L24_13
.L24_12:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L24_13:
    ldr x19, [sp, #3464]
    ldr x20, [sp, #3456]
    ldr x21, [sp, #3448]
    ldr x22, [sp, #3440]
    ldr x23, [sp, #3432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_11test_report, .-lb_core_11test_report

    .p2align 2
    .globl lb_core_12test_summary
    .type lb_core_12test_summary, %function
lb_core_12test_summary:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #368
    str x19, [sp, #344]
    str x20, [sp, #336]
    str x21, [sp, #328]
    str x22, [sp, #320]
    str x23, [sp, #312]
    str x24, [sp, #304]
    sub x16, x29, #80
    str w0, [x16]
    sub x16, x29, #96
    str w1, [x16]
    sub x23, x29, #176
    sub x14, x29, #160
    sub x15, x29, #232
    str x14, [x15]
    add x15, x15, #8
    movz x9, #64
    str x9, [x15]
    sub x19, x29, #256
    str x14, [x19]
    add x20, x19, #8
    movz x9, #64
    str x9, [x20]
    add x21, x19, #16
    mov x9, #0
    str x9, [x21]
    sub x14, x29, #80
    ldrsw x14, [x14]
    sub x15, x29, #96
    ldrsw x22, [x15]
    mov w9, w14
    mov w10, w22
    subs w9, w9, w10
    b.vc 1f
    adrp x0, .Ltext_77
    add x0, x0, :lo12:.Ltext_77
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov w14, w9
    sxtw x14, w14
    mov x0, x19
    mov x1, x14
    bl lb_core_10format_i64
    mov w14, w0
    adrp x14, .Ltext_78
    add x14, x14, :lo12:.Ltext_78
    mov x0, x19
    mov x1, x14
    movz x2, #8
    bl lb_core_10format_put
    mov w14, w0
    sub x24, x29, #304
    ldr x14, [x21]
    ldr x15, [x20]
    cmp x14, x15
    b.ls .L25_4
.L25_3:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_72
    add x15, x15, :lo12:.Ltext_72
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #60
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b .L25_5
.L25_4:
    mov x0, x19
    bl lb_core_13format_finish
    sub x16, x29, #320
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #320
    mov x10, x14
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
.L25_5:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, .L25_7
    b .L25_6
.L25_7:
    add x14, x24, #16
    sub x15, x29, #216
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b .L25_1
.L25_6:
    sub x19, x29, #192
    mov x10, x24
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L25_2
.L25_1:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #344]
    ldr x20, [sp, #336]
    ldr x21, [sp, #328]
    ldr x22, [sp, #320]
    ldr x23, [sp, #312]
    ldr x24, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L25_8:
.L25_2:
    mov x10, x19
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    movz x9, #1
    sub x10, x29, #336
    str w9, [x10]
    sub x10, x29, #352
    str x14, [x10]
    sub x10, x29, #368
    str x15, [x10]
    movz x0, #1
    mov x1, x14
    mov x2, x15
    bl write
    mov x14, x0
    b .L25_14
.L25_13:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L25_14:
    mov x10, #0
    cmp w22, w10
    b.ne .L25_10
.L25_9:
    mov x9, #0
    mov w14, w9
    b .L25_11
.L25_10:
    movz x9, #1
    mov w14, w9
.L25_11:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #344]
    ldr x20, [sp, #336]
    ldr x21, [sp, #328]
    ldr x22, [sp, #320]
    ldr x23, [sp, #312]
    ldr x24, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L25_12:
    adrp x0, .Ltext_79
    add x0, x0, :lo12:.Ltext_79
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_12test_summary, .-lb_core_12test_summary

    .p2align 2
    .globl lb_core_9print_str
    .type lb_core_9print_str, %function
lb_core_9print_str:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    sub x16, x29, #48
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #48
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    movz x9, #1
    sub x10, x29, #96
    str w9, [x10]
    sub x10, x29, #112
    str x15, [x10]
    sub x10, x29, #128
    str x14, [x10]
    movz x0, #1
    mov x1, x15
    mov x2, x14
    bl write
    mov x14, x0
    b .L26_2
.L26_1:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L26_2:
    sub x14, x29, #64
    adrp x19, .Ltext_4
    add x19, x19, :lo12:.Ltext_4
    sub x15, x29, #80
    str x19, [x15]
    add x20, x15, #8
    movz x9, #1
    str x9, [x20]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #1
    sub x10, x29, #96
    str w9, [x10]
    sub x10, x29, #112
    str x19, [x10]
    movz x9, #1
    sub x10, x29, #128
    str x9, [x10]
    movz x0, #1
    mov x1, x19
    movz x2, #1
    bl write
    mov x14, x0
    b .L26_4
.L26_3:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L26_4:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_9print_str, .-lb_core_9print_str

    .p2align 2
    .globl lb_core_9print_i64
    .type lb_core_9print_i64, %function
lb_core_9print_i64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    str x19, [sp, #232]
    str x20, [sp, #224]
    str x21, [sp, #216]
    sub x16, x29, #56
    str x0, [x16]
    sub x14, x29, #104
    sub x19, x29, #88
    sub x15, x29, #120
    str x19, [x15]
    add x20, x15, #8
    movz x9, #32
    str x9, [x20]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #144
    sub x21, x29, #168
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str x19, [x21]
    add x14, x21, #8
    movz x9, #32
    str x9, [x14]
    add x14, x21, #16
    mov x9, #0
    str x9, [x14]
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    sub x14, x29, #56
    ldr x14, [x14]
    mov x0, x20
    mov x1, x14
    bl lb_core_10format_i64
    mov w14, w0
    add x14, x20, #16
    ldr x14, [x14]
    movz x9, #1
    sub x10, x29, #216
    str w9, [x10]
    sub x10, x29, #232
    str x19, [x10]
    sub x10, x29, #248
    str x14, [x10]
    movz x0, #1
    mov x1, x19
    mov x2, x14
    bl write
    mov x14, x0
    b .L27_2
.L27_1:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L27_2:
    sub x14, x29, #184
    adrp x19, .Ltext_4
    add x19, x19, :lo12:.Ltext_4
    sub x15, x29, #200
    str x19, [x15]
    add x20, x15, #8
    movz x9, #1
    str x9, [x20]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #1
    sub x10, x29, #216
    str w9, [x10]
    sub x10, x29, #232
    str x19, [x10]
    movz x9, #1
    sub x10, x29, #248
    str x9, [x10]
    movz x0, #1
    mov x1, x19
    movz x2, #1
    bl write
    mov x14, x0
    b .L27_4
.L27_3:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L27_4:
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr x21, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_9print_i64, .-lb_core_9print_i64

    .p2align 2
    .globl lb_core_11str_compare
    .type lb_core_11str_compare, %function
lb_core_11str_compare:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    str x22, [sp, #48]
    str x23, [sp, #40]
    str x24, [sp, #32]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #96
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #80
    add x15, x14, #8
    ldr x19, [x15]
    sub x15, x29, #96
    add x20, x15, #8
    ldr x20, [x20]
    cmp x19, x20
    cset w21, lo
    cbnz w21, .L28_1
    b .L28_2
.L28_1:
    mov x22, x19
    b .L28_3
.L28_2:
    mov x22, x20
.L28_3:
    mov x10, #0
    cmp x22, x10
    b.ls .L28_5
.L28_4:
    ldr x23, [x14]
    ldr x24, [x15]
    mov x0, x23
    mov x1, x24
    mov x2, x22
    bl memcmp
    mov w23, w0
    b .L28_6
.L28_5:
    mov x9, #0
    mov w23, w9
.L28_6:
    mov x10, #0
    cmp w23, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L28_8
.L28_7:
    mov x10, #0
    cmp w23, w10
    b.ge .L28_11
.L28_10:
    movn x9, #0
    mov w14, w9
    b .L28_12
.L28_11:
    movz x9, #1
    mov w14, w9
.L28_12:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    ldr x23, [sp, #40]
    ldr x24, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L28_13:
    b .L28_9
.L28_8:
.L28_9:
    cbnz w21, .L28_14
    b .L28_15
.L28_14:
    movn x9, #0
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    ldr x23, [sp, #40]
    ldr x24, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L28_17:
    b .L28_16
.L28_15:
.L28_16:
    cmp x19, x20
    b.ls .L28_19
.L28_18:
    movz x9, #1
    mov w14, w9
    b .L28_20
.L28_19:
    mov x9, #0
    mov w14, w9
.L28_20:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    ldr x23, [sp, #40]
    ldr x24, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L28_21:
    adrp x0, .Ltext_80
    add x0, x0, :lo12:.Ltext_80
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_11str_compare, .-lb_core_11str_compare

    .p2align 2
    .globl lb_core_11utf8_scalar
    .type lb_core_11utf8_scalar, %function
lb_core_11utf8_scalar:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    str x23, [sp, #72]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str x1, [x16]
    sub x16, x29, #104
    str x2, [x16]
    sub x16, x29, #120
    str x3, [x16]
    sub x14, x29, #104
    ldr x14, [x14]
    sub x15, x29, #72
    ldr x15, [x15]
    add x19, x14, x15
    ldrb w19, [x19]
    and w19, w19, #255
    mov w20, w19
    movz x10, #240
    cmp w19, w10
    b.lo .L29_2
.L29_1:
    movz x10, #7
    and w20, w19, w10
    mov w20, w20
    movz x9, #4
    mov x21, x9
    b .L29_3
.L29_2:
    movz x10, #224
    cmp w19, w10
    b.lo .L29_5
.L29_4:
    movz x10, #15
    and w20, w19, w10
    mov w20, w20
    movz x9, #3
    mov x21, x9
    b .L29_6
.L29_5:
    movz x10, #192
    cmp w19, w10
    b.lo .L29_8
.L29_7:
    movz x10, #31
    and w20, w19, w10
    mov w20, w20
    movz x9, #2
    mov x21, x9
    b .L29_9
.L29_8:
    movz x9, #1
    mov x21, x9
.L29_9:
.L29_6:
.L29_3:
    mov x9, x14
    mov x10, x21
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_81
    add x0, x0, :lo12:.Ltext_81
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x19, x9
    sub x22, x29, #88
    ldr x22, [x22]
    cmp x19, x22
    b.ls .L29_11
.L29_10:
    mov x9, x22
    mov x10, x14
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_82
    add x0, x0, :lo12:.Ltext_82
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x19, x9
    b .L29_12
.L29_11:
    mov x19, x21
.L29_12:
    mov w21, w20
    movz x9, #1
    mov x22, x9
.L29_13:
    cmp x22, x19
    b.hs .L29_15
.L29_14:
.L29_17:
    lsl w20, w21, #6
    mov x9, x14
    mov x10, x22
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_83
    add x0, x0, :lo12:.Ltext_83
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x23, x9
    add x23, x15, x23
    ldrb w23, [x23]
    movz x10, #63
    and w23, w23, w10
    mov w23, w23
    orr w20, w20, w23
    add x23, x22, #1
    mov w21, w20
    mov x22, x23
    b .L29_13
.L29_15:
    sub x14, x29, #120
    ldr x14, [x14]
    str x19, [x14]
    mov w14, w21
    mov w14, w14
    adrp x15, .Ltext_85
    add x15, x15, :lo12:.Ltext_85
    mov x0, x14
    mov x1, #0
    mov x2, x15
    bl lb_core_7to_char
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_11utf8_scalar, .-lb_core_11utf8_scalar

    .p2align 2
    .globl lb_core_7utf8_ok
    .type lb_core_7utf8_ok, %function
lb_core_7utf8_ok:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    str x22, [sp, #64]
    str x23, [sp, #56]
    str x24, [sp, #48]
    str x25, [sp, #40]
    str x26, [sp, #32]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x14, x29, #96
    ldr x14, [x14]
    cbnz x14, .L30_1
    b .L30_2
.L30_1:
    b .L30_3
.L30_2:
    sub x14, x29, #112
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    ldr x24, [sp, #48]
    ldr x25, [sp, #40]
    ldr x26, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L30_3:
    sub x15, x29, #112
    ldr x15, [x15]
    mov x9, #0
    mov x19, x9
.L30_5:
    cmp x19, x15
    b.hs .L30_7
.L30_6:
    add x20, x14, x19
    ldrb w20, [x20]
    and w20, w20, #255
    movz x10, #128
    cmp w20, w10
    b.hs .L30_9
.L30_8:
    mov w21, w20
    movz x9, #1
    mov x22, x9
    b .L30_10
.L30_9:
    movz x10, #224
    and w21, w20, w10
    movz x10, #192
    cmp w21, w10
    b.ne .L30_12
.L30_11:
    movz x10, #31
    and w21, w20, w10
    mov w21, w21
    movz x9, #2
    mov x22, x9
    b .L30_13
.L30_12:
    movz x10, #240
    and w21, w20, w10
    movz x10, #224
    cmp w21, w10
    b.ne .L30_15
.L30_14:
    movz x10, #15
    and w21, w20, w10
    mov w21, w21
    movz x9, #3
    mov x22, x9
    b .L30_16
.L30_15:
    movz x10, #248
    and w21, w20, w10
    movz x10, #240
    cmp w21, w10
    b.ne .L30_18
.L30_17:
    movz x10, #7
    and w21, w20, w10
    mov w21, w21
    b .L30_19
.L30_18:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    ldr x24, [sp, #48]
    ldr x25, [sp, #40]
    ldr x26, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L30_19:
    movz x9, #4
    mov x22, x9
.L30_16:
.L30_13:
.L30_10:
    mov x9, x19
    mov x10, x22
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_86
    add x0, x0, :lo12:.Ltext_86
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x20, x9
    cmp x20, x15
    b.ls .L30_22
.L30_21:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    ldr x24, [sp, #48]
    ldr x25, [sp, #40]
    ldr x26, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L30_22:
.L30_23:
    mov w23, w21
    movz x9, #1
    mov x24, x9
.L30_25:
    cmp x24, x22
    b.hs .L30_27
.L30_26:
    mov x9, x19
    mov x10, x24
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_87
    add x0, x0, :lo12:.Ltext_87
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x21, x9
    add x21, x21, x14
    ldrb w21, [x21]
    and w21, w21, #255
    movz x10, #192
    and w25, w21, w10
    movz x10, #128
    cmp w25, w10
    cset w25, eq
    mov x10, #0
    cmp w25, w10
    b.ne .L30_29
.L30_28:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    ldr x24, [sp, #48]
    ldr x25, [sp, #40]
    ldr x26, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L30_29:
.L30_30:
.L30_33:
    lsl w25, w23, #6
    movz x10, #63
    and w26, w21, w10
    mov w26, w26
    orr w25, w25, w26
    add x26, x24, #1
    mov w23, w25
    mov x24, x26
    b .L30_25
.L30_27:
    movz x10, #2
    cmp x22, x10
    cset w19, eq
    cbnz w19, .L30_37
    b .L30_63
.L30_63:
    mov w21, w19
    b .L30_38
.L30_37:
    movz x10, #128
    cmp w23, w10
    cset w21, lo
.L30_38:
    and w19, w21, #255
    cbnz w19, .L30_34
    b .L30_35
.L30_34:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    ldr x24, [sp, #48]
    ldr x25, [sp, #40]
    ldr x26, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L30_35:
.L30_36:
    movz x10, #3
    cmp x22, x10
    cset w19, eq
    cbnz w19, .L30_43
    b .L30_64
.L30_64:
    mov w21, w19
    b .L30_44
.L30_43:
    movz x10, #2048
    cmp w23, w10
    cset w21, lo
.L30_44:
    and w19, w21, #255
    cbnz w19, .L30_40
    b .L30_41
.L30_40:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    ldr x24, [sp, #48]
    ldr x25, [sp, #40]
    ldr x26, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L30_41:
.L30_42:
    movz x10, #4
    cmp x22, x10
    cset w19, eq
    cbnz w19, .L30_49
    b .L30_65
.L30_65:
    mov w21, w19
    b .L30_50
.L30_49:
    movz x10, #1, lsl #16
    cmp w23, w10
    cset w21, lo
.L30_50:
    and w19, w21, #255
    cbnz w19, .L30_46
    b .L30_47
.L30_46:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    ldr x24, [sp, #48]
    ldr x25, [sp, #40]
    ldr x26, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L30_47:
.L30_48:
    movz x10, #55296
    cmp w23, w10
    cset w19, hs
    cbnz w19, .L30_55
    b .L30_66
.L30_66:
    mov w21, w19
    b .L30_56
.L30_55:
    movz x10, #57343
    cmp w23, w10
    cset w21, ls
.L30_56:
    and w19, w21, #255
    cbnz w19, .L30_52
    b .L30_53
.L30_52:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    ldr x24, [sp, #48]
    ldr x25, [sp, #40]
    ldr x26, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L30_53:
.L30_54:
    movz x10, #65535
    movk x10, #16, lsl #16
    cmp w23, w10
    b.ls .L30_59
.L30_58:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    ldr x24, [sp, #48]
    ldr x25, [sp, #40]
    ldr x26, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L30_59:
.L30_60:
    mov x19, x20
    b .L30_5
.L30_7:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    ldr x24, [sp, #48]
    ldr x25, [sp, #40]
    ldr x26, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_7utf8_ok, .-lb_core_7utf8_ok

    .p2align 2
    .globl lb_core_9hash_seed
    .type lb_core_9hash_seed, %function
lb_core_9hash_seed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    adrp x14, lb_core_11hash_seeded
    add x14, x14, :lo12:lb_core_11hash_seeded
    ldrb w15, [x14]
    mov x10, #0
    cmp w15, w10
    b.ne .L31_2
.L31_1:
    adrp x15, lb_core_15hash_seed_value
    add x15, x15, :lo12:lb_core_15hash_seed_value
    movz x10, #31765
    movk x10, #32586, lsl #16
    movk x10, #31161, lsl #32
    movk x10, #40503, lsl #48
    eor x19, x15, x10
    str x19, [x15]
    movz x9, #1
    strb w9, [x14]
    b .L31_3
.L31_2:
.L31_3:
    adrp x14, lb_core_15hash_seed_value
    add x14, x14, :lo12:lb_core_15hash_seed_value
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L31_4:
    adrp x0, .Ltext_92
    add x0, x0, :lo12:.Ltext_92
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_9hash_seed, .-lb_core_9hash_seed

    .p2align 2
    .globl lb_core_8hash_mix
    .type lb_core_8hash_mix, %function
lb_core_8hash_mix:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    sub x15, x29, #48
    ldr x15, [x15]
    eor x14, x14, x15
    movz x10, #31765
    movk x10, #32586, lsl #16
    movk x10, #31161, lsl #32
    movk x10, #40503, lsl #48
    mul x14, x14, x10
.L32_2:
    lsr x15, x14, #32
    eor x15, x14, x15
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_8hash_mix, .-lb_core_8hash_mix

    .p2align 2
    .globl lb_core_10hash_bytes
    .type lb_core_10hash_bytes, %function
lb_core_10hash_bytes:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    str x22, [sp, #48]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x16, x29, #96
    str x2, [x16]
    sub x14, x29, #64
    ldr x14, [x14]
    sub x15, x29, #80
    ldr x19, [x15]
    cbnz x19, .L33_4
    b .L33_2
.L33_4:
.L33_1:
    sub x20, x29, #96
    mov x15, x14
    mov x9, #0
    mov x21, x9
.L33_5:
    ldr x14, [x20]
    cmp x21, x14
    b.hs .L33_7
.L33_6:
    add x14, x19, x21
    ldrb w14, [x14]
    mov w14, w14
    mov x0, x15
    mov x1, x14
    bl lb_core_8hash_mix
    mov x14, x0
    add x22, x21, #1
    mov x15, x14
    mov x21, x22
    b .L33_5
.L33_7:
    mov x14, x15
    b .L33_3
.L33_2:
.L33_3:
    sub x15, x29, #96
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    bl lb_core_8hash_mix
    mov x15, x0
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L33_8:
    adrp x0, .Ltext_96
    add x0, x0, :lo12:.Ltext_96
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_10hash_bytes, .-lb_core_10hash_bytes

    .p2align 2
    .globl lb_core_7mask_of
    .type lb_core_7mask_of, %function
lb_core_7mask_of:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str w0, [x16]
    sub x14, x29, #40
    ldrsw x14, [x14]
    movz x10, #64
    cmp w14, w10
    b.lt .L34_2
.L34_1:
    movn x9, #0
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L34_4:
    b .L34_3
.L34_2:
.L34_3:
    sxtw x19, w14
    movz x10, #64
    cmp x19, x10
    b.lo .L34_6
.L34_5:
    adrp x0, .Ltext_97
    add x0, x0, :lo12:.Ltext_97
    adrp x1, .Ltext_31
    add x1, x1, :lo12:.Ltext_31
    bl lb_core_7trap_at
.L34_6:
    movz x9, #1
    lsl x14, x9, x19
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_97
    add x0, x0, :lo12:.Ltext_97
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L34_7:
    adrp x0, .Ltext_97
    add x0, x0, :lo12:.Ltext_97
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_7mask_of, .-lb_core_7mask_of

    .p2align 2
    .globl lb_core_11sign_extend
    .type lb_core_11sign_extend, %function
lb_core_11sign_extend:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str w1, [x16]
    sub x14, x29, #72
    ldrsw x19, [x14]
    movz x10, #64
    cmp w19, w10
    b.lt .L35_2
.L35_1:
    sub x14, x29, #56
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L35_4:
    b .L35_3
.L35_2:
.L35_3:
    mov x0, x19
    bl lb_core_7mask_of
    mov x14, x0
    sub x15, x29, #56
    ldr x15, [x15]
    and x15, x14, x15
    mov w9, w19
    movz x10, #1
    subs w9, w9, w10
    b.vc 1f
    adrp x0, .Ltext_98
    add x0, x0, :lo12:.Ltext_98
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov w20, w9
    sxtw x21, w20
    movz x10, #64
    cmp x21, x10
    b.lo .L35_9
.L35_8:
    adrp x0, .Ltext_98
    add x0, x0, :lo12:.Ltext_98
    adrp x1, .Ltext_31
    add x1, x1, :lo12:.Ltext_31
    bl lb_core_7trap_at
.L35_9:
    movz x9, #1
    lsl x19, x9, x21
    and x19, x15, x19
    mov x10, #0
    cmp x19, x10
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    b.ne .L35_6
.L35_5:
    movn x10, #0
    eor x19, x14, x10
    orr x19, x15, x19
    mov x9, x19
    mov x0, x9
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L35_10:
    b .L35_7
.L35_6:
.L35_7:
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L35_11:
    adrp x0, .Ltext_99
    add x0, x0, :lo12:.Ltext_99
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_11sign_extend, .-lb_core_11sign_extend

    .p2align 2
    .globl lb_core_10signed_min
    .type lb_core_10signed_min, %function
lb_core_10signed_min:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str w0, [x16]
    sub x14, x29, #40
    ldrsw x14, [x14]
    movz x10, #64
    cmp w14, w10
    b.lt .L36_2
.L36_1:
    movz x9, #32768, lsl #48
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L36_4:
    b .L36_3
.L36_2:
.L36_3:
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.vc 1f
    adrp x0, .Ltext_102
    add x0, x0, :lo12:.Ltext_102
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov w15, w9
    sxtw x19, w15
    movz x10, #64
    cmp x19, x10
    b.lo .L36_6
.L36_5:
    adrp x0, .Ltext_102
    add x0, x0, :lo12:.Ltext_102
    adrp x1, .Ltext_31
    add x1, x1, :lo12:.Ltext_31
    bl lb_core_7trap_at
.L36_6:
    movz x9, #1
    lsl x14, x9, x19
    mov x9, #0
    sub x14, x9, x14
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L36_7:
    adrp x0, .Ltext_102
    add x0, x0, :lo12:.Ltext_102
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_10signed_min, .-lb_core_10signed_min

    .p2align 2
    .globl lb_core_10signed_max
    .type lb_core_10signed_max, %function
lb_core_10signed_max:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str w0, [x16]
    sub x14, x29, #40
    ldrsw x14, [x14]
    movz x10, #64
    cmp w14, w10
    b.lt .L37_2
.L37_1:
    movz x9, #65535
    movk x9, #65535, lsl #16
    movk x9, #65535, lsl #32
    movk x9, #32767, lsl #48
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L37_4:
    b .L37_3
.L37_2:
.L37_3:
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.vc 1f
    adrp x0, .Ltext_103
    add x0, x0, :lo12:.Ltext_103
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov w15, w9
    sxtw x19, w15
    movz x10, #64
    cmp x19, x10
    b.lo .L37_6
.L37_5:
    adrp x0, .Ltext_103
    add x0, x0, :lo12:.Ltext_103
    adrp x1, .Ltext_31
    add x1, x1, :lo12:.Ltext_31
    bl lb_core_7trap_at
.L37_6:
    movz x9, #1
    lsl x14, x9, x19
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.vc 1f
    adrp x0, .Ltext_103
    add x0, x0, :lo12:.Ltext_103
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L37_7:
    adrp x0, .Ltext_103
    add x0, x0, :lo12:.Ltext_103
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_10signed_max, .-lb_core_10signed_max

    .p2align 2
    .globl lb_core_11fits_signed
    .type lb_core_11fits_signed, %function
lb_core_11fits_signed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str w1, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    sub x14, x29, #64
    ldrsw x20, [x14]
    mov x0, x20
    bl lb_core_10signed_min
    mov x14, x0
    cmp x19, x14
    cset w14, ge
    cbnz w14, .L38_1
    b .L38_4
.L38_4:
    mov w15, w14
    b .L38_2
.L38_1:
    mov x0, x20
    bl lb_core_10signed_max
    mov x14, x0
    cmp x19, x14
    cset w15, le
.L38_2:
    and w14, w15, #255
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L38_3:
    adrp x0, .Ltext_104
    add x0, x0, :lo12:.Ltext_104
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_11fits_signed, .-lb_core_11fits_signed

    .p2align 2
    .globl lb_core_magnitude
    .type lb_core_magnitude, %function
lb_core_magnitude:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str w1, [x16]
    sub x16, x29, #96
    str w2, [x16]
    sub x14, x29, #96
    ldrsw x14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L39_2
.L39_1:
    sub x14, x29, #64
    ldr x14, [x14]
    sub x15, x29, #80
    ldrsw x15, [x15]
    mov x0, x14
    mov x1, x15
    bl lb_core_11sign_extend
    mov x19, x0
    sub x20, x29, #112
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov x10, #0
    cmp x19, x10
    cset w14, lt
    strb w14, [x20]
    add x14, x20, #8
    str x19, [x14]
    sub x19, x29, #48
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L39_4:
    b .L39_3
.L39_2:
.L39_3:
    sub x20, x29, #128
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov x9, #0
    strb w9, [x20]
    sub x14, x29, #64
    ldr x19, [x14]
    sub x14, x29, #80
    ldrsw x14, [x14]
    sub x10, x29, #144
    str x19, [x10]
    sub x10, x29, #160
    str w14, [x10]
    mov x0, x14
    bl lb_core_7mask_of
    mov x14, x0
    and x14, x19, x14
    b .L39_7
.L39_6:
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L39_7:
    add x15, x20, #8
    str x14, [x15]
    sub x19, x29, #48
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L39_5:
    adrp x0, .Ltext_106
    add x0, x0, :lo12:.Ltext_106
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_magnitude, .-lb_core_magnitude

    .p2align 2
    .globl lb_core_12checked_bits
    .type lb_core_12checked_bits, %function
lb_core_12checked_bits:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    sub x16, x29, #40
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #56
    str w2, [x16]
    sub x16, x29, #72
    str w3, [x16]
    sub x16, x29, #88
    str x4, [x16]
    sub x14, x29, #72
    ldrsw x14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L40_2
.L40_1:
    sub x14, x29, #40
    ldrb w15, [x14]
    cbnz w15, .L40_4
    b .L40_5
.L40_4:
    add x15, x14, #8
    ldr x19, [x15]
    sub x15, x29, #56
    ldrsw x15, [x15]
    mov x0, x15
    bl lb_core_10signed_min
    mov x15, x0
    cmp x19, x15
    cset w15, lt
    b .L40_6
.L40_5:
    add x15, x14, #8
    ldr x19, [x15]
    sub x15, x29, #56
    ldrsw x15, [x15]
    mov x0, x15
    bl lb_core_10signed_max
    mov x15, x0
    cmp x19, x15
    cset w15, hi
.L40_6:
    and w14, w15, #255
    b .L40_3
.L40_2:
    sub x14, x29, #40
    ldrb w15, [x14]
    cbnz w15, .L40_15
    b .L40_7
.L40_15:
    mov w14, w15
    b .L40_8
.L40_7:
    add x15, x14, #8
    ldr x19, [x15]
    sub x15, x29, #56
    ldrsw x15, [x15]
    sub x10, x29, #104
    str x19, [x10]
    sub x10, x29, #120
    str w15, [x10]
    mov x0, x15
    bl lb_core_7mask_of
    mov x15, x0
    cmp x19, x15
    cset w15, ls
    and w15, w15, #255
    sub x10, x29, #128
    str w15, [x10]
    b .L40_14
.L40_13:
    adrp x0, .Ltext_105
    add x0, x0, :lo12:.Ltext_105
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L40_14:
    mov x10, #0
    cmp w15, w10
    cset w14, eq
.L40_8:
    and w15, w14, #255
    mov w14, w15
.L40_3:
    and w15, w14, #255
    cbnz w15, .L40_9
    b .L40_10
.L40_9:
    sub x14, x29, #88
    ldr x14, [x14]
    adrp x15, .Ltext_107
    add x15, x15, :lo12:.Ltext_107
    mov x0, x14
    mov x1, x15
    bl lb_core_7trap_at
    b .L40_11
.L40_10:
.L40_11:
    sub x14, x29, #40
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L40_12:
    adrp x0, .Ltext_108
    add x0, x0, :lo12:.Ltext_108
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_12checked_bits, .-lb_core_12checked_bits

    .p2align 2
    .globl lb_core_6conv_s
    .type lb_core_6conv_s, %function
lb_core_6conv_s:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    str x19, [sp, #168]
    str x20, [sp, #160]
    str x21, [sp, #152]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str w1, [x16]
    sub x16, x29, #88
    str w2, [x16]
    sub x16, x29, #104
    str w3, [x16]
    sub x16, x29, #120
    str w4, [x16]
    sub x16, x29, #136
    str w5, [x16]
    sub x16, x29, #152
    str x6, [x16]
    sub x19, x29, #168
    sub x14, x29, #56
    ldr x14, [x14]
    sub x15, x29, #72
    ldrsw x15, [x15]
    sub x20, x29, #88
    ldrsw x20, [x20]
    mov x0, x14
    mov x1, x15
    mov x2, x20
    bl lb_core_magnitude
    sub x16, x29, #184
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #184
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #136
    ldrsw x14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne .L41_2
.L41_1:
    sub x14, x29, #104
    ldrsw x14, [x14]
    sub x15, x29, #120
    ldrsw x15, [x15]
    sub x20, x29, #152
    ldr x20, [x20]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    mov x3, x15
    mov x4, x20
    bl lb_core_12checked_bits
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L41_4:
    b .L41_3
.L41_2:
.L41_3:
    add x14, x19, #8
    ldr x20, [x14]
    sub x14, x29, #104
    ldrsw x21, [x14]
    mov x0, x21
    bl lb_core_7mask_of
    mov x14, x0
    and x14, x20, x14
    sub x15, x29, #120
    ldrsw x15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne .L41_6
.L41_5:
    mov x0, x14
    mov x1, x21
    bl lb_core_11sign_extend
    mov x15, x0
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L41_8:
    b .L41_7
.L41_6:
.L41_7:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L41_9:
    adrp x0, .Ltext_109
    add x0, x0, :lo12:.Ltext_109
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6conv_s, .-lb_core_6conv_s

    .p2align 2
    .globl lb_core_6conv_u
    .type lb_core_6conv_u, %function
lb_core_6conv_u:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    str x19, [sp, #184]
    str x20, [sp, #176]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str w1, [x16]
    sub x16, x29, #80
    str w2, [x16]
    sub x16, x29, #96
    str w3, [x16]
    sub x16, x29, #112
    str w4, [x16]
    sub x16, x29, #128
    str w5, [x16]
    sub x16, x29, #144
    str x6, [x16]
    sub x19, x29, #160
    sub x14, x29, #48
    ldr x14, [x14]
    sub x15, x29, #64
    ldrsw x15, [x15]
    sub x20, x29, #80
    ldrsw x20, [x20]
    mov x0, x14
    mov x1, x15
    mov x2, x20
    bl lb_core_magnitude
    sub x16, x29, #176
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #176
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #128
    ldrsw x14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne .L42_2
.L42_1:
    sub x14, x29, #96
    ldrsw x14, [x14]
    sub x15, x29, #112
    ldrsw x15, [x15]
    sub x20, x29, #144
    ldr x20, [x20]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    mov x3, x15
    mov x4, x20
    bl lb_core_12checked_bits
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L42_4:
    b .L42_3
.L42_2:
.L42_3:
    add x14, x19, #8
    ldr x20, [x14]
    sub x14, x29, #96
    ldrsw x14, [x14]
    sub x10, x29, #192
    str x20, [x10]
    sub x10, x29, #208
    str w14, [x10]
    mov x0, x14
    bl lb_core_7mask_of
    mov x14, x0
    and x14, x20, x14
    b .L42_7
.L42_6:
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L42_7:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L42_5:
    adrp x0, .Ltext_110
    add x0, x0, :lo12:.Ltext_110
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6conv_u, .-lb_core_6conv_u

    .p2align 2
    .globl lb_core_7to_char
    .type lb_core_7to_char, %function
lb_core_7to_char:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str w1, [x16]
    sub x16, x29, #72
    str x2, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    movz x10, #65535
    movk x10, #16, lsl #16
    cmp x19, x10
    cset w14, hi
    cbnz w14, .L43_11
    b .L43_1
.L43_11:
    mov w15, w14
    b .L43_2
.L43_1:
    movz x10, #55296
    cmp x19, x10
    cset w14, hs
    cbnz w14, .L43_3
    b .L43_12
.L43_12:
    mov w15, w14
    b .L43_4
.L43_3:
    movz x10, #57343
    cmp x19, x10
    cset w15, ls
.L43_4:
    and w14, w15, #255
    mov w15, w14
.L43_2:
    and w14, w15, #255
    and w14, w14, #255
    cbnz w14, .L43_8
    b .L43_13
.L43_13:
    mov w15, w14
    b .L43_9
.L43_8:
    sub x14, x29, #56
    ldrsw x14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L43_9:
    and w14, w15, #255
    cbnz w14, .L43_5
    b .L43_6
.L43_5:
    sub x14, x29, #72
    ldr x14, [x14]
    adrp x15, .Ltext_107
    add x15, x15, :lo12:.Ltext_107
    mov x0, x14
    mov x1, x15
    bl lb_core_7trap_at
    b .L43_7
.L43_6:
.L43_7:
    movz x10, #65535
    movk x10, #65535, lsl #16
    and x14, x19, x10
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L43_10:
    adrp x0, .Ltext_111
    add x0, x0, :lo12:.Ltext_111
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_7to_char, .-lb_core_7to_char

    .p2align 2
    .globl lb_core_6f_to_s
    .type lb_core_6f_to_s, %function
lb_core_6f_to_s:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str d8, [sp, #112]
    sub x16, x29, #48
    str d0, [x16]
    sub x16, x29, #64
    str w0, [x16]
    sub x16, x29, #80
    str w1, [x16]
    sub x16, x29, #96
    str x2, [x16]
    sub x14, x29, #64
    ldrsw x14, [x14]
    sub x10, x29, #112
    str w14, [x10]
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.vc 1f
    adrp x0, .Ltext_113
    add x0, x0, :lo12:.Ltext_113
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov w15, w9
    sxtw x19, w15
    movz x10, #64
    cmp x19, x10
    b.lo .L44_26
.L44_25:
    adrp x0, .Ltext_113
    add x0, x0, :lo12:.Ltext_113
    adrp x1, .Ltext_31
    add x1, x1, :lo12:.Ltext_31
    bl lb_core_7trap_at
.L44_26:
    movz x9, #1
    lsl x15, x9, x19
    ucvtf d24, x15
    b .L44_28
.L44_27:
    adrp x0, .Ltext_113
    add x0, x0, :lo12:.Ltext_113
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L44_28:
    mov x9, #0
    fmov d25, x9
    fsub d26, d25, d24
    sub x15, x29, #80
    ldrsw x15, [x15]
    mov x10, #0
    cmp w15, w10
    b.ne .L44_2
.L44_1:
    sub x14, x29, #48
    ldr d8, [x14]
    sub x10, x29, #128
    str d8, [x10]
    fsub d27, d8, d8
    fcmp d25, d27
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #136
    str w14, [x10]
    b .L44_30
.L44_29:
    adrp x0, .Ltext_112
    add x0, x0, :lo12:.Ltext_112
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L44_30:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L44_31
    b .L44_7
.L44_31:
    mov w14, w15
    b .L44_8
.L44_7:
    fcmp d8, d26
    cset w14, mi
.L44_8:
    and w15, w14, #255
    cbnz w15, .L44_32
    b .L44_9
.L44_32:
    mov w14, w15
    b .L44_10
.L44_9:
    fcmp d8, d24
    cset w14, ge
.L44_10:
    and w15, w14, #255
    cbnz w15, .L44_4
    b .L44_5
.L44_4:
    sub x14, x29, #96
    ldr x14, [x14]
    adrp x15, .Ltext_107
    add x15, x15, :lo12:.Ltext_107
    mov x0, x14
    mov x1, x15
    bl lb_core_7trap_at
    b .L44_6
.L44_5:
.L44_6:
    fcvtzs x14, d8
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #120]
    ldr d8, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L44_11:
    b .L44_3
.L44_2:
.L44_3:
    sub x15, x29, #48
    ldr d25, [x15]
    fcmp d25, d25
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne .L44_13
.L44_12:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #120]
    ldr d8, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L44_15:
    b .L44_14
.L44_13:
.L44_14:
    fcmp d25, d26
    cset w15, ls
    cbnz w15, .L44_16
    b .L44_17
.L44_16:
    mov x0, x14
    bl lb_core_10signed_min
    mov x15, x0
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #120]
    ldr d8, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L44_19:
    b .L44_18
.L44_17:
.L44_18:
    fcmp d25, d24
    cset w15, ge
    cbnz w15, .L44_20
    b .L44_21
.L44_20:
    mov x0, x14
    bl lb_core_10signed_max
    mov x15, x0
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #120]
    ldr d8, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L44_23:
    b .L44_22
.L44_21:
.L44_22:
    fcvtzs x14, d25
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #120]
    ldr d8, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L44_24:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6f_to_s, .-lb_core_6f_to_s

    .p2align 2
    .globl lb_core_6f_to_u
    .type lb_core_6f_to_u, %function
lb_core_6f_to_u:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str d8, [sp, #128]
    sub x16, x29, #48
    str d0, [x16]
    sub x16, x29, #64
    str w0, [x16]
    sub x16, x29, #80
    str w1, [x16]
    sub x16, x29, #96
    str x2, [x16]
    sub x14, x29, #64
    ldrsw x14, [x14]
    sub x10, x29, #112
    str w14, [x10]
    sub x10, x29, #128
    str w14, [x10]
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.vc 1f
    adrp x0, .Ltext_113
    add x0, x0, :lo12:.Ltext_113
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov w15, w9
    sxtw x19, w15
    movz x10, #64
    cmp x19, x10
    b.lo .L45_25
.L45_24:
    adrp x0, .Ltext_113
    add x0, x0, :lo12:.Ltext_113
    adrp x1, .Ltext_31
    add x1, x1, :lo12:.Ltext_31
    bl lb_core_7trap_at
.L45_25:
    movz x9, #1
    lsl x15, x9, x19
    ucvtf d24, x15
    b .L45_27
.L45_26:
    adrp x0, .Ltext_113
    add x0, x0, :lo12:.Ltext_113
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L45_27:
    movz x9, #16384, lsl #48
    fmov d25, x9
    fmul d25, d25, d24
    b .L45_28
.L45_23:
    adrp x0, .Ltext_114
    add x0, x0, :lo12:.Ltext_114
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L45_28:
    sub x15, x29, #80
    ldrsw x15, [x15]
    mov x10, #0
    cmp w15, w10
    b.ne .L45_2
.L45_1:
    sub x14, x29, #48
    ldr d8, [x14]
    sub x10, x29, #144
    str d8, [x10]
    fsub d24, d8, d8
    mov x9, #0
    fmov d26, x9
    fcmp d24, d26
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #152
    str w14, [x10]
    b .L45_30
.L45_29:
    adrp x0, .Ltext_112
    add x0, x0, :lo12:.Ltext_112
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L45_30:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L45_31
    b .L45_7
.L45_31:
    mov w14, w15
    b .L45_8
.L45_7:
    fcmp d8, d26
    cset w14, mi
.L45_8:
    and w15, w14, #255
    cbnz w15, .L45_32
    b .L45_9
.L45_32:
    mov w14, w15
    b .L45_10
.L45_9:
    fcmp d8, d25
    cset w14, ge
.L45_10:
    and w15, w14, #255
    cbnz w15, .L45_4
    b .L45_5
.L45_4:
    sub x14, x29, #96
    ldr x14, [x14]
    adrp x15, .Ltext_107
    add x15, x15, :lo12:.Ltext_107
    mov x0, x14
    mov x1, x15
    bl lb_core_7trap_at
    b .L45_6
.L45_5:
.L45_6:
    fcvtzu x14, d8
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #136]
    ldr d8, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L45_11:
    b .L45_3
.L45_2:
.L45_3:
    sub x15, x29, #48
    ldr d24, [x15]
    fcmp d24, d24
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, .L45_33
    b .L45_15
.L45_33:
    mov w19, w15
    b .L45_16
.L45_15:
    mov x9, #0
    fmov d26, x9
    fcmp d24, d26
    cset w19, mi
.L45_16:
    and w15, w19, #255
    cbnz w15, .L45_12
    b .L45_13
.L45_12:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #136]
    ldr d8, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L45_17:
    b .L45_14
.L45_13:
.L45_14:
    fcmp d24, d25
    cset w15, ge
    cbnz w15, .L45_18
    b .L45_19
.L45_18:
    mov x0, x14
    bl lb_core_7mask_of
    mov x15, x0
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #136]
    ldr d8, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L45_21:
    b .L45_20
.L45_19:
.L45_20:
    fcvtzu x14, d24
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #136]
    ldr d8, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L45_22:
    adrp x0, .Ltext_116
    add x0, x0, :lo12:.Ltext_116
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6f_to_u, .-lb_core_6f_to_u

    .p2align 2
    .globl lb_core_15mul_overflows_s
    .type lb_core_15mul_overflows_s, %function
lb_core_15mul_overflows_s:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x14, x29, #56
    ldr x19, [x14]
    mov x10, #0
    cmp x19, x10
    cset w14, eq
    cbnz w14, .L46_20
    b .L46_4
.L46_20:
    mov w15, w14
    b .L46_5
.L46_4:
    sub x14, x29, #72
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
.L46_5:
    and w14, w15, #255
    cbnz w14, .L46_1
    b .L46_2
.L46_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L46_6:
    b .L46_3
.L46_2:
.L46_3:
    movn x10, #0
    cmp x19, x10
    b.ne .L46_8
.L46_7:
    sub x14, x29, #72
    ldr x19, [x14]
    movz x0, #64
    bl lb_core_10signed_min
    mov x14, x0
    cmp x19, x14
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L46_10:
    b .L46_9
.L46_8:
.L46_9:
    sub x14, x29, #72
    ldr x14, [x14]
    movn x10, #0
    cmp x14, x10
    cset w15, eq
    cbnz w15, .L46_11
    b .L46_12
.L46_11:
    movz x0, #64
    bl lb_core_10signed_min
    mov x14, x0
    cmp x19, x14
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L46_14:
    b .L46_13
.L46_12:
.L46_13:
    mul x21, x19, x14
    mov x10, #0
    cmp x14, x10
    b.ne .L46_16
.L46_15:
    adrp x0, .Ltext_119
    add x0, x0, :lo12:.Ltext_119
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
.L46_16:
    movz x10, #32768, lsl #48
    cmp x21, x10
    cset w20, eq
    and w20, w15, w20
    cbnz w20, .L46_17
    b .L46_18
.L46_17:
    adrp x0, .Ltext_119
    add x0, x0, :lo12:.Ltext_119
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
.L46_18:
    sdiv x15, x21, x14
    cmp x19, x15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L46_19:
    adrp x0, .Ltext_119
    add x0, x0, :lo12:.Ltext_119
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_15mul_overflows_s, .-lb_core_15mul_overflows_s

    .p2align 2
    .globl lb_core_6adds_s
    .type lb_core_6adds_s, %function
lb_core_6adds_s:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str w2, [x16]
    sub x14, x29, #56
    ldr x14, [x14]
    sub x15, x29, #88
    ldrsw x19, [x15]
    mov x0, x14
    mov x1, x19
    bl lb_core_11sign_extend
    mov x20, x0
    sub x14, x29, #72
    ldr x14, [x14]
    mov x0, x14
    mov x1, x19
    bl lb_core_11sign_extend
    mov x14, x0
    add x21, x20, x14
    sub x10, x29, #104
    str x20, [x10]
    sub x10, x29, #120
    str x14, [x10]
    sub x10, x29, #136
    str x21, [x10]
    eor x15, x20, x21
    eor x14, x14, x21
    and x14, x15, x14
    mov x10, #0
    cmp x14, x10
    cset w14, lt
    and w14, w14, #255
    sub x10, x29, #144
    str w14, [x10]
    b .L47_12
.L47_11:
    adrp x0, .Ltext_117
    add x0, x0, :lo12:.Ltext_117
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L47_12:
    cbnz w14, .L47_13
    b .L47_4
.L47_13:
    mov w15, w14
    b .L47_5
.L47_4:
    mov x0, x21
    mov x1, x19
    bl lb_core_11fits_signed
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L47_5:
    and w14, w15, #255
    cbnz w14, .L47_1
    b .L47_2
.L47_1:
    mov x10, #0
    cmp x20, x10
    b.ge .L47_7
.L47_6:
    mov x0, x19
    bl lb_core_10signed_min
    mov x14, x0
    b .L47_8
.L47_7:
    mov x0, x19
    bl lb_core_10signed_max
    mov x14, x0
.L47_8:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L47_9:
    b .L47_3
.L47_2:
.L47_3:
    mov x9, x21
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L47_10:
    adrp x0, .Ltext_120
    add x0, x0, :lo12:.Ltext_120
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6adds_s, .-lb_core_6adds_s

    .p2align 2
    .globl lb_core_6adds_u
    .type lb_core_6adds_u, %function
lb_core_6adds_u:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str w2, [x16]
    sub x14, x29, #56
    ldr x19, [x14]
    sub x14, x29, #88
    ldrsw x20, [x14]
    sub x10, x29, #104
    str x19, [x10]
    sub x10, x29, #120
    str w20, [x10]
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    and x19, x19, x14
    b .L48_9
.L48_8:
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L48_9:
    sub x14, x29, #72
    ldr x21, [x14]
    sub x10, x29, #104
    str x21, [x10]
    sub x10, x29, #120
    str w20, [x10]
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    and x14, x21, x14
    b .L48_11
.L48_10:
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L48_11:
    add x21, x19, x14
    cmp x21, x19
    cset w15, lo
    cbnz w15, .L48_14
    b .L48_4
.L48_14:
    mov w14, w15
    b .L48_5
.L48_4:
    sub x10, x29, #136
    str x21, [x10]
    sub x10, x29, #152
    str w20, [x10]
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    cmp x21, x14
    cset w14, ls
    and w14, w14, #255
    sub x10, x29, #160
    str w14, [x10]
    b .L48_13
.L48_12:
    adrp x0, .Ltext_105
    add x0, x0, :lo12:.Ltext_105
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L48_13:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov w14, w15
.L48_5:
    and w15, w14, #255
    cbnz w15, .L48_1
    b .L48_2
.L48_1:
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L48_6:
    b .L48_3
.L48_2:
.L48_3:
    mov x9, x21
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L48_7:
    adrp x0, .Ltext_121
    add x0, x0, :lo12:.Ltext_121
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6adds_u, .-lb_core_6adds_u

    .p2align 2
    .globl lb_core_6subs_s
    .type lb_core_6subs_s, %function
lb_core_6subs_s:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str w2, [x16]
    sub x14, x29, #56
    ldr x14, [x14]
    sub x15, x29, #88
    ldrsw x19, [x15]
    mov x0, x14
    mov x1, x19
    bl lb_core_11sign_extend
    mov x20, x0
    sub x14, x29, #72
    ldr x14, [x14]
    mov x0, x14
    mov x1, x19
    bl lb_core_11sign_extend
    mov x14, x0
    sub x21, x20, x14
    sub x10, x29, #104
    str x20, [x10]
    sub x10, x29, #120
    str x14, [x10]
    sub x10, x29, #136
    str x21, [x10]
    eor x14, x20, x14
    eor x15, x20, x21
    and x14, x14, x15
    mov x10, #0
    cmp x14, x10
    cset w14, lt
    and w14, w14, #255
    sub x10, x29, #144
    str w14, [x10]
    b .L49_12
.L49_11:
    adrp x0, .Ltext_118
    add x0, x0, :lo12:.Ltext_118
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L49_12:
    cbnz w14, .L49_13
    b .L49_4
.L49_13:
    mov w15, w14
    b .L49_5
.L49_4:
    mov x0, x21
    mov x1, x19
    bl lb_core_11fits_signed
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L49_5:
    and w14, w15, #255
    cbnz w14, .L49_1
    b .L49_2
.L49_1:
    mov x10, #0
    cmp x20, x10
    b.ge .L49_7
.L49_6:
    mov x0, x19
    bl lb_core_10signed_min
    mov x14, x0
    b .L49_8
.L49_7:
    mov x0, x19
    bl lb_core_10signed_max
    mov x14, x0
.L49_8:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L49_9:
    b .L49_3
.L49_2:
.L49_3:
    mov x9, x21
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L49_10:
    adrp x0, .Ltext_122
    add x0, x0, :lo12:.Ltext_122
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6subs_s, .-lb_core_6subs_s

    .p2align 2
    .globl lb_core_6subs_u
    .type lb_core_6subs_u, %function
lb_core_6subs_u:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str w2, [x16]
    sub x14, x29, #56
    ldr x19, [x14]
    sub x14, x29, #88
    ldrsw x20, [x14]
    sub x10, x29, #104
    str x19, [x10]
    sub x10, x29, #120
    str w20, [x10]
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    and x19, x19, x14
    b .L50_7
.L50_6:
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L50_7:
    sub x14, x29, #72
    ldr x21, [x14]
    sub x10, x29, #104
    str x21, [x10]
    sub x10, x29, #120
    str w20, [x10]
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    and x14, x21, x14
    b .L50_9
.L50_8:
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L50_9:
    cmp x19, x14
    b.hs .L50_2
.L50_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L50_4:
    b .L50_3
.L50_2:
.L50_3:
    sub x15, x19, x14
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L50_5:
    adrp x0, .Ltext_123
    add x0, x0, :lo12:.Ltext_123
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6subs_u, .-lb_core_6subs_u

    .p2align 2
    .globl lb_core_6muls_s
    .type lb_core_6muls_s, %function
lb_core_6muls_s:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str w2, [x16]
    sub x14, x29, #56
    ldr x14, [x14]
    sub x15, x29, #88
    ldrsw x19, [x15]
    mov x0, x14
    mov x1, x19
    bl lb_core_11sign_extend
    mov x20, x0
    sub x14, x29, #72
    ldr x14, [x14]
    mov x0, x14
    mov x1, x19
    bl lb_core_11sign_extend
    mov x21, x0
    mov x0, x20
    mov x1, x21
    bl lb_core_15mul_overflows_s
    mov w14, w0
    cbnz w14, .L51_11
    b .L51_4
.L51_11:
    mov w15, w14
    b .L51_5
.L51_4:
    mul x14, x20, x21
    mov x0, x14
    mov x1, x19
    bl lb_core_11fits_signed
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L51_5:
    and w14, w15, #255
    cbnz w14, .L51_1
    b .L51_2
.L51_1:
    mov x10, #0
    cmp x20, x10
    cset w14, lt
    mov x10, #0
    cmp x21, x10
    cset w15, lt
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L51_7
.L51_6:
    mov x0, x19
    bl lb_core_10signed_min
    mov x14, x0
    b .L51_8
.L51_7:
    mov x0, x19
    bl lb_core_10signed_max
    mov x14, x0
.L51_8:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L51_9:
    b .L51_3
.L51_2:
.L51_3:
    mul x14, x20, x21
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L51_10:
    adrp x0, .Ltext_124
    add x0, x0, :lo12:.Ltext_124
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6muls_s, .-lb_core_6muls_s

    .p2align 2
    .globl lb_core_6muls_u
    .type lb_core_6muls_u, %function
lb_core_6muls_u:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x16, x29, #96
    str w2, [x16]
    sub x14, x29, #64
    ldr x19, [x14]
    sub x14, x29, #96
    ldrsw x20, [x14]
    sub x10, x29, #112
    str x19, [x10]
    sub x10, x29, #128
    str w20, [x10]
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    and x19, x19, x14
    b .L52_11
.L52_10:
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L52_11:
    sub x14, x29, #80
    ldr x21, [x14]
    sub x10, x29, #112
    str x21, [x10]
    sub x10, x29, #128
    str w20, [x10]
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    and x21, x21, x14
    b .L52_13
.L52_12:
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L52_13:
    mov x10, #0
    cmp x21, x10
    cset w22, eq
    mov x10, #0
    cmp w22, w10
    cset w14, eq
    cbnz w14, .L52_4
    b .L52_16
.L52_16:
    mov w15, w14
    b .L52_5
.L52_4:
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    cbnz w22, .L52_6
    b .L52_7
.L52_6:
    adrp x0, .Ltext_125
    add x0, x0, :lo12:.Ltext_125
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
.L52_7:
    udiv x15, x14, x21
    cmp x19, x15
    cset w15, hi
.L52_5:
    and w14, w15, #255
    cbnz w14, .L52_1
    b .L52_2
.L52_1:
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L52_8:
    b .L52_3
.L52_2:
.L52_3:
    mul x22, x19, x21
    sub x10, x29, #112
    str x22, [x10]
    sub x10, x29, #128
    str w20, [x10]
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    and x14, x22, x14
    b .L52_15
.L52_14:
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L52_15:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L52_9:
    adrp x0, .Ltext_126
    add x0, x0, :lo12:.Ltext_126
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6muls_u, .-lb_core_6muls_u

    .p2align 2
    .globl lb_core_6qadd_s
    .type lb_core_6qadd_s, %function
lb_core_6qadd_s:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str w2, [x16]
    sub x16, x29, #104
    str x3, [x16]
    sub x14, x29, #56
    ldr x14, [x14]
    sub x15, x29, #88
    ldrsw x19, [x15]
    mov x0, x14
    mov x1, x19
    bl lb_core_11sign_extend
    mov x20, x0
    sub x14, x29, #72
    ldr x14, [x14]
    mov x0, x14
    mov x1, x19
    bl lb_core_11sign_extend
    mov x14, x0
    add x21, x20, x14
    sub x10, x29, #120
    str x20, [x10]
    sub x10, x29, #136
    str x14, [x10]
    sub x10, x29, #152
    str x21, [x10]
    eor x15, x20, x21
    eor x14, x14, x21
    and x14, x15, x14
    mov x10, #0
    cmp x14, x10
    cset w14, lt
    and w14, w14, #255
    sub x10, x29, #160
    str w14, [x10]
    b .L53_9
.L53_8:
    adrp x0, .Ltext_117
    add x0, x0, :lo12:.Ltext_117
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L53_9:
    cbnz w14, .L53_10
    b .L53_4
.L53_10:
    mov w15, w14
    b .L53_5
.L53_4:
    mov x0, x21
    mov x1, x19
    bl lb_core_11fits_signed
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L53_5:
    and w14, w15, #255
    cbnz w14, .L53_1
    b .L53_2
.L53_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L53_6:
    b .L53_3
.L53_2:
.L53_3:
    sub x14, x29, #104
    ldr x14, [x14]
    str x21, [x14]
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L53_7:
    adrp x0, .Ltext_127
    add x0, x0, :lo12:.Ltext_127
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6qadd_s, .-lb_core_6qadd_s

    .p2align 2
    .globl lb_core_6qadd_u
    .type lb_core_6qadd_u, %function
lb_core_6qadd_u:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    str x20, [sp, #144]
    str x21, [sp, #136]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str w2, [x16]
    sub x16, x29, #104
    str x3, [x16]
    sub x14, x29, #56
    ldr x19, [x14]
    sub x14, x29, #88
    ldrsw x20, [x14]
    sub x10, x29, #120
    str x19, [x10]
    sub x10, x29, #136
    str w20, [x10]
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    and x19, x19, x14
    b .L54_9
.L54_8:
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L54_9:
    sub x14, x29, #72
    ldr x21, [x14]
    sub x10, x29, #120
    str x21, [x10]
    sub x10, x29, #136
    str w20, [x10]
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    and x14, x21, x14
    b .L54_11
.L54_10:
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L54_11:
    add x21, x19, x14
    cmp x21, x19
    cset w15, lo
    cbnz w15, .L54_14
    b .L54_4
.L54_14:
    mov w14, w15
    b .L54_5
.L54_4:
    sub x10, x29, #152
    str x21, [x10]
    sub x10, x29, #168
    str w20, [x10]
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    cmp x21, x14
    cset w14, ls
    and w14, w14, #255
    sub x10, x29, #176
    str w14, [x10]
    b .L54_13
.L54_12:
    adrp x0, .Ltext_105
    add x0, x0, :lo12:.Ltext_105
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L54_13:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov w14, w15
.L54_5:
    and w15, w14, #255
    cbnz w15, .L54_1
    b .L54_2
.L54_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L54_6:
    b .L54_3
.L54_2:
.L54_3:
    sub x14, x29, #104
    ldr x14, [x14]
    str x21, [x14]
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L54_7:
    adrp x0, .Ltext_128
    add x0, x0, :lo12:.Ltext_128
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6qadd_u, .-lb_core_6qadd_u

    .p2align 2
    .globl lb_core_6qsub_s
    .type lb_core_6qsub_s, %function
lb_core_6qsub_s:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str w2, [x16]
    sub x16, x29, #104
    str x3, [x16]
    sub x14, x29, #56
    ldr x14, [x14]
    sub x15, x29, #88
    ldrsw x19, [x15]
    mov x0, x14
    mov x1, x19
    bl lb_core_11sign_extend
    mov x20, x0
    sub x14, x29, #72
    ldr x14, [x14]
    mov x0, x14
    mov x1, x19
    bl lb_core_11sign_extend
    mov x14, x0
    sub x21, x20, x14
    sub x10, x29, #120
    str x20, [x10]
    sub x10, x29, #136
    str x14, [x10]
    sub x10, x29, #152
    str x21, [x10]
    eor x14, x20, x14
    eor x15, x20, x21
    and x14, x14, x15
    mov x10, #0
    cmp x14, x10
    cset w14, lt
    and w14, w14, #255
    sub x10, x29, #160
    str w14, [x10]
    b .L55_9
.L55_8:
    adrp x0, .Ltext_118
    add x0, x0, :lo12:.Ltext_118
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L55_9:
    cbnz w14, .L55_10
    b .L55_4
.L55_10:
    mov w15, w14
    b .L55_5
.L55_4:
    mov x0, x21
    mov x1, x19
    bl lb_core_11fits_signed
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L55_5:
    and w14, w15, #255
    cbnz w14, .L55_1
    b .L55_2
.L55_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L55_6:
    b .L55_3
.L55_2:
.L55_3:
    sub x14, x29, #104
    ldr x14, [x14]
    str x21, [x14]
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L55_7:
    adrp x0, .Ltext_129
    add x0, x0, :lo12:.Ltext_129
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6qsub_s, .-lb_core_6qsub_s

    .p2align 2
    .globl lb_core_6qsub_u
    .type lb_core_6qsub_u, %function
lb_core_6qsub_u:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str w2, [x16]
    sub x16, x29, #104
    str x3, [x16]
    sub x14, x29, #56
    ldr x19, [x14]
    sub x14, x29, #88
    ldrsw x20, [x14]
    sub x10, x29, #120
    str x19, [x10]
    sub x10, x29, #136
    str w20, [x10]
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    and x19, x19, x14
    b .L56_7
.L56_6:
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L56_7:
    sub x14, x29, #72
    ldr x21, [x14]
    sub x10, x29, #120
    str x21, [x10]
    sub x10, x29, #136
    str w20, [x10]
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    and x14, x21, x14
    b .L56_9
.L56_8:
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L56_9:
    cmp x19, x14
    b.hs .L56_2
.L56_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L56_4:
    b .L56_3
.L56_2:
.L56_3:
    sub x15, x29, #104
    ldr x15, [x15]
    sub x20, x19, x14
    str x20, [x15]
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L56_5:
    adrp x0, .Ltext_131
    add x0, x0, :lo12:.Ltext_131
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6qsub_u, .-lb_core_6qsub_u

    .p2align 2
    .globl lb_core_6qmul_s
    .type lb_core_6qmul_s, %function
lb_core_6qmul_s:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str w2, [x16]
    sub x16, x29, #104
    str x3, [x16]
    sub x14, x29, #56
    ldr x14, [x14]
    sub x15, x29, #88
    ldrsw x19, [x15]
    mov x0, x14
    mov x1, x19
    bl lb_core_11sign_extend
    mov x20, x0
    sub x14, x29, #72
    ldr x14, [x14]
    mov x0, x14
    mov x1, x19
    bl lb_core_11sign_extend
    mov x21, x0
    mov x0, x20
    mov x1, x21
    bl lb_core_15mul_overflows_s
    mov w14, w0
    cbnz w14, .L57_8
    b .L57_4
.L57_8:
    mov w15, w14
    b .L57_5
.L57_4:
    mul x14, x20, x21
    mov x0, x14
    mov x1, x19
    bl lb_core_11fits_signed
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L57_5:
    and w14, w15, #255
    cbnz w14, .L57_1
    b .L57_2
.L57_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L57_6:
    b .L57_3
.L57_2:
.L57_3:
    sub x14, x29, #104
    ldr x14, [x14]
    mul x15, x20, x21
    str x15, [x14]
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L57_7:
    adrp x0, .Ltext_132
    add x0, x0, :lo12:.Ltext_132
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6qmul_s, .-lb_core_6qmul_s

    .p2align 2
    .globl lb_core_6qmul_u
    .type lb_core_6qmul_u, %function
lb_core_6qmul_u:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x16, x29, #96
    str w2, [x16]
    sub x16, x29, #112
    str x3, [x16]
    sub x14, x29, #64
    ldr x19, [x14]
    sub x14, x29, #96
    ldrsw x20, [x14]
    sub x10, x29, #128
    str x19, [x10]
    sub x10, x29, #144
    str w20, [x10]
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    and x19, x19, x14
    b .L58_11
.L58_10:
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L58_11:
    sub x14, x29, #80
    ldr x21, [x14]
    sub x10, x29, #128
    str x21, [x10]
    sub x10, x29, #144
    str w20, [x10]
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    and x21, x21, x14
    b .L58_13
.L58_12:
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L58_13:
    mov x10, #0
    cmp x21, x10
    cset w22, eq
    mov x10, #0
    cmp w22, w10
    cset w14, eq
    cbnz w14, .L58_4
    b .L58_14
.L58_14:
    mov w15, w14
    b .L58_5
.L58_4:
    mov x0, x20
    bl lb_core_7mask_of
    mov x14, x0
    cbnz w22, .L58_6
    b .L58_7
.L58_6:
    adrp x0, .Ltext_133
    add x0, x0, :lo12:.Ltext_133
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
.L58_7:
    udiv x15, x14, x21
    cmp x19, x15
    cset w15, hi
.L58_5:
    and w14, w15, #255
    cbnz w14, .L58_1
    b .L58_2
.L58_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L58_8:
    b .L58_3
.L58_2:
.L58_3:
    sub x14, x29, #112
    ldr x14, [x14]
    mul x15, x19, x21
    str x15, [x14]
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L58_9:
    adrp x0, .Ltext_134
    add x0, x0, :lo12:.Ltext_134
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_core_6qmul_u, .-lb_core_6qmul_u

    .p2align 2
    .globl lb_core_exit
    .type lb_core_exit, %function
lb_core_exit:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    mov x0, x14
    bl exit
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_core_exit, .-lb_core_exit

    .section .init_array,"aw"
    .p2align 3
    .quad lb_core_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/core.lucb:11:5"
.Ltext_2:
    .asciz "src/std/core.lucb:27:5"
.Ltext_3:
    .asciz "trap: "
.Ltext_4:
    .asciz "\n"
.Ltext_5:
    .asciz ": "
.Ltext_6:
    .asciz "src/std/core.lucb:113:9"
.Ltext_7:
    .asciz "src/std/core.lucb:115:9"
.Ltext_8:
    .asciz "index out of bounds"
.Ltext_9:
    .asciz "src/std/core.lucb:120:9"
.Ltext_10:
    .asciz "src/std/core.lucb:130:5"
.Ltext_11:
    .asciz "null_foreign"
.Ltext_12:
    .asciz "src/std/core.lucb:135:13"
.Ltext_13:
    .asciz "src/std/core.lucb:136:5"
.Ltext_14:
    .asciz "src/std/core.lucb:137:5"
.Ltext_15:
    .asciz "src/std/core.lucb:144:9"
.Ltext_16:
    .asciz "src/std/core.lucb:147:9"
.Ltext_17:
    .asciz "src/std/core.lucb:148:9"
.Ltext_18:
    .asciz "division by zero"
.Ltext_19:
    .asciz "src/std/core.lucb:149:9"
.Ltext_20:
    .asciz "src/std/core.lucb:150:5"
.Ltext_21:
    .asciz "-"
.Ltext_22:
    .asciz "src/std/core.lucb:158:5"
.Ltext_23:
    .asciz "src/std/core.lucb:163:5"
.Ltext_24:
    .asciz "%g"
.Ltext_25:
    .asciz "src/std/core.lucb:166:5"
.Ltext_26:
    .asciz "true"
.Ltext_27:
    .asciz "false"
.Ltext_28:
    .asciz "src/std/core.lucb:170:5"
.Ltext_29:
    .asciz "src/std/core.lucb:178:9"
.Ltext_30:
    .asciz "src/std/core.lucb:181:9"
.Ltext_31:
    .asciz "shift count out of range"
.Ltext_32:
    .asciz "src/std/core.lucb:182:9"
.Ltext_33:
    .asciz "src/std/core.lucb:185:9"
.Ltext_34:
    .asciz "src/std/core.lucb:186:9"
.Ltext_35:
    .asciz "src/std/core.lucb:187:9"
.Ltext_36:
    .asciz "src/std/core.lucb:190:9"
.Ltext_37:
    .asciz "src/std/core.lucb:191:9"
.Ltext_38:
    .asciz "src/std/core.lucb:192:9"
.Ltext_39:
    .asciz "src/std/core.lucb:193:9"
.Ltext_40:
    .asciz "src/std/core.lucb:195:5"
.Ltext_41:
    .asciz ""
.Ltext_42:
    .asciz "src/std/core.lucb:203:5"
.Ltext_43:
    .asciz "src/std/core.lucb:211:5"
.Ltext_44:
    .asciz "src/std/core.lucb:217:9"
.Ltext_45:
    .asciz "src/std/core.lucb:218:5"
.Ltext_46:
    .asciz "src/std/core.lucb:219:5"
.Ltext_47:
    .asciz "src/std/core.lucb:226:9"
.Ltext_48:
    .asciz "src/std/core.lucb:229:9"
.Ltext_49:
    .asciz "src/std/core.lucb:231:9"
.Ltext_50:
    .asciz "integer overflow"
.Ltext_51:
    .asciz "src/std/core.lucb:232:9"
.Ltext_52:
    .asciz "src/std/core.lucb:233:5"
.Ltext_53:
    .asciz "src/std/core.lucb:240:9"
.Ltext_54:
    .asciz "src/std/core.lucb:243:9"
.Ltext_55:
    .asciz "src/std/core.lucb:244:9"
.Ltext_56:
    .asciz "src/std/core.lucb:245:9"
.Ltext_57:
    .asciz "src/std/core.lucb:246:5"
.Ltext_58:
    .asciz "src/std/core.lucb:253:5"
.Ltext_59:
    .asciz "src/std/core.lucb:257:9"
.Ltext_60:
    .asciz "src/std/core.lucb:259:9"
.Ltext_61:
    .asciz "src/std/core.lucb:261:9"
.Ltext_62:
    .asciz "src/std/core.lucb:262:5"
.Ltext_63:
    .asciz "src/std/core.lucb:268:5"
.Ltext_64:
    .asciz "memory.exhausted"
.Ltext_65:
    .asciz "src/std/core.lucb:272:9"
.Ltext_66:
    .asciz "invalid_utf8"
.Ltext_67:
    .asciz "src/std/core.lucb:276:9"
.Ltext_68:
    .asciz "src/std/core.lucb:277:5"
.Ltext_69:
    .asciz "src/std/core.lucb:282:5"
.Ltext_70:
    .asciz "src/std/core.lucb:317:5"
.Ltext_71:
    .asciz "error "
.Ltext_72:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
.Ltext_73:
    .asciz "src/std/core.lucb:325:5"
.Ltext_74:
    .asciz "FAIL  "
.Ltext_75:
    .asciz "\n      error: "
.Ltext_76:
    .asciz "ok    "
.Ltext_77:
    .asciz "src/std/core.lucb:336:5"
.Ltext_78:
    .asciz " passed\n"
.Ltext_79:
    .asciz "src/std/core.lucb:339:5"
.Ltext_80:
    .asciz "src/std/core.lucb:366:5"
.Ltext_81:
    .asciz "src/std/core.lucb:383:5"
.Ltext_82:
    .asciz "src/std/core.lucb:384:9"
.Ltext_83:
    .asciz "src/std/core.lucb:387:9"
.Ltext_84:
    .asciz "src/std/core.lucb:388:9"
.Ltext_85:
    .asciz "src/std/core.lucb:390:5"
.Ltext_86:
    .asciz "src/std/core.lucb:413:9"
.Ltext_87:
    .asciz "src/std/core.lucb:417:13"
.Ltext_88:
    .asciz "src/std/core.lucb:420:13"
.Ltext_89:
    .asciz "src/std/core.lucb:421:13"
.Ltext_90:
    .asciz "src/std/core.lucb:432:9"
.Ltext_91:
    .asciz "src/std/core.lucb:433:5"
.Ltext_92:
    .asciz "src/std/core.lucb:443:5"
.Ltext_93:
    .asciz "src/std/core.lucb:448:5"
.Ltext_94:
    .asciz "src/std/core.lucb:449:5"
.Ltext_95:
    .asciz "src/std/core.lucb:458:13"
.Ltext_96:
    .asciz "src/std/core.lucb:459:5"
.Ltext_97:
    .asciz "src/std/core.lucb:465:5"
.Ltext_98:
    .asciz "src/std/core.lucb:472:5"
.Ltext_99:
    .asciz "src/std/core.lucb:474:5"
.Ltext_100:
    .asciz "src/std/core.lucb:477:5"
.Ltext_101:
    .asciz "src/std/core.lucb:481:9"
.Ltext_102:
    .asciz "src/std/core.lucb:482:5"
.Ltext_103:
    .asciz "src/std/core.lucb:487:5"
.Ltext_104:
    .asciz "src/std/core.lucb:490:5"
.Ltext_105:
    .asciz "src/std/core.lucb:493:5"
.Ltext_106:
    .asciz "src/std/core.lucb:505:5"
.Ltext_107:
    .asciz "integer conversion out of range"
.Ltext_108:
    .asciz "src/std/core.lucb:517:5"
.Ltext_109:
    .asciz "src/std/core.lucb:527:5"
.Ltext_110:
    .asciz "src/std/core.lucb:533:5"
.Ltext_111:
    .asciz "src/std/core.lucb:540:5"
.Ltext_112:
    .asciz "src/std/core.lucb:543:5"
.Ltext_113:
    .asciz "src/std/core.lucb:547:5"
.Ltext_114:
    .asciz "src/std/core.lucb:550:5"
.Ltext_115:
    .asciz "src/std/core.lucb:566:5"
.Ltext_116:
    .asciz "src/std/core.lucb:578:5"
.Ltext_117:
    .asciz "src/std/core.lucb:582:5"
.Ltext_118:
    .asciz "src/std/core.lucb:585:5"
.Ltext_119:
    .asciz "src/std/core.lucb:594:5"
.Ltext_120:
    .asciz "src/std/core.lucb:602:5"
.Ltext_121:
    .asciz "src/std/core.lucb:610:5"
.Ltext_122:
    .asciz "src/std/core.lucb:618:5"
.Ltext_123:
    .asciz "src/std/core.lucb:625:5"
.Ltext_124:
    .asciz "src/std/core.lucb:632:5"
.Ltext_125:
    .asciz "src/std/core.lucb:637:5"
.Ltext_126:
    .asciz "src/std/core.lucb:639:5"
.Ltext_127:
    .asciz "src/std/core.lucb:649:5"
.Ltext_128:
    .asciz "src/std/core.lucb:658:5"
.Ltext_129:
    .asciz "src/std/core.lucb:667:5"
.Ltext_130:
    .asciz "src/std/core.lucb:674:5"
.Ltext_131:
    .asciz "src/std/core.lucb:675:5"
.Ltext_132:
    .asciz "src/std/core.lucb:683:5"
.Ltext_133:
    .asciz "src/std/core.lucb:688:5"
.Ltext_134:
    .asciz "src/std/core.lucb:691:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .tbss,"awT",%nobits
    .globl lb_core_10show_bytes
    .type lb_core_10show_bytes, %object
    .p2align 0
lb_core_10show_bytes:
    .zero 1024

    .section .tbss,"awT",%nobits
    .globl lb_core_9show_next
    .type lb_core_9show_next, %object
    .p2align 2
lb_core_9show_next:
    .zero 4

    .bss
    .globl lb_core_15hash_seed_value
    .type lb_core_15hash_seed_value, %object
    .p2align 3
lb_core_15hash_seed_value:
    .zero 8

    .bss
    .globl lb_core_11hash_seeded
    .type lb_core_11hash_seeded, %object
    .p2align 0
lb_core_11hash_seeded:
    .zero 1


    .section .note.GNU-stack,"",%progbits
