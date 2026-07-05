---
title: "Platform Friction Taxonomy"
category: concepts
tags: [developer-experience, platform-fragmentation, friction-points, api-design, documentation-quality, onboarding]
summary: "A taxonomy of common friction points that AI-generated projects encounter when deploying across multiple platforms — documentation staleness, API drift, rate limiting, and onboarding complexity."
sources:
  - "AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc"
provenance: { extracted: 0.85, inferred: 0.15, ambiguous: 0.0 }
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/local-vs-deploy-experience-gap|Local vs Deploy Experience Gap]]"
    type: extends
  - target: "[[concepts/developer-experience-critique|Developer Experience Critique]]"
    type: related_to
  - target: "[[concepts/probabilistic-software|Probabilistic Software]]"
    type: related_to
---

## Platform Friction Taxonomy

Platform friction taxonomy categorizes the common points of failure that AI-generated projects encounter when deploying across multiple cloud platforms. The Menugen case study by Andre Karpathy surfaced friction across Replicate, OpenAI, Vercel, and other major platforms, revealing patterns that extend beyond any single product.

### Friction Categories

**Documentation Staleness** — Platform documentation becomes outdated as APIs evolve. LLMs trained on stale documentation produce incorrect code. This is the most common friction point because documentation maintenance lags behind API development.

**API Drift** — The actual API behavior diverges from documented behavior. Even when docs are current, undocumented changes or deprecation timelines create confusion for automated tools.

**Rate Limiting** — New accounts or unexpected usage patterns trigger rate limits that are not clearly communicated in documentation. This creates a frustrating onboarding experience where the developer cannot verify their code works.

**Onboarding Complexity** — Getting a new legitimate paid account set up involves more friction than expected. Authentication flows, token management, and initial configuration create barriers that slow down the developer's ability to test and iterate.

**Platform Fragmentation** — Each platform has its own authentication model, API format, error handling, and deployment process. The cumulative friction of integrating with multiple platforms is greater than the sum of individual frictions.

### The AI-Surfaced Problem

Human developers work around platform friction through trial and error, community forums, and Stack Overflow. AI coding agents lack these fallback mechanisms — they rely on their training data, which includes documentation and code examples. When that data is stale or incomplete, the AI produces broken code, surfacing platform problems that might otherwise remain hidden.
