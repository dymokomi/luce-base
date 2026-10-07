#!/usr/bin/env python3
"""The gate: one commit of a repository tested on arm64-macos, x86_64-linux and
x86_64-windows at once, from this Mac (docs/CI.md).

Usage, from a workspace of checkouts side by side:
  python3 ../luce-base/tools/gate.py [REPOSITORY] [options]

REPOSITORY (default: the current directory) is a dymokomi repository with a gate.toml. Its
commit (HEAD, or --commit) is tested here for macOS and over SSH on the Linux and Windows
machines (`luce-linux`, `luce-windows` in ~/.ssh/config), all three in parallel, each in
its own workspace (~/luce-gate on every machine):

  1. the commit is fetched there: from GitHub, or from a git bundle sent over SSH when it
     has not been pushed yet; every dependency (tools/checkout_main.py) is at GitHub's main;
  2. the toolchain is luce-base, luce-std and luce at GitHub's main (or at the commit, for
     one of them) and is built once per triple of commits, then reused from a cache;
  3. gate.toml's steps for that platform run in the checkout, in order, under bash (Git's
     bash on Windows), with LUCE_BASE, LUCE and PATH naming the toolchain: its `steps`,
     and its `full` steps too with --full (LUCE_GATE_LEVEL says which);
  4. the `quick` steps of the checkouts beside this one that depend on it by path run,
     several at once;
  5. with --full, a [release] section's steps build release archives after a pass, kept
     for tools/release.py.

The result is a git note on the commit (refs/notes/gate, pushed to origin): one line per
platform with PASS or FAIL, the level (default or full), the time, the duration and the
toolchain commits.
tools/release.py publishes only commits whose note shows all three platforms passing.

Options:
  --commit REV     test REV instead of HEAD
  --only P[,P]     only these platforms (macos, linux, windows); the note keeps the others
  --full           also run each platform's `full` steps (sanitizers, valgrind, fuzzing,
                   the compile budget): required for luce-base, luce and luc, and for a
                   toolchain release
  --no-dependents  skip the quick steps of the repositories that depend on this one
  --clean          wipe the checkout's ignored files (build/ caches) before testing
  --no-record      do not write or push the note
"""
import argparse
import concurrent.futures
import datetime
import hashlib
import importlib.util
import io
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import threading
import time
import tomllib

# platform: (host target, SSH alias or None for this machine)
PLATFORMS = {
    "macos": ("arm64-macos", None),
    "linux": ("x86_64-linux", "luce-linux"),
    "windows": ("x86_64-windows", "luce-windows"),
}
# the toolchain every gate builds: Luce Base, the standard package, and Luce
TOOLCHAIN = ("luce-base", "luce-std", "luce")
GITHUB = "https://github.com/dymokomi"
HOME = "luce-gate"          # the workspace on every machine, relative to the home directory
NOTES = "refs/notes/gate"
STEP_SECONDS = 2 * 60 * 60  # a step that runs longer has hung
KEEP_TOOLCHAINS = 8
DEPENDENT_JOBS = 4          # dependents tested at once on a machine
WINDOWS = os.name == "nt"


# mark: shared helpers


def git(*arguments, cwd=None, check=True, quiet=False):
    """git's stdout, stripped; raises on failure when check."""
    result = subprocess.run(["git", *arguments], cwd=cwd, capture_output=True, text=True)
    if check and result.returncode != 0:
        raise SystemExit(f"gate: git {' '.join(arguments)} failed in {cwd}:\n{result.stderr.strip()}")
    return result.stdout.strip() if result.returncode == 0 or not quiet else ""


def workspace():
    """This machine's gate workspace: ~/luce-gate, or LUCE_GATE_HOME."""
    return Path(os.environ.get("LUCE_GATE_HOME", f"~/{HOME}")).expanduser()


def say(message):
    print(message, flush=True)


def read_config(text):
    """gate.toml's tables: tools, per-platform steps (default, full, quick), release steps."""
    config = tomllib.loads(text)
    for platform in PLATFORMS:
        section = config.get(platform, {})
        for key in ("steps", "full", "quick"):
            if not isinstance(section.get(key, []), list):
                raise SystemExit(f"gate.toml: [{platform}] {key} must be a list of commands")
    return config


