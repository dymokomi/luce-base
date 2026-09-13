# Platform integration hardening

Follow the Windows architecture audit from 2026-09-13. Native remains the primary
backend. Complete each coherent change, validate it, and commit it before moving
on. No compatibility layers are required.

## Compiler builds and validation

- [x] Replace the compiler's OS-dependent fixed allocation ceiling with stable, growing storage.
- [x] Restore deterministic UTF-8/LF generation with a documented Python prerequisite.
- [x] Repair Seed comment/help encoding and commit it.
- [ ] Preserve Windows test identity, child cleanup and partial results on every failure.
- [ ] Make Unicode source/output/TEMP builds work without requiring short filenames.

## Standard OS primitives and consumers

- [ ] Consolidate shared Windows ABI/text helpers beneath public standard modules.
- [ ] Add owned temporary directories and filesystem canonical paths; use them in both compilers.
- [ ] Separate portable compiler host-tool policy from native workspace operations.
- [ ] Add portable termination subscriptions with bounded Windows close acknowledgement.
- [ ] Use that abstraction in the server and test console close independently of Ctrl-Break.

## GPU and CPU boundaries

- [ ] Separate Vulkan rendering from native presentation adapters.
- [ ] Replace authored Vulkan numeric enums/flags with named constants.
- [ ] Separate x86 ABI and object/unwind policy from instruction selection; update comments.
- [ ] Add focused checks that enforce the intended platform boundaries.

## Final gates and handoff

- [ ] Refresh all bootstrap snapshots and verify native fixed points.
- [ ] Update and publish dependency pins in dependency order.
- [ ] Pass local compiler, standard-library, interop and consumer checks, including Metal rendering.
- [ ] Pass macOS, Linux and Windows CI for Seed, Base, Luce and all packages/applications.
- [ ] Record final architecture and validation evidence; verify every repository is clean and pushed.
