# 10. Where next

The Tour covered values and types, control flow, functions, structs and enums, optionals and
errors, memory, modules and packages, and C. Some topics it left out, each covered in the
Guide:

- **Generics and interfaces.** Functions and types with type parameters, such as
  `func largest[T: Comparable](a: T, b: T) -> T`, and interfaces, which play the role of
  Python's protocols and abstract base classes.
- **Threads and atomics.** `thread.spawn`, atomic types such as `@u64` for values shared
  between threads, and the `sync` module's mutexes and conditions.
- **Tests.** `test "name":` blocks beside the code they test, run with `luc test` or
  `luce-base test file.lucb`.
- **Luce.** Base has a higher-level companion language, Luce, with classes and built-in
  collections, which can import Base modules. The Guide's chapter on Luce explains how the
  two work together.
- **Lower-level tools.** Inline assembly, SIMD arithmetic on arrays such as `f32[4]`,
  attributes such as `section` and `weak`, and programs that run without a C library.

## The rest of the documentation

- **[The Guide](../topics/README.md)**, one chapter per topic.
- **[Gotchas](../topics/gotchas.md)**, the things most likely to surprise you, each linked
  to its explanation.
- **[The Reference](../../language/base.md)**, the language specification.
- **[The Library](../../LIBRARY.md)**, every module and public function of the standard
  library.

If you are coming from C, the Reference's [C to Base](../../language/base.md#22-c-to-base)
chapter is a one-page table of C constructs and their Base equivalents. `luce-base build
file.lucb --emit=c` prints the C that a program compiles to, which can help when comparing
the two.
