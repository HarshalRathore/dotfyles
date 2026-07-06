---
title: Prompt Fallback Infrastructure
tags:
- ai
- architecture
- reliability
- operations
- production
- model-management
sources:
- 'https://www.youtube.com/watch?v=6ydpi9ybjbi'
summary: The system for managing hundreds of prompts across multiple model providers with config-based fallback mechanisms that account for cost, capability, and latency differences.
provenance:
  extracted: 0.68
  inferred: 0.27
  ambiguous: 0.05
base_confidence: 0.48
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Prompt Fallback Infrastructure

When an AI product scales to hundreds of prompts running across multiple model providers, a model provider outage or deprecation requires routing traffic to alternatives — but not all alternatives are equivalent. The naive approach ("fail over all 4o-mini traffic to Sonnet") breaks on cost: some prompts use cheap fast models for high-frequency tasks, and the wrong fallback can create millions of dollars in unplanned spend. ^[extracted]

## The Problem with Naive Fallback

Notion's database autofill feature running on 4o-mini costs significantly less than running the same workload on Sonnet 3.7 — roughly 12x more expensive. Routing all traffic to a capable but expensive fallback during an outage can result in "millions and millions of dollars of debt for that decision in that period of time." ^[extracted]

Additionally, prompt-specific optimizations (system prompts tuned for particular model behaviors, tool-use schemas that differ across providers) mean a blind model switch may change output quality even before considering cost. ^[inferred]

## The Solution: Per-Prompt Fallback Configuration

Notion's approach: every prompt owner pre-declares a fallback model or model provider in a config file. The fallback is:
- **Cost-aware**: Each prompt's fallback accounts for the cost implications of routing to a different provider. ^[extracted]
- **Capability-aware**: Prompts that need advanced reasoning map to different fallbacks than high-frequency, low-reasoning prompts. ^[inferred]
- **Owner-maintained**: The engineer or product owner responsible for the prompt defines and maintains the fallback configuration. ^[extracted]

## Implementation

The fallback system is a combination of code-driven and config-based mechanisms. Each prompt has an associated configuration that specifies:
- Primary model and provider
- Fallback model and provider (optionally multiple, ordered by preference)
- Conditions under which to trigger the fallback (provider outage, latency threshold, error rate) ^[inferred]

At Notion, this was implemented relatively late — "we wish we did that from day one" — and required a "tribal knowledge gathering" process where every prompt author had to document their fallback preferences. ^[extracted]

## The Scale

Notion manages "over a hundred, like hundreds" of prompts. Many are variations — model-specific adaptations of the same base prompt. When a provider has an outage, the fallback system ensures continuity without requiring the on-call engineer to understand every prompt's cost structure and quality requirements. ^[extracted]

## Relationship to Other Concepts

- [[concepts/ai-ops-evolution|AI Ops Evolution]] — fallback management is a core operational capability at production scale
- [[concepts/eval-scoring-flywheel|Eval Scoring Flywheel]] — evaluating fallback performance is part of the continuous evaluation cycle
- [[concepts/per-element-llm-judge|Per-Element LLM Judge]] — per-element scoring enables rapid verification that fallback models produce acceptable output

## Sources

- [[references/notion-ai-building-world-class-products|How to build world-class AI products — Sarah Sachs (Notion) & Carlos Esteban (Braintrust)]] — AI Engineer World's Fair 2025
