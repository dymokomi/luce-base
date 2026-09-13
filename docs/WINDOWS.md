# Windows x64

Windows is a native `x86_64-windows` target. Base emits Win64 assembly and COFF
objects, including shadow space, register preservation, aggregate calls and
returns, TLS, stack probes and SEH unwind records. MinGW GCC supplies the assembler,
linker, CRT and pthread library. `--backend=c` is the comparison backend.

## Build

Install Python 3 and MinGW-w64 GCC with pthread support, and put `python`, `gcc`,
`ar` and `nm` on PATH. MSYS2 UCRT64 is used by the Windows CI workflow. In PowerShell:

```powershell
python tools/build_windows.py
.\build\luce-base.exe --version
.\build\luce-base.exe build tests/samples/hello.lucb -o build/hello.exe
.\build\hello.exe
```

The first compiler comes from the checked-in Windows C snapshot. Two subsequent
native generations must emit byte-identical C and assembly. To verify the C++
bootstrap separately, build luce-seed with CMake and pass
`--seed ../luce-seed/build-windows/lucb.exe` to this script.

For a sibling Luce checkout:

```powershell
Set-Location ../luce
python tools/build_windows.py
$env:LUCE_BASE = (Resolve-Path ../luce-base/build/luce-base.exe).Path
.\build\luce.exe build tests/programs/calc/main.luc -o build/calc.exe
```

Native builds append `.exe` to an output name with no extension. Source is UTF-8,
with an optional leading UTF-8 BOM; LF and CRLF source lines are accepted. UTF-16
source files must be saved as UTF-8. Generators explicitly read and write UTF-8.

## OS contracts

Application code uses `paths`, `files`, `os`, `process`, `net`, `window` and `gpu`.
Target facts and ABI types live in `platform` and `back/target`; platform-specific
operations sit behind the corresponding standard module. Unix implementations
remain selected on Unix. Windows filesystem, environment, command-line and window
text crosses Win32 boundaries as UTF-16 and is exposed to Base as UTF-8.

`paths.separator`, `root`, `is_rooted`, `is_absolute`, `directory`, `base`, `stem`,
`join` and `normalize` share the target's path rules. Windows accepts both slash
styles, drive roots, drive-relative names, UNC shares and extended namespaces.
`C:child` is relative to the drive's current directory; `C:\child` is absolute.
`normalize` removes lexical dot segments and redundant separators; it does not
resolve symlinks or establish containment. Do not use lexical normalization as a
filesystem security check. Allocated path results must be released as documented.

Files support 64-bit offsets, Unicode names, hardlinks, symlinks, no-follow opening,
rename while open, timestamps and temporary publication. Windows permission bits
represent the read-only attribute, not POSIX ownership or NTFS ACLs. Directory-
relative operations resolve the directory handle's current name before the wide
filesystem call; they do not provide Unix `openat` atomicity across a concurrent
directory rename. Symlink creation requires Windows Developer Mode or the relevant
privilege; creating a dangling directory symlink requires the directory hint.

Subprocess arguments use CRT quoting and `CreateProcessW`. Captured streams use
Unicode, atomic, delete-on-close temporary files, so large stdout and stderr do
not deadlock each other. Windows sockets use pointer-sized handles and Winsock
errors rather than CRT file descriptors. Deadlines and nonblocking behavior are
implemented through Winsock polling. Server shutdown uses console control events.

GNU tools still have a narrow filename boundary: the compiler links in a private
ASCII scratch directory and publishes the result with Unicode filesystem calls.
A Unicode TEMP directory needs an ASCII short-name alias; if the filesystem has
short names disabled, set TEMP and TMP to an existing ASCII directory. Public
source and output paths remain UTF-8. External C source and library paths must
also be representable to the selected GNU toolchain.

## Windows and Vulkan

Install the LunarG Vulkan SDK and a graphics driver with Vulkan presentation
support. Start a fresh terminal after installation so `VULKAN_SDK` is available.
The compiler selects Win32 and Vulkan link libraries from actual module usage;
ordinary CPU programs do not require the SDK. Checked-in SPIR-V avoids a shader
compiler dependency for normal builds. Shader regeneration uses
`python tools/embed_vulkan_shaders.py`.

`window` implements Win32 windows, DPI sizing, keyboard/mouse input, close events
and presentation ownership. `gpu` selects Vulkan on Windows and Metal on macOS.
The Vulkan backend implements the existing triangle/UI frame API, depth testing,
blending, scissoring, swapchain resize and presentation. It currently waits for
the presentation queue each frame and uploads into host-visible coherent memory;
performance tuning and broader GPU feature coverage remain future work.

From `luce-demos`, `python tools/build.py --help` describes the UI and sphere
builds. `python tests/run.py --gui` creates real windows and exercises both demos
at all four native optimization levels. These checks need an interactive desktop
and a Vulkan-capable driver; hosted CI runs the CPU contracts separately.

## Validation

```powershell
.\build\luce-base.exe test src/main.lucb
python tools/test_windows.py --suite conformance --c
python tools/test_windows.py --suite samples --c
python tools/test_windows_arguments.py --compiler build/luce-base.exe
python tools/test_windows_native.py
python tests/programs/net_protocols/run.py build/luce-base.exe
$env:VK_INSTANCE_LAYERS = 'VK_LAYER_KHRONOS_validation'
$env:VK_LAYER_VALIDATE_SYNC = '1'
python tools/test_windows_native.py --gpu
python tools/test_vulkan_abi.py --help
```

The native contract runner covers files, IPv4/IPv6 TCP and UDP, cancellation,
deadlines and stack unwinding through an independent C/Windows SDK oracle. Its
optional GUI cases exercise Win32 and actual Vulkan presentation. Each runs in
native opt 0–3 and C debug/release modes. JSON results are retained in `build/`.
Vulkan ABI checks compare all fields of 63 records against the installed SDK.
See [the local validation record](WINDOWS_VALIDATION.md) for observed results and
the distinction between Windows execution and Unix cross-compilation.

Shared Win32 ABI declarations and UTF-8/UTF-16 conversion live in the internal
`windows_abi` and `windows_text` standard modules. Filesystem, process and window
behavior remains in each adapter. Vulkan native presentation is isolated under
`src/std/gpu/vulkan/presentation/`; rendering and swapchain code use that boundary.

The Windows gate compares generated Vulkan layouts and named constants against
Khronos Vulkan-Headers `v1.4.341`, without requiring a GPU. Regenerate with
`python tools/generate_vulkan.py PATH/registry/vk.xml`; verify with
`python tools/test_vulkan_abi.py --compiler build/luce-base.exe --headers PATH/include`.

`process.Termination` owns opt-in console notifications. Pass its copyable
`TerminationStatus` to workers and close the owner after cleanup. For console
close, logoff and shutdown notifications, the callback waits for all owners to
close for at most four seconds; the OS may impose an earlier limit. Ctrl-C and
Ctrl-Break request cancellation without this wait. These distinctions follow
the [Windows HandlerRoutine contract](https://learn.microsoft.com/en-us/windows/console/handlerroutine).
The Windows gate delivers actual console close, tests multiple subscribers and
checks the bound when a subscriber does not acknowledge.
