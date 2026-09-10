/* Deterministic libc faults: linked into the test executable, never the library. */
#define _GNU_SOURCE
#include <assert.h>
#include <dlfcn.h>
#include <errno.h>
#include <pthread.h>
#include <stdio.h>
#include <sys/socket.h>
#include <unistd.h>

static int armed, hits, attributes, directory_reads;
void fault_arm(int kind) { assert(!armed); armed = kind; hits = directory_reads = 0; }
int fault_hits(void) { return hits; }
int fault_attributes(void) { return attributes; }
static int take(int kind) {
    if (armed != kind) return 0;
    armed = 0; ++hits; errno = EINTR; return 1;
}
#define REAL(name) __typeof__(&name) real = (__typeof__(&name))dlsym(RTLD_NEXT, #name); assert(real)
/* Opaque DIR pointers let us intercept the exact readdir symbol Base imports,
   without macOS headers redirecting this test to a different inode ABI symbol. */
void *readdir(void *directory) {
    REAL(readdir);
    if (take(22)) return NULL;
    if (armed == 20 && ++directory_reads == 4 && take(20)) { errno = EIO; return NULL; }
    return real(directory);
}
int closedir(void *directory) {
    REAL(closedir);
    if (take(21)) { int result = real(directory); assert(!result); errno = EIO; return -1; }
    return real(directory);
}
ssize_t send(int fd, const void *p, size_t n, int flags) {
    REAL(send);
    if (take(1)) return -1;
    if (take(3)) { errno = EPIPE; return -1; }
    if (take(4)) return 0;
    return real(fd, p, n > 3 ? 3 : n, flags);
}
ssize_t recv(int fd, void *p, size_t n, int flags) {
    REAL(recv);
    if (take(2)) return -1;
    return real(fd, p, n > 2 ? 2 : n, flags);
}
int accept(int fd, struct sockaddr *p, socklen_t *n) {
    REAL(accept);
    if (take(5)) return -1;
    return real(fd, p, n);
}
ssize_t sendto(int fd, const void *p, size_t n, int flags, const struct sockaddr *a, socklen_t z) {
    REAL(sendto);
    if (take(6)) return -1;
    return real(fd, p, n, flags, a, z);
}
ssize_t recvfrom(int fd, void *p, size_t n, int flags, struct sockaddr *a, socklen_t *z) {
    REAL(recvfrom);
    if (take(7)) return -1;
    return real(fd, p, n, flags, a, z);
}
int fflush(FILE *stream) {
    REAL(fflush);
    if (stream && take(8)) { errno = EIO; return EOF; }
    return real(stream);
}
int pthread_attr_init(pthread_attr_t *a) {
    REAL(pthread_attr_init);
    if (take(9)) return ENOMEM;
    int r = real(a); if (!r) ++attributes; return r;
}
int pthread_attr_destroy(pthread_attr_t *a) {
    REAL(pthread_attr_destroy);
    int r = real(a); if (!r) --attributes; return r;
}
int pthread_attr_setstacksize(pthread_attr_t *a, size_t n) {
    REAL(pthread_attr_setstacksize);
    if (take(10)) return EINVAL;
    return real(a, n);
}
int pthread_create(pthread_t *t, const pthread_attr_t *a, void *(*f)(void *), void *p) {
    REAL(pthread_create);
    if (take(11)) return EAGAIN;
    return real(t, a, f, p);
}
