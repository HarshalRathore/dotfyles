---
title: "AIEF2025 — Architecting Agent Memory: Principles, Patterns, and Best Practices"
category: references
tags: [aief2025, agent-memory, memory-management, agenticity-spectrum, rag, agentic-rag, mongodb, prompt-engineering, customer-relationships]
summary: "Richmond Alake of MongoDB presents agent memory as the core mechanism for building reliable, believable, and capable AI agents — covering memory types, management systems, and the agenticity spectrum."
sources:
  - "https://www.youtube.com/watch?v=w2hvdb4jbjs"
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
  - target: "[[concepts/agent-memory-knowledge]]"
    type: related_to
  - target: "[[concepts/memory-management]]"
    type: related_to
  - target: "[[concepts/agenticity-spectrum]]"
    type: related_to
  - target: "[[concepts/agentic-rag]]"
    type: related_to
  - target: "[[entities/mongodb]]"
    type: related_to
  - target: "[[entities/richmond-alake]]"
    type: related_to
---

# AIEF2025 — Architecting Agent Memory: Principles, Patterns, and Best Practices

**Richmond Alake** ([[entities/mongodb|MongoDB]]) delivered this talk at the AI Engineer World's Fair 2025, arguing that **memory is the single most important component** for building believable, capable, and reliable AI agents.

## Core Thesis

Memory is not optional — it is the foundation of agent intelligence. Richmond draws a direct parallel between human intelligence and memory: the most intelligent humans are distinguished by their ability to recall and apply past experience. If AI/AGI aims to mimic or surpass human intelligence, memory is a "no-brainer" requirement. ^[extracted]

## Evolution of AI Applications

Richmond traces the evolution over the past 2–3 years:

1. **Chatbots** — LLM-powered chatbots emerged with ChatGPT in November 2022 and exploded in adoption. ^[extracted]
2. **RAG** — Retrieval-Augmented Generation gave chatbots domain-specific, relevant knowledge for more personalized responses. ^[extracted]
3. **Scaling compute and data** — Larger models with more data produced emerging capabilities: reasoning and tool use. ^[extracted]
4. **AI Agents and Agentic Systems** — The current frontier, where agents perceive, reason, and act with memory. ^[extracted]

## The Agenticity Spectrum

Richmond rejects binary definitions of "what is an agent" and instead proposes a **spectrum of agenticity**, analogous to the levels of autonomous driving:

- **Minimal agent** — An LLM running a loop ^[extracted]
- **Level 4 autonomous agent** — Multiple agents with tool access, operating with little or no prompting ^[extracted]

The defining characteristic across all levels: **some form of memory** (short-term or long-term). Without memory, an agent cannot be reflective, interactive, proactive, reactive, or autonomous. ^[extracted]

## Agent Definition

Richmond's working definition: an AI agent is a **computation entity** with three capabilities:
1. **Perception** — awareness of its environment
2. **Cognition** — reasoning through an LLM
3. **Action** — tool use

But the **most important** component is **memory**. ^[extracted]

## Memory Types in Agents

Richmond maps human memory types to agent memory:

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

## Memory Management System

Memory management is the systematic process of organizing information in the context window. Richmond identifies six core components:

1. **Generation** — Creating memory from interactions
2. **Storage** — Persisting memory
3. **Retrieval** — Finding relevant memory (the most important component)
4. **Integration** — Incorporating memory into execution
5. **Updates** — Modifying existing memory
6. **Deletion** — Removing outdated memory (with "forgetting mechanisms" as a research direction) ^[extracted]

## Retrieval: RAG → Agentic RAG

Retrieval is the critical component of memory management. Richmond frames the evolution:

1. **RAG** — Retrieval as a system-level pattern (vector search is necessary but not sufficient; MongoDB provides multiple retrieval mechanisms) ^[extracted]
2. **Agentic RAG** — Retrieval as a tool the agent can call when needed, giving the agent control over when to retrieve information ^[extracted]

MongoDB positions itself as **the memory provider for agentic systems**, providing the full suite of retrieval mechanisms agents need. ^[extracted]

## Key Goals for Agent Memory

The ultimate purpose of agent memory is to make agents:
- **More reliable** — Consistent, accurate behavior across interactions
- **More believable** — Natural, human-like continuity in conversations
- **More capable** — Ability to accumulate knowledge and improve over time ^[extracted]

## Prompt Engineering vs. Persistence

Richmond makes a forward-looking claim: the focus on prompt engineering today will diminish as we shift toward **persistence-based memory**. Rather than crafting elaborate prompts for each interaction, agents will rely on accumulated memory to inform their responses — building genuine relationships with customers over time. ^[extracted]

## Key Takeaway

> "All of it is going to be centered around memory." — Richmond Alake ^[extracted]

The talk argues that memory management, not prompt engineering, is the core discipline for AI engineers building the next generation of agents. MongoDB provides the infrastructure layer for this memory system.

## Related Pages

- [[concepts/agent-memory-knowledge]] — Agent memory systems and knowledge management
- [[concepts/memory-management]] — The six components of memory management
- [[concepts/agenticity-spectrum]] — Levels of agent autonomy
- [[concepts/agentic-rag]] — Agentic RAG as retrieval-as-tool
- [[concepts/rag-pipeline-architecture]] — RAG pipeline stages
- [[concepts/semantic-memory-noise]] — Noise problem in free-form memory generation
- [[entities/mongodb]] — MongoDB as memory provider
- [[entities/richmond-alake]] — Speaker and MongoDB representative

## Sources

- AIEF2025 - Architecting Agent Memory: Principles, Patterns, and Best Practices — Richmond Alake, MongoDB - https://www.youtube.com/watch?v=W2HVdB4Jbjs
