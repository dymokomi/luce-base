# Bootstrap

`luce-base.c` is the C this compiler emits for itself. Compiling it with the
host C compiler and `runtime/` gives a working `luce-base` with no other
compiler in the picture; that binary then builds the compiler from source,
and the gate checks that the two agree. This is how the seed was pinned:
after slice 4 the seed built the compiler one last time, and every build
since starts from this file.

Refresh it with `tools/snapshot.sh` after a change the snapshot must carry
(a new command, a runtime contract change). A stale snapshot still works as
long as it can compile the current sources; the gate says when it differs.