# mark: the agent, which runs on each machine


class Agent:
    """One platform's gate in its workspace: sync, toolchain, steps, release archives."""

    def __init__(self, arguments):
        self.platform = arguments.platform
        self.host = PLATFORMS[self.platform][0]
        self.home = workspace()
        self.src = self.home / "src"
        self.repository = arguments.name
        self.config = {}
        self.commit = arguments.commit
        self.bundle = arguments.bundle
        self.source = arguments.source
        self.pins = dict(item.split("=", 1) for item in arguments.pin)
        self.clean = arguments.clean
        self.full = arguments.full
        self.dependents = arguments.dependent
        self.desktop_jobs = 0
        self.desktop_lock = threading.Lock()
        self.synced = set()

    # mark: sources

    def sync(self, name, commit=None):
        """Check out `name` under src/ at `commit`, or at GitHub's main; returns its directory."""
        directory = self.src / name
        if not directory.exists():
            git("-c", "core.autocrlf=false", "clone", "-q", "--filter=blob:none", f"{GITHUB}/{name}.git", str(directory), cwd=self.src)
        elif (directory / ".git" / "shallow").exists():
            git("fetch", "-q", "--unshallow", "origin", cwd=directory)
        if WINDOWS:
            # every checkout as committed, LF, on every platform: Git for Windows' default
            # conversion would make a formatting check fail on Windows alone
            git("config", "core.autocrlf", "false", cwd=directory)
        if commit is None:
            git("fetch", "-q", "origin", "main", cwd=directory)
            commit = git("rev-parse", "FETCH_HEAD", cwd=directory)
        elif subprocess.run(["git", "cat-file", "-e", f"{commit}^{{commit}}"], cwd=directory,
                            capture_output=True).returncode != 0:
            git("fetch", "-q", "origin", commit, cwd=directory)
        git("checkout", "-q", "-f", "--detach", commit, cwd=directory)
        marker = directory / ".git" / "luce-gate-lf"
        if WINDOWS and not marker.exists():
            # once: a checkout an earlier converting clone wrote, written again as committed
            git("rm", "-rq", "--cached", ".", cwd=directory)
            git("reset", "-q", "--hard", cwd=directory)
            marker.touch()
        git("clean", "-q", "-ffdx" if (self.clean and name == self.repository) else "-ffd", cwd=directory)
        self.synced.add(name)
        return directory

    def sync_repository(self):
        """The commit under test: from the local checkout (macOS), a bundle, or GitHub."""
        directory = self.src / self.repository
        if not directory.exists():
            git("-c", "core.autocrlf=false", "clone", "-q", "--filter=blob:none", f"{GITHUB}/{self.repository}.git", str(directory), cwd=self.src)
        if self.source:
            git("fetch", "-q", self.source, self.commit, cwd=directory)
        elif self.bundle:
            bundle = self.home / self.bundle
            if (directory / ".git" / "shallow").exists():
                git("fetch", "-q", "--unshallow", "origin", cwd=directory)
            git("fetch", "-q", "origin", "main", cwd=directory)
            git("fetch", "-q", str(bundle), "refs/gate/commit", cwd=directory)
            bundle.unlink()
        text = git("show", f"{self.commit}:gate.toml", cwd=directory, check=False, quiet=True)
        if not text:
            # fetch from GitHub first when the commit came from there
            self.sync(self.repository, self.commit)
            text = git("show", f"{self.commit}:gate.toml", cwd=directory)
        self.config = read_config(text)
        return self.sync(self.repository, self.commit)

    def refresh(self):
        """Every other checkout in the workspace to main, in parallel: what a test finds
        beside it (the compile budget's programs, say) is never a stale earlier main."""
        others = [path.name for path in self.src.iterdir() if (path / ".git").exists()
                  and path.name not in TOOLCHAIN and path.name != self.repository]
        with concurrent.futures.ThreadPoolExecutor(16) as pool:
            for future in [pool.submit(self.sync, name) for name in others]:
                future.result()

    def sync_all(self):
        """The repository, the toolchain, the tools gate.toml names, every dependency and
        the dependents whose quick steps run."""
        self.refresh()
        repository = self.sync_repository()
        pinned = {name: self.pins.get(name) for name in TOOLCHAIN}
        if self.repository in pinned:
            pinned[self.repository] = self.commit
        for name in TOOLCHAIN:
            if name != self.repository:
                self.sync(name, pinned[name])
        tools = [self.src / name for name in [*self.config.get("tools", []), *self.dependents]]
        # the dependencies' manifests can name more dependencies once they are at main
        specification = importlib.util.spec_from_file_location(
            "checkout_main", self.src / "luce-base" / "tools" / "checkout_main.py")
        checkout_main = importlib.util.module_from_spec(specification)
        specification.loader.exec_module(checkout_main)
        while True:
            found = checkout_main.check_out([repository, *tools])
            pending = {path.name for path in [*found, *tools] if path.name not in self.synced}
            if not pending:
                break
            for name in pending:
                self.sync(name)
        for name in sorted(self.synced):
            head = git("rev-parse", "--short=12", "HEAD", cwd=self.src / name)
            say(f"gate: {name} {head}")

    # mark: toolchain

    def executable(self, name):
        return name + ".exe" if WINDOWS else name

    def products(self):
        """(cache name, path in the workspace) of each built compiler."""
        return [(self.executable("luce-base"), self.src / "luce-base" / "build" / self.executable("luce-base")),
                (self.executable("luce"), self.src / "luce" / "build" / self.executable("luce"))]

    def toolchain(self):
        """Restore the compilers from the cache, or build and cache them."""
        commits = [git("rev-parse", "HEAD", cwd=self.src / name) for name in TOOLCHAIN]
        self.toolchain_commits = dict(zip(TOOLCHAIN, commits))
        key = "-".join(commit[:12] for commit in commits)
        cache = self.home / "toolchains" / key
        if all((cache / name).exists() for name, _ in self.products()):
            for name, path in self.products():
                path.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(cache / name, path)
            os.utime(cache)
            say(f"gate: toolchain {key} from the cache")
            return
        say(f"gate: building toolchain {key}")
        started = time.time()
        if WINDOWS:
            self.run_checked([sys.executable, "tools/build_windows.py"], self.src / "luce-base")
            self.run_checked([sys.executable, "tools/build_windows.py"], self.src / "luce")
        else:
            self.run_checked(["./build.sh"], self.src / "luce-base")
            base = self.products()[0][1]
            self.run_checked(["./build.sh"], self.src / "luce", {"LUCE_BASE_COMPILER": str(base)})
        staging = cache.with_name(key + ".partial")
        shutil.rmtree(staging, ignore_errors=True)
        staging.mkdir(parents=True)
        for name, path in self.products():
            shutil.copy2(path, staging / name)
        shutil.rmtree(cache, ignore_errors=True)
        staging.rename(cache)
        say(f"gate: toolchain built in {time.time() - started:.0f}s")
        caches = sorted((path for path in cache.parent.iterdir() if not path.name.endswith(".partial")),
                        key=lambda path: path.stat().st_mtime)
        for old in caches[:-KEEP_TOOLCHAINS]:
            shutil.rmtree(old, ignore_errors=True)

    # mark: steps

    def environment(self, extra=None):
        environment = dict(os.environ)
        base, luce = [path for _, path in self.products()]
        paths = [str(base.parent), str(luce.parent)]
        if WINDOWS:
            environment.setdefault("CC", "gcc")
        else:
            # generated C goes through clang, as `cc` too (the hosted runners did the same)
            shims = self.home / "bin"
            shims.mkdir(parents=True, exist_ok=True)
            clang = shutil.which("clang")
            if clang and not (shims / "cc").exists():
                (shims / "cc").symlink_to(clang)
            paths.insert(0, str(shims))
            environment["CC"] = "clang"
            environment["CXX"] = "clang++"
        environment["PATH"] = os.pathsep.join(paths + [environment.get("PATH", "")])
        environment.update(LUCE_BASE=str(base), LUCE_BASE_COMPILER=str(base), LUCE=str(luce),
                           LUCE_GATE="1", LUCE_GATE_HOST=self.host, LUCE_CI_HOST=self.host,
                           LUCE_GATE_LEVEL="full" if self.full else "default",
                           # every machine has the owner's desktop: window and GPU tests run
                           LUCE_TEST_WINDOW="required", LUCE_TEST_GPU="required")
        machine = self.home / "machine.sh"
        if machine.exists():
            environment["LUCE_GATE_MACHINE"] = str(machine)
        environment.update(extra or {})
        return environment

    def bash(self):
        if not WINDOWS:
            return "bash"
        # Git's own bash: `bash` on PATH is WSL's launcher
        found = shutil.which("git")
        candidates = [Path(found).resolve().parents[1] / "bin" / "bash.exe"] if found else []
        candidates.append(Path(r"C:\scoop\apps\git\current\bin\bash.exe"))
        for candidate in candidates:
            if candidate.exists():
                return str(candidate)
        raise SystemExit("gate: Git's bash.exe was not found")

    def spawn(self, command, cwd, environment):
        return spawn(command, cwd, environment, sys.stdout)

    def run_checked(self, command, cwd, extra=None):
        if self.spawn(command, cwd, self.environment(extra)) != 0:
            raise StepFailed(" ".join(map(str, command)))

    def step(self, command, cwd, sink=sys.stdout):
        """One gate.toml command under bash, after the machine's settings (machine.sh)."""
        sink.write(f"\n== {command}\n")
        script = 'set -eo pipefail\n[ -z "$LUCE_GATE_MACHINE" ] || . "$LUCE_GATE_MACHINE"\n' + command
        started = time.time()
        if WINDOWS:
            status = self.on_desktop([self.bash(), "-c", script], cwd, self.environment(), sink)
        else:
            status = spawn([self.bash(), "-c", script], cwd, self.environment(), sink)
        sink.write(f"== {'ok' if status == 0 else f'FAILED (status {status})'} in {time.time() - started:.0f}s: {command}\n")
        sink.flush()
        if status != 0:
            raise StepFailed(command)

    def on_desktop(self, command, cwd, environment, sink):
        """Run a step in the owner's logged-in Windows session, where windows and the GPU
        work (an SSH session has neither): a scheduled task runs this script's bridge there,
        which writes the output to a file this streams; the task is deleted afterwards."""
        with self.desktop_lock:
            self.desktop_jobs += 1
            number = self.desktop_jobs
        job = self.home / "bridge" / str(number)
        shutil.rmtree(job, ignore_errors=True)
        job.mkdir(parents=True)
        (job / "job.json").write_text(json.dumps({"command": command, "cwd": str(cwd), "env": environment}))
        script = job / "bridge.cmd"
        script.write_text(f'@"{sys.executable}" "{Path(__file__).resolve()}" --bridge "{job}"\r\n')
        task = f"luce-gate-step-{number}"
        user = os.environ.get("USERNAME", "")
        subprocess.run(["schtasks", "/create", "/tn", task, "/tr", f'"{script}"', "/sc", "once", "/st", "23:59",
                        "/ru", user, "/it", "/f"], check=True, capture_output=True)
        try:
            subprocess.run(["schtasks", "/run", "/tn", task], check=True, capture_output=True)
            output, status, started, position = job / "output.log", job / "status", time.time(), 0
            while True:
                done = status.exists()
                if output.exists():
                    with open(output, "rb") as log:
                        log.seek(position)
                        chunk = log.read()
                        position += len(chunk)
                        sink.write(chunk.decode("utf-8", "replace"))
                        sink.flush()
                elif time.time() - started > 60:
                    sink.write(f"gate: FAIL: the step did not start in {user}'s desktop session; is the owner logged in?\n")
                    return 1
                if done:
                    return int(status.read_text().strip() or 1)
                if time.time() - started > STEP_SECONDS + 300:
                    sink.write("gate: FAIL: the desktop step outlived its deadline\n")
                    return 1
                time.sleep(0.5)
        finally:
            subprocess.run(["schtasks", "/end", "/tn", task], capture_output=True)
            subprocess.run(["schtasks", "/delete", "/tn", task, "/f"], capture_output=True)
            shutil.rmtree(job, ignore_errors=True)

    def run_dependents(self):
        """The quick steps of each repository that depends on this one, several at once,
        each one's output printed whole when it ends; any failure fails the gate."""
        quick = []
        for name in self.dependents:
            text = (self.src / name / "gate.toml").read_text() if (self.src / name / "gate.toml").exists() else ""
            commands = read_config(text).get(self.platform, {}).get("quick", []) if text else []
            if commands:
                quick.append((name, commands))
        if not quick:
            return
        say(f"\n== the quick steps of {len(quick)} dependents: {', '.join(name for name, _ in quick)}")

        def check(name, commands):
            sink = io.StringIO()
            try:
                for command in commands:
                    self.step(command, self.src / name, sink)
                return name, True, sink.getvalue()
            except StepFailed:
                return name, False, sink.getvalue()

        failed = []
        with concurrent.futures.ThreadPoolExecutor(DEPENDENT_JOBS) as pool:
            for future in concurrent.futures.as_completed([pool.submit(check, *item) for item in quick]):
                name, passed, output = future.result()
                say("".join(f"[{name}] {line}\n" for line in output.splitlines() if line))
                if not passed:
                    failed.append(name)
        if failed:
            raise StepFailed("dependents: " + ", ".join(failed))

    def release(self, directory):
        """Build the [release] archives and keep them under artifacts/REPOSITORY/COMMIT."""
        section = self.config.get("release")
        if not section:
            return
        for command in section.get("steps", []):
            self.step(command, directory)
        kept = self.home / "artifacts" / self.repository / self.commit
        shutil.rmtree(kept, ignore_errors=True)
        kept.mkdir(parents=True)
        for pattern in section.get("files", []):
            for path in sorted(directory.glob(pattern)):
                shutil.copy2(path, kept / path.name)
                say(f"gate: kept {path.name}")

    # mark: the run

    def run(self):
        self.home.mkdir(parents=True, exist_ok=True)
        self.src.mkdir(exist_ok=True)
        with Lock(self.home / "lock"):
            started = time.time()
            status = "PASS"
            try:
                self.sync_all()
                self.toolchain()
                say("GATE-TOOLCHAIN " + " ".join(f"{name}={commit[:12]}" for name, commit in self.toolchain_commits.items()))
                directory = self.src / self.repository
                section = self.config.get(self.platform, {})
                commands = list(section.get("steps", []))
                if self.full:
                    commands += section.get("full", [])
                if not commands:
                    status = "NONE"
                for command in commands:
                    self.step(command, directory)
                self.run_dependents()
                if commands and self.full:
                    # the release archives come from a full gate, which a release requires
                    self.release(directory)
            except StepFailed as failure:
                say(f"gate: failed: {failure}")
                status = "FAIL"
            except (SystemExit, subprocess.SubprocessError, OSError) as failure:
                say(f"gate: error: {failure}")
                status = "FAIL"
            say(f"GATE-RESULT {status} {time.time() - started:.0f}")
            return 0 if status in ("PASS", "NONE") else 1


