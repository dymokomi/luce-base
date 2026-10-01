#!/usr/bin/env python3
"""The compile budget: real programs built on every target, each within a time and a memory.

A compiler that never finishes on some input, or grows without bound, showed up only as a
dead CI runner (0.32.3 to 0.32.5: luce-js's x86-64 build took all of a runner's memory in
minutes, from an endless parallel copy). Here each ENTRY, a program inside its package's
checkout, is built for every target: natively, into an executable, for this host's own, and
as assembly for the others, which runs every generator whatever the host. An ENTRY in Luce
(`.luc`) is first translated to Base by `--luce` (`luce build --emit=base`), within the same
budget, and its Base is then built as assembly for every target; a module with no `main`
builds as a library. A build that
passes `--seconds` of wall time is killed; one whose resident memory passes `--megabytes`
is killed as it grows. Either is a failure that names the program, the target and the
numbers, and the table of every build's time and peak memory is printed, so a compile-speed
regression shows too.

Usage: tools/compile_budget.py [--compiler PATH] [--luce PATH] [--seconds N] [--megabytes N]
                               ENTRY...
"""
import argparse
import os
from pathlib import Path
import platform
import subprocess
import sys
import tempfile
import time

ROOT = Path(__file__).resolve().parent.parent
TARGETS = ("arm64-macos", "arm64-linux", "x86_64-linux", "x86_64-windows")


def host_target():
    machine = platform.machine().lower()
    arch = "arm64" if machine in ("arm64", "aarch64") else "x86_64"
    system = {"Darwin": "macos", "Linux": "linux", "Windows": "windows"}.get(platform.system(), "linux")
    return f"{arch}-{system}"


def resident_megabytes(process):
    """The process's resident memory in megabytes: on Windows the peak working set so far
    (GetProcessMemoryInfo on the process's own handle, which stays valid after it exits);
    elsewhere its resident set now (`ps`), 0 once it is gone."""
    if os.name == "nt":
        return windows_peak_megabytes(process)
    try:
        out = subprocess.run(["ps", "-o", "rss=", "-p", str(process.pid)], capture_output=True, text=True, timeout=5).stdout
        return int(out.strip() or 0) / 1024.0
    except (ValueError, subprocess.SubprocessError, OSError):
        return 0.0


def windows_peak_megabytes(process):
    import ctypes
    from ctypes import wintypes

    class Counters(ctypes.Structure):
        _fields_ = [("cb", wintypes.DWORD), ("PageFaultCount", wintypes.DWORD),
                    ("PeakWorkingSetSize", ctypes.c_size_t), ("WorkingSetSize", ctypes.c_size_t),
                    ("QuotaPeakPagedPoolUsage", ctypes.c_size_t), ("QuotaPagedPoolUsage", ctypes.c_size_t),
                    ("QuotaPeakNonPagedPoolUsage", ctypes.c_size_t), ("QuotaNonPagedPoolUsage", ctypes.c_size_t),
                    ("PagefileUsage", ctypes.c_size_t), ("PeakPagefileUsage", ctypes.c_size_t)]

    counters = Counters()
    counters.cb = ctypes.sizeof(Counters)
    query = ctypes.WinDLL("kernel32", use_last_error=True).K32GetProcessMemoryInfo
    query.argtypes = [wintypes.HANDLE, ctypes.POINTER(Counters), wintypes.DWORD]
    query.restype = wintypes.BOOL
    if not query(wintypes.HANDLE(int(process._handle)), ctypes.byref(counters), counters.cb):
        return 0.0
    return counters.PeakWorkingSetSize / 1048576.0


def build(command, cwd, seconds, megabytes):
    """Run one build; (status, seconds spent, peak megabytes, reason or '')."""
    started = time.time()
    process = subprocess.Popen(command, cwd=cwd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    peak = 0.0
    reason = ""
    while not finished(process):
        peak = max(peak, resident_megabytes(process))
        spent = time.time() - started
        if spent > seconds:
            reason = f"past {seconds} s"
        elif peak > megabytes:
            reason = f"past {megabytes} MB"
        if reason:
            process.kill()
            process.wait()
            break
        time.sleep(0.2)
    # the peak of the whole run, a short one's included: the exited process's own count
    peak = max(peak, getattr(process, "peak_megabytes", 0.0))
    if os.name == "nt":
        peak = max(peak, resident_megabytes(process))
    output = process.stdout.read().decode(errors="replace") if process.stdout else ""
    status = process.returncode
    if not reason and status != 0:
        reason = "failed: " + output.strip().splitlines()[-1][:200] if output.strip() else f"exit {status}"
    return status, time.time() - started, peak, reason


def finished(process):
    """Whether `process` has exited; on POSIX it is reaped with `wait4`, whose usage gives
    its peak resident set (kilobytes on Linux, bytes on macOS) as `peak_megabytes`."""
    if os.name == "nt":
        return process.poll() is not None
    pid, status, usage = os.wait4(process.pid, os.WNOHANG)
    if pid == 0:
        return False
    process.returncode = os.waitstatus_to_exitcode(status)
    process.peak_megabytes = usage.ru_maxrss / (1048576.0 if sys.platform == "darwin" else 1024.0)
    return True


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--compiler", default=str(ROOT / "build" / ("luce-base.exe" if os.name == "nt" else "luce-base")))
    parser.add_argument("--luce", default="luce", help="the Luce compiler, for .luc entries")
    parser.add_argument("--seconds", type=float, default=240.0)
    parser.add_argument("--megabytes", type=float, default=4096.0)
    parser.add_argument("entries", nargs="+")
    args = parser.parse_args()
    compiler = str(Path(args.compiler).resolve())
    host = host_target()
    failures = 0
    print(f"{'program':44} {'target':15} {'seconds':>8} {'peak MB':>8}")
    with tempfile.TemporaryDirectory(prefix="compile-budget-") as work:
        for entry in args.entries:
            source = Path(entry).resolve()
            label = f"{source.parent.parent.name}/{source.parent.name}/{source.name}"
            translated = source.suffix == ".luc"
            if translated:
                # the Luce front end's own share, then its Base on every target
                base = Path(work) / f"{source.stem}-{len(label)}.lucb"
                status, spent, peak, reason = build([args.luce, "build", str(source), "--emit=base", "-o", str(base)], source.parent, args.seconds, args.megabytes)
                print(f"{label:44} {'luce':15} {spent:8.1f} {peak:8.0f}" + (f"  FAIL {reason}" if reason else ""), flush=True)
                if reason:
                    failures += 1
                    continue
                source = Path(str(base) + ".base") / "main.lucb"
            # a module without `main` builds as a library
            library = "pub func main(" not in source.read_text(errors="replace")
            for target in TARGETS:
                out = Path(work) / f"{source.stem}-{target}"
                command = [compiler, "build", str(source), "--native", "--cache-dir", "none"] + (["--lib"] if library else [])
                if target != host or translated:
                    command += ["--target", target, "--emit=asm"]
                    if target.startswith("x86_64"):
                        command += ["--cpu", "v1"]
                command += ["-o", str(out)]
                status, spent, peak, reason = build(command, source.parent, args.seconds, args.megabytes)
                print(f"{label:44} {target:15} {spent:8.1f} {peak:8.0f}" + (f"  FAIL {reason}" if reason else ""), flush=True)
                if reason:
                    failures += 1
    if failures:
        print(f"FAIL compile budget: {failures} builds over {args.seconds} s or {args.megabytes} MB, or failed")
        return 1
    print("ok compile budget")
    return 0


if __name__ == "__main__":
    sys.exit(main())
