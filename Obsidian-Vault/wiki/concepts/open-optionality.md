---
title: "Open Optionality"
category: concepts
tags:
  - agents
  - optionality
  - vendor-lock-in
  - composability
  - aief2025
aliases:
  - open optionality
  - agent-optionality
  - no-lock-in
summary: "Solomon Hykes' principle that agent environments must not lock users into all-in-one platforms, enabling choice of the best model, compute, and infrastructure for each job."
sources:
  - "AIEF2025 - Containing Agent Chaos — Solomon Hykes, Dagger - https://www.youtube.com/watch?v=bUBF5V6oDKw"
provenance:
  extracted: 0.91
  inferred: 0.07
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[entities/solomon-hykes|Solomon Hykes]]
    type: proposed_by
  - target: [[concepts/agent-environment|Agent Environment]]
    type: property_of
  - target: [[concepts/container-use|Container Use]]
    type: enables
  - target: [[concepts/vendor-lock-in-llm|Vendor Lock-in (LLM)]]
    type: relates_to
---

# Open Optionality

**Open optionality** is the principle that agent environments must not lock users into all-in-one platforms, enabling choice of the best model, compute, and infrastructure for each job. Introduced by [[entities/solomon-hykes|Solomon Hykes]] at AIEF2025, it is the fourth of four essential properties for productive agent environments. ^[extracted]

## The Rapidly Changing Market

Solomon frames open optionality as a response to the volatile agent/compute/model market: "it's a crazy market. There are awesome models, awesome compute, awesome infrastructure. Agents are really cool. And as cool as they are now, one of you is probably launching one right now. And then there's another one tomorrow." ^[extracted]

Locking into an all-in-one platform today means saying "no in advance to whatever's coming out tomorrow." Open optionality preserves the ability to adopt new tools as they emerge. ^[extracted]

## The Best Commodity Principle

Solomon advocates for choosing "the best commodity component for each job." This means:

- Selecting the best model for each task, not committing to one
- Using the best compute provider for each workload
- Choosing the best infrastructure for each need
- Allowing open source components alongside commercial ones

This commodity approach stands in contrast to all-in-one platforms that bundle model, tools, environment, and compute into a single offering. ^[extracted]

## All-in-One Platforms: Good but Limiting

Solomon acknowledges that all-in-one platforms "actually work really well" and that "they're great." The background mode approach — "open an issue, wait for the PR, relax" — is productive. But it has limitations:

- You sometimes "want to get in there" and take the keyboard
- You want to run agents on your own machine or favorite compute provider
- You want to mix and match models and tools
- You want to use agents where all-in-one platforms don't reach

[^extracted]

## Containers as the Open Foundation

Containers provide the technical foundation for open optionality: they are open standards, not proprietary formats. Container images and runtimes enable the best commodity component for each job because they are portable across platforms, providers, and toolchains. ^[extracted]

## Related

- [[concepts/agent-environment|Agent Environment]] — Open optionality is one of four essential properties
- [[concepts/container-use|Container Use]] — Containers provide the open foundation
- [[concepts/vendor-lock-in-llm|Vendor Lock-in (LLM)]] — The problem open optionality solves
- [[entities/dagger|Dagger]] — Dagger's open-source, container-native approach embodies open optionality
