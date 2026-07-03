---
title: "Non-Targetability"
tags:
  - concept
  - privacy
  - security
  - threat-model
aliases:
  - Non-targetability
sources:
  - "AIEF2025 - The Unofficial Guide to Apple's Private Cloud Compute - Jmo, CONFSEC - https://www.youtube.com/watch?v=CCsWZ5bJlO8"
summary: "Privacy property ensuring an attacker cannot single out a specific user's data — to find a target, they would need to compromise all data and sift through it."
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

# Non-Targetability

Non-targetability is a privacy property that prevents an attacker (including an internal one) from singling out a specific user's data. To find a particular target's information, an attacker would have to compromise every user's data and sift through it all. ^[extracted]

## Relation to Privacy vs Anonymity

Non-targetability is distinct from anonymity. Anonymity means no one knows who you are. Non-targetability means even if someone can access data, they cannot efficiently find *your* data within it. It raises the cost of targeting a specific individual to the point of being impractical. ^[inferred]

## Implementation in Apple's PCC

Apple achieves non-targetability through two mechanisms: ^[extracted]

1. **[[concepts/oblivious-http|Oblivious HTTP]]** — All requests are routed through Cloudflare, so Apple's infrastructure never sees the originating user's IP address. An internal attacker cannot determine which request belongs to which user.
2. **[[concepts/blind-signatures|Blind signatures]]** — Authentication is separated from identity. The user's credentials prove they are legitimate without revealing who they are.

Together, these make PCC requests untraceable at both the network layer and the auth layer.

## Related

- [[concepts/private-cloud-compute|Private Cloud Compute]]
- [[concepts/oblivious-http|Oblivious HTTP]]
- [[concepts/blind-signatures|Blind Signatures]]
- [[concepts/stateless-computation|Stateless Computation]]
- [[concepts/enforceable-guarantees|Enforceable Guarantees]]

## Sources

- <https://www.youtube.com/watch?v=CCsWZ5bJlO8>
