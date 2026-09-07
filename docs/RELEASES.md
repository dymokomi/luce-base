# Releases

`VERSION` is the one place the version lives; `tools/embed_version.py` writes it into
`src/support/version.lucb` for `luce-base --version`, and `build.sh` runs that first. A
release is a VERSION bump, a tag `luce-base-N`, and a push, the way luce-seed does it
(`bootstrap/SEED` pins the seed the tree is built against).

## 0.1.0

The first versioned tree, arm64-macos. What it holds:

- the self-hosting compiler: lexer, parser, checker, C backend, and the native arm64
  backend through the IR with inlining and the pre-backend passes; the product is built
  with no C in its path and reaches a fixpoint on its own assembly;
- the whole specification covered by the conformance suite: 136 programs run through the
  C backend, the native backend, and the seed's interpreter, and 430 rejections checked by
  both compilers, one chapter directory each with a `combined` program beside the simple
  ones; the robustness and optimisation suites; the proving programs;
- the standard library as Base source under `src/std/`, 19 modules, with `docs/LIBRARY.md`
  generated from it; every target-dependent constant and layout decided by the `platform`
  module the compiler writes for `--target`, pruned at compile time;
- targets: arm64-macos natively; the C for any of the five targets with `--emit=c`; the
  Linux values are written and untested, the Windows arms marked.