def spawn(command, cwd, environment, sink):
    """Run command with its output streamed to sink; its status. A hung step's tree is killed."""
    options = {"creationflags": subprocess.CREATE_NEW_PROCESS_GROUP} if WINDOWS else {"start_new_session": True}
    process = subprocess.Popen(command, cwd=cwd, env=environment, stdout=subprocess.PIPE,
                               stderr=subprocess.STDOUT, stdin=subprocess.DEVNULL, **options)
    timer = threading.Timer(STEP_SECONDS, kill, [process, sink])
    timer.start()
    try:
        for line in iter(process.stdout.readline, b""):
            sink.write(line.decode("utf-8", "replace"))
            sink.flush()
        return process.wait()
    finally:
        timer.cancel()
        if process.poll() is None:
            kill(process, sink)


def kill(process, sink):
    sink.write(f"gate: killing process tree {process.pid}\n")
    if WINDOWS:
        subprocess.run(["taskkill", "/T", "/F", "/PID", str(process.pid)], capture_output=True)
    else:
        try:
            os.killpg(process.pid, 9)
        except ProcessLookupError:
            pass


def bridge(job):
    """The far side of Agent.on_desktop, run by the scheduled task in the desktop session."""
    job = Path(job)
    order = json.loads((job / "job.json").read_text())
    with open(job / "output.log", "w", encoding="utf-8", errors="replace") as sink:
        try:
            status = spawn(order["command"], order["cwd"], order["env"], sink)
        except OSError as failure:
            sink.write(f"gate: {failure}\n")
            status = 1
    (job / "status").write_text(str(status))


