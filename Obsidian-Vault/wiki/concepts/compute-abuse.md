---
title: "Compute Abuse"
category: concepts
tags:
  - compute-abuse
  - crypto-mining
  - abuse
  - multi-tenant
  - security
  - free-compute
summary: The abuse of free or subsidized compute resources in multi-tenant SaaS platforms — most commonly crypto mining, but also DDoS, resource exhaustion, and other forms of compute theft.
sources:
  - "AIEF2025 - Building agent fleet architectures your CISO doesn't hate — Lou Bichard, Gitpod - https://www.youtube.com/watch?v=d9rsC6_VLoA"
provenance:
  extracted: 0.70
  inferred: 0.30
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: peripheral
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[concepts/agent-fleet-architecture|Agent Fleet Architecture]]
    type: motivates
  - target: [[concepts/multi-tenant-security|Multi-Tenant Security]]
    type: related_to
  - target: [[concepts/ciso-approval|CISO Approval]]
    type: complicates
---

# Compute Abuse

**Compute abuse** is the unauthorized or malicious use of compute resources in multi-tenant SaaS platforms. The most common form is crypto mining — using someone else's free compute to mine cryptocurrency — but it also encompasses DDoS attacks, resource exhaustion, and other forms of compute theft.

## Why It Happens

"Can't have nice things on the internet" — when a platform offers free compute (as most SaaS products do with free tiers), someone will always attempt to exploit it. This is an inherent risk of multi-tenant architectures where compute is shared and relatively easy to access.

## Impact on Architecture Decisions

Compute abuse is one of the factors that pushes platforms away from pure multi-tenant SaaS toward more controlled architectures. For regulated industries, it compounds other security concerns and makes CISO approval harder to obtain.
## Agent Code Abuse

In the agent context, compute abuse manifests differently: agents with code execution tools can be manipulated into continuous resource exhaustion — running code loops indefinitely, generating large outputs, or probing for unrestricted compute access. The system prompt's constraints (run once, suppress output) are policy directives, not security boundaries, and can be inverted by attackers. ^[extracted]

- [[concepts/agent-code-sandbox|Agent Code Sandbox Security]]

## Related Pages

- [[concepts/agent-fleet-architecture|Agent Fleet Architecture]]
- [[concepts/multi-tenant-security|Multi-Tenant Security]]
- [[concepts/ciso-approval|CISO Approval]]
