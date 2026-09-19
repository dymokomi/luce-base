# Fuzz corpus

A persistent, curated set of seeds for the fuzzers. Each covers a construct where fuzzing has
found a real bug or is most likely to: multi-dimensional and pointer-to array types (the
formatter reversed the dimensions), trap-prone arithmetic (checked overflow, divide by zero,
out-of-range index), atomics across threads, dynamic interface dispatch through views, and
f32/f16/narrow-integer numerics.

`tools/fuzz.py`'s mutate mode seeds from here in addition to the test suites, and
`tools/aflfuzz.sh` starts its coverage-guided run from here plus the sample and conformance
programs. When a fuzzer finds a new bug, add its minimized reproducer here so the bug stays a
seed and the mutate corpus keeps exercising the shape that produced it. AFL grows and can be
minimized (`afl-cmin`); check the minimized survivors back in.
