/* Make the first byte after a valid byte view inaccessible to the process. */
#include <stdint.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>

static unsigned char *mapping;
static size_t page;

unsigned char *guarded_bytes(void) {
    long measured = sysconf(_SC_PAGESIZE);
    if (measured <= 0) return NULL;
    page = (size_t)measured;
    mapping = mmap(NULL, 2 * page, PROT_READ | PROT_WRITE,
                   MAP_PRIVATE | MAP_ANON, -1, 0);
    if (mapping == MAP_FAILED) return NULL;
    if (mprotect(mapping + page, page, PROT_NONE) != 0) {
        munmap(mapping, 2 * page);
        mapping = NULL;
        return NULL;
    }
    memset(mapping, 'a', page);
    return mapping;
}

size_t guarded_length(void) { return page; }
void guarded_release(void) { munmap(mapping, 2 * page); }
