    .text

    .p2align 4
    .globl lb_window_15macos_lifecycle_0init
    .type lb_window_15macos_lifecycle_0init, @function
lb_window_15macos_lifecycle_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_15macos_lifecycle_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "could not allocate a native window class"
.Ltext_1:
    .asciz "luceState"
.Ltext_2:
    .asciz "^v"
.Ltext_3:
    .asciz "could not register native window state"
.Ltext_4:
    .asciz "unreachable"
.Ltext_5:
    .asciz "src/std/window/macos/lifecycle.lucb:14:5"
.Ltext_6:
    .asciz "NSObject"
.Ltext_7:
    .asciz "LuceBaseWindowDelegateV1"
.Ltext_8:
    .asciz "windowShouldClose:"
.Ltext_9:
    .asciz "B@:@"
.Ltext_10:
    .asciz "windowDidResize:"
.Ltext_11:
    .asciz "v@:@"
.Ltext_12:
    .asciz "windowDidChangeBackingProperties:"
.Ltext_13:
    .asciz "windowDidBecomeKey:"
.Ltext_14:
    .asciz "windowDidResignKey:"
.Ltext_15:
    .asciz "luceDidFinishLaunching:"
.Ltext_16:
    .asciz "NSView"
.Ltext_17:
    .asciz "LuceBaseWindowViewV1"
.Ltext_18:
    .asciz "acceptsFirstResponder"
.Ltext_19:
    .asciz "B@:"
.Ltext_20:
    .asciz "isFlipped"
.Ltext_21:
    .asciz "cursorUpdate:"
.Ltext_22:
    .asciz "keyDown:"
.Ltext_23:
    .asciz "keyUp:"
.Ltext_24:
    .asciz "flagsChanged:"
.Ltext_25:
    .asciz "mouseDown:"
.Ltext_26:
    .asciz "mouseUp:"
.Ltext_27:
    .asciz "rightMouseDown:"
.Ltext_28:
    .asciz "rightMouseUp:"
.Ltext_29:
    .asciz "otherMouseDown:"
.Ltext_30:
    .asciz "otherMouseUp:"
.Ltext_31:
    .asciz "mouseMoved:"
.Ltext_32:
    .asciz "mouseDragged:"
.Ltext_33:
    .asciz "rightMouseDragged:"
.Ltext_34:
    .asciz "otherMouseDragged:"
.Ltext_35:
    .asciz "scrollWheel:"
.Ltext_36:
    .asciz "mouseEntered:"
.Ltext_37:
    .asciz "mouseExited:"
.Ltext_38:
    .asciz "null_foreign"
.Ltext_39:
    .asciz "src/std/window/macos/lifecycle.lucb:45:5"
.Ltext_40:
    .asciz "NSApplication"
.Ltext_41:
    .asciz "sharedApplication"
.Ltext_42:
    .asciz "AppKit could not initialize an application"
.Ltext_43:
    .asciz "setActivationPolicy:"
.Ltext_44:
    .asciz "AppKit refused the application's window activation policy"
.Ltext_45:
    .asciz "memory.unset"
.Ltext_46:
    .asciz "src/std/window/macos/lifecycle.lucb:54:5"
.Ltext_47:
    .asciz "memory.exhausted"
.Ltext_48:
    .asciz "NSWindow"
.Ltext_49:
    .asciz "alloc"
.Ltext_50:
    .asciz "could not allocate a native window"
.Ltext_51:
    .asciz "initWithContentRect:styleMask:backing:defer:"
.Ltext_52:
    .asciz "could not initialize a native window"
.Ltext_53:
    .asciz "setReleasedWhenClosed:"
.Ltext_54:
    .asciz "could not allocate a native view"
.Ltext_55:
    .asciz "initWithFrame:"
.Ltext_56:
    .asciz "could not initialize a native view"
.Ltext_57:
    .asciz "setContentView:"