class StepFailed(Exception):
    pass


class Lock:
    """One gate at a time per machine: an OS file lock, released when the process ends."""

    def __init__(self, path):
        self.path = path

    def __enter__(self):
        self.file = open(self.path, "a+")
        self.file.seek(0)
        if WINDOWS:
            import msvcrt
            while True:
                try:
                    msvcrt.locking(self.file.fileno(), msvcrt.LK_NBLCK, 1)
                    break
                except OSError:
                    say("gate: waiting for another gate on this machine")
                    time.sleep(10)
        else:
            import fcntl
            try:
                fcntl.flock(self.file, fcntl.LOCK_EX | fcntl.LOCK_NB)
            except OSError:
                say("gate: waiting for another gate on this machine")
                fcntl.flock(self.file, fcntl.LOCK_EX)
        return self

    def __exit__(self, *_):
        self.file.close()


# mark: the orchestrator, on this Mac


def remote_toolchain():
    """GitHub's main of each toolchain repository, so every platform builds the same."""
    pins = {}
    for name in TOOLCHAIN:
        line = git("ls-remote", f"{GITHUB}/{name}.git", "refs/heads/main")
        pins[name] = line.split()[0]
    return pins


def dependents(repository, name):
    """The checkouts beside `repository` whose top-level manifest depends on it by path
    and that have quick steps in gate.toml: what the gate also runs."""
    found = []
    for sibling in sorted(repository.parent.iterdir()):
        manifest, config = sibling / "package.prisma", sibling / "gate.toml"
        if sibling == repository or not manifest.exists() or not config.exists():
            continue
        if f'"../{name}"' in manifest.read_text(errors="replace") and "quick" in config.read_text(errors="replace"):
            found.append(sibling.name)
    return found


