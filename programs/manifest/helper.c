/* A C source the manifest names (§17.4), compiled into the program. It calls the Base
   export back under the manifest's symbol prefix (§17.6). */
#include <stdint.h>

int32_t mf_twice(int32_t x);

int32_t helper_twice_plus(int32_t x, int32_t y) {
    return mf_twice(x) + y;
}
