---
title: LaunchDarkly
category: entities
tags:
- feature-flags
- infrastructure
- experimentation
- lean-startup
- tool-augmentation
aliases:
- ld
sources:
- AIEF2025 - The New Lean Startup — Sid Bendre, Olive - https://www.youtube.com/watch?v=pQz-PgA1eJw
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05 00:00:00+00:00
updated: 2026-07-05 00:00:00+00:00
relationships:
- target: '[[concepts/super-tools]]'
  type: uses
- target: '[[concepts/feature-flag-infra]]'
  type: related_to
- target: '[[entities/olive]]'
  type: related_to
summary: LaunchDarkly
---

# LaunchDarkly

LaunchDarkly is a feature management platform designed to help software teams control and release features safely and quickly through feature flags and experimentation.^[extracted] Olive extends it far beyond its intended use as a super tool.^[extracted]

## Intended Use

Feature management: controlling which features are enabled for which users, enabling safe gradual rollouts, A/B testing, and kill switches for problematic releases.^[extracted]

## Olive's Extended Use Cases

1. **LLM traffic load balancing** — Feature flags sit between application code and LLM API calls, enabling on-the-fly rerouting between providers based on rate limits and strategic needs.^[extracted]
2. **Infrastructure resilience** — Dynamic re-prioritization of multi-step ingestion pipelines when third-party services fail, without code deployment.^[extracted]
3. **Live experimentation** — UI modifications and paywall experiments run without code pushes.^[extracted]

## Sources

- [[references/aief2025-the-new-lean-startup-sid-bendre-olive|AIEF2025 — The New Lean Startup: Sid Bendre, Olive]]
