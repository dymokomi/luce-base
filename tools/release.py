#!/usr/bin/env python3
"""Cut a batch release from a workspace of checkouts side by side (docs/CI.md).

Usage: python3 ../luce-base/tools/release.py [--workspace DIR] [--dry-run]

  1. Every package on pkg.luciaos.com that has a checkout in the workspace is compared
     with its newest registry release: a package whose sources changed since that
     release's commit is to be released. Its checkout must be main, clean and pushed.
  2. Each one runs its own tests with the development toolchain (tools/toolchain.py):
     its ./test.sh when it has one, otherwise `luc test`. One failure stops the release
     before anything is published.
  3. Each version is bumped (patch, unless package.prisma already moved past the
     registry's), committed, pushed and published with `luc publish`, dependencies
     first, independent packages in parallel.
  4. Every application on the registry is resolved again: `luc lock` in a clone of its
     registry repository, with a scratch HOME, so nothing is installed.
  5. The toolchain: when luce-base, luce or luc changed since the last luce-VERSION tag,
     luce-base and luce get new versions (luce's installers too); tools/toolchain.py
     builds the release archive on this Mac and over SSH on `luce-linux` and
     `luce-windows`; the three become the GitHub release luce-VERSION; the installers are
     copied to luce.luciaos.com and both documentation sites are rebuilt and deployed,
     replacing only each site's own entries.

--dry-run prints the plan and changes nothing.
"""
import argparse
import concurrent.futures
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile
import urllib.error
import urllib.request

REGISTRY = "https://pkg.luciaos.com"
# the release archive's machines: (host, SSH alias, None for this one)
MACHINES = (("arm64-macos", None), ("x86_64-linux", "luce-linux"), ("x86_64-windows", "luce-windows"))
GIT_BASH = r"C:\scoop\apps\git\current\bin\bash.exe"
EDGE = ["ssh", "-i", os.path.expanduser("~/.ssh/lightsail-apps-edge.pem"), "-o", "BatchMode=yes",
        "ubuntu@35.153.110.211"]
SITES = {"luce": "/opt/apps/luce_docs", "luce-base": "/opt/apps/luce_base_docs"}
# what the toolchain release bundles: luce, with luce-base and luc beside it
TOOLCHAIN = ("luce-base", "luce", "luce-luc")
TOOLCHAIN_SCRIPT = Path(__file__).resolve().parent / "toolchain.py"


# mark: helpers


def git(directory, *arguments, check=True):
    result = subprocess.run(["git", *arguments], cwd=directory, capture_output=True, text=True)
    if check and result.returncode != 0:
        raise SystemExit(f"release: git {' '.join(arguments)} in {directory}: {result.stderr.strip()}")
    return result.stdout.strip()


def fetch(path):
    try:
        with urllib.request.urlopen(REGISTRY + path, timeout=30) as response:
            return response.read().decode()
    except urllib.error.HTTPError as error:
        if error.code == 404:
            return ""
        raise


def manifest(directory):
    """(name, version, kind, path dependencies) of a checkout's package.prisma."""
    text = (directory / "package.prisma").read_text()
    name = re.search(r'def package "([^"]+)"', text).group(1)
    version = re.search(r'str version = "([^"]+)"', text).group(1)
    kind = re.search(r'str kind = "([^"]+)"', text)
    paths = re.findall(r'str path = "\.\./([^"]+)"', text)
    return name, version, kind.group(1) if kind else "package", paths


def bump(version):
    major, minor, patch = (int(part) for part in version.split("."))
    return f"{major}.{minor}.{patch + 1}"


def bump_minor(version):
    major, minor, _ = (int(part) for part in version.split("."))
    return f"{major}.{minor + 1}.0"


def newer(a, b):
    return tuple(map(int, a.split("."))) > tuple(map(int, b.split(".")))


def run_tests(directory):
    """The package's own tests: its ./test.sh when it has one (most packages keep test
    programs under tests/ that only test.sh runs), otherwise `luc test`; a scratch LUC_HOME."""
    command = ["./test.sh"] if (directory / "test.sh").exists() else ["luc", "test"]
    with tempfile.TemporaryDirectory(prefix="luce-test-") as scratch:
        environment = dict(os.environ, LUC_HOME=str(Path(scratch) / ".luce"))
        result = subprocess.run(command, cwd=directory, env=environment, capture_output=True, text=True)
    if result.returncode != 0:
        print(f"release: {directory.name}: {' '.join(command)} failed")
        print(result.stdout[-3000:] + result.stderr[-3000:])
    return result.returncode == 0


# mark: the packages


