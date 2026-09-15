    .text

    .p2align 4
    .globl lb_window_10macos_text_0init
    .type lb_window_10macos_text_0init, @function
lb_window_10macos_text_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_window_13mac_not_found(%rip), %rbx
    movabsq $9223372036854775807, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_10macos_text_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "NSTextInputClient"
.Ltext_1:
    .asciz "AppKit text input is unavailable"
.Ltext_2:
    .asciz "could not register the native text input client"
.Ltext_3:
    .asciz "insertText:replacementRange:"
.Ltext_4:
    .asciz "v@:@{_NSRange=QQ}"
.Ltext_5:
    .asciz "setMarkedText:selectedRange:replacementRange:"
.Ltext_6:
    .asciz "v@:@{_NSRange=QQ}{_NSRange=QQ}"
.Ltext_7:
    .asciz "unmarkText"
.Ltext_8:
    .asciz "v@:"
.Ltext_9:
    .asciz "hasMarkedText"
.Ltext_10:
    .asciz "B@:"
.Ltext_11:
    .asciz "markedRange"
.Ltext_12:
    .asciz "{_NSRange=QQ}@:"
.Ltext_13:
    .asciz "selectedRange"
.Ltext_14:
    .asciz "validAttributesForMarkedText"
.Ltext_15:
    .asciz "@@:"
.Ltext_16:
    .asciz "attributedSubstringForProposedRange:actualRange:"
.Ltext_17:
    .asciz "@@:{_NSRange=QQ}^{_NSRange=QQ}"
.Ltext_18:
    .asciz "characterIndexForPoint:"
.Ltext_19:
    .asciz "Q@:{CGPoint=dd}"
.Ltext_20:
    .asciz "firstRectForCharacterRange:actualRange:"
.Ltext_21:
    .asciz "{CGRect={CGPoint=dd}{CGSize=dd}}@:{_NSRange=QQ}^{_NSRange=QQ}"
.Ltext_22:
    .asciz "doCommandBySelector:"
.Ltext_23:
    .asciz "v@::"
.Ltext_24:
    .asciz "NSString"
.Ltext_25:
    .asciz "isKindOfClass:"
.Ltext_26:
    .asciz "string"
.Ltext_27:
    .asciz "unreachable"
.Ltext_28:
    .asciz "src/std/window/macos/text.lucb:25:5"
.Ltext_29:
    .asciz "release"
.Ltext_30:
    .asciz "length"
.Ltext_31:
    .asciz "src/std/window/macos/text.lucb:42:5"
.Ltext_32:
    .asciz "characterAtIndex:"
.Ltext_33:
    .asciz "copy"
.Ltext_34:
    .asciz "src/std/window/macos/text.lucb:68:5"
.Ltext_35:
    .asciz "src/std/window/macos/text.lucb:73:5"
.Ltext_36:
    .asciz "src/std/window/macos/text.lucb:77:5"
.Ltext_37:
    .asciz "NSArray"
.Ltext_38:
    .asciz "array"
.Ltext_39:
    .asciz "src/std/window/macos/text.lucb:81:5"
.Ltext_40:
    .asciz "src/std/window/macos/text.lucb:86:5"
.Ltext_41:
    .asciz "src/std/window/macos/text.lucb:89:5"
.Ltext_42:
    .asciz "convertRectToScreen:"
.Ltext_43:
    .asciz "src/std/window/macos/text.lucb:96:5"
.Ltext_44:
    .asciz "inputContext"
.Ltext_45:
    .asciz "discardMarkedText"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_window_13mac_not_found
    .type lb_window_13mac_not_found, @object
    .p2align 3
lb_window_13mac_not_found:
    .zero 8

    .section .note.GNU-stack,"",@progbits
