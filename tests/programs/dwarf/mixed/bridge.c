#include <stdint.h>
int64_t bridge(int64_t (*callback)(int64_t), int64_t value) {
    volatile int64_t kept = value;
    return callback(kept);
}
