# Testing and releasing

There is no CI service. GitHub holds the sources and their history; tests run on our own
machines, and releases are cut by a script. Three hosts are supported: arm64-macos,
x86_64-linux and x86_64-windows.

## The toolchain

Every package is built and tested with one development toolchain: luce, luce-base and luc
built from GitHub's main.

```sh
python3 tools/toolchain.py           # update it; ~/.local/bin/{luce,luce-base,luc} link to it
python3 tools/toolchain.py --status  # the commits it was built from
```

It is rebuilt only when the compiler or the standard library changed, that is when
luce-base, luce-std, luce or luce-luc has a new commit on main. Otherwise updating is a
`git fetch` and takes a few seconds. A build takes about half a minute on the Mac. The
sources live in `~/.local/luce-dev/src`, the newest three builds beside them.

Run it after pulling a compiler or standard-library change, and before testing a package
that needs one.

## Testing a package

A package's tests are its own: in the package, run

```sh
luc test
```

`luc test` builds the package with the toolchain above and runs the `test` blocks of every
module in it, Luce and Base alike, and every test program under `tests/` (a directory
`tests/<name>/` with a `main.luc` or `main.lucb`, for checks that need fixtures, a server,
GPU pixels or a reference tool). It fails a package with no test at all. Dependencies are the
checkouts beside it (the `path` entries of package.prisma), at main. Only the compilers,
luce-base, luce and luce-seed, are tested with their own `./test.sh` instead.
The compilers' `./test.sh --quick` skips their slowest parts. Run them when the compiler or the
standard library changes; on Linux and Windows too when the change touches code generation,
the runtime or anything platform-specific. The other machines are reachable as `luce-linux`
and `luce-windows` (`~/.ssh/config`).

## Releasing

Changes land on main without version bumps. A release is a batch, cut when it is worth
shipping:

```sh
python3 tools/release.py --dry-run   # the plan
python3 tools/release.py             # do it
```

The script

1. updates the toolchain and checks out every registry package at main in
   `~/.local/luce-dev/release`;
2. finds the packages whose sources (`src/`, package.prisma) changed since their newest
   registry release;
3. runs each one's tests (`luc test`; `./test.sh` for luce-base and luce) and stops
   before publishing anything if one fails;
4. bumps each version (patch, unless package.prisma already moved past the registry's),
   pushes, and publishes with `luc publish`, dependencies first;
5. when luce-base, luce or luc changed since the last `luce-VERSION` tag: bumps luce-base and
   luce (luce's installers too), builds the release archive on this Mac and over SSH on
   `luce-linux` and `luce-windows` with `tools/toolchain.py --archive`, publishes the three as
   the GitHub release `luce-VERSION`, copies the installers to luce.luciaos.com, and rebuilds
   both documentation sites;
6. resolves every application again with `luc lock` in a scratch home.

Dependencies in package.prisma name no version: a dependency means its newest release, and
luc.lock records the one chosen.