def on_github(repository, commit):
    git("fetch", "-q", "origin", cwd=repository, check=False)
    return bool(git("branch", "-r", "--contains", commit, cwd=repository, check=False, quiet=True))


def make_bundle(repository, commit, path):
    """A bundle of the commits GitHub's main lacks, for a commit not pushed yet."""
    git("update-ref", "refs/gate/commit", commit, cwd=repository)
    try:
        exclude = ["--not", "origin/main"] if git("rev-parse", "-q", "--verify", "origin/main",
                                                  cwd=repository, check=False, quiet=True) else []
        git("bundle", "create", "-q", str(path), "refs/gate/commit", *exclude, cwd=repository)
    finally:
        git("update-ref", "-d", "refs/gate/commit", cwd=repository)


class Platform(threading.Thread):
    """One platform's agent, here or over SSH, its output prefixed and logged."""

    def __init__(self, platform, command, log, ssh=None, bundle=None):
        super().__init__()
        self.platform, self.command, self.log, self.ssh, self.bundle = platform, command, log, ssh, bundle
        # seconds: the whole run here; ran: the agent's own, without waiting for its machine
        self.status, self.seconds, self.ran, self.toolchain = "FAIL", 0, 0, ""

    def prepare(self):
        """Send the agent (and the bundle) to the machine."""
        script = Path(__file__).resolve()
        if "windows" in self.platform:
            subprocess.run(["ssh", self.ssh, f"New-Item -ItemType Directory -Force {HOME}/bin | Out-Null"], check=True)
        else:
            subprocess.run(["ssh", self.ssh, f"mkdir -p {HOME}/bin"], check=True)
        files = [str(script)] + ([str(self.bundle)] if self.bundle else [])
        subprocess.run(["scp", "-q", *files, f"{self.ssh}:{HOME}/bin/"], check=True)

    def run(self):
        started = time.time()
        prefix = f"[{self.platform}] "
        with open(self.log, "w") as log:
            try:
                if self.ssh:
                    self.prepare()
                process = subprocess.Popen(self.command, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                                           stdin=subprocess.DEVNULL)
                for raw in iter(process.stdout.readline, b""):
                    line = raw.decode("utf-8", "replace").rstrip("\r\n")
                    # the log keeps each line's time since the start, for finding the slow steps
                    log.write(f"{time.time() - started:7.1f} {line}\n")
                    log.flush()
                    if line.startswith("GATE-RESULT "):
                        self.status, self.ran = line.split()[1], float(line.split()[2])
                    elif line.startswith("GATE-TOOLCHAIN "):
                        self.toolchain = line.split(" ", 1)[1]
                    print(prefix + line, flush=True)
                process.wait()
                if process.returncode != 0 and self.status == "PASS":
                    self.status = "FAIL"
            except (OSError, subprocess.SubprocessError) as failure:
                print(f"{prefix}gate: {failure}", flush=True)
                self.status = "FAIL"
        self.seconds = time.time() - started


