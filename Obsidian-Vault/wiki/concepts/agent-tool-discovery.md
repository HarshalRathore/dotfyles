---
title: "Agent Tool Discovery"
tags:
  - ai-agents
  - tool-management
  - rag
  - aws
  - strands-agents
sources:
  - "AIEF2025 - Building Agents at Cloud Scale — Antje Barth, AWS - https://www.youtube.com/watch?v=WJjInLeaJjo"
summary: "The pattern of using semantic search over a knowledge base to discover and select the most relevant tools for an agent's current task, rather than loading all tools into context."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/strands-agents|Strands Agents]]"
    type: implements
  - target: "[[concepts/retrieval-augmented-generation|RAG]]"
    type: derived_from
  - target: "[[concepts/agent-memory-knowledge|Agent Memory & Knowledge]]"
    type: related_to
---
# Agent Tool Discovery

The challenge of helping agents select the right tools from a large pool when the full tool set cannot fit into a single context window. The solution: store tool descriptions in a knowledge base and use semantic search to retrieve only the most relevant tools for the current task. ^[extracted]

## The Problem

Context windows have finite capacity. An agent managing 6,000 tools cannot load all tool descriptions into a single prompt. Feeding the full tool catalog to the model is both impractical and inefficient — most tools are irrelevant to any given task. ^[extracted]

## The Solution: Retrieve Tool

AWS's internal agent managing 6,000+ tools uses the **Retrieve** tool from Strands Agents:

1. **Knowledge base**: Tool descriptions are indexed in a vector store.
2. **Semantic search**: When the agent receives a task, it queries the knowledge base for relevant tools.
3. **Context loading**: Only the retrieved tools are loaded into the model's context.
4. **Decision**: The model decides which of the retrieved tools to use.

This two-phase approach (discover → select) dramatically reduces context usage while maintaining tool coverage. ^[extracted]

## Implementation

The Retrieve tool is part of Strands Agents' memory and RAG tool suite:

- Supports semantic search over any knowledge base
- Can index tool descriptions, documentation, or other reference material
- Integrates natively with the agent loop

## Benefits

- **Scalability**: Agents can manage thousands of tools without context overflow.
- **Efficiency**: Only relevant tools consume context.
- **Adaptability**: New tools can be added to the knowledge base without changing the agent's prompt.

## Related Pages

- [[entities/strands-agents]] — SDK providing the Retrieve tool
- [[concepts/retrieval-augmented-generation|RAG]] — The underlying retrieval pattern
- [[concepts/agent-memory-knowledge|Agent Memory & Knowledge]] — Broader memory patterns
- [[entities/alexa]] — Alexa Plus uses hundreds of expert systems (similar discovery challenge)
