---
title: CNSSI 1253
category: concepts
tags: [security-standard, classified, government-ai, national-security, compliance, cryptography]
summary: "Committee on National Security Systems Instruction 1253 — U.S. cryptographic key management standard layered on FedRAMP and DoD SRG for classified AI systems."
sources:
  - "AIEF2025 - Applied AI and Agentic Science at a National Laboratory — Mark Machotton, Los Alamos National Laboratory - https://www.youtube.com/watch?v=cFxWPP1ik6A"
provenance: {extracted: 1.0, inferred: 0.0, ambiguous: 0.0}
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/ai-governance]]"
    type: component_of
  - target: "[[concepts/fedramp]]"
    type: layers_with
  - target: "[[concepts/controlled-classified-ai]]"
    type: applies_to
---

CNSSI 1253 (Committee on National Security Systems Instruction 1253) is a U.S. national security systems standard governing cryptographic key management and cryptographic system security. It is one of the layered standards under [[concepts/ai-governance|U.S. AI governance]] for classified systems, alongside [[concepts/fedramp|FedRAMP]] and the DoD Security Requirements Guide.

In the context of AI governance, CNSSI 1253 is one of multiple security standards that must be satisfied simultaneously for classified AI systems. The governance stack for classified systems typically includes:

1. **FedRAMP** (3 impact levels) — cloud security baseline
2. **DoD SRG** (2 additional impact levels) — DoD-specific requirements for PII, mission, operational, and finance data
3. **CNSSI 1253** — cryptographic key management for classified systems

This layered approach means that AI vendors serving classified government workloads must comply with all applicable standards simultaneously, not just the highest-impact level. This creates significant complexity for commercial AI companies seeking to serve national security customers.