class Package:
    def __init__(self, owner, directory):
        self.owner, self.directory = owner, directory
        self.name, self.version, self.kind, self.paths = manifest(directory)
        self.repository = directory.name
        listing = fetch(f"/{owner}/{self.name}/versions").split("\n")
        last = [line.split() for line in listing if line.strip()]
        self.released, self.released_commit = (last[-1][0], last[-1][2]) if last else (None, None)
        self.problems = []
        git(directory, "fetch", "-q", "origin")
        self.head = git(directory, "rev-parse", "HEAD")
        if git(directory, "rev-parse", "--abbrev-ref", "HEAD") != "main":
            self.problems.append("not on main")
        if git(directory, "status", "--porcelain", "--untracked-files=no"):
            self.problems.append("uncommitted changes")
        if self.head != git(directory, "rev-parse", "origin/main"):
            self.problems.append("main is not origin/main (pull or push first)")
        self.changed = self.released is None or self.has_changed()
        self.target = None
        if self.changed:
            self.target = self.version if self.released is None or newer(self.version, self.released) \
                else bump(self.released)

    def has_changed(self):
        known = subprocess.run(["git", "cat-file", "-e", f"{self.released_commit}^{{commit}}"],
                               cwd=self.directory, capture_output=True).returncode == 0
        if not known:
            return True
        # what users get: the sources and the manifest (tests, docs and tooling don't ship)
        return bool(git(self.directory, "diff", "--name-only", self.released_commit, "HEAD", "--", "src", "package.prisma"))

    def publish(self, dry_run):
        """Bump, commit, push and `luc publish`."""
        print(f"release: {self.name} {self.released} -> {self.target}")
        if dry_run:
            return
        path = self.directory / "package.prisma"
        text = path.read_text()
        path.write_text(re.sub(r'str version = "[^"]+"', f'str version = "{self.target}"', text, count=1))
        git(self.directory, "commit", "-q", "-m", f"{self.name} {self.target}: batch release", "package.prisma")
        push(self.directory)
        subprocess.run(["luc", "publish", "-m", f"{self.name} {self.target}: batch release"],
                       cwd=self.directory, check=True)


def push(directory):
    git(directory, "pull", "-q", "--ff-only", "origin", "main")
    git(directory, "push", "-q", "origin", "HEAD:main")


# a package whose GitHub repository is named differently
REPOSITORIES = {"luc": "luce-luc"}


def prepare_workspace(workspace, registered):
    """Every registered package checked out on main in the workspace, up to date."""
    workspace.mkdir(parents=True, exist_ok=True)
    def one(owner, name):
        directory = workspace / REPOSITORIES.get(name, name)
        if not (directory / ".git").exists():
            subprocess.run(["git", "clone", "-q", f"https://github.com/{owner}/{directory.name}.git", str(directory)],
                           check=True)
        else:
            git(directory, "checkout", "-q", "main")
            git(directory, "pull", "-q", "--ff-only", "origin", "main")
    with concurrent.futures.ThreadPoolExecutor(16) as pool:
        for future in [pool.submit(one, owner, name) for owner, name in registered]:
            future.result()


def registry_names(page):
    return sorted(set(re.findall(r'href="/([a-z0-9-]+)/([a-z0-9-]+)/"', fetch(page))))


def layers(packages):
    """The packages to release, dependencies first: each layer depends only on earlier ones."""
    by_repository = {package.repository: package for package in packages}
    remaining, done, result = set(by_repository), set(), []
    while remaining:
        layer = sorted(name for name in remaining
                       if all(dependency in done or dependency not in by_repository
                              for dependency in by_repository[name].paths))
        if not layer:
            raise SystemExit(f"release: a dependency cycle among {sorted(remaining)}")
        result.append([by_repository[name] for name in layer])
        done.update(layer)
        remaining.difference_update(layer)
    return result


def verify_applications(dry_run):
    """`luc lock` in a registry clone of every application, in a scratch HOME."""
    applications = registry_names("/applications/")
    print(f"release: resolving {len(applications)} applications: " + ", ".join(name for _, name in applications))
    if dry_run:
        return True
    failed = []
    with tempfile.TemporaryDirectory(prefix="luce-release-") as scratch:
        home = Path(scratch) / "home"
        home.mkdir()
        environment = dict(os.environ, HOME=str(home), LUC_HOME=str(home / ".luce"))
        for owner, name in applications:
            clone = Path(scratch) / name
            subprocess.run(["git", "clone", "-q", f"{REGISTRY}/git/{owner}/{name}", str(clone)], check=True)
            locked = subprocess.run(["luc", "lock"], cwd=clone, env=environment, capture_output=True, text=True)
            print(f"release: luc lock {owner}/{name}: {'ok' if locked.returncode == 0 else 'FAILED'}")
            if locked.returncode != 0:
                print(locked.stdout[-2000:] + locked.stderr[-2000:])
                failed.append(name)
    return not failed


# mark: the toolchain


