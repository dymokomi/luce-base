/* Deterministic libc faults: linked into the test executable, never the library. */
#define _GNU_SOURCE
#include <assert.h>
#include <dlfcn.h>
#include <errno.h>
#include <fcntl.h>
#include <netdb.h>
#include <netinet/in.h>
#include <pthread.h>
#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <unistd.h>

static int armed, hits, attributes, directory_reads, global_flushes, opened_streams;
static int walk_root_seen;
static int socket_sends;
static int closing_socket = -1;
static int observed_socket = -1, socket_closes;
static int failed_socket_option = -1;
static int requested_backlog, failed_listener = -1;
int fault_listen_backlog(void) { return requested_backlog; }
int fault_listener_closed(void) {
    return failed_listener >= 0 && fcntl(failed_listener, F_GETFD) == -1 && errno == EBADF;
}
int fault_socket_option_closed(void) {
    return failed_socket_option >= 0 && fcntl(failed_socket_option, F_GETFD) == -1 && errno == EBADF;
}
void fault_socket_close(int descriptor) {
    assert(closing_socket == -1);
    closing_socket = observed_socket = descriptor;
    socket_closes = 0;
}
int fault_socket_close_calls(void) { return socket_closes; }
static dev_t walk_device;
static ino_t walk_inode;
void fault_arm(int kind) { assert(!armed); armed = kind; hits = directory_reads = walk_root_seen = socket_sends = 0; }
int fault_hits(void) { return hits; }
int fault_attributes(void) { return attributes; }
int fault_global_flushes(void) { return global_flushes; }
int fault_opened_streams(void) { return opened_streams; }
static int saved_input = -1;
void fault_input_begin(void) {
    int pair[2];
    saved_input = dup(STDIN_FILENO);
    assert(pipe(pair) == 0);
    assert(write(pair[1], "input", 5) == 5);
    assert(close(pair[1]) == 0);
    assert(dup2(pair[0], STDIN_FILENO) == STDIN_FILENO);
    if (pair[0] != STDIN_FILENO) assert(close(pair[0]) == 0);
}
void fault_input_end(void) {
    if (saved_input >= 0) {
        assert(dup2(saved_input, STDIN_FILENO) == STDIN_FILENO);
        assert(close(saved_input) == 0);
        saved_input = -1;
    } else {
        close(STDIN_FILENO);
    }
}
static int take(int kind) {
    if (armed != kind) return 0;
    armed = 0; ++hits; errno = EINTR; return 1;
}
#define REAL(name) __typeof__(&name) real = (__typeof__(&name))dlsym(RTLD_NEXT, #name); assert(real)
/* This suite uses only the no-argument and integer-argument fcntl commands. */
int fcntl(int descriptor, int command, ...) {
    REAL(fcntl);
    if (command == F_GETFD) {
        if (take(45)) return -1;
        if (take(47)) { errno = EIO; return -1; }
        return real(descriptor, command);
    }
    if (command == F_GETFL || command == F_GETOWN) return real(descriptor, command);
    assert(command == F_SETFD || command == F_SETFL || command == F_DUPFD || command == F_DUPFD_CLOEXEC);
    va_list arguments;
    va_start(arguments, command);
    int value = va_arg(arguments, int);
    va_end(arguments);
    if (command == F_SETFD) {
        if (take(46)) return -1;
        if (take(48)) { errno = EIO; return -1; }
    }
    return real(descriptor, command, value);
}
int fault_socket_cloexec(int descriptor) {
    int flags = fcntl(descriptor, F_GETFD);
    return flags >= 0 && (flags & FD_CLOEXEC) != 0;
}
int fault_descriptor_closed(int descriptor) {
    return fcntl(descriptor, F_GETFD) == -1 && errno == EBADF;
}
int close(int descriptor) {
    REAL(close);
    if (descriptor == observed_socket) ++socket_closes;
    int result = real(descriptor);
    if (descriptor == closing_socket) {
        closing_socket = -1;
        assert(result == 0);
        errno = EINTR;
        return -1;
    }
    return result;
}
int getsockname(int descriptor, struct sockaddr *address, socklen_t *length) {
    REAL(getsockname);
    if (take(41)) return -1;
    if (take(42)) { errno = EIO; return -1; }
    if (take(43)) { *length = 1; return 0; }
    return real(descriptor, address, length);
}
int getpeername(int descriptor, struct sockaddr *address, socklen_t *length) {
    REAL(getpeername);
    if (take(49)) return -1;
    if (take(50)) { errno = EIO; return -1; }
    int result = real(descriptor, address, length);
    if (!result && take(51)) address->sa_family = AF_UNIX;
    return result;
}
int shutdown(int descriptor, int direction) {
    REAL(shutdown);
    if (take(52)) return -1;
    if (take(53)) { errno = EIO; return -1; }
    return real(descriptor, direction);
}
int listen(int descriptor, int backlog) {
    REAL(listen);
    requested_backlog = backlog;
    if (take(54)) return -1;
    if (take(55)) { failed_listener = descriptor; errno = EIO; return -1; }
    return real(descriptor, backlog);
}
int setsockopt(int descriptor, int level, int option, const void *value, socklen_t length) {
    REAL(setsockopt);
    if (take(44)) {
        failed_socket_option = descriptor;
        errno = EIO;
        return -1;
    }
    return real(descriptor, level, option, value, length);
}
/* Resolver storage is synthetic so malformed successful results need no DNS.
   Track every node until Base releases the entire chain through freeaddrinfo. */
