    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_sync_0init
_lb_sync_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_sync_16compare_and_wait@PAGE
    add x14, x14, _lb_sync_16compare_and_wait@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_sync_8wake_all@PAGE
    add x14, x14, _lb_sync_8wake_all@PAGEOFF
    movz x9, #256
    str w9, [x14]
    adrp x14, _lb_platform_arm64@PAGE
    add x14, x14, _lb_platform_arm64@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L0_1
    b L0_2
L0_1:
    movz x9, #98
    mov x14, x9
    b L0_3
L0_2:
    movz x9, #202
    mov x14, x9
L0_3:
    adrp x15, _lb_sync_12futex_number@PAGE
    add x15, x15, _lb_sync_12futex_number@PAGEOFF
    str x14, [x15]
    adrp x15, _lb_sync_18futex_wait_private@PAGE
    add x15, x15, _lb_sync_18futex_wait_private@PAGEOFF
    movz x9, #128
    str w9, [x15]
    adrp x15, _lb_sync_18futex_wake_private@PAGE
    add x15, x15, _lb_sync_18futex_wake_private@PAGEOFF
    movz x9, #129
    str w9, [x15]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_sync_Mutex_lock
_lb_sync_Mutex_lock:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x20, [x9]
    sub x14, x29, #48
    mov x10, #0
    movz x11, #1
    mov x12, x20
1:
    ldaxr w9, [x12]
    cmp w9, w10
    b.ne 2f
    stlxr w13, w11, [x12]
    cbnz w13, 1b
2:
    clrex
    mov w15, w9
    mov x10, #0
    cmp w15, w10
    cset w19, eq
    strb w19, [x14]
    add x19, x14, #4
    str w15, [x19]
    ldrb w14, [x14]
    and w14, w14, #255
    cbnz w14, L1_1
    b L1_2
L1_1:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    b L1_3
L1_2:
L1_3:
    movz x10, #2
    cmp w15, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L1_6
L1_5:
    movz x10, #2
    mov x12, x20
1:
    ldaxr w9, [x12]
    mov w11, w10
    stxr w13, w11, [x12]
    cbnz w13, 1b
    mov w14, w9
    b L1_7
L1_6:
    mov w14, w15
L1_7:
    adrp x19, _lb_sync_16compare_and_wait@PAGE
    add x19, x19, _lb_sync_16compare_and_wait@PAGEOFF
    mov w15, w14
L1_8:
    mov x10, #0
    cmp w15, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L1_10
L1_9:
    sub x10, x29, #64
    str x20, [x10]
    movz x9, #2
    sub x10, x29, #80
    str w9, [x10]
    ldr w14, [x19]
    mov x0, x14
    mov x1, x20
    movz x2, #2
    mov x3, #0
    bl ___ulock_wait
    mov w14, w0
L1_11:
    movz x10, #2
    mov x12, x20
1:
    ldaxr w9, [x12]
    mov w11, w10
    stxr w13, w11, [x12]
    cbnz w13, 1b
    mov w15, w9
    b L1_8
L1_10:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_sync_Mutex_unlock
_lb_sync_Mutex_unlock:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    mov x10, #0
    mov x12, x15
1:
    ldxr w9, [x12]
    mov w11, w10
    stlxr w13, w11, [x12]
    cbnz w13, 1b
    mov w14, w9
    movz x10, #2
    cmp w14, w10
    b.ne L2_2
L2_1:
    sub x10, x29, #40
    str x15, [x10]
    adrp x14, _lb_sync_16compare_and_wait@PAGE
    add x14, x14, _lb_sync_16compare_and_wait@PAGEOFF
    ldr w14, [x14]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl ___ulock_wake
    mov w14, w0
L2_4:
    b L2_3
L2_2:
L2_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_sync_Mutex_8try_lock
_lb_sync_Mutex_8try_lock:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x15, [x9]
    sub x14, x29, #40
    mov x10, #0
    movz x11, #1
    mov x12, x15
