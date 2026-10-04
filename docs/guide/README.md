# The Luce Base Guide

Luce Base is a compiled systems language. Its syntax will look familiar if you know
Python: blocks are indented, loops read `for item in items`, and conditions use `and`,
`or` and `not`. What happens underneath is closer to C: values are laid out in memory the
way C lays out structs, you allocate and free memory yourself, and programs compile to
native executables.

## Install

On macOS or Linux:

```sh
curl -fsSL https://luce.luciaos.com/install.sh | sh && . "$HOME/.local/luce/env"
```

On Windows, in PowerShell:

```sh
irm https://luce.luciaos.com/install.ps1 | iex
```

This installs the compiler, `luce-base`, and the project tool, `luc`.
[Chapter 1 of the Tour](tour/01-hello.md) covers what you need and a first program.

## The documentation

The documentation comes in three parts.

**[The Tour](tour/README.md)** is an introduction in ten short chapters, each built around
programs you can run. It starts from a first `print` and ends with calling C. Read it in
order.

**[The Guide](topics/README.md)** covers one topic per chapter in full: types, memory and
allocators, errors, modules and packages, generics, threads, C interop, building and
debugging. [Gotchas](topics/gotchas.md) lists the things most likely to surprise you, each
linked to where it is explained.

**[The Reference](../language/base.md)** is the language specification: every rule, with
the reasoning behind it. The Tour and the Guide link to it where the exact wording matters.

The programs in this documentation are compiled and run as part of the compiler's tests,
so their output is what the current compiler prints.
