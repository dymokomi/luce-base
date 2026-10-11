# Fuzz findings preserved on 2026-10-10

Status: **triaged 2026-10-11** (below): one compiler bug, fixed; twelve environment timeouts. Originally 13 reports, 12 distinct input files by SHA-256. These are
observations from the Linux and Windows background campaigns, not 13 confirmed
compiler bugs. No report has been replayed, minimized, fixed, or dismissed in this
preservation pass.

Both runners were stopped after their initial backups had been copied and verified.
The final stopped-state archives were also copied and verified. All saved reproducers
and their round logs are copied here byte for byte, with a hash for each evidence file
in [evidence-manifest.json](evidence-manifest.json).

| Target | Completed rounds | Generated programs | Mutations | Reports |
| --- | ---: | ---: | ---: | ---: |
| x86_64-linux | 20 | 16,312 | 1,630 | 1 |
| x86_64-windows | 20 | 8,647 | 1,430 | 12 |

## Open observations

The table groups reports by round. Timestamps in directory names and original logs
are host-local round start times. Capture timestamps in `capture.json` are UTC.

| Target | Seed | Compiler revision | Reports | Recorded symptom and evidence |
| --- | --- | --- | ---: | --- |
| Linux | 1791654778 | `f1447ee8` | 1 | [Dense program 184](linux/kept/2026-10-10T105258-1791654778/fuzz.out): all seven compiled variants agree with each other, but disagree with the seed interpreter on the first printed integer. Investigate the seed, compiled behavior, and generator before assigning the bug. |
| Windows | 1791575717 | `4c566f10` | 2 | [Program 17 and trap-program 26](windows/kept/2026-10-09T125517-1791575717/fuzz.out): C release and C builds timed out. |
| Windows | 1791579543 | `1ef797c3` | 3 | [Width-programs 56/57 and program 206](windows/kept/2026-10-09T135903-1791579543/fuzz.out): C, native, and C release builds timed out. |
| Windows | 1791583282 | `0af9d204` | 1 | [Atomic-program 13](windows/kept/2026-10-09T150122-1791583282/fuzz.out): C build timed out. |
| Windows | 1791603314 | `d75d7a19` | 1 | [Program 95](windows/kept/2026-10-09T203514-1791603314/fuzz.out): execution at native opt 3 timed out. |
| Windows | 1791608917 | `93b31632` | 3 | [Dense program 3 and trap-program 3](windows/kept/2026-10-09T220837-1791608917/fuzz.out): C release, native opt 1, and native debug builds timed out. The two trap reports contain identical input bytes; both observations are retained. |
| Windows | 1791612653 | `6d3deeb8` | 2 | [ABI-program 23 and trap-program 3](windows/kept/2026-10-09T231053-1791612653/fuzz.out): native opt 0 and opt 3 executions timed out. The latter is named `trap-crash` by the harness, but the recorded outcome is `hang`. |

All 12 Windows reports are timeouts (nine builds, three executions). They may be
compiler/program hangs or environmental delays; the logs alone do not establish
which. They remain open pending replay on Windows with captured timing and output.

[findings.json](findings.json) lists every report separately, including its full
compiler commit, seed, original diagnostic, reproducer path, SHA-256, and round log.
`linux/rounds.log` and `windows/rounds.log` retain the complete campaign histories.
Each host's `coverage/` retains its saved reached/cold function lists.

## Interrupted rounds and backup scope

The Linux round at seed `1791661988` and Windows round at seed `1791663465` were
interrupted. Neither had a saved `finding-*` file at the final snapshot. Their
available current/generated/formatter inputs are under each host's `interrupted/`;
they are scratch inputs, not additional findings. Their in-memory progress output
and final round totals were not saved by the existing runner. Completed-round
counts above exclude these two rounds.

[capture.json](capture.json) records the stopped-state archive hashes, source
revisions, and capture times. Full archives are retained on both original machines
and in the workspace's `fuzz-backups/2026-10-10/`. They include current compiler
binaries and source trees, the fuzz tools, all of `build/fuzz`, and raw `build/cov`
counters. Git object databases and disposable `.cache` directories were excluded
from the archives and remain on the original machines. Historical compiler
revisions are identified in the index; the archived binaries are the versions
present when the campaigns stopped.

## Triage handoff

1. Replay each input on its recorded target and compiler revision, then check the
   current compiler separately. Preserve stdout, stderr, exit status, and timing.
   Replaying the saved input avoids changes in the generator's time-dependent
   `--aim` weighting.
2. Choose a predicate matching the observation before reducing. The default
   `tools/reduce.py` predicate compares native with C and requires agreement from
   the seed; it does not represent the Linux seed-versus-all-compiled discrepancy
   or a build timeout. Use an appropriate `--check` predicate for those reports.
3. Record whether each report is a compiler, seed, generator, runtime, or
   environment issue, with replay evidence. Do not close timeouts solely because
   they occurred on a busy host.
4. For confirmed defects, add a minimized regression test and a suitable seed to
   `tests/fuzz/corpus`, link the fix here, and update the report's status. Keep the
   original reproducers and logs as evidence.

## Triage, 2026-10-11

**Linux, dense program 184: a compiler bug, fixed.** The seed was right. Reduced by hand
from the 632-line input: a condition made only of constants, `((0 -% 207) << 5) <
((u8)-656 << 2)`, is `true` when the program computes it, in `u8` (32 < 192), but the checker
folded it in sixty-four bits (1568 < 192) to `false` and dropped the branch, so a store
through a pointer set there never happened. Every compiled build shares the checker, which
is why all seven agreed. The fold now computes as the program does: the result truncated to
the operands' type, signed `//`, `%` and `>>` for signed types (§7.4: truncating, as C), and
no fold of a checked `+`, `-` or `*` that overflows, which traps when it runs. Tests:
`07_expressions/constant_conditions_in_type` and `constant_condition_overflow_traps`. The
seed has the mirror bug (it folds signed `//`, `%` and `>>` in a condition as unsigned), so
the first test is `oracle: none` until the seed is fixed.

**Windows, all twelve: environment, not compiler.** Replayed on luce-windows with the
compiler at c938bff, idle: every input builds in 0.1–0.3 s under the recorded flags and runs
in under 0.05 s; the eight non-trap programs print exactly what the C backend prints, and
the four trap programs trap at the same position with the same message as the C backend.
The reports came from a busy machine before the Windows build-speed work (6bcd47d segment
heap, 5c24f41 parallel assembly, c08bc45 path lookups), when builds there were about 3×
slower and the fuzzer's per-build limit was reached.
