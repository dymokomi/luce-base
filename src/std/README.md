# Standard-library sources

The root `ORDER` lists standard modules in binding order. A small module lives in
`name.lucb`. A larger module may use a `name/` directory with its own `ORDER`, listing
all `.lucb` source fragments. Those fragments share one module scope; they are not
independent imports or standalone programs.

`tools/standard_library.py` assembles the same complete source for embedding,
reference documentation and fuzzing. It rejects omitted or duplicate fragments.
After editing a module, run `tools/embed_std.py` and `tools/library_reference.py`,
then rebuild and refresh bootstrap snapshots as usual.

`files/` separates the C ABI and constants (`module.lucb`), descriptor ownership
(`handles.lucb`), metadata and host stat layouts (`metadata.lucb`), path mutations and links (`entries.lucb`), temporary ownership and
atomic publication (`temporary.lucb`), whole-file transfers (`contents.lucb`), and
directory iteration/listing (`directory.lucb`). Its public import remains `files`.
