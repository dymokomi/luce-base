# Ecosystem roadmap

The standard-library stage is complete. At the user's request on 2026-09-10,
`luce-server` now proceeds before TLS completion. `luce-tls` is paused at its
committed identity/dependency checkpoint. Its post-quantum profile remains required
for later Luce communication and package-client traffic.

Current stage: **standard `net` protocol primitives**, HTTP/1.1 and WebSocket in
luce-base. At the user's request, stop after this standard-library stage; do not
resume `luce-server` automatically. The server will be an entirely Base library
built on `net`; the separate `luce-http-server` example will be written in Luce to
exercise interoperability. [Protocol primitives](NET_PROTOCOLS.md) describes the
API and tests. TLS remains paused.

Stage 1 closed for Base 0.12.0 on 2026-09-10; [standard-library readiness](STDLIB.md)
records the Base and downstream Luce gates on both native hosts.

## Repository boundaries

| Stage | Repository | Scope |
| --- | --- | --- |
| 1 | Existing `luce-base` | Standard-library hardening and completion |
| 2 | New `luce-tls` | TLS package, including the required post-quantum Luce profile |
| 3 | New `luce-server` | Universal server library written entirely in luce-base |
| 4 | New `luce-pkg` | Package manager and registry service |

The three packages are three separate new repositories, created as their stages
begin; they are not subdirectories of either compiler repository. `luce-tls` is
public on GitHub. Compiler integration for installation remains in the existing
`luce` and `luce-base` repositories, consuming the package tooling from `luce-pkg`.

## 1. Base standard library

Make `math`, `net`, `io`, `files` and `strings` a dependable, documented systems
library before building TLS. [STDLIB.md](STDLIB.md) defines the work and exit gate.
Native ARM64 macOS and x86-64 Linux are the execution targets; all native
optimization levels matter. C comparisons are supplemental.

## 2. luce-tls

Create a public GitHub package after the standard-library gate closes. Preserve TLS
1.3 handshake, transcript and record semantics, with separate policy/identity layers
for enrolled Luce peers and Internet interoperability.

The post-quantum Luce profile is required infrastructure for Luce client/server
applications and for package-manager clients talking to the package server. It is
not an optional Internet compatibility feature. These clients use the strict profile
whether their network is private or public.

The proposed `Luce/1` profile is fixed:

| Choice | Requirement |
| --- | --- |
| Protocol | TLS 1.3 |
| Key establishment | X25519MLKEM768, required |
| Cipher suite | TLS_AES_256_GCM_SHA384 |
| Authentication | Mutual; explicitly provisioned trusted public keys |
| Signature | ML-DSA-65, with a pinned TLS integration specification |
| Early data | Disabled |
| Resumption | Omitted initially |
| Fallback | No automatic weaker retry |

