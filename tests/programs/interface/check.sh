#!/bin/sh
# The interface of a module is Base the checker reads, and it describes the same public
# surface as the module itself: `luce-base interface` round-trips through `describe`.
set -eu
cd "$(dirname "$0")/../../.."
compiler=${1:-./build/luce-base}
mkdir -p build/interface
"$compiler" interface tests/programs/interface/lib.lucb -o build/interface/lib.lucb
"$compiler" check build/interface/lib.lucb
"$compiler" describe tests/programs/interface/lib.lucb > build/interface/source.txt
"$compiler" describe build/interface/lib.lucb > build/interface/interface.txt
cmp build/interface/source.txt build/interface/interface.txt
# what the library defines is `linked`; what the caller compiles keeps its body
grep -q '^pub linked func double(n: i64) -> i64$' build/interface/lib.lucb
grep -q '^linked func helper(a: i64,$' build/interface/lib.lucb
grep -q '^pub linked var opened: i64$' build/interface/lib.lucb
grep -q '^pub let limit: i64 = 3$' build/interface/lib.lucb
grep -q '^pub linked let names: c.str\[2\] = \["one", "two"\]$' build/interface/lib.lucb
grep -q '^local linked var per_thread: u32$' build/interface/lib.lucb
grep -q '^    pub linked mutating func bump(by: i64) -> i64$' build/interface/lib.lucb
grep -q '^    linked static func zero() -> Counter$' build/interface/lib.lucb
grep -q '^inline func triple(n: i64) -> i64:$' build/interface/lib.lucb
grep -q '^    inline func peek() -> i64:$' build/interface/lib.lucb
grep -q '^pub func first\[T\](items: const T\[\]) -> T?:$' build/interface/lib.lucb
grep -q '^    pub func get() -> T:$' build/interface/lib.lucb
if grep -q '^test ' build/interface/lib.lucb; then echo "FAIL: a test reached the interface"; exit 1; fi
echo "ok interface: the module's interface checks and describes the same surface"