def last_tag(directory, prefix):
    tags = [tag for tag in git(directory, "tag", "--list", f"{prefix}*").split() if re.fullmatch(rf"{prefix}\d+\.\d+\.\d+", tag)]
    return max(tags, key=lambda tag: tuple(map(int, tag[len(prefix):].split("."))), default=None)


def toolchain_plan(workspace, packages):
    """What changed among luce-base, luce and luc since the last luce release."""
    luce, base = workspace / "luce", workspace / "luce-base"
    plan = {}
    for directory, prefix in ((base, "luce-base-"), (luce, "luce-")):
        git(directory, "fetch", "-q", "--tags", "origin")
        tag = last_tag(directory, prefix)
        version = (directory / "VERSION").read_text().strip()
        changed = tag is None or bool(git(directory, "diff", "--name-only", tag, "HEAD"))
        plan[directory.name] = {"tag": tag, "version": version, "changed": changed}
    luc = next((package for package in packages if package.repository == "luce-luc"), None)
    plan["luce-luc"] = {"changed": bool(luc and luc.changed)}
    if plan["luce-base"]["changed"] or plan["luce-luc"]["changed"]:
        plan["luce"]["changed"] = True   # the archive bundles both
    for name in ("luce-base", "luce"):
        entry = plan[name]
        released = entry["tag"].split("-")[-1] if entry["tag"] else "0.0.0"
        entry["target"] = entry["version"] if newer(entry["version"], released) else bump_minor(released)
    return plan


def set_version(directory, version):
    """VERSION, its generated copy, the manifest, and luce's installers."""
    (directory / "VERSION").write_text(version + "\n")
    subprocess.run([sys.executable, "tools/embed_version.py"], cwd=directory, check=True, capture_output=True)
    path = directory / "package.prisma"
    path.write_text(re.sub(r'str version = "[^"]+"', f'str version = "{version}"', path.read_text(), count=1))
    for installer, pattern, spelling in (("tools/install.sh", r"^version=\S+$", f"version={version}"),
                                         ("tools/install.ps1", r"^\$version = '[^']+'$", f"$version = '{version}'")):
        path = directory / installer
        if directory.name == "luce" and path.exists():
            path.write_text(re.sub(pattern, spelling, path.read_text(), count=1, flags=re.M))
    git(directory, "commit", "-q", "-a", "-m", f"{directory.name} {version}: batch release")


def build_archives(version, out):
    """luce-VERSION-HOST.tar.gz (and .sha256) for every machine, built from main by
    tools/toolchain.py there and copied into out."""
    out.mkdir(parents=True, exist_ok=True)
    for host, alias in MACHINES:
        if alias is None:
            subprocess.run([sys.executable, str(TOOLCHAIN_SCRIPT), "--archive", str(out)], check=True)
            continue
        remote = "luce-release-out"
        setup = ("mkdir -p ~/.local/luce-dev/src && cd ~/.local/luce-dev/src && "
                 "{ [ -d luce-base ] || git clone -q https://github.com/dymokomi/luce-base.git; } && "
                 "git -C luce-base pull -q --ff-only && cd ~ && rm -rf " + remote + " && "
                 "python3 ~/.local/luce-dev/src/luce-base/tools/toolchain.py --archive ~/" + remote)
        if host == "x86_64-windows":
            command = ["ssh", alias, f"& '{GIT_BASH}' -lc \"{setup.replace('python3', 'python')}\""]
        else:
            command = ["ssh", alias, f"bash -lc '. ~/Dev/gate/gate-env.sh 2>/dev/null; {setup}'"]
        subprocess.run(command, check=True)
        subprocess.run(["scp", "-q", f"{alias}:{remote}/luce-{version}-{host}.tar.gz*", str(out)], check=True)
    archives = sorted(out.glob(f"luce-{version}-*.tar.gz"))
    expected = sorted(f"luce-{version}-{host}.tar.gz" for host, _ in MACHINES)
    if [path.name for path in archives] != expected:
        raise SystemExit(f"release: archives {[path.name for path in archives]}, expected {expected}")
    return sorted(out.glob(f"luce-{version}-*"))


def tag(directory, version):
    name = f"{directory.name}-{version}"
    git(directory, "tag", "-a", name, "-m", name)
    git(directory, "push", "-q", "origin", name)
    return name


def github_release(directory, version, files):
    """The luce release: one archive per machine, luce-base and luc bundled inside."""
    name = tag(directory, version)
    notes = f"luce {version} with its Base compiler and luc bundled: one archive per host, installed by https://luce.luciaos.com."
    subprocess.run(["gh", "release", "create", name, "--repo", f"dymokomi/{directory.name}", "--title", name,
                    "--notes", notes, *map(str, files)], check=True)