def record(repository, commit, results, level):
    """Merge this run's lines into the commit's note and push it."""
    git("fetch", "-q", "origin", f"+{NOTES}:{NOTES}-origin", cwd=repository, check=False)
    if git("rev-parse", "-q", "--verify", f"{NOTES}-origin", cwd=repository, check=False, quiet=True):
        if git("rev-parse", "-q", "--verify", NOTES, cwd=repository, check=False, quiet=True):
            git("notes", "--ref=gate", "merge", "-q", "-s", "ours", f"{NOTES}-origin", cwd=repository, check=False)
        else:
            git("update-ref", NOTES, f"{NOTES}-origin", cwd=repository)
    lines = {}
    for line in git("notes", "--ref=gate", "show", commit, cwd=repository, check=False, quiet=True).splitlines():
        if line.split()[:1] and line.split()[0] in [host for host, _ in PLATFORMS.values()]:
            lines[line.split()[0]] = line
    now = datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    for result in results:
        host = PLATFORMS[result.platform][0]
        lines[host] = f"{host} {result.status} {level} {now} {result.ran:.0f}s {result.toolchain}".rstrip()
    text = "\n".join(lines[host] for host, _ in PLATFORMS.values() if host in lines)
    git("notes", "--ref=gate", "add", "-f", "-m", text, commit, cwd=repository)
    for _ in range(3):
        if subprocess.run(["git", "push", "-q", "origin", f"{NOTES}:{NOTES}"], cwd=repository,
                          capture_output=True).returncode == 0:
            print(f"gate: recorded on {commit[:12]} ({NOTES}, pushed)")
            return
        git("fetch", "-q", "origin", f"+{NOTES}:{NOTES}-origin", cwd=repository, check=False)
        git("notes", "--ref=gate", "merge", "-q", "-s", "ours", f"{NOTES}-origin", cwd=repository, check=False)
    print(f"gate: recorded on {commit[:12]} ({NOTES}); pushing it failed, the next gate retries")


