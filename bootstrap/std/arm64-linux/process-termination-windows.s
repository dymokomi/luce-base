    .text

    .p2align 2
    .globl lb_process_19termination_windows_0init
    .type lb_process_19termination_windows_0init, %function
lb_process_19termination_windows_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_process_17console_interrupt
    add x14, x14, :lo12:lb_process_17console_interrupt
    mov x9, #0
    str w9, [x14]
    adrp x14, lb_process_13console_break
    add x14, x14, :lo12:lb_process_13console_break
    movz x9, #1
    str w9, [x14]
    adrp x14, lb_process_13console_close
    add x14, x14, :lo12:lb_process_13console_close
    movz x9, #2
    str w9, [x14]
    adrp x14, lb_process_14console_logoff
    add x14, x14, :lo12:lb_process_14console_logoff
    movz x9, #5
    str w9, [x14]
    adrp x14, lb_process_16console_shutdown
    add x14, x14, :lo12:lb_process_16console_shutdown
    movz x9, #6
    str w9, [x14]
    adrp x14, lb_process_26console_acknowledgement_ms
    add x14, x14, :lo12:lb_process_26console_acknowledgement_ms
    movz x9, #4000
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_process_19termination_windows_0init, .-lb_process_19termination_windows_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_process_19termination_windows_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/process/termination/windows.lucb:25:5"
.Ltext_2:
    .asciz "the console termination handler could not be installed"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_process_17console_interrupt
    .type lb_process_17console_interrupt, %object
    .p2align 2
lb_process_17console_interrupt:
    .zero 4

    .bss
    .globl lb_process_13console_break
    .type lb_process_13console_break, %object
    .p2align 2
lb_process_13console_break:
    .zero 4

    .bss
    .globl lb_process_13console_close
    .type lb_process_13console_close, %object
    .p2align 2
lb_process_13console_close:
    .zero 4

    .bss
    .globl lb_process_14console_logoff
    .type lb_process_14console_logoff, %object
    .p2align 2
lb_process_14console_logoff:
    .zero 4

    .bss
    .globl lb_process_16console_shutdown
    .type lb_process_16console_shutdown, %object
    .p2align 2
lb_process_16console_shutdown:
    .zero 4

    .bss
    .globl lb_process_26console_acknowledgement_ms
    .type lb_process_26console_acknowledgement_ms, %object
    .p2align 3
lb_process_26console_acknowledgement_ms:
    .zero 8


    .section .note.GNU-stack,"",%progbits
