---
title: "Orchestrator-Worker Pattern"
tags:
  - agent
  - ai
  - architecture
  - design-pattern
  - deep-research
  - parallelization
sources:
  - "AI Engineer World's Fair 2025 - Effective agent design patterns in production — Laurie Voss, LlamaIndex - https://www.youtube.com/watch?v=72XxWkd8Jrk"
summary: "Agent design pattern where an LLM orchestrator decomposes a complex task into simpler sub-questions, dispatches them in parallel to worker LLMs, then aggregates results into a coherent answer."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Orchestrator-Worker Pattern

The orchestrator-worker pattern (also called the deep research pattern) is one of the five [[concepts/agent-design-patterns|agent design patterns]] codified by [[entities/anthropic|Anthropic]]. An LLM orchestrator decomposes a complex task into simpler sub-questions, dispatches them to worker LLMs in parallel, then aggregates their outputs into a single coherent answer.

## How It Works

1. **Decompose** — The orchestrator receives a complex, multi-part question and analyzes it to identify independent sub-questions
2. **Dispatch** — Each sub-question is sent to a worker LLM (or retrieval tool) for answering. Workers run concurrently.
3. **Aggregate** — The orchestrator collects all worker outputs and synthesizes them into a unified coherent answer

This is fundamentally a parallelization pattern, but distinguished from simple voting/sectioning parallelization by the orchestration layer that manages task decomposition and result synthesis. ^[inferred]

## Use Cases

- **Deep research** — Taking a broad research question, exploring multiple angles simultaneously, and producing a synthesized report
- **Multi-source document analysis** — Analyzing different documents or sections in parallel and combining findings
- **Complex Q&A** — Questions that require synthesizing information across multiple domains or data sources

### Voice-Controlled Multi-Agent Orchestration (Build Events)

[[entities/microsoft|Microsoft]]'s Build Events demo at AI Engineer World's Fair 2025 showed a voice-controlled orchestrator agent for event planning that dynamically delegated to specialized sub-agents — a research agent (web search via Bing grounding), an email agent (personalized outreach), an image generation agent (AI Pixar-style editing), and a LinkedIn posting agent — all built on [[entities/azure-ai-foundry|Azure AI Foundry]]. ^[extracted] The orchestrator listened to natural language requests, decomposed them into independent sub-tasks, dispatched workers concurrently, and synthesized results — extending the orchestrator-worker pattern from text-based Q&A to real-time, voice-driven, multi-agent coordination. ^[inferred]


## Relationship to Other Concepts

- [[concepts/agent-design-patterns]] — The pattern taxonomy this belongs to
- [[concepts/agentic-architecture]] — Platform-level orchestration that can implement this pattern
- [[concepts/multi-hop-retrieval]] — Related retrieval technique for multi-step questions
- [[entities/llamaindex]] — LlamaIndex Workflows support this pattern via concurrent event dispatch
- [[entities/azure-ai-foundry|Azure AI Foundry]] — Platform used for the Build Events multi-agent system

## Sources
- [[references/agent-design-patterns-production-laurie-voss-llamaindex]] — Talk at AI Engineer World's Fair 2025
- [[references/ai-eng-worlds-fair-2025-spark-to-system-open-agentic-web-asha-sharma|Spark to System: Building the Open Agentic Web — Asha Sharma, Microsoft]] — Build Events multi-agent demo
