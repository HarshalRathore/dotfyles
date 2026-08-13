---
title: "Langfuse"
category: entities
type: entity
tags: [product]
aliases: [Langfuse tracing]
sources:
  - "https://x.com/i/status/2084613319558635940"
created: "2026-08-11"
updated: "2026-08-11"
summary: "Open-source LLM observability and tracing platform for agent runs — traces tool calls, token usage, latency; part of the LLM-ops toolchain Sean recommends for harness evaluation."
provenance:
  extracted: 0.7
  inferred: 0.3
  ambiguous: 0.0
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: "2026-08-11"
tier: supporting
reviewed: false
---

# Langfuse

**Type:** Product — open-source LLM observability / tracing platform
**Category in wiki:** Entity (product)

## Basic Information

- Traces every agent run as a tree of events: user question, retrievals, tool calls, response time, token usage. ^[extracted]
- Named alongside [[entities/langsmith|LangSmith]] as the standard tracing tool for LLM-ops on agent harnesses. ^[extracted]

## Description

Langfuse is the open-source observability layer Sean recommends in his LLM-ops segment for answering "was this run good and healthy?": trace every agent run (what was asked, what was retrieved, how many tool calls, how long, how many tokens), then feed those traces into evaluation (LLM-as-judge scoring, deterministic checks) and diagnosis. In the video's Hermes walkthrough, Sean notes Hermes currently lacks such an eval system — only run logs and trajectory export — and suggests building it with tools like Langfuse/LangSmith. ^[extracted]

## Related Entities

- [[entities/langsmith]] — commercial alternative from LangChain
- [[entities/hermes-agent]] — harness that lacks built-in tracing/eval per the walkthrough

## Related Concepts

- [[concepts/llm-ops-tooling]] — tracing as step 1 of the LLM-ops loop
- [[concepts/agent-observability]] — run-level observability
- [[concepts/llm-as-judge-evaluation]] — scoring runs with an LLM judge

## Mentions in Source

> "Every agent run, we should trace like a tree of events that happened. And there are lots of tools that could help you with that. It could be Langfuse, could be LangSmith, et cetera." — Sean, LLM-ops segment ^[extracted]
