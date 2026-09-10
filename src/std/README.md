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
atomic publication (`temporary.lucb`), bounded copying (`copy.lucb`), whole-file transfers (`contents.lucb`), and
directory iteration/listing (`directory.lucb`), and traversal (`walk.lucb`). Its public import remains `files`.

`net/` separates host ABI declarations and constants (`module.lucb`), shared error
categories (`errors.lucb`), IP endpoints (`address.lucb`), versioned IP values and
text conversion (`ip_address.lucb`), name resolution (`resolver.lucb`), descriptor
ownership and endpoint queries (`handles.lucb`), typed socket settings
(`options.lucb`), readiness/deadlines/cancellation (`readiness.lucb`), borrowed timed
streams (`deadline_stream.lucb`), and TCP/UDP owners (`listener.lucb`,
`connection.lucb`, `datagram.lucb`). Its public import remains `net`.

`strings/` separates common imports (`module.lucb`), byte searches (`search.lucb`),
splitting (`split.lucb`), text transformations and owned text allocation
(`transform.lucb`), numeric conversion (`numbers.lucb`), and the retained-allocator
builder (`builder.lucb`). Its public import remains `strings`.
