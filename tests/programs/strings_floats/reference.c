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

#include <dlfcn.h>
#include <errno.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static int fault_mode, fault_hits, locale_count;
static locale_t owned_locale;

void float_fault_begin(int32_t mode) {
    assert(!fault_mode && !locale_count);
    fault_mode = mode;
    fault_hits = 0;
}

void float_fault_end(int32_t expected_hits) {
    assert(fault_hits == expected_hits && !locale_count);
    fault_mode = 0;
    float_environment_check();
}

locale_t newlocale(int mask, const char *name, locale_t base) {
    if (fault_mode) {
        assert(mask == LC_NUMERIC_MASK && !strcmp(name, "C") && !base);
        if (fault_mode == 1 || fault_mode == 2) {
            ++fault_hits;
            errno = fault_mode == 1 ? ENOMEM : EINVAL;
            return (locale_t)0;
        }
    }
    __typeof__(&newlocale) real = (__typeof__(&newlocale))dlsym(RTLD_NEXT, "newlocale");
    assert(real);
    locale_t result = real(mask, name, base);
    if (fault_mode && result) {
        assert(!locale_count);
        owned_locale = result;
        ++locale_count;
    }
    return result;
}

#ifdef __APPLE__
int freelocale(locale_t value) {
#else
void freelocale(locale_t value) {
#endif
    if (fault_mode) {
        assert(locale_count == 1 && value == owned_locale);
        --locale_count;
    }
    __typeof__(&freelocale) real = (__typeof__(&freelocale))dlsym(RTLD_NEXT, "freelocale");
    assert(real);
#ifdef __APPLE__
    return real(value);
#else
    real(value);
#endif
}

static int conversion_fault(const char *text, char **end) {
    if (fault_mode < 3 || fault_mode > 5) return 0;
    ++fault_hits;
    *end = (char *)text + (fault_mode == 5 ? 1 : strlen(text));
    errno = fault_mode == 3 ? ENOMEM : fault_mode == 4 ? EIO : 0;
    return 1;
}

double strtod_l(const char *text, char **end, locale_t locale) {
    if (conversion_fault(text, end)) return 0;
    __typeof__(&strtod_l) real = (__typeof__(&strtod_l))dlsym(RTLD_NEXT, "strtod_l");
    assert(real);
    return real(text, end, locale);
}

float strtof_l(const char *text, char **end, locale_t locale) {
    if (conversion_fault(text, end)) return 0;
    __typeof__(&strtof_l) real = (__typeof__(&strtof_l))dlsym(RTLD_NEXT, "strtof_l");
    assert(real);
    return real(text, end, locale);
}

#ifdef __APPLE__
int snprintf_l(char *output, size_t size, locale_t locale, const char *format, ...) {
#else
int snprintf(char *output, size_t size, const char *format, ...) {
#endif
    if (fault_mode == 6 || fault_mode == 7) {
        ++fault_hits;
        assert(size == 32 && !strcmp(format, "%.*g"));
        output[0] = '!';
        return fault_mode == 6 ? -1 : 32;
    }
    va_list args;
    va_start(args, format);
#ifdef __APPLE__
    int result = vsnprintf_l(output, size, locale, format, args);
#else
    int result = vsnprintf(output, size, format, args);
#endif
    va_end(args);
    return result;
}

locale_t uselocale(locale_t value) {
    if (fault_mode == 8 && value && !fault_hits) {
        ++fault_hits;
        errno = EINVAL;
        return (locale_t)0;
    }
    __typeof__(&uselocale) real = (__typeof__(&uselocale))dlsym(RTLD_NEXT, "uselocale");
    assert(real);
    return real(value);
}
