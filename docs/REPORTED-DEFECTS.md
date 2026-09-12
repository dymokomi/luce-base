# Reported defect dispositions

Reviewed 2026-09-11/12 against the nine supplied reports in the workspace
`issues/` directory. Original reports and reproductions remain unchanged.
This is a correctness review of those reports, not a security severity rating.

| Report | Disposition | Implementation and evidence |
| --- | --- | --- |
| 01: counted allocation overflow | Confirmed and fixed | `28afe3a`: check the element count before multiplication, using the same inclusive 2^62-byte limit in native and C emission. The original native program segfaulted. `allocation_limits` covers wrapping products, maximal counts, three-byte elements, boundary rejection and ordinary/empty allocations in all six modes. |
| 02: Buffer reserve overflow | Fixed, with an additional compiler defect confirmed | `4872df6`: checked optional required-size/growth arithmetic reports exhaustion before mutation. Native constant folding and GVN had discarded unsigned overflow checks even at opt 0; both now preserve signedness and integer width. Native/C module tests preserve contents after failure; `integer_limits` verifies unsigned 32/64-bit operations and signed MIN × -1 in all six modes. |
| 03: List growth overflow | Fixed; supplied reproduction is arithmetic only | `4872df6`: checked capacity growth reports exhaustion. A focused descriptor-boundary test restores the real descriptor before further use, then proves the list remains usable. This does not claim a real, valid list of impossible size was constructed. |
| 04: page rounding overflow | Fixed; original undersized-mapping claim not demonstrated | `525ff81`: overflow in page rounding returns `none` before mapping. The original reproduction only computes arithmetic. Actual allocator tests cover maximal sizes, supported alignment and read/write/release of a real mapping. |
| 05: release multiplication | Fixed for invalid span metadata | Base `04b7dec` and Seed `eb264af` check byte multiplication before release in native and C emission. The supplied program only computes wrapping arithmetic. The new actual-release test traps with integer overflow before reaching a probe allocator in all six Base modes. After 01, valid allocations cannot produce this overflow. |
| 06: C-string extra-byte read | Confirmed and fixed | The supplied C harness faults under ASan on exact-length storage. A `str` contains no guarantee that `data[length]` is readable; a cast now borrows only its pointer, consistently with the raw-cast contract. Guard-page Base tests cover native opts 0–3 and both C modes; the helper test covers exact heap storage and empty/null views under ASan/UBSan. |
| 07: arbitrary bump alignment | Confirmed alignment defect and fixed | `525ff81`: FixedBuffer and Arena use bounded remainder-based alignment, including 3/7/12/24-byte requests. Unsupported heap/page alignment is refused. Actual allocation/resize tests pass all six modes. The report's original overlapping-block claim was already withdrawn. |
| 08: invalid-width signed helper | Confirmed through direct C calls and fixed | Nonpositive widths return zero consistently in `smin`, `smax` and `sext`; widths at least 64 retain full-width behavior. ASan/UBSan tests cover negative/zero widths, every valid width and values above 64. Well-typed compiler output does not normally produce zero-width signed integers. |
| 09: two-pass replacement | Not a defect; closed without code changes | `memory.copy` checks both spans, and slicing/indexing also checks bounds. The reproduction has correct output. The existing independent replacement corpus passes all six modes, including overlapping borrowed inputs. |

## Replacement invariant

Let the original byte length be `L`, the nonempty needle length `N`, replacement
length `R`, and the counted number of nonoverlapping matches `C`. The checked
counting pass computes `L + C * (R - N)` by bounded additions or subtractions.
The fill pass performs exactly `C` replacements. Its prefixes and tail together
contain `L - C * N` original bytes, regardless of match positions, so the final
length agrees with the allocation. If a match disappears, the existing guard
traps. No user callback runs between the scans.

The contract permits the three borrowed inputs to overlap one another; it does
not permit concurrent mutation of their underlying storage during the operation.
Even the report's proposed extra per-copy bounds checks already exist inside
`memory.copy`. Adding duplicate checks would not fix a demonstrated problem.

`strings_transform/check.sh` compares 5,786 cases against Python byte operations,
plus Base fixtures for input aliases, output limits, empty needles and allocation
behavior. It passes native opts 0–3 and C debug/release.

## C-string contract

The old specification contradicted itself: §5.5 called the cast unchecked, while
the §7.5 table promised a terminator check. The implementation attempted that
check by reading outside the supplied span. Both Base and Seed now document the
same rule: `(c.str)text` borrows its address without reading bytes or extending
the lifetime. Passing that pointer to a C-string consumer requires readable
termination and adequate storage lifetime. Copy an arbitrary view with
`strings.copy`, use the terminated copy, then release it with `strings.release`.
Embedded NUL bytes still terminate ordinary C-string consumers early.

## Verification scope

Focused matrices run on ARM64 macOS. Native optimization levels 0–3 are the
primary executions; C debug/release are comparisons. Base snapshots are regenerated
for ARM64 macOS and x86-64 Linux, and native self-hosting reproduces its assembly.
The final full compiler and downstream CI results are recorded in the
[rewrite checklist](PACKAGE-REWRITE-TODO.md). This report makes no claim of
exhaustively proving the language or its libraries free of defects.
