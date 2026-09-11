# Bootstrap

`luce-base-HOST.c` is the C this compiler emits for itself, for each host it has a native
backend on: `arm64-macos` and `x86_64-linux`. Compiling the host's file with the host C
compiler and `runtime/` gives a working `luce-base` with no other compiler in the picture;
that binary then builds the compiler from source, and the gate checks that the two agree.
Every build starts from a snapshot; the seed named in `bootstrap/SEED` is kept able to
build the tree too, and the gate proves it.

The snapshots are per target because the compiler prunes the standard library by target
(§19.6): the C for macOS calls `__ulock_wait`, the C for Linux the futex system call.
`tools/snapshot.sh` writes every snapshot from whichever host runs it, since the C backend
emits C for any target. Keep the snapshots, compiler sources and runtime in the same
commit whenever a change affects generated code. The gate requires every snapshot
to match current emission; older snapshot/runtime combinations are unsupported.

`SEED` names an exact Git commit. CI fetches and checks out that commit before
building Seed. `LUCB=/path/to/lucb` is an explicit local executable override; its
version banner cannot establish source identity, and the source build checks that
it supports the compiler. Normal builds start from the checked-in host snapshot.
