---
title: Brain Memory Analogy
category: concepts
tags:
- agent-memory
- cognitive-science
- human-memory
- cerebellum
- memory-types
- ai-design
summary: Using human brain memory architecture as an analogy for designing agent memory systems — mapping short-term, long-term, working, semantic, episodic, procedural memory, and cerebellum storage to age...
sources:
- 'https://www.youtube.com/watch?v=w2hvdb4jbjs'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/agent-memory-types]]'
  type: related_to
- target: '[[concepts/memory-management]]'
  type: related_to
- target: '[[concepts/agent-memory-knowledge]]'
  type: related_to
---

# Brain Memory Analogy

The **brain memory analogy** is the framework of using human brain memory architecture as a model for designing agent memory systems. Proposed by [[entities/richmond-alake|Richmond Alake]] ([[entities/mongodb|MongoDB]]) at AIEF2025.

## Core Argument

Richmond's central argument: if AI/AGI aims to mimic or surpass human intelligence, and human intelligence is determined by the ability to recall and apply past experience, then agents must have memory systems modeled after the human brain. ^[extracted]

> "If AI or AGI is meant to mimic human intelligence, it's a no-brainer that we need memory within the agents that we're building today." — Richmond Alake ^[extracted]

## Human Memory Architecture

The human brain contains multiple distinct memory systems that work together:

| Brain Memory System | Function | Agent Equivalent |
|---|---|---|
| Short-term memory | Immediate awareness | Context window / conversation history |
| Long-term memory | Stored knowledge | Persistent knowledge store |
| Working memory | Active computation | Working memory / cache |
| Semantic memory | Facts and concepts | Knowledge store |
| Episodic memory | Personal experiences | Conversational memory |
| Procedural memory | Skills and routines | Playbooks / stored procedures |
| Cerebellum | Routines and skills storage | Stored procedures / automation scripts | ^[extracted] ^[inferred]

## The Cerebellum Example

Richmond uses the cerebellum as a concrete example: it stores knowledge of physical routines and skills (like doing a backflip) in a way that enables automated execution without conscious thought. For agents, this maps to **stored procedures** — pre-defined routines that execute without requiring explicit prompting for each step. ^[extracted]

## Why the Analogy Matters

The brain memory analogy provides a principled foundation for agent memory design:

1. **Multiple memory types are necessary** — No single memory system handles all cognitive tasks in the brain
2. **Different memory types serve different purposes** — Procedural memory enables different behaviors than semantic memory
3. **Memory management is cognitive architecture** — How memory is organized determines what the agent can do

## Relationship to Agent Design

The brain memory analogy supports the view that agents need:

- **Short-term memory** for immediate context
- **Long-term memory** for accumulated knowledge
- **Working memory** for active computation
- **Semantic memory** for domain knowledge
- **Procedural memory** for automated routines ^[inferred]

This directly informs the [[concepts/memory-management|memory management]] architecture: generation, storage, retrieval, integration, updates, and deletion must operate across all these memory types.

## Related Pages

- [[concepts/agent-memory-types]] — Different forms of agent memory
- [[concepts/memory-management]] — The six components of memory management
- [[concepts/agent-memory-knowledge]] — Agent memory systems
- [[concepts/agenticity-spectrum]] — Memory requirements at different autonomy levels

## Sources

- AIEF2025 - Architecting Agent Memory: Principles, Patterns, and Best Practices — Richmond Alake, MongoDB - https://www.youtube.com/watch?v=W2HVdB4Jbjs
