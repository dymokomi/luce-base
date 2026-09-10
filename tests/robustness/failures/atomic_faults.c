/* Atomic replacement faults target only its temporary file and parent directory. */
#define _GNU_SOURCE
#include <assert.h>
#include <dlfcn.h>
#include <errno.h>
#include <fcntl.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>

static int armed, hits, temporary = -1, parent = -1, writes;
void atomic_fault_arm(int kind) { assert(!armed); armed = kind; hits = writes = 0; }
void atomic_fault_clear(void) { armed = 0; }
int atomic_fault_hits(void) { return hits; }
int atomic_descriptors(void) {
    int count = 0;
    for (int fd = 0; fd < 256; ++fd) if (fcntl(fd, F_GETFD) >= 0) ++count;
    return count;
}
static int take(int kind) {
    if (armed != kind) return 0;
    armed = 0;
    ++hits;
    errno = EIO;
    return 1;
}
#define REAL(name) __typeof__(&name) real = (__typeof__(&name))dlsym(RTLD_NEXT, #name); assert(real)
int getentropy(void *buffer, size_t length) {
    REAL(getentropy);
    if (take(1)) return -1;
    if (armed == 9) { ++hits; memset(buffer, 0, length); return 0; }
    return real(buffer, length);
}
int open(const char *path, int flags, ...) {
    REAL(open);
    int mode = 0;
    if (flags & O_CREAT) {
        va_list arguments;
        va_start(arguments, flags);
        mode = va_arg(arguments, int);
        va_end(arguments);
    }
    int fd = real(path, flags, mode);
    if (fd >= 0) {
        struct stat metadata;
        assert(fstat(fd, &metadata) == 0);
        if (strstr(path, "/.luce-") && (flags & O_CREAT)) {
            temporary = fd;
            assert((fcntl(fd, F_GETFD) & FD_CLOEXEC) != 0);
            assert((flags & (O_CREAT | O_EXCL)) == (O_CREAT | O_EXCL));
        } else if (S_ISDIR(metadata.st_mode)) parent = fd;
    }
    return fd;
}
ssize_t write(int fd, const void *data, size_t count) {
    REAL(write);
    if (fd == temporary) {
        if (armed == 2 && writes++ > 0 && take(2)) { errno = ENOSPC; return -1; }
        if (count > 2) count = 2;
    }
    return real(fd, data, count);
}
int fsync(int fd) {
    REAL(fsync);
    if ((fd == temporary && take(3)) || (fd == parent && take(6))) return -1;
    return real(fd);
}
int close(int fd) {
    REAL(close);
    int fail = (fd == temporary && take(4)) || (fd == parent && take(7));
    if (fd == temporary) temporary = -1;
    if (fd == parent) parent = -1;
    int result = real(fd);
    if (fail) { assert(result == 0); errno = EIO; return -1; }
    return result;
}
int rename(const char *source, const char *destination) {
    REAL(rename);
    if (take(5)) return -1;
    return real(source, destination);
}
int unlink(const char *path) {
    REAL(unlink);
    if (take(8)) { errno = EACCES; return -1; }
    return real(path);
}