def orchestrate(arguments):
    repository = Path(git("rev-parse", "--show-toplevel", cwd=arguments.repository or "."))
    name = git("remote", "get-url", "origin", cwd=repository).rstrip("/").removesuffix(".git").rsplit("/", 1)[-1]
    commit = git("rev-parse", f"{arguments.commit}^{{commit}}", cwd=repository)
    if git("status", "--porcelain", "--untracked-files=no", cwd=repository):
        print("gate: the working tree has uncommitted changes; the gate tests the commit only")
    text = git("show", f"{commit}:gate.toml", cwd=repository, check=False, quiet=True)
    if not text:
        raise SystemExit(f"gate: {name} has no gate.toml at {commit[:12]}")
    read_config(text)
    platforms = arguments.only.split(",") if arguments.only else list(PLATFORMS)
    for platform in platforms:
        if platform not in PLATFORMS:
            raise SystemExit(f"gate: unknown platform {platform}; one of {', '.join(PLATFORMS)}")
    pins = remote_toolchain()
    pushed = on_github(repository, commit)
    say(f"gate: {name} {commit[:12]}{'' if pushed else ' (not on GitHub: sent as a bundle)'}; "
        + " ".join(f"{key}={value[:12]}" for key, value in pins.items()))
    local = workspace()
    (local / "logs").mkdir(parents=True, exist_ok=True)
    (local / "bin").mkdir(parents=True, exist_ok=True)
    bundle = None
    if not pushed and any(PLATFORMS[platform][1] for platform in platforms):
        bundle = local / "bin" / f"{name}-{commit[:12]}.bundle"
        make_bundle(repository, commit, bundle)
    common = ["--name", name, "--commit", commit]
    for key, value in pins.items():
        common += ["--pin", f"{key}={value}"]
    common += ["--clean"] if arguments.clean else []
    common += ["--full"] if arguments.full else []
    if not arguments.no_dependents:
        for dependent in dependents(repository, name):
            common += ["--dependent", dependent]
    runs = []
    for platform in platforms:
        ssh = PLATFORMS[platform][1]
        log = local / "logs" / f"{name}-{commit[:12]}-{platform}.log"
        if ssh is None:
            command = [sys.executable, str(Path(__file__).resolve()), "--agent", platform,
                       "--source", str(repository), *common]
        else:
            python = "python" if platform == "windows" else "python3"
            extra = ["--bundle", f"bin/{bundle.name}"] if bundle else []
            command = ["ssh", ssh, python, f"{HOME}/bin/gate.py", "--agent", platform, *common, *extra]
        runs.append(Platform(platform, command, log, ssh, bundle if ssh else None))
    for run in runs:
        run.start()
    for run in runs:
        run.join()
    if bundle:
        bundle.unlink(missing_ok=True)
    failed = [run for run in runs if run.status not in ("PASS", "NONE")]
    print()
    for run in runs:
        print(f"gate: {run.platform:8} {run.status:5} {run.ran:6.0f}s ({run.seconds:.0f}s with waiting)  {run.log}")
    for run in runs:
        if run.status == "PASS" and run.ssh:
            fetch_artifacts(run.ssh, name, commit, local)
    if not arguments.no_record:
        record(repository, commit, runs, "full" if arguments.full else "default")
    return 1 if failed else 0


