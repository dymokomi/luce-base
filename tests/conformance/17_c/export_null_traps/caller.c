/* C calls back into Base with a null where the export declares a bare pointer. */
#include <stdint.h>

int32_t total_of(const int32_t *values, int64_t count);

int32_t call_with_null(void) {
    return total_of((const int32_t *)0, 0);
}
