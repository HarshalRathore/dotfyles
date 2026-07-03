---
title: "Effective Agent Design Patterns in Production — Laurie Voss, LlamaIndex"
tags:
  - reference
  - talk
  - agent
  - llamaindex
  - ai-eng-fair-2025
sources:
  - "AI Engineer World's Fair 2025 - Effective agent design patterns in production — Laurie Voss, LlamaIndex - https://www.youtube.com/watch?v=72XxWkd8Jrk"
summary: "Laurie Voss presents the five Anthropic-codified agent design patterns (chaining, routing, parallelization, orchestrator workers, evaluator-optimizer) implemented via LlamaIndex Workflows, plus the core principle that LLMs excel at turning large text into small text."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Effective Agent Design Patterns in Production — Laurie Voss, LlamaIndex

> [!tldr] The five agent design patterns codified by Anthropic (chaining, routing, parallelization, orchestrator workers, evaluator-optimizer) map directly onto LlamaIndex Workflows, an event-driven Python abstraction. Voss also argues that the fundamental value of LLMs is turning unstructured data into structured data, not chatbots.

## Key Claims

- LLMs are good at turning a large body of text into a smaller one; they are **not** good at taking a small prompt and generating a large body of text. ^[inferred]
- The largest addressable surface for LLMs is not chatbots but integration into existing software — using LLMs to handle messy inputs and produce structured data that feeds into regular software pipelines.
- RAG will never die: larger contexts don't change the fact that it's always cheaper and faster to send less, more specific context. ^[inferred]
- Agents improve RAG: layering an agent on top of naive top-K RAG produces significantly higher quality results through introspection, query decomposition, and self-correction.
- The five Anthropic design patterns (chaining, routing, parallelization, orchestrator workers, evaluator-optimizer) are compositional — you can create arbitrarily complex workflows by combining them.

## The Five Agent Design Patterns

Based on [[entities/anthropic|Anthropic]]'s December 2024 post, the patterns are:

1. **Chaining** — Pass output of one LLM step as input to the next. Trivial to build, especially in [[entities/llamaindex|LlamaIndex]] using the Workflows abstraction with event-anotated Python functions.

2. **Routing** — Create several LLM-based tools solving different sub-problems; give the LLM decision-making power to choose which path to follow. Implemented via branches in LlamaIndex Workflows.

3. **Parallelization** — Two flavors: **sectioning** (same input, different processing tracks — canonical use case is guardrails) and **voting** (same query to multiple LLM instances or models, aggregate answers to reduce hallucination). LLMs hallucinate in different ways so they seldom hallucinate to the same answer. ^[inferred] LlamaIndex Workflows emit multiple events simultaneously and collect at the far end.

4. **Orchestrator Workers** — An LLM decomposes a complex task into simpler sub-questions, answers them in parallel, then aggregates into a coherent answer. This is how deep research works. See [[concepts/orchestrator-worker-pattern]] for details.

5. **Evaluator-Optimizer (Self-Reflection)** — The LLM evaluates its own output against the original goal, generates feedback, and sends itself back to improve. Implemented as a loop in LlamaIndex Workflows. See [[concepts/self-reflection-evaluator]] for details.

## LlamaIndex Platform Overview

[[entities/llamaindex|LlamaIndex]] is a framework in Python and TypeScript for building GenAI applications, with specific focus on agents and RAG:

- **LlamaParse** — Parses complex document formats (PDF, Word, PowerPoint) into LLM-friendly representations. Improves agent quality by making data easier for an LLM to understand.
- **LlamaCloud** — Enterprise SaaS: documents in one end, retrieval endpoint out the other. Available as cloud service or private cloud deployment.
- **LlamaHub** — Registry of 400+ integrations (data sources, vector databases, LLM providers, pre-built agent tools).
- **Workflows** — Event-driven Python abstraction with type annotations defining event flow between steps. Includes a built-in visualizer.

## Agent + RAG Symbiosis

- Agents need RAG for context; RAG needs agents for quality.
- Naive top-K RAG without agent layering "won't work very well" for many situations.
- Agents bring introspection, query decomposition, hallucination checking, and self-correction that RAG alone cannot provide.
- This symbiosis improves both speed and accuracy in production.

## Related

- [[concepts/agent-design-patterns]] — The five codified patterns
- [[concepts/llm-as-summarizer]] — Core principle: LLMs turn big text into small text
- [[concepts/beyond-chatbots]] — Integration into existing software
- [[concepts/orchestrator-worker-pattern]] — Deep research decomposition
- [[concepts/self-reflection-evaluator]] — Self-evaluation loop pattern
- [[concepts/agentic-architecture]] — Platform-level agent orchestration

## Sources

- <https://www.youtube.com/watch?v=72XxWkd8Jrk> — Full talk video
