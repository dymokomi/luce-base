    .text

    .p2align 4
    .globl lb_window_10macos_text_0init
    .type lb_window_10macos_text_0init, @function
lb_window_10macos_text_0init:
    pushq %rbp
    movq %rsp, %rbp
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
    .asciz "shift count out of range"
.Ltext_1:
    .asciz "src/std/window/macos/text.lucb:5:5"
.Ltext_2:
    .asciz "unreachable"
.Ltext_3:
    .asciz "NSTextInputClient"
.Ltext_4:
    .asciz "AppKit text input is unavailable"
.Ltext_5:
    .asciz "could not register the native text input client"
.Ltext_6:
    .asciz "insertText:replacementRange:"
.Ltext_7:
    .asciz "v@:@{_NSRange=QQ}"
.Ltext_8:
    .asciz "setMarkedText:selectedRange:replacementRange:"
.Ltext_9:
    .asciz "v@:@{_NSRange=QQ}{_NSRange=QQ}"
.Ltext_10:
    .asciz "unmarkText"
.Ltext_11:
    .asciz "v@:"
.Ltext_12:
    .asciz "hasMarkedText"
.Ltext_13:
    .asciz "B@:"
.Ltext_14:
    .asciz "markedRange"
.Ltext_15:
    .asciz "{_NSRange=QQ}@:"
.Ltext_16:
    .asciz "selectedRange"
.Ltext_17:
    .asciz "validAttributesForMarkedText"
.Ltext_18:
    .asciz "@@:"
.Ltext_19:
    .asciz "attributedSubstringForProposedRange:actualRange:"
.Ltext_20:
    .asciz "@@:{_NSRange=QQ}^{_NSRange=QQ}"
.Ltext_21:
    .asciz "characterIndexForPoint:"
.Ltext_22:
    .asciz "Q@:{CGPoint=dd}"
.Ltext_23:
    .asciz "firstRectForCharacterRange:actualRange:"
.Ltext_24:
    .asciz "{CGRect={CGPoint=dd}{CGSize=dd}}@:{_NSRange=QQ}^{_NSRange=QQ}"
.Ltext_25:
    .asciz "doCommandBySelector:"
.Ltext_26:
    .asciz "v@::"
.Ltext_27:
    .asciz "NSString"
.Ltext_28:
    .asciz "isKindOfClass:"
.Ltext_29:
    .asciz "string"
.Ltext_30:
    .asciz "src/std/window/macos/text.lucb:27:5"
.Ltext_31:
    .asciz "release"
.Ltext_32:
    .asciz "length"
.Ltext_33:
    .asciz "src/std/window/macos/text.lucb:44:5"
.Ltext_34:
    .asciz "characterAtIndex:"
.Ltext_35:
    .asciz "copy"
.Ltext_36:
    .asciz "src/std/window/macos/text.lucb:70:5"
.Ltext_37:
    .asciz "src/std/window/macos/text.lucb:75:5"
.Ltext_38:
    .asciz "src/std/window/macos/text.lucb:79:5"
.Ltext_39:
    .asciz "NSArray"
.Ltext_40:
    .asciz "array"
.Ltext_41:
    .asciz "src/std/window/macos/text.lucb:83:5"
.Ltext_42:
    .asciz "src/std/window/macos/text.lucb:88:5"
.Ltext_43:
    .asciz "src/std/window/macos/text.lucb:91:5"
.Ltext_44:
    .asciz "convertRectToScreen:"
.Ltext_45:
    .asciz "src/std/window/macos/text.lucb:98:5"
.Ltext_46:
    .asciz "inputContext"
.Ltext_47:
    .asciz "discardMarkedText"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
