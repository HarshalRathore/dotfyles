---
title: "Agent Memory Types"
category: concepts
tags: [agent-memory, memory-types, short-term, long-term, working-memory, semantic, episodic, procedural, conversational, entity-memory]
summary: "Different forms of memory in AI agents: short-term, long-term, working, semantic, episodic, procedural, conversational, entity memory, knowledge, cache — mapped from human cognitive science."
sources:
  - "[[sources/watchv=w2hvdb4jbjs]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-memory-knowledge]]"
    type: related_to
  - target: "[[concepts/memory-management]]"
    type: related_to
  - target: "[[concepts/brain-memory-analogy]]"
    type: related_to
---

# Agent Memory Types

**Agent memory types** are the different forms of memory that AI agents can implement, mapped from human cognitive science and extended with agent-specific forms. ^[extracted]

## Human Memory Types (Mapped to Agents)

| Human Memory Type | Agent Equivalent | Description |
|---|---|---|
| Short-term memory | Short-term/context memory | Immediate conversation context |
| Long-term memory | Long-term persistence | Stored knowledge across sessions |
| Working memory | Working memory / cache | Active computation state |
| Semantic memory | Knowledge store | Factual knowledge about the world |
| Episodic memory | Conversational memory | Personal experiences and events |
| Procedural memory | Data store / routines | Skills and procedures (how to do things) |
| Cerebellum storage | Stored procedures / playbooks | Routines and skills for automated execution | ^[extracted] ^[inferred]

## Agent-Specific Memory Forms

Beyond human analogues, agents have additional memory types:

- **Conversational memory** — History of interactions with users
- **Entity memory** — Knowledge about specific entities (people, organizations, products)
- **Knowledge** — Domain-specific factual information
- **Data store** — Structured data for agent operations
- **Cache** — Frequently accessed data for fast retrieval
- **Working memory** — Active computation state during execution ^[extracted]

## Why Multiple Memory Types?

Different agent tasks require different memory types. A customer service agent needs conversational memory for continuity, entity memory for customer profiles, and knowledge memory for product information. A research agent needs semantic memory for domain knowledge and working memory for active analysis.

The diversity of memory types is why retrieval must go beyond vector search — different memory types require different retrieval mechanisms. ^[inferred]

## Relationship to Memory Management

Memory management (generation, storage, retrieval, integration, updates, deletion) operates across all these memory types simultaneously. Effective agents route information to the appropriate memory type based on its nature and intended use. ^[inferred]

## Related Pages

- [[concepts/agent-memory-knowledge]] — Agent memory systems broadly
- [[concepts/memory-management]] — The six components of memory management
- [[concepts/brain-memory-analogy]] — Human brain memory as a model for agents
- [[concepts/agenticity-spectrum]] — Memory requirements at different autonomy levels
- [[concepts/forgetting-mechanisms]] — How different memory types are handled in forgetting

## Sources

- AIEF2025 - Architecting Agent Memory: Principles, Patterns, and Best Practices — Richmond Alake, MongoDB - https://www.youtube.com/watch?v=W2HVdB4Jbjs
