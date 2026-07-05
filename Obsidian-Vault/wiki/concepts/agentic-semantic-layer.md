---
title: "Agentic Semantic Layer"
tags:
  - ai
  - architecture
  - semantic-layer
  - agents
  - reliability
  - enterprise-ai
aliases: [self-improving semantic layer, agentic semantic graph]
relationships:
  - target: "[[concepts/data-readiness-myth]]"
    type: extends
  - target: "[[concepts/tribal-knowledge-in-ai]]"
    type: implements
  - target: "[[concepts/llm-as-planner-not-executor]]"
    type: uses
  - target: "[[concepts/graphrag]]"
    type: contradicts
sources:
  - "[[sources/ai-engineer-worlds-fair-2025-talk]]"
Data readiness\" is a Myth: Reliable AI with an Agentic Semantic Layer — Anushrut Gupta, PromptQL - https://www.youtube.com/watch?v=1nOTQsfe1RU"
summary: "A semantic layer that evolves over time by learning from user corrections, building a company-specific business language through agentic interaction."
provenance:
  extracted: 0.72
  inferred: 0.23
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Agentic Semantic Layer

A semantic layer architecture that does not rely on manual, up-front knowledge engineering. Instead, it starts with general AI capabilities and learns the specific business domain over time through use, corrections, and steering. The key insight is that business language cannot be pre-defined — it emerges through interaction. ^[extracted]

## How It Differs from Traditional Semantic Layers

| Traditional semantic layer | Agentic semantic layer |
|---|---|
| Manually curated definitions | Learns from corrections |
| Breaks when domains change | Adapts continuously |
| Requires pre-defining all edge cases | Handles edge cases as they arise |
| Static knowledge base | Self-improving semantic graph |
| One-size-fits-all | Becomes company-specific (e.g., "Google QL") |

^[inferred]

## Architecture

The agentic semantic layer operates through a learning loop: ^[extracted]

1. **LLM generates a plan** in a [[concepts/llm-as-planner-not-executor|domain-specific language (DSL)]] for data retrieval, compute, and semantics
2. **Deterministic runtime executes** the plan without LLM involvement, avoiding hallucination at the answer layer
3. **User reviews and steers**: sees intermediate results, edits the plan via an interface, provides corrections
4. **Semantic graph updates**: the system learns from corrections — adding business term definitions, table relationships, and domain rules
5. **Version-controlled builds**: each learning cycle creates a new build; previous builds remain recoverable ^[extracted]

## Self-Improving Business Language

Over time, the semantic graph evolves into the company's unique business language. [[entities/promptql|PromptQL]] calls this "ACME QL" becoming "Google QL, Microsoft QL, Apple QL, Cisco QL" — each deployment speaks that company's specific domain language. ^[extracted]

Example progression: ^[extracted]
- **Day 0**: AI doesn't know what "enterprise customer" means, can't match customer IDs across systems, doesn't know when the financial quarter starts
- **Day 30**: Has figured out 47 business terms, mapped relationships across 6 systems, discovered 12 calculation variants, 100% accurate on complex tasks

## Key Properties

- **Correctable** — users can correct the system when it makes mistakes ^[extracted]
- **Explainable** — each step shows its reasoning and intermediate results ^[extracted]
- **Steerable** — users can modify plans directly ^[extracted]
- **Self-improving** — every correction permanently improves future performance ^[extracted]

## Related

- [[concepts/data-readiness-myth|Data Readiness Myth]] — The problem this architecture solves
- [[concepts/tribal-knowledge-in-ai|Tribal Knowledge in AI]] — What the agentic semantic layer captures
- [[concepts/llm-as-planner-not-executor|LLM as Planner, Not Executor]] — The architectural pattern it uses
- [[concepts/agent-reliability-challenge|Agent Reliability Challenge]] — The broader reliability context
- [[concepts/graphrag|GraphRAG]] — Contrasted as insufficient for business semantics

## Sources

- [[references/promptql-agentic-semantic-layer-ai-eng-2025|"Data readiness" is a Myth — Anushrut Gupta, PromptQL]]
