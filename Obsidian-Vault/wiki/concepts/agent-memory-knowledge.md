---
title: "Agent Memory and Knowledge"
category: concepts
tags:
  - ai-agents
  - agent-systems
  - knowledge-management
  - software-engineering
  - aief2025
sources:
  - "[[sources/watchv=mi83but_23o]]"
  - "[[sources/watchv=t5imo5ntyha]]"
  - "[[sources/watchv=w2hvdb4jbjs]]"
summary: "Systems for maintaining and applying learnings across repeated agent tasks. Includes domain-aware memory, memory types mapped from human cognition, agenticity spectrum, and persistence-based memory."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/domain-aware-memory]]"
    type: related_to
  - target: "[[concepts/semantic-memory-noise]]"
    type: related_to
  - target: "[[entities/zep]]"
    type: related_to
  - target: "[[entities/mongodb]]"
    type: related_to
  - target: "[[concepts/memory-management]]"
    type: related_to
  - target: "[[concepts/agenticity-spectrum]]"
    type: related_to
---

# Agent Memory and Knowledge

**Agent memory and knowledge** refers to systems that enable AI agents to maintain, understand, and apply learnings across repeated tasks — improving performance on each subsequent run.

## The Problem

When an agent performs the same or similar tasks repeatedly, a human would naturally:
- Remember what went wrong last time
- Know to avoid certain patterns
- Apply feedback from previous attempts

Agents need equivalent capabilities to match this improvement curve.

## Two Approaches to Agent Memory

### Free-Form Fact Generation (Dominant Pattern)

Many agent frameworks generate arbitrary facts during conversation and store them in vector databases. This approach suffers from **semantic memory noise** — irrelevant facts pollute the embedding space, causing retrieval to return unrelated facts. ^[extracted] For example, a media player agent that should remember music preferences may also capture "my dog's name is Melody" and retrieve it when searching for "favorite tunes" because the words are semantically similar. ^[extracted]

### Domain-Aware Memory (Structured Pattern)

[[entities/zep|Zep]] implements **domain-aware memory** where developers define entity types with typed fields and business rules. Only facts matching registered entity types are stored and retrieved, eliminating semantic collision. This approach uses a temporal graph called [[concepts/graffiti-temporal-graph|Graffiti]] to store structured entity instances with history. ^[extracted]

## Memory Types in Agents

Agents implement multiple distinct memory types, mapped from human cognitive science:

| Human Memory Type | Agent Equivalent |
|---|---|
| Short-term memory | Short-term/context memory |
| Long-term memory | Long-term persistence |
| Working memory | Working memory / cache |
| Semantic memory | Knowledge store |
| Episodic memory | Conversational memory |
| Procedural memory | Data store / routines |
| Cerebellum (skills/routines) | Stored procedures / playbooks | ^[extracted] ^[inferred]

Additional agent-specific forms: conversational memory, entity memory, knowledge, data store, cache, working memory. ^[extracted]

Different agent tasks require different memory types. A customer service agent needs conversational memory for continuity, entity memory for customer profiles, and knowledge memory for product information. ^[inferred]

## Memory Management

Memory management is the systematic process of organizing information in the context window. It consists of six components:

1. **Generation** — Creating memory from interactions
2. **Storage** — Persisting memory
3. **Retrieval** — Finding relevant memory (the most important component)
4. **Integration** — Incorporating memory into execution
5. **Updates** — Modifying existing memory
6. **Deletion** — Removing outdated memory (with "forgetting mechanisms" as a research direction) ^[extracted]

Retrieval is the critical component. Large context windows are for pulling in relevant memory, not stuffing all data. ^[extracted]

## Agenticity Spectrum

[[entities/richmond-alake|Richmond Alake]] ([[entities/mongodb|MongoDB]]) proposes a **spectrum of agenticity** rather than binary agent/non-agent definitions, analogous to autonomous driving levels:

- **Minimal agent** — An LLM running a loop
- **Level 4 autonomous agent** — Multiple agents with tool access, operating with little or no prompting ^[extracted]

The defining characteristic across all levels is **memory** — without it, an agent cannot be reflective, interactive, proactive, reactive, or autonomous. ^[extracted]

## Persistence Over Prompting

The industry is shifting from **prompt engineering** to **persistence-based memory**. Instead of crafting elaborate prompts for each interaction, agents will accumulate information across interactions, turn data into memory, and use that memory to inform their next execution step. ^[extracted] This shift enables agents to build genuine relationships with users — remembering past interactions, preferences, and context to create continuous personalized experiences. ^[extracted]

## Use Cases

- **Repetitive migrations** — "Remember to do X thing every time you see Y pattern"
- **Project conventions** — Learning a specific codebase's patterns and conventions
- **Error avoidance** — Remembering which approaches failed previously
- **Preference retention** — Maintaining user preferences across sessions
- **Finance coaching** — Tracking debts, income, and goals over time ^[extracted]
- **Media preferences** — Remembering music tastes, podcasts, and listening habits ^[extracted]
- **Customer relationships** — Building continuous, personalized experiences through persistent memory ^[extracted]

## MongoDB as Memory Provider

[[entities/mongodb|MongoDB]] positions itself as **the memory provider for agentic systems**, offering the full suite of retrieval mechanisms agents need. MongoDB emphasizes that retrieval goes beyond vector search — different memory types require different retrieval mechanisms. ^[extracted]

## Relationship to Other Systems

Agent memory works alongside:

- **Playbooks** — Structured instructions for known patterns
- **Repository snapshots** — Execution environment management
- **Code hierarchy understanding** — Structural code comprehension
- **[[concepts/domain-aware-memory|Domain-aware memory]]** — Structured entity-based memory that replaces free-form fact generation ^[inferred]

Memory is what makes the agent improve over time rather than performing at the same level on every run.

## Related Pages

- [[entities/cognition]] — Company that built agent memory for Devin
- [[entities/devin]] — Agent with memory capabilities
- [[entities/zep]] — Zep's domain-aware memory system
- [[entities/mongodb]] — MongoDB as memory provider for agentic systems
- [[entities/richmond-alake]] — MongoDB speaker on agent memory
- [[concepts/playbook-pattern]] — Complementary step-by-step execution system
- [[concepts/agent-capability-tiers]] — Memory becomes critical at Tiers 3-4
- [[concepts/domain-aware-memory]] — Structured memory using domain entity types
- [[concepts/semantic-memory-noise]] — The noise problem in free-form fact generation
- [[concepts/memory-management]] — The six components of memory management
- [[concepts/agenticity-spectrum]] — Levels of agent autonomy
- [[concepts/persistence-over-prompting]] — Memory replaces prompting
- [[concepts/agent-memory-types]] — Different forms of agent memory

## Sources

- [[sources/watchv=mi83but_23o]] — Devin 2.0 and the Future of SWE, Scott Wu, Cognition
- AIEF2025 - Stop Using RAG as Memory — Daniel Chalef, Zep - https://www.youtube.com/watch?v=T5IMo5ntyhA
- AIEF2025 - Architecting Agent Memory: Principles, Patterns, and Best Practices — Richmond Alake, MongoDB - https://www.youtube.com/watch?v=W2HVdB4Jbjs
