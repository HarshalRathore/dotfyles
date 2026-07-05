---
title: "Gitpod"
category: entities
tags:
  - company
  - platform
  - secure-dev-environment
  - kubernetes
  - ai-agents
  - regulated-industries
summary: Gitpod is a platform for secure developer environments. Developers work ~37 hours/week inside Gitpod. Serves banks, pharmaceutical, and healthcare companies. Now runs AI agent fleet architecture on its evolved platform.
sources:
  - "AIEF2025 - Building agent fleet architectures your CISO doesn't hate — Lou Bichard, Gitpod - https://www.youtube.com/watch?v=d9rsC6_VLoA"
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[concepts/secure-dev-environment|Secure Dev Environment]]
    type: provides
  - target: [[concepts/agent-fleet-architecture|Agent Fleet Architecture]]
    type: runs
  - target: [[entities/lou-bichard|Lou Bichard]]
    type: employs
---

# Gitpod

Gitpod is a platform for **secure developer environments**. Developers work approximately 37 hours per week inside Gitpod — it functions as a replacement for a local machine or laptop.

## Key Characteristics

- **Highly mission-critical**: Gitpod downtime has huge impact on customers.
- **Regulated industry focus**: Serves banks, pharmaceutical companies, healthcare organizations — many household names with strict data sovereignty requirements.
- **Agent offering**: Launched publicly two days before the AIEF2025 talk; been building with design customers for months prior.
- **Architectural evolution**: Moved through multiple iterations (managed SaaS → self-hosted → managed substrate → first-principles) to serve regulated customers.

## Architecture Journey

1. **Managed multi-tenant SaaS** on GCP/Kubernetes — easy to start but insufficient for enterprise security requirements.
2. **Self-hosted** — gave customers control but created significant day-2 operational overhead.
3. **Managed substrate** — Gitpod manages the service while customer-owned infrastructure holds data.
4. **First-principles platform** — moved away from Kubernetes to solve the secure + low-overhead problem from scratch.

This same architecture now powers Gitpod's AI agent fleet.

## Related Pages

- [[entities/lou-bichard|Lou Bichard]] — Field TTO at Gitpod
- [[concepts/secure-dev-environment|Secure Dev Environment]]
- [[concepts/agent-fleet-architecture|Agent Fleet Architecture]]
- [[concepts/managed-substrate|Managed Substrate]]
