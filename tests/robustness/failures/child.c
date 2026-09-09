/* A writer that cannot be made to finish merely by closing its reader's pipe. */
#include <errno.h>
#include <signal.h>
#include <string.h>
#include <unistd.h>

static void write_stream(int fd) {
    char bytes[4096];
    memset(bytes, 'x', sizeof(bytes));
    size_t done = 0;
    while (done < 1048576) {
        ssize_t n = write(fd, bytes, sizeof(bytes));
        if (n > 0) done += (size_t)n;
        else if (n < 0 && errno != EINTR && errno != EPIPE) _exit(2);
    }
}

int main(int argc, char **argv) {
    if (argc != 2) return 2;
    if (strcmp(argv[1], "signal") == 0) {
        raise(SIGTERM);
        return 2;
    }
    signal(SIGPIPE, SIG_IGN);
    signal(SIGTERM, SIG_IGN);
    if (strcmp(argv[1], "stderr") != 0) write_stream(1);
    if (strcmp(argv[1], "stdout") != 0) write_stream(2);
    return 0;
}
