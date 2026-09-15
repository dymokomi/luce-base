    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_process_19termination_windows_0init
_lb_process_19termination_windows_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_process_17console_interrupt@PAGE
    add x14, x14, _lb_process_17console_interrupt@PAGEOFF
    mov x9, #0
    str w9, [x14]
    adrp x14, _lb_process_13console_break@PAGE
    add x14, x14, _lb_process_13console_break@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_process_13console_close@PAGE
    add x14, x14, _lb_process_13console_close@PAGEOFF
    movz x9, #2
    str w9, [x14]
    adrp x14, _lb_process_14console_logoff@PAGE
    add x14, x14, _lb_process_14console_logoff@PAGEOFF
    movz x9, #5
    str w9, [x14]
    adrp x14, _lb_process_16console_shutdown@PAGE
    add x14, x14, _lb_process_16console_shutdown@PAGEOFF
    movz x9, #6
    str w9, [x14]
    adrp x14, _lb_process_26console_acknowledgement_ms@PAGE
    add x14, x14, _lb_process_26console_acknowledgement_ms@PAGEOFF
    movz x9, #4000
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_process_19termination_windows_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/process/termination/windows.lucb:25:5"
l_text_2:
    .asciz "the console termination handler could not be installed"

    .section __DATA,__const
    .p2align 3
    .globl _lb_process_17console_interrupt
    .zerofill __DATA,__bss,_lb_process_17console_interrupt,4,2
    .globl _lb_process_13console_break
    .zerofill __DATA,__bss,_lb_process_13console_break,4,2
    .globl _lb_process_13console_close
    .zerofill __DATA,__bss,_lb_process_13console_close,4,2
    .globl _lb_process_14console_logoff
    .zerofill __DATA,__bss,_lb_process_14console_logoff,4,2
    .globl _lb_process_16console_shutdown
    .zerofill __DATA,__bss,_lb_process_16console_shutdown,4,2
    .globl _lb_process_26console_acknowledgement_ms
    .zerofill __DATA,__bss,_lb_process_26console_acknowledgement_ms,8,3

.subsections_via_symbols
