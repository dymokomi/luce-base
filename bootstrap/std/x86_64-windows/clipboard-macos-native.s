    .text

    .p2align 4
    .globl lb_clipboard_12macos_native_0init
lb_clipboard_12macos_native_0init:
    .seh_proc lb_clipboard_12macos_native_0init
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
    .quad lb_clipboard_12macos_native_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "NSPasteboard"
.Ltext_1:
    .asciz "AppKit pasteboard is unavailable"
.Ltext_2:
    .asciz "generalPasteboard"
.Ltext_3:
    .asciz "null_foreign"
.Ltext_4:
    .asciz "src/std/clipboard/macos/native.lucb:18:5"
.Ltext_5:
    .asciz "the clipboard is unavailable"
.Ltext_6:
    .asciz "unreachable"
.Ltext_7:
    .asciz "src/std/clipboard/macos/native.lucb:21:5"
.Ltext_8:
    .asciz "stringForType:"
.Ltext_9:
    .asciz "src/std/clipboard/macos/native.lucb:24:5"
.Ltext_10:
    .asciz ""
.Ltext_11:
    .asciz "lengthOfBytesUsingEncoding:"
.Ltext_12:
    .asciz "src/std/clipboard/macos/native.lucb:25:5"
.Ltext_13:
    .asciz "clipboard text exceeds 1 MiB"
.Ltext_14:
    .asciz "UTF8String"
.Ltext_15:
    .asciz "src/std/clipboard/macos/native.lucb:28:5"
.Ltext_16:
    .asciz "clipboard text is not UTF-8"
.Ltext_17:
    .asciz "src/std/clipboard/macos/native.lucb:29:5"
.Ltext_18:
    .asciz "src/std/clipboard/macos/native.lucb:32:5"
.Ltext_19:
    .asciz "NSString"
.Ltext_20:
    .asciz "Foundation strings are unavailable"
.Ltext_21:
    .asciz "alloc"
.Ltext_22:
    .asciz "src/std/clipboard/macos/native.lucb:36:5"
.Ltext_23:
    .asciz "could not allocate clipboard text"
.Ltext_24:
    .asciz "initWithBytes:length:encoding:"
.Ltext_25:
    .asciz "src/std/clipboard/macos/native.lucb:37:5"
.Ltext_26:
    .asciz "could not create clipboard text"
.Ltext_27:
    .asciz "clearContents"
.Ltext_28:
    .asciz "src/std/clipboard/macos/native.lucb:39:5"
.Ltext_29:
    .asciz "setString:forType:"
.Ltext_30:
    .asciz "src/std/clipboard/macos/native.lucb:40:5"
.Ltext_31:
    .asciz "could not publish clipboard text"
.Ltext_32:
    .asciz "release"
.Ltext_33:
    .asciz "src/std/clipboard/macos/native.lucb:41:9"

    .section .rdata,"dr"
    .p2align 3
