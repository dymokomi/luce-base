/* A message ending at an inaccessible page proves diagnostics never use strlen
   on a Base view. Each case exits fatally, releasing its mapping with the process. */
#define _GNU_SOURCE
#include <assert.h>
#include <dlfcn.h>
#include <errno.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>

uint8_t *diagnostic_edge(bool empty) {
    long page = sysconf(_SC_PAGESIZE);
    assert(page > 0);
    uint8_t *mapping = mmap(NULL, (size_t)page * 2, PROT_READ | PROT_WRITE,
                            MAP_PRIVATE | MAP_ANON, -1, 0);
    assert(mapping != MAP_FAILED);
    int result = mprotect(mapping + page, (size_t)page, PROT_NONE);
    assert(result == 0);
    mapping[page - 2] = 'o';
    mapping[page - 1] = 'k';
    return mapping + page - (empty ? 0 : 2);
}

static int enabled, interruptions, short_writes;
static void check_retries(void) {
    if (interruptions != 1 || short_writes == 0) _Exit(77);
}
void diagnostic_retry_enable(void) {
    enabled = 1;
    int result = atexit(check_retries);
    assert(result == 0);
}
ssize_t write(int descriptor, const void *data, size_t length) {
    __typeof__(&write) real = (__typeof__(&write))dlsym(RTLD_NEXT, "write");
    assert(real);
    if (descriptor == STDERR_FILENO && enabled) {
        if (!interruptions) { ++interruptions; errno = EINTR; return -1; }
        if (length > 2) { length = 2; ++short_writes; }
    }
    return real(descriptor, data, length);
}
