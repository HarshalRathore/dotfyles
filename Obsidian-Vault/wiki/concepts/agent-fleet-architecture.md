---
title: Agent Fleet Architecture
category: concepts
tags:
- agent-fleet
- architecture
- ai-agents
- security
- enterprise
- ciso
summary: An architecture for deploying and operating AI agent fleets in regulated enterprise environments where CISO approval, data sovereignty, and security compliance are prerequisites — not optional feat...
sources:
- AIEF2025 - Building agent fleet architectures your CISO doesn't hate — Lou Bichard, Gitpod - https://www.youtube.com/watch?v=d9rsC6_VLoA
provenance:
  extracted: 0.7
  inferred: 0.3
  ambiguous: 0.0
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
- target:
  - - concepts/managed-substrate|Managed Substrate
  type: derived_from
- target:
  - - concepts/ciso-approval|CISO Approval
  type: requires
- target:
  - - concepts/secure-dev-environment|Secure Dev Environment
  type: uses
- target:
  - - concepts/self-hosted-overhead|Self-Hosted Overhead
  type: addresses
---

# Agent Fleet Architecture

An **agent fleet architecture** is a deployment model for running AI agent fleets in enterprise environments where security, compliance, and data sovereignty are non-negotiable. The term was popularized by [[entities/lou-bichard|Lou Bichard]] at Gitpod's AIEF2025 talk, framed as "agent fleet architectures your CISO doesn't hate."

## Core Requirements

Agent fleet architectures for regulated environments must satisfy:

1. **CISO approval** — The architecture must pass enterprise security review. This is the primary constraint, not a nice-to-have.
2. **Data sovereignty** — Source code, data, and integrations must live on customer infrastructure, not the vendor's.
3. **Low operational overhead** — Self-hosting alone creates day-2 costs that erode ROI for both vendor and customer.
4. **Reliability** — Agent fleets are mission-critical; downtime has real business impact.

## Architectural Evolution

Gitpod's journey illustrates the evolution of agent fleet architectures:

1. **Managed SaaS** (2019): Multi-tenant, internet-hosted. Easy to start but fails enterprise security requirements. Susceptible to abuse (crypto mining, compute theft).
2. **Self-hosted**: Customer-owned infrastructure. Solves data sovereignty but creates significant operational burden — day-2 costs, complex setup, weak vendor-customer relationship.
3. **Managed Substrate**: Customer-owned infrastructure + provider-managed service. Reduces overhead while ticking compliance boxes. Still built on Kubernetes with high fixed costs.
4. **First-principles platform**: Built from scratch without Kubernetes assumptions. Solves the secure + low-overhead problem. Now runs Gitpod's AI agent fleet.

## Key Insight

The title "your CISO doesn't hate" captures the central tension: agent architectures must be both powerful enough to deliver AI value and constrained enough to pass enterprise security review. The architecture itself — not just the AI models — is the differentiator for enterprise adoption.

## Related Pages

- [[concepts/managed-substrate|Managed Substrate]]
- [[concepts/ciso-approval|CISO Approval]]
- [[concepts/secure-dev-environment|Secure Dev Environment]]
- [[concepts/self-hosted-overhead|Self-Hosted Overhead]]
- [[entities/gitpod|Gitpod]]
