#!/usr/bin/env python3
"""Build native Base and C kernels, verify them, then measure matched workloads.

Run on an otherwise idle host. All subprocesses are sequential during measurement.
The C driver times only the kernel; every trial uses fresh, deterministic inputs.
"""
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import platform
import random
import statistics
import subprocess
import time

ROOT = Path(__file__).resolve().parents[2]
SOURCE = Path(__file__).resolve().parent
CASES = {
    "integer_mix": (1, 1000000),
    "float_recurrence": (1, 1000000),
    "sum_words": (262144, 10),
    "transform": (262144, 10),
    "byte_scan": (1048576, 10),
    "chase": (262144, 1000000),
    "matrix_product": (96 * 96, 10),
}


def command(args, timeout=180):
    result = subprocess.run(list(map(str, args)), cwd=ROOT, capture_output=True,
                            text=True, timeout=timeout)
    if result.returncode:
        raise RuntimeError(f"{args}: {result.returncode}\n{result.stdout}{result.stderr}")
    return result.stdout


def optional_command(args):
    try:
        return command(args).strip()
    except (OSError, RuntimeError):
        return None


def measure(binary, kernel, work, size, seed):
    start = time.perf_counter_ns()
    result = json.loads(command([binary, kernel, work, size, seed]))
    result["process_ns"] = time.perf_counter_ns() - start
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--base", type=Path, default=ROOT / "build/luce-base")
    parser.add_argument("--cc", default="clang")
    parser.add_argument("--output", type=Path, default=ROOT / "build/native-vs-c")
    parser.add_argument("--samples", type=int, default=9)
    parser.add_argument("--target-ms", type=float, default=30)
    parser.add_argument("--verify-only", action="store_true")
    parser.add_argument("--reuse-build", action="store_true")
    args = parser.parse_args()
    if args.samples < 3 or args.target_ms <= 0:
        parser.error("use at least three samples and a positive target duration")
    out = args.output.resolve()
    out.mkdir(parents=True, exist_ok=True)
    arm = platform.machine() in ("arm64", "aarch64")
    cpu = "neon" if arm else "v1"
    architecture = "-march=armv8-a" if arm else "-march=x86-64"
    common = ["-std=c11", "-Wall", "-Wextra", "-Werror", "-ffp-contract=off", architecture]
    variants = [f"base-{level}" for level in range(4)] + ["c-O3", "c-scalar"]
    binaries = {name: out / name for name in variants}
    build_commands = []
    source_hashes = {p.name: hashlib.sha256(p.read_bytes()).hexdigest()
                     for p in sorted(SOURCE.iterdir()) if p.suffix in (".c", ".lucb", ".py")}
    compiler_hash = hashlib.sha256(args.base.read_bytes()).hexdigest()

    def build(arguments):
        begin = time.perf_counter_ns()
        command(arguments)
        build_commands.append({"argv": list(map(str, arguments)),
                               "ns": time.perf_counter_ns() - begin})

    if not args.reuse_build:
        for level in range(4):
            library = out / f"kernels-{level}"
            build([args.base.resolve(), "build", SOURCE / "kernels.lucb", "--native",
                   "--cpu", cpu, "--opt", level, "--lib", "-o", library])
            header = library.with_suffix(".h").read_bytes()
            if level == 0:
                (out / "kernels.h").write_bytes(header)
                build([args.cc, *common, "-O3", "-I", out, "-c", SOURCE / "driver.c",
                       "-o", out / "driver.o"])
            elif header != (out / "kernels.h").read_bytes():
                raise RuntimeError("optimization changed the exported C interface")
            build([args.cc, out / "driver.o", library.with_suffix(".a"), "-lm", "-pthread",
                   "-o", binaries[f"base-{level}"]])
            build([args.base.resolve(), "build", SOURCE / "kernels.lucb", "--native",
                   "--cpu", cpu, "--opt", level, "--lib", "--emit=asm", "-o", out / f"base-{level}.s"])
        for name in ("c-O3", "c-scalar"):
            flags = [*common, "-O3"]
            if name == "c-scalar":
                flags += ["-fno-vectorize", "-fno-slp-vectorize"]
            build([args.cc, *flags, "-I", out, "-c", SOURCE / "kernels.c", "-o", out / f"{name}.o"])
            build([args.cc, out / "driver.o", out / f"{name}.o", "-lm", "-pthread", "-o", binaries[name]])
            build([args.cc, *flags, "-I", out, "-S", SOURCE / "kernels.c", "-o", out / f"{name}.s"])
        manifest = dict(commands=build_commands, source_sha256=source_hashes,
                        compiler_sha256=compiler_hash,
                        binary_sha256={name: hashlib.sha256(path.read_bytes()).hexdigest()
                                       for name, path in binaries.items()})
        (out / "build.json").write_text(json.dumps(manifest, indent=2) + "\n")
    else:
        manifest = json.loads((out / "build.json").read_text())
        if manifest["source_sha256"] != source_hashes or manifest["compiler_sha256"] != compiler_hash:
            parser.error("sources or Base compiler changed; rebuild without --reuse-build")
        for name, path in binaries.items():
            if hashlib.sha256(path.read_bytes()).hexdigest() != manifest["binary_sha256"][name]:
                parser.error(f"{name} changed; rebuild without --reuse-build")

    # Different seeds, small/remainder sizes, and more than one pass detect input
    # specialization, skipped stores, and tail errors before any timings are kept.
    for kernel in CASES:
        for seed in (7, 103, 65537):
            for size in ((1, 9, 25) if kernel == "matrix_product" else (1, 7, 257)):
                observations = [measure(binaries[name], kernel, 3, size, seed)["checksum"]
                                for name in variants]
                if len(set(observations)) != 1:
                    raise RuntimeError(f"checksum disagreement: {kernel}, {seed}, {size}: {observations}")
        print(f"verified {kernel}: six variants, three seeds, three sizes", flush=True)
    if args.verify_only:
        return

    record = {
        "date_utc": datetime.now(timezone.utc).isoformat(),
        "revision": command(["git", "rev-parse", "HEAD"]).strip(),
        "compiler": command([args.base.resolve(), "--version"]).strip(),
        "compiler_sha256": compiler_hash,
        "clang": command([args.cc, "--version"]).strip(),
        "platform": platform.platform(), "machine": platform.machine(),
        "cpu": optional_command(["sysctl", "-n", "machdep.cpu.brand_string"]),
        "memory_bytes": optional_command(["sysctl", "-n", "hw.memsize"]),
        "physical_cores": optional_command(["sysctl", "-n", "hw.physicalcpu"]),
        "logical_cores": os.cpu_count(), "base_cpu": cpu, "c_architecture": architecture,
        "power": optional_command(["pmset", "-g", "batt"]),
        "samples": args.samples, "target_ms": args.target_ms,
        "build": manifest,
        "binary_bytes": {name: path.stat().st_size for name, path in binaries.items()},
        "cases": {},
    }
    rng = random.Random(812)
    for kernel, (size, initial_work) in CASES.items():
        # Calibrate the optimized C execution. The same work goes to all variants.
        probe = measure(binaries["c-O3"], kernel, initial_work, size, 812)
        work = max(1, min(2000000000, round(initial_work * args.target_ms * 1e6 / max(1, probe["ns"]))))
        rows = {name: [] for name in variants}
        order = []
        for trial in range(args.samples):
            names = variants[:]
            rng.shuffle(names)
            order.append(names)
            checksums = []
            for name in names:
                result = measure(binaries[name], kernel, work, size, 812)
                rows[name].append(result)
                checksums.append(result["checksum"])
            if len(set(checksums)) != 1:
                raise RuntimeError(f"timed checksum disagreement: {kernel}: {checksums}")
        summary = {}
        for name, samples in rows.items():
            times = [sample["ns"] for sample in samples]
            median = statistics.median(times)
            summary[name] = {"median_ns": median, "min_ns": min(times), "max_ns": max(times),
                             "mad_ns": statistics.median(abs(value - median) for value in times),
                             "median_rss_bytes": statistics.median(sample["rss_bytes"] for sample in samples)}
        record["cases"][kernel] = dict(size=size, work=work, seed=812, order=order,
                                       samples=rows, summary=summary)
        (out / "results.json").write_text(json.dumps(record, indent=2) + "\n")
        ratio = summary["base-3"]["median_ns"] / summary["c-O3"]["median_ns"]
        print(f"{kernel}: native opt 3 / C -O3 = {ratio:.3f}x elapsed time", flush=True)
    print(f"results: {out / 'results.json'}")


if __name__ == "__main__":
    main()
