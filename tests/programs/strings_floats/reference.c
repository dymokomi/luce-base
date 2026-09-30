#define _GNU_SOURCE
#include <assert.h>
#include <fenv.h>
#include <locale.h>
#include <stdint.h>
#ifdef __APPLE__
#include <xlocale.h>
#endif

static locale_t saved_locale;
static locale_t test_locale;
static int saved_rounding;
static int expected_rounding;

/* Keep an existing thread locale active while Base creates and frees its own. */
int32_t float_environment_begin(void) {
    const char *names[] = {"de_DE.UTF-8", "fr_FR.UTF-8", "C"};
    for (unsigned i = 0; i < sizeof names / sizeof *names; ++i) {
        test_locale = newlocale(LC_ALL_MASK, names[i], NULL);
        if (test_locale) break;
    }
    assert(test_locale);
    saved_locale = uselocale(test_locale);
    assert(saved_locale);
    saved_rounding = fegetround();
    assert(fesetround(FE_TONEAREST) == 0);
    expected_rounding = FE_TONEAREST;
    return 0;
}

void float_environment_check(void) {
    assert(uselocale((locale_t)0) == test_locale);
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
    assert(uselocale(saved_locale));
    freelocale(test_locale);
    assert(fesetround(saved_rounding) == 0);
}