static struct addrinfo *resolver_head;
static int resolver_nodes;
int fault_resolver_nodes(void) { return resolver_nodes; }
int getaddrinfo(const char *host, const char *service, const struct addrinfo *hints,
                struct addrinfo **result) {
    REAL(getaddrinfo);
    int kind = armed;
    if (kind < 23 || kind > 26 || !take(kind)) return real(host, service, hints, result);
    assert(!resolver_head && !resolver_nodes);
    struct addrinfo *entry = calloc(1, sizeof(*entry));
    assert(entry);
    resolver_head = *result = entry;
    ++resolver_nodes;
    if (kind == 26) {
        entry->ai_next = calloc(1, sizeof(*entry));
        assert(entry->ai_next);
        entry = entry->ai_next;
        ++resolver_nodes;
    }
    entry->ai_family = AF_INET;
    entry->ai_socktype = SOCK_STREAM;
    entry->ai_addrlen = kind == 24 ? 1 : sizeof(struct sockaddr_in);
    if (kind != 23) {
        struct sockaddr_in *address = calloc(1, sizeof(*address));
        assert(address);
        address->sin_family = AF_INET;
        address->sin_addr.s_addr = htonl(0x7f00002a);
        entry->ai_addr = (struct sockaddr *)address;
    }
    return 0;
}
void freeaddrinfo(struct addrinfo *entry) {
    REAL(freeaddrinfo);
    if (entry != resolver_head) { real(entry); return; }
    resolver_head = NULL;
    while (entry) {
        struct addrinfo *next = entry->ai_next;
        free(entry->ai_addr);
        free(entry);
        --resolver_nodes;
        entry = next;
    }
}
/* Opaque DIR pointers let us intercept the exact readdir symbol Base imports,
   without macOS headers redirecting this test to a different inode ABI symbol. */
void *readdir(void *directory) {
    REAL(readdir);
    if (take(22)) return NULL;
    if (armed == 20 && ++directory_reads == 4 && take(20)) { errno = EIO; return NULL; }
    return real(directory);
}
void *fdopendir(int descriptor) {
    REAL(fdopendir);
    if (take(34)) { errno = ENOMEM; return NULL; }
    return real(descriptor);
}
int openat(int directory, const char *path, int flags, ...) {
    REAL(openat);
    if (take(35)) return -1;
    int mode = 0;
    if (flags & O_CREAT) {
        va_list arguments;
        va_start(arguments, flags);
        mode = va_arg(arguments, int);
        va_end(arguments);
    }
    return real(directory, path, flags, mode);
}
int fstatat(int directory, const char *path, struct stat *result, int flags) {
    REAL(fstatat);
    if (take(36)) return -1;
    int status = real(directory, path, result, flags);
    /* Model an ancestor exposed again through a directory mount. Symlink
       entries remain real and must never be descended by the walker. */
    if (!status && armed == 37 && walk_root_seen && S_ISDIR(result->st_mode)
        && strcmp(path, "skip") != 0 && take(37)) {
        result->st_dev = walk_device;
        result->st_ino = walk_inode;
    }
    return status;
}
int fstat(int descriptor, struct stat *result) {
    REAL(fstat);
    int status = real(descriptor, result);
    if (!status && armed == 37 && !walk_root_seen && S_ISDIR(result->st_mode)) {
        walk_root_seen = 1;
        walk_device = result->st_dev;
        walk_inode = result->st_ino;
    }
    return status;
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
    if (armed == 38 && ++socket_sends == 2 && take(38)) { errno = EAGAIN; return -1; }
    if (take(40)) { errno = EIO; return -1; }
    return real(fd, p, n > 3 ? 3 : n, flags);
}
ssize_t recv(int fd, void *p, size_t n, int flags) {
    REAL(recv);
    if (take(2)) return -1;
    if (take(39)) { errno = EAGAIN; return -1; }
    return real(fd, p, n > 2 ? 2 : n, flags);
}
int accept(int fd, struct sockaddr *p, socklen_t *n) {
    REAL(accept);
    if (take(5)) return -1;
    return real(fd, p, n);
}
#ifndef __APPLE__
int accept4(int fd, struct sockaddr *p, socklen_t *n, int flags) {
    REAL(accept4);
    assert(flags & SOCK_CLOEXEC);
    if (take(5)) return -1;
    return real(fd, p, n, flags);
}
#endif
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
    if (!stream) ++global_flushes;
    if (stream && take(8)) { errno = EIO; return EOF; }
    return real(stream);
}
FILE *fdopen(int descriptor, const char *mode) {
    REAL(fdopen);
    ++opened_streams;
    return real(descriptor, mode);
}
ssize_t read(int descriptor, void *buffer, size_t count) {
    REAL(read);
    if (descriptor == STDIN_FILENO) {
        if (take(29)) return -1;
        if (take(30)) { errno = EAGAIN; return -1; }
        if (take(31)) { errno = EIO; return -1; }
        if (count > 2) count = 2;
    }
    return real(descriptor, buffer, count);
}
ssize_t readlink(const char *path, char *buffer, size_t count) {
    REAL(readlink);
    if (take(32)) return -1;
    if (take(33)) { errno = EIO; return -1; }
    return real(path, buffer, count);
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
