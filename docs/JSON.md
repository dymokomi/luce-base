# Structured JSON values

`json.Value()` creates an object; `Value.array()`, `text`, `integer`, `number`,
`boolean` and `null` construct other values. Containers support `set` and `append`;
object conveniences include `set_text`, `set_integer`, `set_number` and
`set_boolean`. `encode()` borrows UTF-8 text until mutation or close. Luce copies
that text and owns imported `Value` objects through ordinary ARC.

In Base, values constructed directly are explicitly closed. Static constructors
return `interop.Reference[Value]` and their owning callers release them. Container
insertion snapshots the child's current encoding, so the child may be changed or
released independently. Duplicate object keys are rejected. Every string and key
must be valid UTF-8; controls, quotes and backslashes are escaped. Signed 64-bit
integers preserve their exact decimal representation. Floating-point values use
the standard round-trip formatter; NaN and infinity are rejected.

Each container has a byte limit (default 1 MiB, configurable up to 64 MiB). A
failed insertion preserves the previous logical value, including its key set.
There is no raw-fragment constructor, object reflection or JSON parser in this
initial serializer. HTTP selects status and media type separately.

`tests/programs/json_values/check.sh` runs native opts 0–3 and C comparisons.
Python's independent decoder checks the output; the fixture additionally covers
key rejection, snapshots, invalid UTF-8, non-finite numbers, limits and final ARC
cleanup. Float conversion itself is covered by the standard strings/math suites.
