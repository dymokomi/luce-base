# Native windows and input

The first window backend is implemented entirely in luce-base, using macOS
AppKit and the Objective-C runtime directly. SDL is not a dependency of this
API. The existing SDL proving program is independent and remains in the test
suite.

`input` contains portable, self-contained event values. `window` owns native
window resources, enforces main-thread access, and dispatches OS events into
one bounded queue per window. The API is provisional until a Linux backend
has exercised the same contracts.

## Build the demonstration

On arm64 macOS, from the repository root:

```sh
./build/luce-base build tests/programs/native_window/main.lucb -o build/native-window
./build/native-window
```

This uses the default native backend. The demonstration opens a window and
reports resize and display-scale changes. Escape or the title-bar close
button requests closure. This example draws nothing; the separate
[GPU demonstration](GPU.md) attaches a Metal presentation surface.

An application using `window` declares its system dependencies in `luce.toml`:

```toml
[package]
name = "window_example"

[native]
frameworks = ["AppKit", "Foundation"]
libraries = ["objc"]
```

The test directory additionally links CoreGraphics to manufacture scroll
events. The standard window implementation does not call CoreGraphics.
Input-only and console programs require no AppKit linkage. Unsupported targets
can import `window` and receive `window.unsupported` without linking AppKit.

## Ownership and events

- `Window.open` creates a hidden window with a UTF-8 title and content dimensions
  between 1 and 10000 logical points. `show` makes it visible and requests
  activation; macOS controls foreground focus.
- Every operation runs on the main thread. Fallible methods report
  `wrong_thread`; destroying an open window on another thread traps. The zero
  value is closed, and destroying the same value again is harmless. Copying a
  window aliases ownership: borrow it and destroy exactly one owner.
- `poll` first drains that window's events, then pumps at most 256 OS events
  without waiting for a new event. AppKit may enter its own tracking loop while
  dragging or resizing a window. Poll regularly for every open window.
- Each window stores 256 events without allocating during dispatch. On overflow,
  queued events are discarded and an `overflow` event precedes retained newer
  input. Close requests have priority and survive overflow. Discard held-key and
  held-button state on overflow or focus loss.
- A close request is a decision for the application; it does not release the
  window. `destroy` closes the window and detaches callbacks. A live
  `Presentation` lease retains its native host and Base storage until the graphics
  surface releases the lease; otherwise destruction releases them immediately.
  The process-wide NSApplication and registered runtime classes remain
  until process exit. This API manages application activation policy and is
  intended for Base-owned application event loops.
- Pointer coordinates use logical points, with the origin at the content's top
  left. `size` separately returns logical extent, backing-pixel extent, and
  display scale. Query it after a `resized` event, including display changes.
- Physical keys use USB HID keyboard-page positions. They are not characters.
  The initial map covers the main keyboard, navigation, modifiers, and F1–F12;
  unmapped keypad and international positions return `unknown`. Modifier changes
  have their own event and include the current aggregate modifier state.
- Mouse wheels report line deltas; precise scrolling reports point deltas.
  Both retain macOS's user-selected scrolling direction. Touchpad scrolling is
  supported; raw touches, gesture phases, and momentum phases are not yet exposed.

## Validation

```sh
tests/programs/abi_scalars/check.sh
LUCE_TEST_WINDOW=required tests/programs/native_window/check.sh
```

The window checks build and run native optimization levels 0–3 and C debug and
release comparisons. They exercise actual AppKit windows, aggregate ABI calls,
resize/backing extent, native keyboard and mouse dispatch, modifiers, scrolling,
multiple-window isolation, overflow, close requests, and repeated destruction.
Focus notifications are injected through NSNotificationCenter because automated
tests cannot require macOS to grant foreground activation. They do not simulate
physical system-wide input or require accessibility permission.

Non-GUI contracts always run. `LUCE_TEST_WINDOW=optional` (the default) records
a GUI skip when no desktop session is available; `off` explicitly runs contracts
only. A required GUI run fails when no desktop exists. All test artifacts are
temporary. The separate scalar ABI test uses independent C callers and callees
to check native stack packing, signed extension, floating spills, and varargs.

## Following increments

The [GPU foundation](GPU.md) now provides Metal clear/present, tied to window
lifetime and backing-size changes. Next:

1. Implement Linux window/input support and Vulkan presentation, then revise the
   shared contracts using evidence from both platforms.
2. Define a portable shader and resource model before exposing application
   shaders as a stable API.
3. Build `luce-ui` as a Base package over `window`, `input`, and `gpu`, starting
   with a button; then demonstrate it from high-level Luce.

Text composition/IME, clipboard, drag and drop, accessibility, fullscreen,
application menus, and richer touchpad gestures are separate work. No platform
shader-language promise is implied by the window/input API.

Implementation references: [Apple NSWindow](https://developer.apple.com/documentation/appkit/nswindow),
[AppKit event retrieval](https://developer.apple.com/documentation/appkit/nsapplication/nextevent%28matching%3Auntil%3Ainmode%3Adequeue%3A%29),
the installed macOS SDK's Objective-C and AppKit headers,
[SDL Cocoa event handling](https://github.com/libsdl-org/SDL/blob/main/src/video/cocoa/SDL_cocoaevents.m),
and [GLFW Cocoa initialization](https://github.com/glfw/glfw/blob/master/src/cocoa_init.m).
The Base implementation uses those projects as references, without linking them.
