    .text

    .p2align 2
    .globl lb_sync_0init
    .type lb_sync_0init, %function
lb_sync_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_sync_16compare_and_wait
    add x14, x14, :lo12:lb_sync_16compare_and_wait
    movz x9, #1
    str w9, [x14]
    adrp x14, lb_sync_8wake_all
    add x14, x14, :lo12:lb_sync_8wake_all
    movz x9, #256
    str w9, [x14]
    adrp x14, lb_sync_12futex_number
    add x14, x14, :lo12:lb_sync_12futex_number
    movz x9, #98
    str x9, [x14]
    adrp x14, lb_sync_18futex_wait_private
    add x14, x14, :lo12:lb_sync_18futex_wait_private
    movz x9, #128
    str w9, [x14]
    adrp x14, lb_sync_18futex_wake_private
    add x14, x14, :lo12:lb_sync_18futex_wake_private
    movz x9, #129
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_sync_0init, .-lb_sync_0init

    .p2align 2
    .globl lb_sync_Mutex_lock
    .type lb_sync_Mutex_lock, %function
lb_sync_Mutex_lock:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    sub x14, x29, #40
    mov x10, #0
    movz x11, #1
    mov x17, x19
1:
    ldaxr w9, [x17]
    cmp w9, w10
    b.ne 2f
    stlxr w16, w11, [x17]
    cbnz w16, 1b
2:
    clrex
    mov w15, w9
    mov x10, #0
    cmp w15, w10
    cset w12, eq
    strb w12, [x14]
    add x12, x14, #4
    str w15, [x12]
    ldrb w14, [x14]
    and w14, w14, #255
    cbnz w14, .L1_1
    b .L1_2
.L1_1:
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_4:
    b .L1_3
.L1_2:
.L1_3:
    movz x10, #2
    cmp w15, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L1_6
.L1_5:
    movz x10, #2
    mov x17, x19
1:
    ldaxr w9, [x17]
    mov w11, w10
    stxr w16, w11, [x17]
    cbnz w16, 1b
    mov w14, w9
    b .L1_7
.L1_6:
    mov w14, w15
.L1_7:
    mov w15, w14
.L1_8:
    mov x10, #0
    cmp w15, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L1_10
.L1_9:
    sub x10, x29, #56
    str x19, [x10]
    movz x9, #2
    sub x10, x29, #72
    str w9, [x10]
    movz x0, #98
    mov x1, x19
    movz x2, #128
    movz x3, #2
    mov x4, #0
    bl syscall
    mov x14, x0
.L1_11:
    movz x10, #2
    mov x17, x19
1:
    ldaxr w9, [x17]
    mov w11, w10
    stxr w16, w11, [x17]
    cbnz w16, 1b
    mov w15, w9
    b .L1_8
.L1_10:
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_sync_Mutex_lock, .-lb_sync_Mutex_lock

    .p2align 2
    .globl lb_sync_Mutex_unlock
    .type lb_sync_Mutex_unlock, %function
lb_sync_Mutex_unlock:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    mov x10, #0
    mov x17, x15
1:
    ldxr w9, [x17]
    mov w11, w10
    stlxr w16, w11, [x17]
    cbnz w16, 1b
    mov w14, w9
    movz x10, #2
    cmp w14, w10
    b.ne .L2_2
.L2_1:
    sub x10, x29, #40
    str x15, [x10]
    movz x0, #98
    mov x1, x15
    movz x2, #129
    movz x3, #1
    bl syscall
    mov x14, x0
.L2_4:
    b .L2_3
.L2_2:
.L2_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_sync_Mutex_unlock, .-lb_sync_Mutex_unlock

    .p2align 2
    .globl lb_sync_Mutex_8try_lock
    .type lb_sync_Mutex_8try_lock, %function
lb_sync_Mutex_8try_lock:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    sub x14, x29, #32
    mov x10, #0
    movz x11, #1
    mov x17, x15
1:
    ldaxr w9, [x17]
    cmp w9, w10
    b.ne 2f
    stlxr w16, w11, [x17]
    cbnz w16, 1b
2:
    clrex
    mov w15, w9
    mov x10, #0
    cmp w15, w10
    cset w12, eq
    strb w12, [x14]
    add x12, x14, #4
    str w15, [x12]
    ldrb w14, [x14]
    and w14, w14, #255
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_1:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_sync_Mutex_8try_lock, .-lb_sync_Mutex_8try_lock

    .p2align 2
    .globl lb_sync_Condition_wait
    .type lb_sync_Condition_wait, %function
lb_sync_Condition_wait:
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
    bl lb_sync_Mutex_unlock
    sub x10, x29, #80
    str x21, [x10]
    sub x10, x29, #96
    str w19, [x10]
    movz x0, #98
    mov x1, x21
    movz x2, #128
    mov x3, x19
    mov x4, #0
    bl syscall
    mov x14, x0
.L4_1:
    mov x0, x20
    bl lb_sync_Mutex_lock
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_sync_Condition_wait, .-lb_sync_Condition_wait

    .p2align 2
    .globl lb_sync_Condition_signal
    .type lb_sync_Condition_signal, %function
lb_sync_Condition_signal:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    movz x10, #1
    mov x17, x14
1:
    ldxr w9, [x17]
    add w11, w9, w10
    stlxr w16, w11, [x17]
    cbnz w16, 1b
    mov w15, w9
    sub x10, x29, #40
    str x14, [x10]
    movz x0, #98
    mov x1, x14
    movz x2, #129
    movz x3, #1
    bl syscall
    mov x14, x0
.L5_1:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_sync_Condition_signal, .-lb_sync_Condition_signal

    .p2align 2
    .globl lb_sync_Condition_broadcast
    .type lb_sync_Condition_broadcast, %function
