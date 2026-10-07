#!/bin/sh
# One conformance case, in a directory of its own so cases run at once (run.sh):
# `case.sh expect|trap|error FILE`. Its output is kept and printed whole: a header line
# when it passes, everything when it fails (status 1).
set -eu
cd "$(dirname "$0")/../.."
kind=$1
f=$2
host=$(tools/host.sh)
seed=../luce-seed/build/lucb
work=$(mktemp -d build/cases/case.XXXXXX)
log=$work/log
run() { python3 tools/run_case.py -- "$@"; }
reject() { python3 tools/run_case.py --expected 1 -- "$@"; }
fail() { echo "$*" >> "$log"; cat "$log"; rm -rf "$work"; exit 1; }
# the program built and run under each backend must print the expectation
positive() {
    [ -e "${f%.expect}.$host.expect" ] && f="${f%.expect}.$host.expect"
    src="${f%%.*}.lucb"
    # a package of several modules: `NAME/main.lucb` beside `NAME.expect`
    [ -e "$src" ] || src="${f%%.*}/main.lucb"
    echo "== $src"
    # the C the host compiler optimises must mean the same as the C it does not (§12.6)
    for flags in "--backend=c" "--backend=c --release" "--native --opt 0" "--native --opt 1" "--native --opt 2" "--native --opt 3"; do
        echo "   $flags"
        run ./build/luce-base build "$src" $flags -o "$work/program" || return 1
        run "$work/program" > "$work/out" || return 1
        cmp "$work/out" "$f" || return 1
    done
    if ! grep -q '^# oracle: none' "$src"; then
        run "$seed" eval "$src" > "$work/out" || return 1
        cmp "$work/out" "$f" || return 1
    fi
    # `# tests: true`: the program's `test` declarations run under both backends and pass;
    # beside a `NAME.tests`, its package's tests (`--package`) print that report, and the
    # status is 1 when it counts a failure
    if grep -q '^# tests: true' "$src"; then
        report="${f%%.*}.tests"
        if [ -e "$report" ]; then
            if grep -q ' failed$' "$report"; then status=1; else status=0; fi
            for backend in --backend=c --native; do
                python3 tools/run_case.py --expected "$status" -- ./build/luce-base test "$src" --package $backend > "$work/out" && rc=0 || rc=$?
                [ "$rc" -eq "$status" ] || { echo "FAIL $src ($backend): status $rc, expected $status"; return 1; }
                cmp "$work/out" "$report" || return 1
            done
        else
            run ./build/luce-base test "$src" --backend=c > "$work/out" || return 1
            run ./build/luce-base test "$src" --native > "$work/out" || return 1
        fi
    fi
}
# a program beside a `.trap` file must stop with a trap naming that text, in every execution
trapping() {
    src="${f%.trap}.lucb"
    [ -e "$src" ] || src="${f%.trap}/main.lucb"
    want=$(cat "$f")
    echo "== $src (traps)"
    for flags in "--backend=c" "--backend=c --release" "--opt 0" "--opt 1" "--opt 2" "--opt 3"; do
        run ./build/luce-base build "$src" $flags -o "$work/program" || return 1
        if reject "$work/program" > "$work/out" 2> "$work/err"; then
            echo "FAIL $src: expected a trap, the program finished"; return 1
        else
            rc=$?
            [ "$rc" -eq 1 ] || { echo "FAIL $src: unexpected status $rc"; return 1; }
        fi
        grep -q "$want" "$work/err" || { echo "FAIL $src: expected [$want], got [$(cat "$work/err")]"; return 1; }
    done
    if ! grep -q '^# oracle: none' "$src"; then
        if reject "$seed" eval "$src" > "$work/out" 2> "$work/err"; then
            echo "FAIL $src: expected a trap, the seed finished"; return 1
        else
            rc=$?
            [ "$rc" -eq 1 ] || { echo "FAIL $src: unexpected status $rc"; return 1; }
        fi
        grep -q "$want" "$work/err" || { echo "FAIL $src: the seed said [$(cat "$work/err")]"; return 1; }
    fi
}
# a program under `errors/` is rejected with the diagnostic its `# error:` line names
rejected() {
    want=$(LC_ALL=C sed -n 's/^# error: //p' "$f")
    echo "== $f (rejected)"
    # a rejection is a normal exit of 1 with a diagnostic: a crash (a signal's exit, 128 or
    # more) or an acceptance is a failure whatever the text says
    got=$(reject ./build/luce-base check "$f" 2>&1) && rc=0 || rc=$?
    [ "$rc" -ne 0 ] || { echo "FAIL $f: this compiler accepts it"; return 1; }
    [ "$rc" -eq 1 ] || { echo "FAIL $f: the checker stopped with status $rc: [$got]"; return 1; }
    # an empty `# error:` asks only for a rejection; a fragment must appear in the message
    [ -n "$got" ] || { echo "FAIL $f: rejected without a diagnostic"; return 1; }
    # every diagnostic names its place: `file:line:column: message`
    case "$got" in
        *.lucb:[0-9]*:[0-9]*:\ *) ;;
        *) echo "FAIL $f: a diagnostic without a position: [$got]"; return 1;;
    esac
    case "$got" in
        *"$want"*) ;;
        *) echo "FAIL $f: expected [$want], got [$got]"; return 1;;
    esac
    if ! grep -q '^# oracle: none' "$f"; then
        reject "$seed" check "$f" > /dev/null 2>&1 && seed_rc=0 || seed_rc=$?
        [ "$seed_rc" -ne 0 ] || { echo "FAIL $f: the seed accepts what this compiler rejects"; return 1; }
        [ "$seed_rc" -eq 1 ] || { echo "FAIL $f: the seed's checker stopped with status $seed_rc"; return 1; }
    fi
}
case "$kind" in
    expect) positive > "$log" 2>&1 || fail "FAIL $f";;
    trap) trapping > "$log" 2>&1 || fail "FAIL $f";;
    error) rejected > "$log" 2>&1 || fail "FAIL $f";;
    *) echo "case.sh: unknown kind $kind"; exit 2;;
esac
head -1 "$log"
rm -rf "$work"
