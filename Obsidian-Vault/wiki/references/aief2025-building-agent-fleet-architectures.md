---
title: "AIEF2025 — Building agent fleet architectures your CISO doesn't hate"
category: references
tags:
  - aief2025
  - agent-fleet
  - architecture
  - security
  - ciso
  - gitpod
  - managed-substrate
summary: Lou Bichard's talk at AI Engineer World's Fair 2025 on Gitpod's architectural evolution from multi-tenant SaaS to managed substrate to a first-principles platform for secure dev environments and AI agent fleets.
sources:
  - "AIEF2025 - Building agent fleet architectures your CISO doesn't hate — Lou Bichard, Gitpod - https://www.youtube.com/watch?v=d9rsC6_VLoA"
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.00
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[entities/lou-bichard|Lou Bichard]]
    type: discussed_by
  - target: [[entities/gitpod|Gitpod]]
    type: about
  - target: [[concepts/agent-fleet-architecture|Agent Fleet Architecture]]
    type: discusses
  - target: [[concepts/managed-substrate|Managed Substrate]]
    type: discusses
  - target: [[concepts/ciso-approval|CISO Approval]]
    type: discusses
---

# AIEF2025 — Building agent fleet architectures your CISO doesn't hate

**Speaker:** Lou Bichard, Field TTO at Gitpod
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=d9rsC6_VLoA

## Summary

Lou Bichard presents Gitpod's architectural journey from a managed multi-tenant SaaS product to a first-principles platform designed for secure, regulated environments — and how that same architecture now powers their AI agent fleet. The talk traces four architectural iterations: (1) fully managed multi-tenant SaaS on GCP/Kubernetes, (2) self-hosted customer infrastructure, (3) managed substrate (customer-owned infra + provider-managed service), and (4) a new first-principles architecture that moves away from Kubernetes.

## Key Themes

- **Regulated industry requirements** drive architecture decisions: banks, pharmaceuticals, healthcare demand data sovereignty and CISO approval.
- **Kubernetes is a poor fit** for Gitpod's specific workload — high fixed cost, complexity, and operational burden.
- **Self-hosting creates day-2 overhead** that erodes ROI for both vendor and customer.
- **Managed substrate** solves some problems but still carries Kubernetes complexity.
- **First-principles design** starting from customer constraints rather than cloud-native conventions.

## Related Pages

- [[concepts/agent-fleet-architecture|Agent Fleet Architecture]]
- [[concepts/managed-substrate|Managed Substrate]]
- [[concepts/self-hosted-overhead|Self-Hosted Overhead]]
- [[concepts/secure-dev-environment|Secure Dev Environment]]
- [[entities/lou-bichard|Lou Bichard]]
- [[entities/gitpod|Gitpod]]
