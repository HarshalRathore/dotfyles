---
title: Deep Research Agent
category: concepts
tags:
- deep-research
- agentic-rag
- multi-step-retrieval
- agent-planning
- retrieval
summary: An agent pattern that plans and executes multi-step retrieval, evaluating whether additional context is needed before synthesizing a final answer. An evolution beyond traditional and agentic RAG.
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/agentic-rag]]'
  type: extends
- target: '[[concepts/multi-hop-retrieval]]'
  type: extends
- target: '[[entities/leto]]'
  type: implements
sources: []
---

# Deep Research Agent

A deep research agent is an advanced RAG pattern where an autonomous agent plans and executes multi-step retrieval, dynamically deciding whether additional context is needed before synthesizing a final answer.

## Evolution of RAG Patterns

RAG has evolved through three main patterns:

1. **Traditional RAG** — Pull information, enrich system prompt, generate response. Single retrieval step.
2. **Agentic RAG** — Attach retrieval tools to an agentic loop. The agent decides when and what to retrieve as part of its larger flow.
3. **Deep Research RAG** — The agent creates a retrieval plan with one or many steps, executes them, evaluates results, and decides whether to retrieve more. Can go broad or deep depending on context needs.

## How It Works

A deep research agent:

1. **Receives a query** (e.g., lead information for email personalization)
2. **Plans** — Creates a retrieval plan containing one or many context retrieval steps
3. **Executes** — Makes tool calls to query knowledge bases, APIs, or other sources
4. **Evaluates** — Assesses whether retrieved context is sufficient
5. **Iterates** — If more context is needed, adds retrieval steps to the plan
6. **Synthesizes** — Summarizes all retrieved results into a clean Q&A format

## Key Differentiator

Unlike agentic RAG where retrieval is triggered reactively by the agent's immediate needs, deep research agents **plan ahead** — they create a multi-step retrieval strategy before executing, allowing for more systematic and thorough information gathering.

## Use Cases

- Complex email personalization requiring multiple context sources
- Research tasks that require broad scanning followed by deep dives
- Situations where the agent needs to verify information across multiple sources
- Any task where a single retrieval step is insufficient

## Sources

- AIEF2025 talk: "Building Alice's Brain" by Sherwood & Satwik, 11x
