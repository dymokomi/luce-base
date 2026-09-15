    .text

    .p2align 2
    .globl lb_process_18termination_module_0init
    .type lb_process_18termination_module_0init, %function
lb_process_18termination_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_process_18termination_module_0init, .-lb_process_18termination_module_0init

    .p2align 2
    .globl lb_process_TerminationStatus_requested
    .type lb_process_TerminationStatus_requested, %function
lb_process_TerminationStatus_requested:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    adrp x14, lb_process_22termination_generation
    add x14, x14, :lo12:lb_process_22termination_generation
    mov x9, x14
    ldar x9, [x9]
    mov x14, x9
    ldr x15, [x15]
    cmp x14, x15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
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

    .size lb_process_TerminationStatus_requested, .-lb_process_TerminationStatus_requested

    .p2align 2
    .globl lb_process_Termination_init
    .type lb_process_Termination_init, %function
lb_process_Termination_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    str x22, [sp, #184]
    sub x16, x29, #96
    str x0, [x16]
    sub x9, x29, #96
    ldr x20, [x9]
    adrp x19, lb_process_16termination_lock
    add x19, x19, :lo12:lb_process_16termination_lock
    mov x0, x19
    bl lb_sync_Mutex_lock
    adrp x14, lb_process_19termination_closing
    add x14, x14, :lo12:lb_process_19termination_closing
    mov x9, x14
    ldarb w9, [x9]
    mov w14, w9
    cbnz w14, .L2_1
    b .L2_2
.L2_1:
    sub x20, x29, #88
    adrp x14, lb_process_failed
    add x14, x14, :lo12:lb_process_failed
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, .Ltext_2
    add x14, x14, :lo12:.Ltext_2
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #30
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_sync_Mutex_unlock
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
    b .L2_3
.L2_2:
.L2_3:
    sub x21, x29, #120
    mov x11, x21
    str xzr, [x11, #0]
    adrp x14, lb_process_22termination_generation
    add x14, x14, :lo12:lb_process_22termination_generation
    mov x9, x14
    ldar x9, [x9]
    mov x14, x9
    str x14, [x21]
    mov x10, x21
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    adrp x21, lb_process_18termination_owners
    add x21, x21, :lo12:lb_process_18termination_owners
    mov x9, x21
    ldr x9, [x9]
    mov x14, x9
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_5
    add x1, x1, :lo12:.Ltext_5
    bl lb_core_7trap_at
1:
    mov x15, x9
    mov x9, x15
    mov x10, x21
    stlr x9, [x10]
    mov x10, #0
    cmp x14, x10
    b.ne .L2_6
.L2_5:
    sub x8, x29, #240
    bl lb_process_25termination_posix_install
    sub x15, x29, #240
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L2_14
    b .L2_13
.L2_14:
    sub x22, x29, #208
    mov x10, x15
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #176
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    b .L2_16
.L2_15:
.L2_13:
    sub x14, x29, #208
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #176
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
.L2_16:
    sub x15, x29, #176
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L2_11
    b .L2_10
.L2_11:
    sub x20, x29, #144
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L2_8
.L2_10:
    b .L2_9
.L2_8:
    mov x9, #0
    mov x10, x21
    stlr x9, [x10]
    sub x22, x29, #88
    ldr w14, [x20]
    str w14, [x22]
    add x14, x20, #8
    add x15, x22, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_sync_Mutex_unlock
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_12:
.L2_9:
    b .L2_7
.L2_6:
.L2_7:
    add x14, x20, #8
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_sync_Mutex_unlock
    sub x14, x29, #88
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_process_Termination_init, .-lb_process_Termination_init

    .p2align 2
    .globl lb_process_Termination_status
    .type lb_process_Termination_status, %function
lb_process_Termination_status:
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
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_1:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_process_Termination_status, .-lb_process_Termination_status

    .p2align 2
    .globl lb_process_Termination_close
    .type lb_process_Termination_close, %function
lb_process_Termination_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x14, [x9]
    add x19, x14, #8
    ldrb w14, [x19]
    mov x10, #0
    cmp w14, w10
    b.ne .L4_2
.L4_1:
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_4:
    b .L4_3
.L4_2:
.L4_3:
    adrp x20, lb_process_16termination_lock
    add x20, x20, :lo12:lb_process_16termination_lock
    mov x0, x20
    bl lb_sync_Mutex_lock
    mov x9, #0
    strb w9, [x19]
    adrp x14, lb_process_18termination_owners
    add x14, x14, :lo12:lb_process_18termination_owners
    movz x10, #1
    mov x17, x14
1:
    ldaxr x9, [x17]
    sub x11, x9, x10
    stlxr w16, x11, [x17]
    cbnz w16, 1b
    mov x14, x9
    movz x10, #1
    cmp x14, x10
    b.ne .L4_6
.L4_5:
    bl lb_process_25termination_posix_restore
.L4_8:
    b .L4_7
.L4_6:
.L4_7:
    mov x0, x20
    bl lb_sync_Mutex_unlock
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_process_Termination_close, .-lb_process_Termination_close

    .section .init_array,"aw"
    .p2align 3
    .quad lb_process_18termination_module_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/process/termination/module.lucb:14:9"
.Ltext_2:
    .asciz "the process is already closing"
.Ltext_3:
    .asciz "src/std/process/termination/module.lucb:33:9"
.Ltext_4:
    .asciz "src/std/process/termination/module.lucb:41:9"
.Ltext_5:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_process_16termination_lock
    .type lb_process_16termination_lock, %object
    .p2align 2
lb_process_16termination_lock:
    .zero 4

    .bss
    .globl lb_process_18termination_owners
    .type lb_process_18termination_owners, %object
    .p2align 3
lb_process_18termination_owners:
    .zero 8

    .bss
    .globl lb_process_22termination_generation
    .type lb_process_22termination_generation, %object
    .p2align 3
lb_process_22termination_generation:
    .zero 8

    .bss
    .globl lb_process_19termination_closing
    .type lb_process_19termination_closing, %object
    .p2align 0
lb_process_19termination_closing:
    .zero 1


    .section .note.GNU-stack,"",%progbits