Research checked on 2026-09-10: [RFC 10024](https://datatracker.ietf.org/doc/rfc10024/)
defines the hybrid group. [ML-DSA in TLS revision 05](https://datatracker.ietf.org/doc/draft-ietf-tls-mldsa/05/)
is still an Internet-Draft. Recheck its status when implementation begins; record
the precise specification/code points and migration policy before freezing a release.

[RFC 9846](https://www.rfc-editor.org/info/rfc9846/) is the TLS 1.3 baseline.
Its interoperability requirements distinguish implementation support from the suites
a profile enables. Document the restricted profile without claiming that its one
enabled suite supplies every general-purpose TLS interoperability requirement.

Use [raw public keys](https://www.rfc-editor.org/info/rfc7250/) for enrolled peers.
Specify exact key encoding, peer identity and intended service/role binding, trust
provisioning, authorization hooks, rotation and revocation. Resolve the raw-key
identity-misbinding considerations in RFC 9846 section F.9 before finalizing the
handshake profile. A matching address or the implementation language is not identity.

Separate these components:

- Cryptographic primitives and platform acceleration.
- TLS handshake, transcript, records, key updates and closure.
- Fixed Luce policy and provisioned identity handling.
- Internet certificates, hostname verification and interoperability policy.

The Luce profile must link without public-CA validation machinery. Internet policy
must never relax Luce policy. Keep negotiation fields and authenticated version
selection; a future `Luce/2` needs explicit minimum-version policy.

At the start of this stage, decide implementation language boundaries and whether
cryptographic primitives come from a maintained dependency or a new implementation.
A Base core with a Luce API is one option for serving both language ecosystems;
this is not yet a settled implementation decision. Specify OS entropy, key lifetime,
constant-time requirements and portable/accelerated equivalence before coding primitives.

Exit: published package, pinned dependencies/specifications, primitive test vectors,
independent handshake/record interoperability evidence where available, deterministic
state-machine tests, fragmented/truncated input, invalid authentication rejection,
record limits/key updates, deadline and allocation failures, plus native execution on
both hosts. Independent protocol/cryptographic review is a release requirement for
using a new implementation to protect deployed traffic.

## 3. luce-server

Build an entirely luce-base universal server library on the completed standard
`net` socket, HTTP and WebSocket primitives. The separate `luce-http-server` Luce
example will exercise the library boundary. TLS integration
follows completion of the paused TLS package. Target a
FastAPI-like programming model: routing, typed request parsing/validation, structured
responses, middleware, application lifecycle and useful errors. Include static files,
streamed uploads/downloads, limits, timeouts, backpressure, cancellation, graceful
shutdown, logging and deployment configuration.

Use the standard `net` HTTP/1.1 and WebSocket codecs with a server-owned streaming
API and raw TCP support. Add further features with their own contracts and tests. Serve pages, assets and
explicitly registered application handlers. Serving source files must not implicitly
execute uploaded code. Define path containment, request framing, ranges and conditional
responses as ordinary server correctness requirements.

Browser-facing HTTPS uses the Internet TLS module. Luce client/server traffic uses
the strict post-quantum Luce profile; ordinary browsers cannot be required to enroll a Luce
identity. Development can use pinned source checkouts until stage 4 supplies installation.

Exit: package and deployable example written in Luce, independent HTTP client tests,
streaming and disconnect tests, concurrent load with bounded resource use, graceful
restart/shutdown and end-to-end HTTPS/static/API serving on both hosts.

## 4. luce-pkg and pkg.luciaos.com

Build the package service with `luce-server` and `luce-tls`, hosting packages for both
Base and Luce. Add `luce install` and `luce-base install`, which update `luce.yaml`.

Package-client traffic to the registry requires the strict post-quantum `Luce/1`
profile, including mutual authentication. Specify how a fresh installer obtains an
authenticated registry public key and enrolls/provisions its own client identity,
then how both identities rotate and are revoked. Public package-read authorization
can be broad without disabling mutual authentication; publishing needs separate
authorization. Provide a browser-compatible website separately if wanted. Neither
an enrollment problem nor a failed connection triggers fallback to Internet TLS.

The current compilers use `luce.toml`. Design a versioned `luce.yaml` schema and an
explicit migration covering package identity, error-code identity, dependencies,
targets and native/link inputs. Specify behavior when both files exist; never silently
read one while installation writes the other. Preserve existing build behavior during
migration and test it in both compilers.

Include dependency resolution, a reproducible lockfile, content digests, publisher
identity and artifact verification, immutable releases, yanking policy, caching,
offline operation, local/path dependencies and atomic installation/update. Define
Luce-to-Base compatibility and native target/toolchain requirements. TLS protects
transport; artifact identity must remain verifiable in caches and mirrors.

Avoid the bootstrap cycle: initially build these packages using pinned source
checkouts. Produce the first installer using that path, then prove it can install
and rebuild the ecosystem from a clean machine. Publishing/deployment comes after
staging, backup/restore and upgrade tests, then configure `pkg.luciaos.com`.

Exit: clean-machine installation for both languages, reproducible/offline rebuilds,
dependency conflict diagnostics, interrupted-install recovery, publisher/release
workflow and a working deployed registry.
