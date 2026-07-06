---
title: Prompt Engineering Amnesia
category: concepts
tags:
- prompt-engineering
- ai-memory
- context-window
- agi
- aief2025
sources:
- AIEF2025 - Top Ten Challenges to Reach AGI — Stephen Chin, Andreas Kollegger - https://www.youtube.com/watch?v=ypyvj_56sBU
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/graphrag|GraphRAG]]'
  type: related_to
- target: '[[concepts/agi-challenges|AGI Challenges]]'
  type: is_challenge_of
- target: '[[concepts/episodic-memory-agents|Episodic Memory Agents]]'
  type: relates_to
summary: Prompt Engineering Amnesia
---

# Prompt Engineering Amnesia

Prompt engineering amnesia is the observation that current LLM-based AI systems lack persistent memory across interactions — each conversation starts fresh, requiring the user to re-establish context through prompting. [[entities/andreas-kolleger|Andreas Kollegger]] from [[entities/neo4j|Neo4j]] compared this to the movie Memento, where the main character has severe short-term memory loss and cannot remember what happened 15 minutes ago. ^[extracted]

## The Memento Analogy

In the film Memento, the protagonist Leonard Shelby has anterograde amnesia — he cannot form new memories after the traumatic event that killed his wife. Every 15 minutes or so, he forgets everything that just happened. Kollegger drew a parallel to how LLMs operate: each prompt is a fresh start, with no memory of previous interactions unless context is explicitly provided. ^[extracted]

## Implications for AI Systems

This amnesia creates several practical challenges: ^[inferred]

- **Context management** — Users must manually re-establish context in each interaction, making conversations feel disjointed
- **Prompt engineering burden** — A significant portion of AI interaction time is spent re-providing context rather than doing productive work
- **Memory-dependent tasks** — Tasks requiring continuity across interactions (research, planning, relationship management) are fundamentally harder
- **Token cost** — Repeatedly providing context consumes tokens that could be used for actual computation

## GraphRAG as a Solution

Persistent knowledge graphs can address prompt engineering amnesia by providing a shared memory layer. Instead of re-providing context through prompts, AI systems can query a [[concepts/graphrag|GraphRAG]] knowledge base that retains entity relationships and facts across sessions. This transforms the interaction from amnesic to persistent — the system remembers what happened 15 minutes ago, 15 hours ago, or 15 months ago. ^[inferred]

## Related

- [[concepts/agi-challenges|AGI Challenges]] — the broader framework this challenge belongs to
- [[concepts/graphrag|GraphRAG]] — graph-based memory as a solution
- [[concepts/episodic-memory-agents|Episodic Memory Agents]] — agents with memory of past events
- [[concepts/model-context-protocol|Model Context Protocol]] — protocol for providing context to AI systems
