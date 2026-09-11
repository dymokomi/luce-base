# GPU devices and presentation

`gpu` is a luce-base standard module with a portable application API and a Metal
backend for arm64 macOS. It currently opens devices, attaches a surface to a
standard `window`, clears it, and submits it for display. All implementation code
is Base calling system APIs directly. There is no SDL dependency or C/Objective-C
implementation shim.

This is the presentation foundation. Buffers, textures, pipelines, draw/compute
commands, portable shaders, Vulkan, and the `luce-ui` framework are subsequent
increments. The API remains provisional while those contracts are exercised.

## Run the example

```sh
./build/luce-base build tests/programs/gpu/main.lucb -o build/gpu-window
./build/gpu-window
```

The default native compiler produces the executable. It displays a blue window;
Escape or the close button exits. The complete event loop is in the example.
The graphics setup itself is:

```luce
import gpu
import window

var device = try gpu.Device.open()
defer device.destroy()
var target = try window.Window.open(window.Options(title = "Luce GPU"))
defer target.destroy()
var surface = try gpu.Surface.open(device, target)
defer surface.destroy()
try target.show()
discard(try surface.clear_present(gpu.Color(red = 0.025, green = 0.06, blue = 0.15)))
try surface.wait_idle()
```

Applications declare their system link dependencies in `luce.toml`:

```toml
[package]
name = "gpu_example"

[native]
frameworks = ["AppKit", "Foundation", "CoreGraphics", "QuartzCore", "Metal"]
libraries = ["objc"]
```

Device-only programs need Metal and objc, without AppKit initialization or
linkage. Using just portable values such as `gpu.Color` needs none of these
frameworks. The compiler's C backend remains a comparison path in tests; the
library and example normally compile through the native backend.

## Public contract

| Operation or type | Contract |
| --- | --- |
| `supported(backend)` | Reports implementation availability for this build, not hardware availability. |
| `Device.open()` | Selects the implemented native backend. On arm64 macOS this is Metal. A machine without an available device returns `unavailable`. |
| `Device.open(Backend.metal)` | Explicit backend selection. Unsupported selections fail without fallback. `Backend.vulkan` is reserved and currently returns `unsupported`. |
| `Surface.open(device, window)` | Creates one exclusive presentation surface for the window. A second attachment returns `window.presentation_in_use`. |
| `Color` | Three finite linear-light sRGB components in 0..1. Presentation is opaque with alpha one. Invalid components, including NaN and infinities, return `invalid_color`. |
| `Surface.size()` | Returns logical points, backing pixels, and scale using `window.Size`. |
| `clear_present(color)` | Refreshes backing dimensions, clears the full surface, and queues display-synchronized presentation. Returns `submitted` or `skipped`. |
| `wait_idle()` | Waits for this surface's submitted GPU work and reports execution errors. It does not wait for display scanout. |
| `destroy()` | Idempotent on that value. Surface destruction drains pending work and releases ownership. Call `wait_idle` first to observe execution errors. |

All device and surface operations currently require the main thread. Fallible
operations return `wrong_thread`; destruction of a live resource on another
thread traps. The zero value is closed. Copies alias ownership: borrow them and
destroy exactly one owner. These are manual Base resources, not reference-counted
application values.

Each surface retains the underlying device. Destroying the public `Device`
handle does not invalidate existing surfaces. Each surface also owns an exclusive
`window.Presentation` lease. Destroying the window closes it and detaches input
callbacks immediately; its native host remains allocated until the surface is
destroyed. Rendering and size queries then return `window.closed`, while
`wait_idle` and destruction remain valid. Surface-first destruction returns the
lease and permits a new surface on the same window.

`submitted` describes queue submission, not proof that a frame reached a display.
`skipped` covers hidden/minimized windows, zero backing extent, or a drawable
temporarily unavailable from the backend. Keep polling window events and try on
a later frame. A window fully covered by another window is still eligible for
rendering. Resizes and display-scale changes are applied on the next frame.

The first Metal backend caps each backing dimension at 16,384 pixels, a
conservative baseline for the supported Mac GPU families. A valid window size in
points can exceed this on a Retina display. Such a frame returns
`surface_too_large` before acquiring a drawable; resize smaller and retry on the
same surface. Newer hardware's larger limits can be exposed by a later capability
API. The limit is in the backend, not the portable window or color types.

