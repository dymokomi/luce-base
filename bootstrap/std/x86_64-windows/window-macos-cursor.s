    .text

    .p2align 4
    .globl lb_window_12macos_cursor_0init
lb_window_12macos_cursor_0init:
    .seh_proc lb_window_12macos_cursor_0init
    pushq %rbp
    .seh_pushreg %rbp
    subq $176, %rsp
    .seh_stackalloc 176
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 168(%rbp)
    .seh_savereg %rdi, 168
    movq %rsi, 160(%rbp)
    .seh_savereg %rsi, 160
    movdqu %xmm6, 144(%rbp)
    .seh_savexmm %xmm6, 144
    movdqu %xmm7, 128(%rbp)
    .seh_savexmm %xmm7, 128
    movdqu %xmm8, 112(%rbp)
    .seh_savexmm %xmm8, 112
    movdqu %xmm9, 96(%rbp)
    .seh_savexmm %xmm9, 96
    movdqu %xmm10, 80(%rbp)
    .seh_savexmm %xmm10, 80
    movdqu %xmm11, 64(%rbp)
    .seh_savexmm %xmm11, 64
    movdqu %xmm12, 48(%rbp)
    .seh_savexmm %xmm12, 48
    movdqu %xmm13, 32(%rbp)
    .seh_savexmm %xmm13, 32
    movdqu %xmm14, 16(%rbp)
    .seh_savexmm %xmm14, 16
    movdqu %xmm15, 0(%rbp)
    .seh_savexmm %xmm15, 0
    .seh_endprologue
    movq %rcx, 192(%rbp)
    movq %rdx, 200(%rbp)
    movq %r8, 208(%rbp)
    movq %r9, 216(%rbp)
    movq 168(%rbp), %rdi
    movq 160(%rbp), %rsi
    movdqu 144(%rbp), %xmm6
    movdqu 128(%rbp), %xmm7
    movdqu 112(%rbp), %xmm8
    movdqu 96(%rbp), %xmm9
    movdqu 80(%rbp), %xmm10
    movdqu 64(%rbp), %xmm11
    movdqu 48(%rbp), %xmm12
    movdqu 32(%rbp), %xmm13
    movdqu 16(%rbp), %xmm14
    movdqu 0(%rbp), %xmm15
    leaq 176(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_window_12macos_cursor_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "arrowCursor"
.Ltext_1:
    .asciz "IBeamCursor"
.Ltext_2:
    .asciz "pointingHandCursor"
.Ltext_3:
    .asciz "resizeLeftRightCursor"
.Ltext_4:
    .asciz "resizeUpDownCursor"
.Ltext_5:
    .asciz "openHandCursor"
.Ltext_6:
    .asciz "closedHandCursor"
.Ltext_7:
    .asciz "operationNotAllowedCursor"
.Ltext_8:
    .asciz "NSCursor"
.Ltext_9:
    .asciz "AppKit could not load a system cursor"
.Ltext_10:
    .asciz "unreachable"
.Ltext_11:
    .asciz "src/std/window/macos/cursor.lucb:14:5"
.Ltext_12:
    .asciz "null_foreign"
.Ltext_13:
    .asciz "src/std/window/macos/cursor.lucb:18:5"
.Ltext_14:
    .asciz "isKeyWindow"
.Ltext_15:
    .asciz "set"

    .section .rdata,"dr"
    .p2align 3