def fetch_artifacts(ssh, name, commit, local):
    """Bring a platform's release archives here, beside this machine's own."""
    target = local / "artifacts" / name / commit
    python = "python" if ssh == PLATFORMS["windows"][1] else "python3"
    listing = subprocess.run(["ssh", ssh, python, f"{HOME}/bin/gate.py", "--artifacts", "--name", name,
                              "--commit", commit], capture_output=True, text=True)
    files = [line.strip() for line in listing.stdout.splitlines() if line.strip()]
    if not files:
        return
    target.mkdir(parents=True, exist_ok=True)
    sources = [f"{ssh}:{HOME}/artifacts/{name}/{commit}/{file}" for file in files]
    subprocess.run(["scp", "-q", *sources, str(target)], check=True)
    print(f"gate: fetched {len(files)} release files from {ssh} into {target}")


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("repository", nargs="?")
    parser.add_argument("--commit", default="HEAD")
    parser.add_argument("--only")
    parser.add_argument("--full", action="store_true")
    parser.add_argument("--no-dependents", action="store_true")
    parser.add_argument("--clean", action="store_true")
    parser.add_argument("--no-record", action="store_true")
    # the agent's own arguments, which the orchestrator passes
    parser.add_argument("--agent", dest="platform", help=argparse.SUPPRESS)
    parser.add_argument("--name", help=argparse.SUPPRESS)
    parser.add_argument("--pin", action="append", default=[], help=argparse.SUPPRESS)
    parser.add_argument("--dependent", action="append", default=[], help=argparse.SUPPRESS)
    parser.add_argument("--artifacts", action="store_true", help=argparse.SUPPRESS)
    parser.add_argument("--bridge", help=argparse.SUPPRESS)
    parser.add_argument("--bundle", help=argparse.SUPPRESS)
    parser.add_argument("--source", help=argparse.SUPPRESS)
    arguments = parser.parse_args()
    if arguments.bridge:
        return bridge(arguments.bridge)
    if arguments.artifacts:
        # the orchestrator's question: which release files did a pass keep here
        kept = workspace() / "artifacts" / arguments.name / arguments.commit
        print("\n".join(sorted(path.name for path in kept.iterdir())) if kept.is_dir() else "")
        return
    if arguments.platform:
        sys.exit(Agent(arguments).run())
    sys.exit(orchestrate(arguments))


if __name__ == "__main__":
    main()
