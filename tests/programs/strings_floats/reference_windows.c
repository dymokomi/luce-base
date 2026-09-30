#include <assert.h>
#include <fenv.h>
#include <locale.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

static int saved_rounding, expected_rounding;
static char *saved_name, *test_name;
static int saved_policy;

int32_t float_environment_begin(void) {
    saved_policy = _configthreadlocale(_ENABLE_PER_THREAD_LOCALE);
    saved_name = strdup(setlocale(LC_ALL, NULL));
    if (!setlocale(LC_ALL, "German_Germany.1252")) assert(setlocale(LC_ALL, "C"));
    test_name = strdup(setlocale(LC_ALL, NULL));
    saved_rounding = fegetround();
    assert(fesetround(FE_TONEAREST) == 0);
    expected_rounding = FE_TONEAREST;
    return 0;
}
void float_environment_check(void) {
    assert(!strcmp(setlocale(LC_ALL, NULL), test_name));
    assert(fegetround() == expected_rounding);
}
void float_rounding(int32_t kind) {
    const int modes[] = {FE_TONEAREST, FE_DOWNWARD, FE_UPWARD, FE_TOWARDZERO};
    assert(kind >= 0 && kind < 4);
    assert(fesetround(modes[kind]) == 0);
    expected_rounding = modes[kind];
}
void float_environment_end(void) {
    float_environment_check();
    assert(setlocale(LC_ALL, saved_name));
    free(saved_name);
    free(test_name);
    _configthreadlocale(saved_policy);
    assert(fesetround(saved_rounding) == 0);
}
