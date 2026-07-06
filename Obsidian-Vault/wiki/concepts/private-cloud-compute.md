---
title: Private Cloud Compute
tags:
- concept
- privacy
- apple
- cloud-compute
- architecture
sources:
- 'https://www.youtube.com/watch?v=ccswz5bjlo8'
summary: Architectural pattern for delivering remote AI inference while preserving user privacy through stateless computation, enforceable guarantees, non-targetability, and verifiable transparency.
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Private Cloud Compute

Private Cloud Compute (PCC) is an architectural approach, pioneered by [[entities/apple|Apple]], for delivering remote computational services (particularly AI inference) while preserving the user's privacy. The core challenge is: how do you get remote compute without turning the user's data into a black box? ^[extracted]

## The Problem

AI inference requires more compute than a phone can provide, but sending data to a remote server inherently reduces privacy. PCC answers: "How do you get remote compute while remaining private — and also affordable?" ^[extracted]

## Five Key Requirements

[[concepts/stateless-computation|Stateless computation]] — data is only used for the immediate request and cannot be logged or reused. [[concepts/enforceable-guarantees|Enforceable guarantees]] — restrictions are enforced by architecture (no disk, no SSH), not policy. [[concepts/non-targetability|Non-targetability]] — attackers cannot single out a specific user's data. No privileged runtime access — no way to bypass restrictions in production. [[concepts/verifiable-transparency|Verifiable transparency]] — all of the above can be proven. ^[extracted]

## Six Technical Components

1. [[concepts/oblivious-http|Oblivious HTTP]] — anonymizes requests via a third-party relay (Cloudflare)
2. [[concepts/blind-signatures|Blind signatures]] — separates authentication from identity
3. [[concepts/remote-attestation|Remote attestation]] — server proves what code it's running before receiving data
4. [[concepts/verifiable-transparency|Transparency log]] — append-only, publicly auditable record of all deployed software
5. **Secure Enclave** — dedicated hardware for private key storage, analogous to [[concepts/confidential-gpu|TPMs]]
6. **Secure boot / hardened OS** — stripped-down, fully-signed OS variant (limited iOS)

## Market Adoption

Since Apple announced PCC at WWDC 2024 (released October 2024), [[entities/microsoft|Microsoft]] (Azure AI private inference, September 2024) and **Meta** (WhatsApp private processing, ~May 2025) have announced similar offerings with "essentially identical" architecture. ^[extracted]

## Related

- [[concepts/remote-attestation|Remote Attestation]]
- [[concepts/verifiable-transparency|Verifiable Transparency]]
- [[concepts/non-targetability|Non-Targetability]]
- [[concepts/stateless-computation|Stateless Computation]]
- [[concepts/enforceable-guarantees|Enforceable Guarantees]]
- [[concepts/confidential-gpu|Confidential GPU]]
- [[concepts/private-ai-inference|Private AI Inference]]
- [[references/aief2025-private-cloud-compute-jmo]] — source talk

## Sources

- <https://www.youtube.com/watch?v=CCsWZ5bJlO8>
