- luce-base is versioned the way the seed is: VERSION holds 0.1.0, build.sh writes it into src/support/version.lucb so luce-base --version prints luce-base 0.1.0, docs/RELEASES.md carries the notes, and the tag luce-base-0.1.0 is pushed. Commit 63c3077, gate green with 136 programs and 430 rejections.
- luce-seed is at 2ac5f9d, tag luce-seed-0.40, which bootstrap/SEED pins.

For the Linux x86_64 pass, the places that matter:

- src/back/target.lucb: Target.named("x86_64-linux") already exists with the Linux symbol prefix, stream symbols (stdin, stdout, stderr), and -lc -lm -lpthread.
- src/std/*.lucb: every platform.linux arm and X if platform.macos else Y constant is the Linux ABI as documented but unexecuted; tools/embed_std.py regenerates the prelude after edits.
- luce-base build FILE --target x86_64-linux --emit=c on the Mac gives you the C to compile there; the native backend is arm64-only, so an x86_64 backend is new work behind the Backend interface in src/back/backend.lucb, with the macOS assembler dialect concentrated in src/back/arm64.lucb (symbol prefix, @PAGE addressing, __TEXT/__DATA sections, TLS).
- tools/install.sh [PREFIX] builds and installs luce-base with a luce link once the tree builds on the machine.