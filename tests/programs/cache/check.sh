#!/bin/sh
# The build cache (§19.7): a build misses, the same build hits and links the kept object, an
# edited source misses again, `--cache-dir none` never touches a cache, and every program
# runs the same. The cache lives under build/, never in the user's own.
set -eu
cd "$(dirname "$0")/../../.."
compiler=${1:-./build/luce-base}
case "$compiler" in /*) ;; *) compiler=$PWD/$compiler ;; esac
dir=tests/programs/cache
work=build/cache-check
rm -rf "$work"
mkdir -p "$work"
cp "$dir/case/main.lucb" "$work/main.lucb"
run() {
    "$compiler" build "$work/main.lucb" --cache-dir "$work/cache" --cache-report "$@" -o "$work/program" 2> "$work/report"
    [ "$("$work/program")" = "cached true" ] || { echo "FAIL tests/programs/cache: the program printed $("$work/program")"; exit 1; }
    cat "$work/report"
}
run --native > /dev/null
grep -q '^luce-base: cache miss ' "$work/report" || { echo "FAIL tests/programs/cache: the first native build did not miss"; cat "$work/report"; exit 1; }
run --native > /dev/null
grep -q '^luce-base: cache hit ' "$work/report" || { echo "FAIL tests/programs/cache: the second native build did not hit"; cat "$work/report"; exit 1; }
run --backend=c > /dev/null
grep -q '^luce-base: cache miss ' "$work/report" || { echo "FAIL tests/programs/cache: the C build shared the native key"; cat "$work/report"; exit 1; }
run --backend=c > /dev/null
grep -q '^luce-base: cache hit ' "$work/report" || { echo "FAIL tests/programs/cache: the second C build did not hit"; cat "$work/report"; exit 1; }
printf '\n# an edit\n' >> "$work/main.lucb"
run --native > /dev/null
grep -q '^luce-base: cache miss ' "$work/report" || { echo "FAIL tests/programs/cache: an edited source hit"; cat "$work/report"; exit 1; }
[ "$(ls "$work/cache" | wc -l | tr -d ' ')" = 3 ] || { echo "FAIL tests/programs/cache: expected three kept objects"; ls "$work/cache"; exit 1; }
"$compiler" build "$work/main.lucb" --native --cache-dir none --cache-report -o "$work/program" 2> "$work/report"
[ ! -s "$work/report" ] || { echo "FAIL tests/programs/cache: --cache-dir none reported"; cat "$work/report"; exit 1; }
[ "$("$work/program")" = "cached true" ]
# The default cache (no --cache-dir, no LUCE_CACHE) is the project's own build/.cache, beside
# the output; the gate exports LUCE_CACHE, so unset it here to exercise the true default.
printf '#prisma 4.0\ndef package "cache_default" {\n}\n' > "$work/package.prisma"
mkdir -p "$work/build"
env -u LUCE_CACHE "$compiler" build "$work/main.lucb" --native -o "$work/build/program" > /dev/null 2>&1
[ -d "$work/build/.cache" ] && [ "$(ls "$work/build/.cache" | wc -l | tr -d ' ')" -ge 1 ] || { echo "FAIL tests/programs/cache: the default cache is not the project build/.cache"; ls -la "$work/build" 2>/dev/null; exit 1; }
# The same project in another directory, built from inside it by a relative entry (as luce
# builds each program in a new workspace), has the same key: the object names its sources
# relative to the project. A debug build records the directory, so it keys by it.
for place in one "two levels/deeper"; do
    mkdir -p "$work/moved/$place"
    printf '#prisma 4.0\ndef package "cache_moved" {\n}\n' > "$work/moved/$place/package.prisma"
    cp "$dir/case/main.lucb" "$work/moved/$place/main.lucb"
done
moved() {
    (cd "$work/moved/$1" && "$compiler" build main.lucb --native --cache-dir "$OLDPWD/$work/moved-cache" --cache-report $2 -o program 2> report) || { echo "FAIL tests/programs/cache: a moved build failed"; exit 1; }
    [ "$("$work/moved/$1/program")" = "cached true" ] || { echo "FAIL tests/programs/cache: a moved program printed something else"; exit 1; }
    cat "$work/moved/$1/report"
}
moved one "" | grep -q '^luce-base: cache miss ' || { echo "FAIL tests/programs/cache: the first moved build did not miss"; exit 1; }
moved "two levels/deeper" "" | grep -q '^luce-base: cache hit ' || { echo "FAIL tests/programs/cache: the same project elsewhere did not hit"; exit 1; }
moved one --debug | grep -q '^luce-base: cache miss ' || { echo "FAIL tests/programs/cache: the first debug build did not miss"; exit 1; }
moved "two levels/deeper" --debug | grep -q '^luce-base: cache miss ' || { echo "FAIL tests/programs/cache: a debug build elsewhere reused a debug object naming another directory"; exit 1; }
rm -rf "$work"
echo "ok tests/programs/cache: miss, hit, a C key of its own, an edit, no cache with none, a project-local default, the same project elsewhere, and debug keyed by place"
