/* Independent C callers/callees establish the host ABI, including packed scalar
   stack arguments, signed extension, floating spills, and a variadic boundary. */
#include <assert.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdarg.h>

bool abi_scalars(uint64_t r0, uint64_t r1, uint64_t r2, uint64_t r3, uint64_t r4, uint64_t r5, uint64_t r6, uint64_t r7, bool flag, int8_t byte, uint16_t small, int16_t signed_small, uint32_t word, int32_t signed_word, uint64_t wide) {
    assert(r0 + r1 + r2 + r3 + r4 + r5 + r6 + r7 == 36);
    return flag && byte == -7 && small == 60001 && signed_small == -1234 && word == 4000000001 && signed_word == -1234567 && wide == 9000000001;
}
bool abi_floats(uint64_t r0, uint64_t r1, uint64_t r2, uint64_t r3, uint64_t r4, uint64_t r5, uint64_t r6, uint64_t r7, double f0, double f1, double f2, double f3, double f4, double f5, double f6, double f7, bool flag, uint16_t small, float x, float y, double z) {
    assert(r0 + r1 + r2 + r3 + r4 + r5 + r6 + r7 == 36);
    assert(f0 + f1 + f2 + f3 + f4 + f5 + f6 + f7 == 36.0);
    return flag && small == 60001 && x == 1.25f && y == -2.5f && z == 19.75;
}
bool abi_variadic(uint64_t r0, uint64_t r1, uint64_t r2, uint64_t r3, uint64_t r4, uint64_t r5, uint64_t r6, uint64_t r7, int32_t flag, ...) {
    assert(r0 + r1 + r2 + r3 + r4 + r5 + r6 + r7 == 36);
    va_list args;
    va_start(args, flag);
    int first = va_arg(args, int);
    int second = va_arg(args, int);
    double third = va_arg(args, double);
    va_end(args);
    return flag && first == 53 && second == -7 && third == 1.25;
}
extern bool base_scalars(uint64_t r0, uint64_t r1, uint64_t r2, uint64_t r3, uint64_t r4, uint64_t r5, uint64_t r6, uint64_t r7, bool flag, int8_t byte, uint16_t small, int16_t signed_small, uint32_t word, int32_t signed_word, uint64_t wide);
extern bool base_floats(uint64_t r0, uint64_t r1, uint64_t r2, uint64_t r3, uint64_t r4, uint64_t r5, uint64_t r6, uint64_t r7, double f0, double f1, double f2, double f3, double f4, double f5, double f6, double f7, bool flag, uint16_t small, float x, float y, double z);
bool abi_incoming(void) {
    return base_scalars(1, 2, 3, 4, 5, 6, 7, 8, true, -7, 60001, -1234, 4000000001, -1234567, 9000000001)
        && base_floats(1, 2, 3, 4, 5, 6, 7, 8, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, true, 60001, 1.25f, -2.5f, 19.75);
}
