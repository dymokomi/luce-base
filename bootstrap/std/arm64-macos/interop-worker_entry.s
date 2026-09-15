    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_interop_12worker_entry_0init
_lb_interop_12worker_entry_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x0, _lb_interop_26active_worker_cancellation@TLVPPAGE
    ldr x0, [x0, _lb_interop_26active_worker_cancellation@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_19worker_cancellation
    .no_dead_strip _lb_interop_19worker_cancellation
_lb_interop_19worker_cancellation:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x0, _lb_interop_26active_worker_cancellation@TLVPPAGE
    ldr x0, [x0, _lb_interop_26active_worker_cancellation@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x14, [x14]
    cbnz x14, L1_1
    b L1_2
L1_1:
    b L1_3
L1_2:
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #45
    str x9, [x14]
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L1_3:
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_interop_12worker_entry_0init

    .section __TEXT,__const
l_text_0:
    .asciz "this operation requires an application worker"
l_text_1:
    .asciz "src/std/interop/worker_entry.lucb:24:5"
l_text_2:
    .asciz "unreachable"

    .section __DATA,__const
    .p2align 3

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_interop_26active_worker_cancellation$tlv$init:
    .space 8
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_interop_26active_worker_cancellation
_lb_interop_26active_worker_cancellation:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_interop_26active_worker_cancellation$tlv$init

.subsections_via_symbols