1:
    ldaxr w9, [x12]
    cmp w9, w10
    b.ne 2f
    stlxr w13, w11, [x12]
    cbnz w13, 1b
2:
    clrex
    mov w15, w9
    mov x10, #0
    cmp w15, w10
    cset w19, eq
    strb w19, [x14]
    add x19, x14, #4
    str w15, [x19]
    ldrb w14, [x14]
    and w14, w14, #255
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_1:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_sync_Condition_wait
_lb_sync_Condition_wait:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x9, x29, #48
    ldr x21, [x9]
    mov x9, x21
    ldar w9, [x9]
    mov w19, w9
    sub x14, x29, #64
    ldr x20, [x14]
    mov x0, x20
    bl _lb_sync_Mutex_unlock
    sub x10, x29, #80
    str x21, [x10]
    sub x10, x29, #96
    str w19, [x10]
    adrp x14, _lb_sync_16compare_and_wait@PAGE
    add x14, x14, _lb_sync_16compare_and_wait@PAGEOFF
    ldr w14, [x14]
    mov w15, w19
    mov x0, x14
    mov x1, x21
    mov x2, x15
    mov x3, #0
    bl ___ulock_wait
    mov w14, w0
L4_1:
    mov x0, x20
    bl _lb_sync_Mutex_lock
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_sync_Condition_signal
_lb_sync_Condition_signal:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    movz x10, #1
    mov x12, x15
1:
    ldxr w9, [x12]
    add w11, w9, w10
    stlxr w13, w11, [x12]
    cbnz w13, 1b
    mov w14, w9
    sub x10, x29, #40
    str x15, [x10]
    adrp x14, _lb_sync_16compare_and_wait@PAGE
    add x14, x14, _lb_sync_16compare_and_wait@PAGEOFF
    ldr w14, [x14]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl ___ulock_wake
    mov w14, w0
L5_1:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_sync_Condition_broadcast
_lb_sync_Condition_broadcast:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    movz x10, #1
    mov x12, x19
1:
    ldxr w9, [x12]
    add w11, w9, w10
    stlxr w13, w11, [x12]
    cbnz w13, 1b
    mov w14, w9
    sub x10, x29, #48
    str x19, [x10]
    adrp x14, _lb_sync_16compare_and_wait@PAGE
    add x14, x14, _lb_sync_16compare_and_wait@PAGEOFF
    ldr w14, [x14]
    adrp x15, _lb_sync_8wake_all@PAGE
    add x15, x15, _lb_sync_8wake_all@PAGEOFF
    ldr w15, [x15]
    orr w14, w14, w15
    mov x0, x14
    mov x1, x19
    mov x2, #0
    bl ___ulock_wake
    mov w14, w0
L6_1:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_sync_Once_run
_lb_sync_Once_run:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x9, x29, #40
    ldr x20, [x9]
    sub x14, x29, #64
    mov x10, #0
    movz x11, #1
    mov x12, x20
1:
    ldaxr w9, [x12]
    cmp w9, w10
    b.ne 2f
    stlxr w13, w11, [x12]
    cbnz w13, 1b
2:
    clrex
    mov w15, w9
    mov x10, #0
    cmp w15, w10
    cset w19, eq
    strb w19, [x14]
    add x19, x14, #4
    str w15, [x19]
    ldrb w14, [x14]
    and w14, w14, #255
    cbnz w14, L7_1
    b L7_2
L7_1:
    sub x14, x29, #56
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    ldr x17, [sp], #16
    blr x17
    movz x9, #2
    mov x10, x20
    stlr w9, [x10]
    sub x10, x29, #80
    str x20, [x10]
    adrp x14, _lb_sync_16compare_and_wait@PAGE
    add x14, x14, _lb_sync_16compare_and_wait@PAGEOFF
    ldr w14, [x14]
    adrp x15, _lb_sync_8wake_all@PAGE
    add x15, x15, _lb_sync_8wake_all@PAGEOFF
    ldr w15, [x15]
    orr w14, w14, w15
    mov x0, x14
    mov x1, x20
    mov x2, #0
    bl ___ulock_wake
    mov w14, w0
