#!/bin/sh
# The build cache (§19.7): a build misses, the same build hits and links the kept object, an
# edited source misses again, `--cache-dir none` never touches a cache, and every program
# runs the same. The cache lives under build/, never in the user's own.
set -eu
cd "$(dirname "$0")/../../.."
compiler=${1:-./build/luce-base}
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
printf '[package]\nname = "cache_default"\n' > "$work/luce.toml"
mkdir -p "$work/build"
env -u LUCE_CACHE "$compiler" build "$work/main.lucb" --native -o "$work/build/program" > /dev/null 2>&1
[ -d "$work/build/.cache" ] && [ "$(ls "$work/build/.cache" | wc -l | tr -d ' ')" -ge 1 ] || { echo "FAIL tests/programs/cache: the default cache is not the project build/.cache"; ls -la "$work/build" 2>/dev/null; exit 1; }
rm -rf "$work"
echo "ok tests/programs/cache: miss, hit, a C key of its own, an edit, no cache with none, and a project-local default"
