---
title: "Agent Memory Types"
category: concepts
tags: [agent-memory, memory-types, short-term, long-term, working-memory, semantic, episodic, procedural, conversational, entity-memory]
summary: "Different forms of memory in AI agents: short-term, long-term, working, semantic, episodic, procedural, conversational, entity memory, knowledge, cache — mapped from human cognitive science."
sources:
  - "https://www.youtube.com/watch?v=w2hvdb4jbjs"
  - "https://x.com/i/status/2084613319558635940"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-08-11
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

## 2026-08-11 — Hermes Implementation (Sean's Walkthrough)

How [[entities/hermes-agent|Hermes Agent]] maps the memory taxonomy in practice (from [[references/cyrilxbt-agent-concepts-explainer-video|Sean's walkthrough]]): ^[extracted]

- **Procedural memory** → `~/.hermes/skills/` — markdown skill files telling the agent how to act (e.g. a `video prep` skill with formatting rules; a Claude Code delegation skill). Created explicitly via skill management, or offered proactively by the system prompt after difficult iterative tasks (5+ tool calls). ^[extracted]
- **Semantic memory** → `memory.md` — durable facts / user profile, self-updated by the agent mid-run (the YouTube-URL-correction example: the agent "realized that it had a mistake, so it updated itself with a memory"). ^[extracted]
- **Episodic memory** → `state.db` (SQLite) — chat history and dated events; consolidated into semantic memory by **cheaper auxiliary models** doing summarization. ^[extracted]
- **Notable divergence from the AIEF2025 pattern:** Hermes retrieves semantic memory via **plain-text top-k keyword search — no embeddings, no vector store, no RAG** ("I'm not too sure why, but just doing text"). Everything stays local; nothing stored on the cloud. ^[extracted]

## Related Pages

- [[concepts/agent-memory-knowledge]] — Agent memory systems broadly
- [[concepts/memory-management]] — The six components of memory management
- [[concepts/brain-memory-analogy]] — Human brain memory as a model for agents
- [[concepts/agenticity-spectrum]] — Memory requirements at different autonomy levels
- [[concepts/forgetting-mechanisms]] — How different memory types are handled in forgetting

## Sources

- AIEF2025 - Architecting Agent Memory: Principles, Patterns, and Best Practices — Richmond Alake, MongoDB - https://www.youtube.com/watch?v=W2HVdB4Jbjs
