#!/usr/bin/env python3
"""Run existing sample/conformance fixtures on Windows; preserve every failure."""
import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
import json
from pathlib import Path
import re
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parents[1]


def run_rejection(compiler, source):
    record = dict(source=source.relative_to(ROOT).as_posix(), flags=['check'], phase='reject')
    try:
        expected = re.findall(r'^# error: ?(.*)$', source.read_text(encoding='utf-8', errors='replace'), re.M)
        result = subprocess.run([compiler, 'check', record['source']], cwd=ROOT,
                                capture_output=True, timeout=30)
        diagnostic = (result.stdout + result.stderr).decode('utf-8', errors='replace')
        ok = result.returncode == 1 and bool(re.search(r'\.lucb:\d+:\d+:', diagnostic)) and all(x in diagnostic for x in expected)
        return dict(record, ok=ok, status=result.returncode, stderr=diagnostic)
    except (subprocess.TimeoutExpired, OSError) as error:
        return dict(record, ok=False, stderr=str(error))


def run_case(compiler, source, expected, flags, trap=False):
    record = dict(source=str(source.relative_to(ROOT)), flags=flags)
    with tempfile.TemporaryDirectory(prefix="luce-windows-test-") as folder:
        binary = Path(folder) / "case.exe"
        try:
            build = subprocess.run([compiler, "build", source.relative_to(ROOT).as_posix(), *flags, "-o", binary],
                                   cwd=ROOT, capture_output=True, timeout=120)
            if build.returncode:
                return dict(record, ok=False, phase="build", status=build.returncode,
                            stderr=build.stderr.decode("utf-8", errors="replace"))
            result = subprocess.run([binary], cwd=ROOT, capture_output=True, timeout=30)
            ok = (result.returncode == 1 and expected.strip() in result.stderr) if trap else (
                result.returncode == 0 and result.stdout == expected)
            return dict(record, ok=ok, phase="run", status=result.returncode,
                        stdout=result.stdout.decode("utf-8", errors="replace"),
                        stderr=result.stderr.decode("utf-8", errors="replace"),
                        expected=expected.decode("utf-8", errors="replace"))
        except (subprocess.TimeoutExpired, OSError) as error:
            return dict(record, ok=False, phase="timeout-or-launch", stderr=str(error))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--compiler", type=Path, default=ROOT / "build/luce-base.exe")
    parser.add_argument("--suite", choices=["samples", "conformance"], default="samples")
    parser.add_argument("--opt", nargs="+", type=int, choices=range(4), default=list(range(4)))
    parser.add_argument("--c", action="store_true")
    parser.add_argument("--c-only", action="store_true")
    parser.add_argument("--jobs", type=int, default=2)
    parser.add_argument("--match", default="")
    args = parser.parse_args()
    flags = [["--native", "--opt", str(level)] for level in args.opt]
    if args.c_only:
        flags = []
    if args.c or args.c_only:
        flags += [["--backend=c"], ["--backend=c", "--release"]]
    directory = ROOT / "tests" / args.suite
    fixtures = sorted(directory.glob("*.expect")) if args.suite == "samples" else sorted(directory.glob("[0-9]*/*.expect"))
    if args.suite == "conformance":
        fixtures += sorted(directory.glob("[0-9]*/*.trap"))
    jobs = []
    for fixture in fixtures:
        if re.search(r"\.[^.]+-[^.]+\.expect$", fixture.name):
            continue
        source = fixture.with_suffix(".lucb")
        if not source.exists():
            source = fixture.with_suffix("") / "main.lucb"
        if args.match not in str(source):
            continue
        host = fixture.with_suffix(".x86_64-windows.expect")
        expectation = host if host.exists() else fixture
        # Fixtures are text tracked with either checkout line ending; program output is bytes.
        expected = expectation.read_text(encoding="utf-8").encode("utf-8")
        for mode in flags:
            jobs.append((args.compiler.resolve(), source, expected, mode, fixture.suffix == ".trap"))
    results = []
    with ThreadPoolExecutor(max_workers=args.jobs) as pool:
        futures = [pool.submit(run_case, *job) for job in jobs]
        if args.suite == 'conformance':
            futures += [pool.submit(run_rejection, args.compiler.resolve(), source)
                        for source in sorted(directory.glob('[0-9]*/errors/*.lucb'))
                        if not source.name.startswith(".") and args.match in str(source)]
        for future in as_completed(futures):
            result = future.result()
            results.append(result)
            if not result["ok"]:
                print("FAIL", result["source"], " ".join(result["flags"]), result["phase"], flush=True)
            elif len(results) % 25 == 0:
                print(f"{len(results)}/{len(futures)} cases completed", flush=True)
    report = ROOT / "build" / f"windows-{args.suite}-results.json"
    report.parent.mkdir(exist_ok=True)
    report.write_text(json.dumps(results, indent=2) + "\n", encoding="utf-8")
    failed = sum(not item["ok"] for item in results)
    print(f"{len(results) - failed} passed, {failed} failed; {report}")
    return int(failed != 0)


if __name__ == "__main__":
    raise SystemExit(main())
