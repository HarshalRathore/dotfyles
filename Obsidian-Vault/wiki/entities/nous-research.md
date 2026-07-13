---
title: Nous Research
category: entities
tags: [organization, open-source, ai-models, ai-agents, nous-hermes]
aliases: [Nous]
sources:
  - https://x.com/akshay_pachaar/status/2054564519280804028
summary: >-
  Research organization behind the Hermes LLM family and the Hermes Agent open-source persistent agent framework.
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
relationships:
  - target: "[[entities/akshay-pachaar|Akshay Pachaar]]"
    type: related_to
---

# Nous Research

**Nous Research** is an open-source AI research organization best known for the Hermes line of LLMs and, more recently, for publishing the **Hermes Agent** framework — an open-source persistent agent that crossed 90,000 GitHub stars in two months.

## Hermes Agent

The Hermes Agent framework combines three capabilities in one system:
1. Runtime skill learning (agents write their own reusable skills)
2. Persistent multi-layer memory (two-tier on-disk + SQLite FTS + 8 pluggable providers)
3. An optional offline weight-training pipeline called **GEPA** (Genetic-Pareto Prompt Evolution), published as an ICLR 2026 Oral paper

The framework is positioned as "a gateway around a learning agent" — the inverse of [[concepts/openclaw|OpenClaw]]'s "agent around a messaging gateway" approach.

## Related Work

- **Hermes LLMs** — family of open-weight language models
- **hermes-agent-self-evolution** — companion repository for GEPA offline optimization
