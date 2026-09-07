# Bootstrap

`luce-base-HOST.c` is the C this compiler emits for itself, for each host it has a native
backend on: `arm64-macos` and `x86_64-linux`. Compiling the host's file with the host C
compiler and `runtime/` gives a working `luce-base` with no other compiler in the picture;
that binary then builds the compiler from source, and the gate checks that the two agree.
This is how the seed was pinned: after slice 4 the seed built the compiler one last time,
and every build since starts from a snapshot.

The snapshots are per target because the compiler prunes the standard library by target
(§19.6): the C for macOS calls `__ulock_wait`, the C for Linux the futex system call.
`tools/snapshot.sh` writes every snapshot from whichever host runs it, since the C backend
emits C for any target; refresh them after a change the snapshot must carry (a new
command, a runtime contract change). A stale snapshot still works as long as it can
compile the current sources; the gate says when it differs.