lb_sync_Condition_broadcast:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    movz x10, #1
    mov x17, x14
1:
    ldxr w9, [x17]
    add w11, w9, w10
    stlxr w16, w11, [x17]
    cbnz w16, 1b
    mov w15, w9
    sub x10, x29, #40
    str x14, [x10]
    movz x0, #98
    mov x1, x14
    movz x2, #129
    movz x3, #65535
    movk x3, #32767, lsl #16
    bl syscall
    mov x14, x0
.L6_1:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_sync_Condition_broadcast, .-lb_sync_Condition_broadcast

    .p2align 2
    .globl lb_sync_Once_run
    .type lb_sync_Once_run, %function
lb_sync_Once_run:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    sub x14, x29, #56
    mov x10, #0
    movz x11, #1
    mov x17, x19
1:
    ldaxr w9, [x17]
    cmp w9, w10
    b.ne 2f
    stlxr w16, w11, [x17]
    cbnz w16, 1b
2:
    clrex
    mov w15, w9
    mov x10, #0
    cmp w15, w10
    cset w12, eq
    strb w12, [x14]
    add x12, x14, #4
    str w15, [x12]
    ldrb w14, [x14]
    and w14, w14, #255
    cbnz w14, .L7_1
    b .L7_2
.L7_1:
    sub x14, x29, #48
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    ldr x17, [sp], #16
    blr x17
    movz x9, #2
    mov x10, x19
    stlr w9, [x10]
    sub x10, x29, #72
    str x19, [x10]
    movz x0, #98
    mov x1, x19
    movz x2, #129
    movz x3, #65535
    movk x3, #32767, lsl #16
    bl syscall
    mov x14, x0
.L7_8:
    ldr x19, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_4:
    b .L7_3
.L7_2:
.L7_3:
.L7_5:
    mov x9, x19
    ldar w9, [x9]
    mov w14, w9
    movz x10, #2
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L7_7
.L7_6:
    sub x10, x29, #88
    str x19, [x10]
    movz x9, #1
    sub x10, x29, #104
    str w9, [x10]
    movz x0, #98
    mov x1, x19
    movz x2, #128
    movz x3, #1
    mov x4, #0
    bl syscall
    mov x14, x0
.L7_9:
    b .L7_5
.L7_7:
    ldr x19, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_sync_Once_run, .-lb_sync_Once_run

    .p2align 2
    .globl lb_sync_Semaphore_acquire
    .type lb_sync_Semaphore_acquire, %function
lb_sync_Semaphore_acquire:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    sub x16, x29, #48
    str x0, [x16]
    sub x9, x29, #48
    ldr x21, [x9]
    sub x19, x29, #56
    add x20, x19, #4
.L8_1:
.L8_2:
    mov x9, x21
    ldar w9, [x9]
    mov w14, w9
    mov x10, #0
    cmp w14, w10
    b.ls .L8_5
.L8_4:
    mov w9, w14
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at
1:
    mov w15, w9
    mov w10, w14
    mov w11, w15
    mov x17, x21
1:
    ldaxr w9, [x17]
    cmp w9, w10
    b.ne 2f
    stlxr w16, w11, [x17]
    cbnz w16, 1b
2:
    clrex
    mov w15, w9
    cmp w14, w15
    cset w12, eq
    strb w12, [x19]
    str w15, [x20]
    ldrb w15, [x19]
    and w15, w15, #255
    cbnz w15, .L8_7
    b .L8_8
.L8_7:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_8:
.L8_9:
    b .L8_6
.L8_5:
    sub x10, x29, #72
    str x21, [x10]
    mov x9, #0
    sub x10, x29, #88
    str w9, [x10]
    movz x0, #98
    mov x1, x21
    movz x2, #128
    mov x3, #0
    mov x4, #0
    bl syscall
    mov x14, x0
.L8_11:
.L8_6:
    b .L8_1

    .size lb_sync_Semaphore_acquire, .-lb_sync_Semaphore_acquire

    .p2align 2
    .globl lb_sync_Semaphore_release
    .type lb_sync_Semaphore_release, %function
lb_sync_Semaphore_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    movz x10, #1
    mov x17, x14
1:
    ldxr w9, [x17]
    add w11, w9, w10
    stlxr w16, w11, [x17]
    cbnz w16, 1b
    mov w15, w9
    sub x10, x29, #40
    str x14, [x10]
    movz x0, #98
    mov x1, x14
    movz x2, #129
    movz x3, #1
    bl syscall
    mov x14, x0
.L9_1:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_sync_Semaphore_release, .-lb_sync_Semaphore_release

    .section .init_array,"aw"
    .p2align 3
    .quad lb_sync_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/sync.lucb:69:9"
.Ltext_2:
    .asciz "src/std/sync.lucb:112:17"
.Ltext_3:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_sync_16compare_and_wait
    .type lb_sync_16compare_and_wait, %object
    .p2align 2
lb_sync_16compare_and_wait:
    .zero 4

    .bss
    .globl lb_sync_8wake_all
    .type lb_sync_8wake_all, %object
    .p2align 2
lb_sync_8wake_all:
    .zero 4

    .bss
    .globl lb_sync_12futex_number
    .type lb_sync_12futex_number, %object
    .p2align 3
lb_sync_12futex_number:
    .zero 8

    .bss
    .globl lb_sync_18futex_wait_private
    .type lb_sync_18futex_wait_private, %object
    .p2align 2
lb_sync_18futex_wait_private:
    .zero 4

    .bss
    .globl lb_sync_18futex_wake_private
    .type lb_sync_18futex_wake_private, %object
    .p2align 2
lb_sync_18futex_wake_private:
    .zero 4


    .section .note.GNU-stack,"",%progbits
