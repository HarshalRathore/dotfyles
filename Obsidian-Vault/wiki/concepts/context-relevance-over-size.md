---
title: Context Relevance Over Size
category: concepts
tags:
- context
- context-window
- ai-coding
- windsurf
- latency
- optimization
aliases:
- Relevance Over Context Size
- Context Quality Over Quantity
sources:
- 'AIEF2025 - The Eyes Are The (Context) Window to The Soul: How Windsurf Gets to Know You — Sam Fertig, Windsurf - https://www.youtube.com/watch?v=jUv5WSPo9fk'
provenance:
  extracted: 0.9
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/context-philosophy-what-vs-how-much]]'
  type: component-of
- target: '[[concepts/context-over-models]]'
  type: extends
summary: Context Relevance Over Size
---

# Context Relevance Over Size

**Context Relevance Over Size** is the principle that optimizing AI coding agents requires prioritizing **what context gets put into the LLM's context window** rather than simply making the context window bigger. ^[extracted]

## The Problem

For a while, the dominant strategy in the AI coding space was to keep expanding context windows — assuming that more tokens = better results. This worked initially but has diminishing returns. As codebases grow, finding relevant context quickly remains hard regardless of window size. ^[extracted]

## The Windsurf Approach

Windsurf's approach, informed by the team's GPU optimization background (from their time as [[entities/exifunction|Exifunction]]), focuses on:

1. **Finding relevant context quickly** — the harder problem as codebases scale
2. **Putting only relevant context in the window** — not everything available
3. **Optimizing for latency** — which is a core feature of good AI coding agents, not just a preference ^[extracted]

## The Toolkit

Windsurf implements this philosophy through multiple context retrieval mechanisms: embedding search, memories, rules, custom workspaces, at-mentions, plain text search, knowledge base, multimodal input, Riptide, MCP, remote indexing, re-ranking, and AST parsing. ^[extracted]

## Relationship to Context Over Models

This principle is the "how much" pillar of the [[concepts/context-philosophy-what-vs-how-much|Context Philosophy]] framework and extends the broader [[concepts/context-over-models|Context Over Models]] thesis by providing the operational strategy for context optimization. ^[inferred]

## Related Pages

- [[concepts/context-philosophy-what-vs-how-much]] — The two-pillar framework
- [[concepts/context-over-models]] — The broader principle
- [[entities/windsurf]] — Product implementing this philosophy
- [[entities/exifunction]] — GPU optimization background informing this approach
