---
title: Enforceable Guarantees
tags:
- concept
- security
- architecture
- privacy
aliases:
- Enforceable Guarantee
sources:
- 'https://www.youtube.com/watch?v=ccswz5bjlo8'
summary: Security principle where restrictions are enforced by system architecture (no disk, no SSH, no access) rather than by human-readable policies ('don't SSH in').
provenance:
  extracted: 0.82
  inferred: 0.15
  ambiguous: 0.03
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Enforceable Guarantees

Enforceable guarantees are security restrictions that are **architecturally impossible to violate**, as opposed to being governed by human-readable policy or access control lists. The Principle is: "code-enforced, not policy-enforced." ^[extracted]

## Examples

In [[concepts/private-cloud-compute|Apple's PCC]]: ^[extracted]

- **No persistent storage** — The servers have no writable disk. Data cannot be saved because there is nowhere to save it.
- **No remote access** — SSH is not installed (no `sshd`). There is no way to remotely log into the machine.
- **No privileged runtime access** — Even with physical access, there is no way to bypass the running system's restrictions.

These are not administrative policies ("you shouldn't SSH into production") — they are architectural facts. The system literally cannot perform the restricted operation.

## Contrast with Policy-Based Security

Traditional security relies on access control policies, authentication, and audit logs. These have a fundamental weakness: they depend on human compliance and can be bypassed by someone with sufficient privilege. Enforceable guarantees eliminate the bypass entirely by removing the capability from the system. ^[inferred]

## Relationship to Trust

By making guarantees architecturally impossible to violate, PCC shifts the trust model. Users must still [[concepts/trust|trust]] that Apple correctly designed and built the architecture, but they do not need to trust that Apple's employees or SRE team will follow policies correctly. ^[inferred]

## Related

- [[concepts/private-cloud-compute|Private Cloud Compute]]
- [[concepts/stateless-computation|Stateless Computation]]
- [[concepts/trust|Trust]]
- [[concepts/remote-attestation|Remote Attestation]]
- [[concepts/non-targetability|Non-Targetability]]

## Sources

- <https://www.youtube.com/watch?v=CCsWZ5bJlO8>
