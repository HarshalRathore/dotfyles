---
title: "PromptQL"
tags:
  - company
  - ai
  - semantic-layer
  - data
  - enterprise-ai
aliases: [PromQL, Prompt QL]
sources:
  - "[[sources/ai-engineer-worlds-fair-2025-talk]]"
Data readiness\" is a Myth: Reliable AI with an Agentic Semantic Layer — Anushrut Gupta, PromptQL - https://www.youtube.com/watch?v=1nOTQsfe1RU"
summary: "AI company building an agentic semantic layer with a domain-specific language (DSL) for reliable, self-improving data access. Sponsor of the reliability track at AI Engineer World's Fair 2025."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# PromptQL

An AI company that builds an [[concepts/agentic-semantic-layer|agentic semantic layer]] for enterprise data access. PromptQL's approach centers on a domain-specific language (also called PromQL) that enables three operations: data retrieval, data compute/aggregation, and semantics. ^[extracted]

## Architecture

- Uses a [[concepts/llm-as-planner-not-executor|LLM-as-planner]] pattern: the LLM generates deterministic plans in PromQL, while a deterministic runtime executes them ^[extracted]
- A **distributed query engine** connects to multiple data sources — databases, SaaS applications (e.g., Zendesk), and APIs (e.g., Stripe) ^[extracted]
- A **learning layer** builds and improves the semantic graph over time, creating company-specific business language ^[extracted]
- All corrections are **version-controlled** — each interaction creates a new build that can be rolled back ^[extracted]

## Product Positioning

PromptQL was described as the sponsor of the reliability track at AI Engineer World's Fair 2025. The talk presented customer cases including a Fortune 500 food chain company and a high-growth FinTech company that achieved 100% accuracy on their hardest questions after evaluating "100 vendors." ^[extracted]

## Related

- [[entities/anushrut-gupta|Anushrut Gupta]] — Leads applied research at PromptQL
- [[concepts/agentic-semantic-layer|Agentic Semantic Layer]] — Core product concept
- [[concepts/llm-as-planner-not-executor|LLM as Planner, Not Executor]] — Key architectural pattern
- [[concepts/data-readiness-myth|Data Readiness Myth]] — Problem the product addresses
- [[concepts/tribal-knowledge-in-ai|Tribal Knowledge in AI]] — What the semantic layer captures

## Sources

- [[references/promptql-agentic-semantic-layer-ai-eng-2025|"Data readiness" is a Myth — Anushrut Gupta, PromptQL]]