This first implementation permits at most one pending command per surface. The
next frame waits for the preceding command before acquiring a drawable, reporting
any execution error. Execution failure is sticky until the surface is recreated.
Drawable acquisition may block: Metal's timeout is approximately one second, and
GPU completion waits have no application deadline. This API is not a nonblocking
render loop or a latency guarantee. Pipelined frames and explicit synchronization
belong with the later command/resource API.

## Backend boundary

The files under `src/std/gpu/` share one standard module scope:

| Files | Responsibility |
| --- | --- |
| `module.lucb` | Portable values, errors, validation, and thread policy. |
| `device.lucb`, `surface.lucb` | Public ownership, device references, window leases, and API contracts. |
| `backend.lucb` | Backend selection and dispatch using opaque device/surface payloads. |
| `metal/objc.lucb` | Exact typed system ABI declarations, including native aggregates. |
| `metal/device.lucb` | Metal device and queue creation and release. |
| `metal/surface.lucb` | CAMetalLayer, sRGB color space, drawable sizing, render-pass encoding, completion, and teardown. |

Application-facing GPU signatures contain no native graphics objects. The
`window.Presentation.macos_view()` bridge exists for backend implementers; it
returns a borrowed NSView and is not required by application drawing code. Future
window backends can provide host-specific accessors without adding graphics
dependencies to `window` or changing application GPU calls.

A Vulkan implementation can keep its instance/device/queues in its device
payload and its native surface, swapchain, and synchronization objects in its
surface payload. The dispatch contract leaves acquisition and resize recovery
inside that backend. It must implement the same opaque sRGB target, lifetime,
completion, and skipped-frame semantics. Vulkan support will also require Linux
window hosting, capability/format checks, swapchain recreation, and an actual
cross-platform validation matrix; reserving the enum does not implement these.

Portable shader source will be designed together with resource bindings and
pipeline validation. No application-facing Metal shader strings or native
pipeline handles are introduced by this increment.

## Validation

```sh
LUCE_TEST_GPU=required LUCE_TEST_WINDOW=required tests/programs/gpu/check.sh
LUCE_TEST_WINDOW=required tests/programs/native_window/check.sh
```

The GPU suite runs native optimization levels 0–3 and C debug/release comparisons.
On macOS it enables Metal API validation and tests actual rendered pixels through
a test-only blit to shared memory. This checks channel order, linear-to-sRGB
conversion, alpha, full target coverage, aggregate calling conventions, and
backing extent after resize. It also exercises skipped acquisition, hidden
windows, duplicate attachment, invalid colors, worker-thread rejection, separate
windows, repeated recreation, and both destruction orders with pending work.
Oversized backing width and height are rejected before Metal validation can
abort, and pixel readback verifies recovery after resizing smaller.
Allocation refusal is injected at each Base device/surface construction stage;
the suite verifies returned leases and balanced Base storage after cleanup.

The pixel observer temporarily replaces `nextDrawable` inside its own process,
retains the returned drawable and texture, then restores the method and releases
them. Because AppKit can constrain window height to the display, a scoped override
of one view's backing conversion exercises the oversized-height case; the width
case uses a real native resize. Readback is enabled only on the test surface.
Production targets remain
framebuffer-only and the standard library contains no injection hooks. The tests
do not require screen capture or accessibility permission.

Portable contracts run even without graphics hardware. `LUCE_TEST_GPU=optional`
records unavailable Metal hardware, while `LUCE_TEST_WINDOW=optional` records a
missing desktop. `LUCE_TEST_WINDOW=off` explicitly omits presentation checks.
Required modes fail when their resource is missing. Unsupported targets exercise
ordinary `unsupported` errors and link no macOS frameworks. All generated test
sources and binaries live in automatically removed temporary directories.

Platform contracts were checked against the installed macOS SDK's Metal,
QuartzCore, and CoreGraphics headers and these primary references:
[Apple's custom Metal view](https://developer.apple.com/documentation/metal/creating-a-custom-metal-view),
[CAMetalLayer drawable acquisition](https://developer.apple.com/documentation/quartzcore/cametallayer/nextdrawable()),
[Metal implementation limits](https://developer.apple.com/metal/Metal-Feature-Set-Tables.pdf),
and [Vulkan window-system integration](https://docs.vulkan.org/spec/latest/chapters/VK_KHR_surface/wsi.html).