.Ltext_58:
    .asciz "NSTrackingArea"
.Ltext_59:
    .asciz "could not allocate pointer tracking"
.Ltext_60:
    .asciz "initWithRect:options:owner:userInfo:"
.Ltext_61:
    .asciz "could not initialize pointer tracking"
.Ltext_62:
    .asciz "addTrackingArea:"
.Ltext_63:
    .asciz "release"
.Ltext_64:
    .asciz "new"
.Ltext_65:
    .asciz "could not allocate a window delegate"
.Ltext_66:
    .asciz "setDelegate:"
.Ltext_67:
    .asciz "setAcceptsMouseMovedEvents:"
.Ltext_68:
    .asciz "makeFirstResponder:"
.Ltext_69:
    .asciz "NSString"
.Ltext_70:
    .asciz "could not allocate a title"
.Ltext_71:
    .asciz "initWithBytes:length:encoding:"
.Ltext_72:
    .asciz "could not initialize the title"
.Ltext_73:
    .asciz "setTitle:"
.Ltext_74:
    .asciz "center"
.Ltext_75:
    .asciz "src/std/window/macos/lifecycle.lucb:85:5"
.Ltext_76:
    .asciz "NSRunningApplication"
.Ltext_77:
    .asciz "currentApplication"
.Ltext_78:
    .asciz "isFinishedLaunching"
.Ltext_79:
    .asciz "could not allocate a launch observer"
.Ltext_80:
    .asciz "NSNotificationCenter"
.Ltext_81:
    .asciz "defaultCenter"
.Ltext_82:
    .asciz "addObserver:selector:name:object:"
.Ltext_83:
    .asciz "run"
.Ltext_84:
    .asciz "removeObserver:"
.Ltext_85:
    .asciz "object"
.Ltext_86:
    .asciz "NSEvent"
.Ltext_87:
    .asciz "AppKit has no NSEvent class"
.Ltext_88:
    .asciz "src/std/window/macos/lifecycle.lucb:106:5"
.Ltext_89:
    .asciz "otherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:"
.Ltext_90:
    .asciz "postEvent:atStart:"
.Ltext_91:
    .asciz "stop:"
.Ltext_92:
    .asciz "src/std/window/macos/lifecycle.lucb:112:5"
.Ltext_93:
    .asciz "activateIgnoringOtherApps:"
.Ltext_94:
    .asciz "makeKeyAndOrderFront:"
.Ltext_95:
    .asciz "src/std/window/macos/lifecycle.lucb:118:5"
.Ltext_96:
    .asciz "bounds"
.Ltext_97:
    .asciz "convertRectToBacking:"
.Ltext_98:
    .asciz "backingScaleFactor"
.Ltext_99:
    .asciz "src/std/window/macos/lifecycle.lucb:123:5"
.Ltext_100:
    .asciz "src/std/window/macos/lifecycle.lucb:126:5"
.Ltext_101:
    .asciz "setContentSize:"
.Ltext_102:
    .asciz "src/std/window/macos/lifecycle.lucb:132:5"
.Ltext_103:
    .asciz "NSDate"
.Ltext_104:
    .asciz "AppKit has no NSDate class"
.Ltext_105:
    .asciz "src/std/window/macos/lifecycle.lucb:134:5"
.Ltext_106:
    .asciz "distantPast"
.Ltext_107:
    .asciz "nextEventMatchingMask:untilDate:inMode:dequeue:"
.Ltext_108:
    .asciz "sendEvent:"
.Ltext_109:
    .asciz "src/std/window/macos/lifecycle.lucb:140:9"
.Ltext_110:
    .asciz "updateWindows"
.Ltext_111:
    .asciz "src/std/window/macos/lifecycle.lucb:147:5"
.Ltext_112:
    .asciz "orderOut:"
.Ltext_113:
    .asciz "close"
.Ltext_114:
    .asciz "src/std/window/macos/lifecycle.lucb:165:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
