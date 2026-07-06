---
title: 'The Eyes Are The (Context) Window to The Soul: How Windsurf Gets to Know You — Sam Fertig, Windsurf'
category: references
tags:
- aief2025
- windsurf
- context
- ai-coding
- cascade
- user-modeling
aliases:
- Sam Fertig AIEF2025
- Windsurf Context Philosophy
sources:
- 'AIEF2025 - The Eyes Are The (Context) Window to The Soul: How Windsurf Gets to Know You — Sam Fertig, Windsurf - https://www.youtube.com/watch?v=jUv5WSPo9fk'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/windsurf]]'
  type: relates_to
- target: '[[entities/cascade]]'
  type: relates_to
- target: '[[concepts/context-over-models]]'
  type: extends
- target: '[[concepts/context-philosophy-what-vs-how-much]]'
  type: defines
summary: 'The Eyes Are The (Context) Window to The Soul: How Windsurf Gets to Know You — Sam Fertig, Windsurf'
---

# The Eyes Are The (Context) Window to The Soul: How Windsurf Gets to Know You — Sam Fertig, Windsurf

Sam Fertig, a Principal Forward-Deployed Engineer at Windsurf, presented this talk at AI Engineer World's Fair 2025 on Windsurf's context philosophy — the two pillars of **what context** to provide and **how much** context to include in LLM calls for coding agents.

## Core Thesis

Generating code is no longer the hard problem. The hard problem is generating code **for you** — code that fits into an existing large codebase, adheres to organizational policies and standards, respects personal coding preferences, and remains future-proof. ^[extracted] The differentiator that makes tools like Windsurf feel "magical" is context, not model capability. ^[inferred]

## The Two Pillars of Context

### What Context

Windsurf divides context into two buckets:

1. **Heuristics** — user state: code above and below the cursor, open files, recently opened/closed files (in order), clipboard content, terminal activity, user behavior patterns, and what the user appears to be trying to accomplish.
2. **Hard Evidence** — codebase state: code, documentation, user-provided rules, agent-generated memories, and everything else in the repository.

The output formula: **relevant output = prompt + codebase state + user state**. ^[extracted]

### How Much

Windsurf's approach rejects the naive strategy of simply making context windows bigger. While larger windows help to some extent, the primary optimization is for **what context gets put into the window**, not just volume. This also addresses latency — a core feature of good AI coding agents, not just a preference. ^[extracted]

## Context Retrieval Toolkit

Windsurf provides multiple context retrieval mechanisms at the user level: embedding search, memories, rules, custom workspaces, at-mentions, plain text search, knowledge base, multimodal input, Riptide, MCP, remote indexing, re-ranking, and AST parsing. ^[extracted]

## Origin Story

Windsurf originated from a company called Exifunction with a background in GPU optimization, which gives them a unique advantage in the context retrieval problem — finding relevant context quickly as codebases grow. ^[extracted]

## Related Pages

- [[entities/windsurf]] — The product and company
- [[entities/cascade]] — Windsurf's AI agent
- [[concepts/context-over-models]] — Context matters more than model capability
- [[concepts/context-philosophy-what-vs-how-much]] — The two-pillar framework defined here
- [[concepts/heuristics-vs-hard-evidence-context]] — The two buckets of context
- [[concepts/context-relevance-over-size]] — Optimizing relevance over volume
