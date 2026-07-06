---
title: The Unofficial Guide to Apple's Private Cloud Compute — Jmo, CONFSEC
tags:
- reference
- talk
- aief2025
- privacy
- apple
- cloud-compute
- security
aliases:
- AIEF2025 PCC Jmo
- Jmo PCC Apple 2025
sources:
- 'https://www.youtube.com/watch?v=ccswz5bjlo8'
summary: Jmo (Confidence Security) presents an unofficial deep-dive into Apple's Private Cloud Compute (PCC) architecture — the five key privacy requirements, six technical components that implement them, a...
provenance:
  extracted: 0.82
  inferred: 0.15
  ambiguous: 0.03
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: references
---

# The Unofficial Guide to Apple's Private Cloud Compute — Jmo, CONFSEC

> Jmo (PhD in data science/bioinformatics, founder at [[entities/confidence-security|Confidence Security]], South Park Commons) provides an independent analysis of [[concepts/private-cloud-compute|Apple's Private Cloud Compute]] (PCC) architecture — how Apple solves the problem of delivering remote AI compute while preserving user privacy. The talk covers Apple's five design requirements, the six technical components that realize them, and extracts transferable lessons for building private AI infrastructure anywhere. ^[extracted]

## Context

Apple's [[concepts/private-cloud-compute|Private Cloud Compute]] (PCC) was announced at WWDC 2024 and released in October 2024. The system enables Apple Intelligence features to offload computation from the iPhone to Apple's cloud servers while maintaining privacy guarantees that Apple considers essential to its brand. ^[extracted] The talk was given at AI Engineer World's Fair 2025 (AIEF2025) on the CONFSEC track.

## The Core Problem

AI model inference requires more compute than a phone can provide, but Apple's brand depends on privacy. Sending data to a remote server creates a black box — the iPhone has no visibility into what happens to its data after it leaves the device. PCC aims to make the remote server "not a black box" so the iPhone retains control over its data even when processed remotely. ^[extracted]

## Five Key Requirements

1. **[[concepts/stateless-computation|Stateless computation]]** — Data is only used to satisfy the immediate request. It is impossible to log, store, or reuse it for any other purpose. ^[extracted]
2. **[[concepts/enforceable-guarantees|Enforceable guarantees]]** — Security is enforced by the system architecture (no SSH, no disk), not by policies saying "you shouldn't SSH in." ^[extracted]
3. **[[concepts/non-targetability|Non-targetability]]** — An attacker cannot single out a specific user's data. To find a target, they'd have to target everyone and sift through all the data. ^[extracted]
4. **No privileged runtime access** — No way to bypass restrictions in production. ^[extracted]
5. **[[concepts/verifiable-transparency|Verifiable transparency]]** — Apple can prove that all of the above guarantees are actually in effect. ^[extracted]

## Six Technical Components

Jmo identifies six components Apple uses to meet these requirements:

1. **[[concepts/oblivious-http|Oblivious HTTP]] (OHTTP)** — An anonymization layer developed with [[entities/cloudflare|Cloudflare]]. All PCC requests first pass through Cloudflare, so Apple only sees requests came from Cloudflare, not from individual user IPs. ^[extracted]
2. **[[concepts/blind-signatures|Blind signatures]]** — An anonymous authentication mechanism (arcade token analogy: put money in the coin machine, get anonymous coins to spend at any machine without linking back to identity). ^[extracted]
3. **[[concepts/remote-attestation|Remote attestation]]** — The iPhone queries the server for signed claims about what software it's running. If the iPhone trusts those claims, it encrypts data to a public key tied to those specific claims — the server can only decrypt as long as it's still running the exact attested software. ^[extracted]
4. **[[concepts/verifiable-transparency|Transparency log]]** — An append-only, Merkle-tree-based database recording every software release deployed on PCC nodes. Reviewers can verify binaries offline, and attestations can be cross-checked against the log. An attestation not on the log indicates a compromise. ^[extracted]
5. **Secure Enclave** — Dedicated hardware (like [[concepts/confidential-gpu|TPMs]] on non-Apple hardware) where private keys are kept and can never be extracted. Prevents impersonation of legitimate AI engines. ^[extracted]
6. **Secure boot and hardened OS** — A very limited variant of iOS where everything must be signed. Makes the system extremely difficult to hack or modify. ^[extracted]

## How It All Works Together

> Remote attestation → iPhone trusts the claims → encrypts data to the attested code → server can decrypt only while still running that code. The transparency log provides an offline audit trail to verify that attestation claims match what Apple actually deployed. ^[extracted]

## Gaps & Trade-offs

- **Still requires trust in Apple** — Apple runs the full supply chain, re-signs nodes with Data Center Identity Keys (DCIKs), but there is no guarantee Apple doesn't share certs or generate them insecurely. ^[extracted]
- **Apple device only** — Only available on Apple devices for consumer use, through official apps. ^[extracted]
- **Latency constraints** — Limited by distance to Apple data centers; local models are tried first. ^[extracted]
- **Higher compute costs** — Six layers of encryption before data reaches the compute node. ^[extracted]
- **No custom models or fine-tuning** — PCC cannot run custom model code. ^[extracted]
- **Complex client orchestration** — The iPhone must manage attestation, transparency log checks, auth, etc. ^[extracted]
- **No logging or usage tracking** — By design, but complicates operations and cost attribution. ^[extracted]
- **Not open to third-party developers** — PCC is not available as a platform for third-party use. ^[extracted]

## Lessons for Non-Apple Developers

Jmo maps Apple's six components to equivalents available in the broader ecosystem:

| Apple Component | Non-Apple Equivalent |
|---|---|
| Oblivious HTTP | Libraries exist for OHTTP |
| Blind signatures | Libraries exist for blind signatures |
| Secure Enclave | TPMs (Intel/AMD) and vTPMs (cloud) |
| Secure boot / hardened OS | Secure boot available, OS hardening |
| Remote attestation | Somewhat available via TPMs, no great standards yet |
| Transparency log | Sigsum, Sigstore (open source) |
| Confidential compute (PCC nodes) | Confidential VMs with confidential GPUs (H100/H200 memory encryption) |
| _(Apple lacks)_ | Open source + reproducible builds — can link source code to binaries for community verification |

## Companies Mentioned

- [[entities/apple|Apple]] — PCC system owner
- [[entities/cloudflare|Cloudflare]] — OHTTP co-developer and anonymizer operator
- [[entities/microsoft|Microsoft]] — Azure AI private inference (since September 2024, still in preview)
- **Meta** — Added private processing (~1 month before the talk), described by Jmo as architecturally "essentially identical" to PCC
- [[entities/confidence-security|Confidence Security]] — Jmo's company, building the same approach for non-Apple platforms

## Related

- [[entities/jmo|Jmo]] — speaker
- [[concepts/private-cloud-compute|Private Cloud Compute]] — the core concept
- [[concepts/remote-attestation|Remote Attestation]] — verification protocol
- [[concepts/verifiable-transparency|Verifiable Transparency]] — audit mechanism
- [[concepts/oblivious-http|Oblivious HTTP]] — anonymization protocol
- [[concepts/blind-signatures|Blind Signatures]] — anonymous auth
- [[concepts/non-targetability|Non-Targetability]] — privacy property
- [[concepts/stateless-computation|Stateless Computation]] — architectural principle
- [[concepts/enforceable-guarantees|Enforceable Guarantees]] — security approach
- [[concepts/confidential-gpu|Confidential GPU]] — hardware trust
- [[concepts/private-ai-inference|Private AI Inference]] — broader paradigm

## Sources

- <https://www.youtube.com/watch?v=CCsWZ5bJlO8>
