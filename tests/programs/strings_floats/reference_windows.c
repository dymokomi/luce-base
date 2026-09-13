#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <assert.h>
#include <errno.h>
#include <fenv.h>
#include <locale.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static int fault_mode, fault_hits, locale_count, saved_rounding, expected_rounding;
static _locale_t owned_locale;
static char *saved_name, *test_name;
static int saved_policy;

static void *real_symbol(const char *name) {
    HMODULE library = GetModuleHandleW(L"ucrtbase.dll");
    assert(library);
    void *symbol = (void *)GetProcAddress(library, name);
    assert(symbol);
    return symbol;
}

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

/* Alternate C identifiers avoid redeclaring the CRT's dllimport declarations. */
_locale_t probe_create(int category, const char *name) __asm__("_create_locale");
_locale_t probe_create(int category, const char *name) {
    if (fault_mode) {
        assert(category == LC_NUMERIC && !strcmp(name, "C"));
        if (fault_mode == 1 || fault_mode == 2) {
            ++fault_hits;
            errno = fault_mode == 1 ? ENOMEM : EINVAL;
            return NULL;
        }
    }
    _locale_t (*real)(int, const char *) = real_symbol("_create_locale");
    _locale_t result = real(category, name);
    if (fault_mode && result) { assert(!locale_count); owned_locale = result; ++locale_count; }
    return result;
}
void probe_free(_locale_t locale) __asm__("_free_locale");
void probe_free(_locale_t locale) {
    if (fault_mode) { assert(locale_count == 1 && locale == owned_locale); --locale_count; }
    void (*real)(_locale_t) = real_symbol("_free_locale");
    real(locale);
}
static int conversion_fault(const char *text, char **end) {
    if (fault_mode < 3 || fault_mode > 5) return 0;
    ++fault_hits;
    *end = (char *)text + (fault_mode == 5 ? 1 : strlen(text));
    errno = fault_mode == 3 ? ENOMEM : fault_mode == 4 ? EIO : 0;
    return 1;
}
double probe_double(const char *text, char **end, _locale_t locale) __asm__("_strtod_l");
double probe_double(const char *text, char **end, _locale_t locale) {
    if (conversion_fault(text, end)) return 0;
    double (*real)(const char *, char **, _locale_t) = real_symbol("_strtod_l");
    return real(text, end, locale);
}
float probe_float(const char *text, char **end, _locale_t locale) __asm__("_strtof_l");
float probe_float(const char *text, char **end, _locale_t locale) {
    if (conversion_fault(text, end)) return 0;
    float (*real)(const char *, char **, _locale_t) = real_symbol("_strtof_l");
    return real(text, end, locale);
}
int probe_print(char *output, size_t size, const char *format, _locale_t locale, ...) __asm__("_snprintf_l");
int probe_print(char *output, size_t size, const char *format, _locale_t locale, ...) {
    if (fault_mode == 6 || fault_mode == 7) {
        ++fault_hits;
        assert(size == 32 && !strcmp(format, "%.*g"));
        output[0] = '!';
        return fault_mode == 6 ? -1 : 32;
    }
    va_list args;
    va_start(args, locale);
    int result = _vsnprintf_l(output, size, format, locale, args);
    va_end(args);
    return result;
}
