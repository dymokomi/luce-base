# Unicode text operations

The `unicode` module uses pinned Unicode **17.0.0** data. It accepts strict UTF-8,
including embedded NUL, noncharacters and unassigned scalar values. Malformed
input fails with `utf8.invalid_sequence`; it is never silently replaced. Inputs
are borrowed and must remain unchanged throughout an operation.

`to_upper` and `to_lower` implement full default casing, including expansions
and the contextual final Greek sigma rule. Language-specific Turkish, Azeri and
Lithuanian tailoring is not applied. `case_fold` implements full default case
folding; its `turkic` option selects the Unicode CaseFolding.txt T mappings.
Folding and lowercasing are different operations. None of these operations
normalizes the result or applies a locale's collation rules.

Results are fresh owned, NUL-terminated text, including unchanged or empty output.
Release them with `unicode.release` under the allocator that created them. An
optional `max_bytes` bounds result bytes and reports `strings.output_too_large`.
Preflight measures the result before allocation, and size overflow reports
`memory.exhausted`. No caller input is modified. Invalid input or a byte limit
may be reported as soon as encountered; error precedence is not a separate promise.

`is_whitespace` queries the Unicode White_Space property. `combining_class`
returns the canonical combining class. Invalid or unassigned scalar numbers
return false/zero for these queries. Existing `strings` byte and ASCII helpers
retain their original semantics.

The implementation and generated tables live in separate fragments under
`src/std/unicode`. The generator checks hashes of the vendored upstream data;
normal builds and tests require no network access. Mapping tests use the pinned
UnicodeData, SpecialCasing and CaseFolding records, with independent Python
context tests for established characters. They cover expansion, NUL, unassigned
values, contextual sigma, exact output limits and allocation failure in all six
compiler configurations.

Normalization and extended grapheme iteration are the next additions to this
module. Word/sentence segmentation, collation and language-tailored casing are
outside this initial Unicode surface.

The normative references are [Unicode 17 chapter 3](https://www.unicode.org/versions/Unicode17.0.0/core-spec/chapter-3/)
and the [pinned Unicode Character Database](https://www.unicode.org/Public/17.0.0/ucd/).
Source provenance and the upstream license are retained in `data/unicode/17.0.0`.
