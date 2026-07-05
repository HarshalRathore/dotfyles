---
title: "Stateless Computation"
tags:
  - concept
  - architecture
  - privacy
  - security
sources:
  - "[[sources/watchv=ccswz5bjlo8]]"
summary: "Computation model where data is used only to satisfy the immediate request and cannot be logged, stored, or reused — enforced by eliminating persistent storage rather than by policy."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Stateless Computation

Stateless computation is the guarantee that when a server receives user data, it is used only to satisfy the immediate request and is impossible to use for any other purpose — including logging, analytics, model training, or reuse for subsequent requests. ^[extracted]

## Architectural Enforcement

The key insight of stateless computation as applied in [[concepts/private-cloud-compute|Apple's PCC]] is that it must be **architecturally enforced**, not policy-based. The simplest example: if you don't want the server to save data, don't give it a disk. ^[extracted]

This is an instance of the broader principle of [[concepts/enforceable-guarantees|enforceable guarantees]] — instead of saying "you shouldn't log this," the system is physically or architecturally incapable of logging it.

## Relationship to Other Privacy Properties

Stateless computation works in concert with other privacy mechanisms:
- [[concepts/non-targetability|Non-targetability]] ensures the server can't identify which user's data it's processing
- [[concepts/remote-attestation|Remote attestation]] lets the client verify the server is running stateless code
- No disk + no SSH + no privileged access ensures there is no way to persist data

## Related

- [[concepts/private-cloud-compute|Private Cloud Compute]]
- [[concepts/enforceable-guarantees|Enforceable Guarantees]]
- [[concepts/non-targetability|Non-Targetability]]
- [[concepts/remote-attestation|Remote Attestation]]
- [[concepts/verifiable-transparency|Verifiable Transparency]]

## Sources

- <https://www.youtube.com/watch?v=CCsWZ5bJlO8>
