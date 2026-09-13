#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <stdint.h>

/* Walk with the documented context/unwind APIs. This directly validates the
 * compiler's .pdata/.xdata, without CaptureStackBackTrace's best-effort policy. */
uint32_t windows_unwind_count(void *function, uint32_t required) {
    DWORD64 image = 0;
    PRUNTIME_FUNCTION target = RtlLookupFunctionEntry((DWORD64)function, &image, NULL);
    if (!target) return 0;
    DWORD64 wanted = image + target->BeginAddress;
    CONTEXT context;
    RtlCaptureContext(&context);
    uint32_t matches = 0;
    for (unsigned frame = 0; frame < 64 && context.Rip && matches < required; ++frame) {
        PRUNTIME_FUNCTION entry = RtlLookupFunctionEntry(context.Rip, &image, NULL);
        if (!entry) {
            context.Rip = *(DWORD64 *)context.Rsp;
            context.Rsp += 8;
            continue;
        }
        if (image + entry->BeginAddress == wanted) ++matches;
        PVOID handler = NULL;
        DWORD64 establisher = 0;
        RtlVirtualUnwind(UNW_FLAG_NHANDLER, image, context.Rip, entry,
                         &context, &handler, &establisher, NULL);
    }
    return matches;
}