def deploy_installers(luce, version):
    root = SITES["luce"]
    subprocess.run(["scp", "-i", EDGE[2], "-o", "BatchMode=yes", str(luce / "tools/install.sh"),
                    str(luce / "tools/install.ps1"), f"{EDGE[-1]}:/tmp/"], check=True)
    subprocess.run([*EDGE, f"sudo mkdir -p {root}/install/{version} && "
                    f"sudo cp /tmp/install.sh /tmp/install.ps1 {root}/install/{version}/ && "
                    f"sudo cp /tmp/install.sh /tmp/install.ps1 {root}/ && rm /tmp/install.sh /tmp/install.ps1"],
                   check=True)


def deploy_site(directory):
    """tools/site.py's output replaces the same-named entries of the site's root only."""
    root = SITES[directory.name]
    with tempfile.TemporaryDirectory(prefix="luce-site-") as out:
        subprocess.run([sys.executable, "tools/site.py", out], cwd=directory, check=True, capture_output=True)
        entries = sorted(os.listdir(out))
        subprocess.run(["rsync", "-a", "--delete", "--rsync-path=sudo rsync", "-e", " ".join(EDGE[:-1]),
                        *[os.path.join(out, entry) for entry in entries], f"{EDGE[-1]}:{root}/"], check=True)
    print(f"release: deployed {directory.name}'s site ({', '.join(entries)}) to {root}")


# mark: the batch


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--workspace", type=Path, default=Path.home() / ".local" / "luce-dev" / "release")
    parser.add_argument("--dry-run", action="store_true")
    arguments = parser.parse_args()
    workspace = arguments.workspace.resolve()
    subprocess.run([sys.executable, str(TOOLCHAIN_SCRIPT)], check=True)
    registered = registry_names("/")
    # the compilers are not registry packages, but the toolchain release needs them
    prepare_workspace(workspace, registered + [("dymokomi", "luce-base"), ("dymokomi", "luce")])

    checkouts = {}
    for path in sorted(workspace.iterdir()):
        if (path / "package.prisma").exists() and (path / ".git").exists():
            checkouts[manifest(path)[0]] = path
    print(f"release: {len(registered)} packages on {REGISTRY}; checkouts in {workspace}")
    with concurrent.futures.ThreadPoolExecutor(16) as pool:
        futures = {name: pool.submit(Package, owner, checkouts[name]) for owner, name in registered if name in checkouts}
        packages = [future.result() for future in futures.values()]
    missing = [name for _, name in registered if name not in checkouts]
    if missing:
        print(f"release: no checkout, left as released: {', '.join(missing)}")

    changed = [package for package in packages if package.changed]
    blocked = [package for package in changed if package.problems]
    toolchain = toolchain_plan(workspace, packages)

    print("\nPackages to release, dependencies first:")
    for number, layer in enumerate(layers(changed), 1):
        for package in layer:
            state = "; ".join(package.problems) or "ready"
            print(f"  layer {number}: {package.name:28} {str(package.released):>9} -> {package.target:9} "
                  f"{package.head[:12]}  {state}")
    unchanged = len(packages) - len(changed)
    print(f"  ({unchanged} packages unchanged since their release)")
    print("\nToolchain:")
    for name in ("luce-base", "luce"):
        entry = toolchain[name]
        if entry["changed"]:
            print(f"  {name}: {entry['tag']} -> {name}-{entry['target']} (bump, tag"
                  f"{', archives on 3 machines, GitHub release, installers, site' if name == 'luce' else ', site'})")
        else:
            print(f"  {name}: unchanged since {entry['tag']}")
    if blocked:
        print("\nBlocked (fix the checkout first): " + ", ".join(package.name for package in blocked))

    if arguments.dry_run:
        print()
        verify_applications(True)
        print("\nrelease: dry run, nothing changed")
        return 0
    if blocked:
        return 1
    print("\nrelease: running each package's own tests")
    failed = [package.name for package in changed if not run_tests(package.directory)]
    if failed:
        print("release: tests failed, nothing published: " + ", ".join(failed))
        return 1

    for layer in layers(changed):
        with concurrent.futures.ThreadPoolExecutor(len(layer)) as pool:
            for future in [pool.submit(package.publish, False) for package in layer]:
                future.result()
    for name in ("luce-base", "luce"):
        entry = toolchain[name]
        if not entry["changed"]:
            continue
        directory = workspace / name
        if entry["version"] != entry["target"]:
            set_version(directory, entry["target"])
            push(directory)
        if name == "luce":
            files = build_archives(entry["target"], workspace / "luce" / "build" / "release-archives")
            github_release(directory, entry["target"], files)
            deploy_installers(directory, entry["target"])
        else:
            tag(directory, entry["target"])
        deploy_site(directory)
    return 0 if verify_applications(False) else 1


if __name__ == "__main__":
    sys.exit(main())
