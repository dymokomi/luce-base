    .text

    .p2align 2
    .globl lb_clipboard_12macos_native_0init
    .type lb_clipboard_12macos_native_0init, %function
lb_clipboard_12macos_native_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_clipboard_12macos_native_0init, .-lb_clipboard_12macos_native_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_clipboard_12macos_native_0init

    .section .rodata
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

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
