---
title: "LLM as Planner, Not Executor"
tags:
  - ai
  - architecture
  - llm
  - reliability
  - deterministic
aliases: [decoupled LLM execution, planner-executor pattern, deterministic plan execution]
relationships:
  - target: "[[concepts/agentic-semantic-layer]]"
    type: extends
  - target: "[[concepts/agent-reliability-challenge]]"
    type: related_to
sources:
  - "[[sources/ai-engineer-worlds-fair-2025-talk]]"
Data readiness\" is a Myth: Reliable AI with an Agentic Semantic Layer — Anushrut Gupta, PromptQL - https://www.youtube.com/watch?v=1nOTQsfe1RU"
summary: "An architectural pattern where the LLM generates a deterministic plan (in a domain-specific language) but a runtime executes it, eliminating hallucination at the answer layer."
provenance:
  extracted: 0.78
  inferred: 0.18
  ambiguous: 0.04
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# LLM as Planner, Not Executor

An architectural pattern that separates the LLM's role into **planning** (generating a structured, deterministic plan in a domain-specific language) from **execution** (running that plan in a deterministic runtime without further LLM involvement). The core insight: if you let the LLM generate the final answer directly, "it's by default hallucinating, and you're just hoping the hallucination is correct." ^[extracted]

## How It Works

1. **LLM generates a plan** in a DSL (domain-specific language) that specifies data retrieval, computation/aggregation, and semantics — but NOT the final answer text ^[extracted]
2. **Deterministic runtime executes** the plan — iterates through data sources, performs computations, applies transformations — without calling the LLM again ^[extracted]
3. **Answer is produced** directly from the runtime, not from the LLM ^[extracted]

This decoupling means the non-deterministic, hallucination-prone LLM is used only for its strength (understanding intent and generating structured plans) while the deterministic runtime handles the execution where reliability matters most. ^[inferred]

## Why It Matters

- Traditional [[concepts/agentic-architecture|RAG]] feeds retrieved data back to the LLM to generate an answer — reintroducing hallucination risk at the final step ^[inferred]
- Separating planning from execution eliminates the final hallucination vector
- The plan is human-readable and steerable — users can inspect and edit it before execution ^[extracted]

## Example

In the [[entities/promptql|PromptQL]] implementation, the DSL plan specifies operations like "get all users, extract email domains, find org with third highest revenue, pull 30 latest Zendesk tickets, summarize sentiment, issue Stripe credits" — all determined by the LLM but executed by a distributed query engine. The LLM never touches the actual data or generates the final output. ^[extracted]

## Related

- [[concepts/agentic-semantic-layer|Agentic Semantic Layer]] — Uses this pattern
- [[concepts/agent-reliability-challenge|Agent Reliability Challenge]] — Why this pattern matters for reliability
- [[concepts/agentic-architecture|Agentic Architecture]] — Broader agent architecture context
- [[concepts/graphrag|GraphRAG]] — Contrasted (RAG typically involves LLM at answer generation)

## Sources

- [[references/promptql-agentic-semantic-layer-ai-eng-2025|"Data readiness" is a Myth — Anushrut Gupta, PromptQL]]