L7_8:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_4:
    b L7_3
L7_2:
L7_3:
    adrp x19, _lb_sync_16compare_and_wait@PAGE
    add x19, x19, _lb_sync_16compare_and_wait@PAGEOFF
L7_5:
    mov x9, x20
    ldar w9, [x9]
    mov w14, w9
    movz x10, #2
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L7_7
L7_6:
    sub x10, x29, #96
    str x20, [x10]
    movz x9, #1
    sub x10, x29, #112
    str w9, [x10]
    ldr w14, [x19]
    mov x0, x14
    mov x1, x20
    movz x2, #1
    mov x3, #0
    bl ___ulock_wait
    mov w14, w0
L7_9:
    b L7_5
L7_7:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_sync_Semaphore_acquire
_lb_sync_Semaphore_acquire:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    str x22, [sp, #64]
    str x23, [sp, #56]
    sub x16, x29, #64
    str x0, [x16]
    sub x9, x29, #64
    ldr x22, [x9]
    adrp x21, _lb_sync_16compare_and_wait@PAGE
    add x21, x21, _lb_sync_16compare_and_wait@PAGEOFF
    sub x19, x29, #72
    add x20, x19, #4
L8_1:
L8_2:
    mov x9, x22
    ldar w9, [x9]
    mov w14, w9
    mov x10, #0
    cmp w14, w10
    b.ls L8_5
L8_4:
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    mov w10, w14
    mov w11, w15
    mov x12, x22
1:
    ldaxr w9, [x12]
    cmp w9, w10
    b.ne 2f
    stlxr w13, w11, [x12]
    cbnz w13, 1b
2:
    clrex
    mov w15, w9
    cmp w14, w15
    cset w23, eq
    strb w23, [x19]
    str w15, [x20]
    ldrb w15, [x19]
    and w15, w15, #255
    cbnz w15, L8_7
    b L8_8
L8_7:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_8:
L8_9:
    b L8_6
L8_5:
    sub x10, x29, #88
    str x22, [x10]
    mov x9, #0
    sub x10, x29, #104
    str w9, [x10]
    ldr w14, [x21]
    mov x0, x14
    mov x1, x22
    mov x2, #0
    mov x3, #0
    bl ___ulock_wait
    mov w14, w0
L8_11:
L8_6:
    b L8_1

    .p2align 2
    .globl _lb_sync_Semaphore_release
_lb_sync_Semaphore_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    movz x10, #1
    mov x12, x15
1:
    ldxr w9, [x12]
    add w11, w9, w10
    stlxr w13, w11, [x12]
    cbnz w13, 1b
    mov w14, w9
    sub x10, x29, #40
    str x15, [x10]
    adrp x14, _lb_sync_16compare_and_wait@PAGE
    add x14, x14, _lb_sync_16compare_and_wait@PAGEOFF
    ldr w14, [x14]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl ___ulock_wake
    mov w14, w0
L9_1:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_sync_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/sync.lucb:69:9"
l_text_2:
    .asciz "src/std/sync.lucb:112:17"
l_text_3:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_sync_16compare_and_wait
    .zerofill __DATA,__bss,_lb_sync_16compare_and_wait,4,2
    .globl _lb_sync_8wake_all
    .zerofill __DATA,__bss,_lb_sync_8wake_all,4,2
    .globl _lb_sync_12futex_number
    .zerofill __DATA,__bss,_lb_sync_12futex_number,8,3
    .globl _lb_sync_18futex_wait_private
    .zerofill __DATA,__bss,_lb_sync_18futex_wait_private,4,2
    .globl _lb_sync_18futex_wake_private
    .zerofill __DATA,__bss,_lb_sync_18futex_wake_private,4,2

