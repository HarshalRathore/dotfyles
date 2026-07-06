---
title: Episodic Memory for Agents
category: concepts
tags:
- memory
- episodic-memory
- agents
- state-management
- graph-databases
sources:
- AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/multi-agent-systems|Multi-Agent Systems]]'
  type: used_by
- target: '[[concepts/graphrag|GraphRAG]]'
  type: implemented_via
- target: '[[concepts/decision-making-under-uncertainty|Decision-Making Under Uncertainty]]'
  type: mitigates
summary: Episodic Memory for Agents
---

# Episodic Memory for Agents

Episodic memory in AI agents refers to the ability to persist, retrieve, and prune information about past states and outcomes across the lifetime of a workflow — not just the immediate context window. Unlike transient context, episodic memory enables agents to learn from past interactions and maintain coherent state over extended operations.

## Why It Matters

In multi-agent systems, each agent operates with limited context. Episodic memory solves several problems:

1. **State persistence** — Information captured by one agent remains available to others
2. **Error learning** — Agents can remember past errors and avoid repeating them
3. **Context continuity** — Long workflows maintain coherence across many steps
4. **State pruning** — Irrelevant information can be identified and removed to reduce noise

## Graph-Based Episodic Memory

Tom Smoker (WhyHow) describes a specific pattern for episodic memory using graphs:

> "We spend time making so that the memory is not just immediate, but it's episodic. We spend time capturing the information state over time and then pruning that state."

The pattern follows five operations:

1. **Capture** — Information state is captured at each step of the workflow
2. **Expand** — New information is added to the existing state
3. **Prune** — Irrelevant or outdated information is removed
4. **Structure** — Information is organized in a structured format (graph)
5. **Query** — The structured state is queried for relevant information

This pattern is implemented using knowledge graphs, where each node represents a piece of information and edges represent relationships between pieces of information.

## Advantages Over LLM Context

| Aspect | LLM Context | Graph-Based Episodic Memory |
|---|---|---|
| Capacity | Limited by context window | Effectively unbounded |
| Precision | Approximate (embedding-based) | Exact (structured nodes/edges) |
| Pruning | Difficult (entire context loaded) | Targeted (remove specific nodes) |
| Retrieval | Semantic similarity | Structured queries + traversal |
| Learning | Per-session only | Persistent across sessions |

## Related Concepts

- [[concepts/multi-agent-systems|Multi-Agent Systems]] — where episodic memory is most needed
- [[concepts/graphrag|GraphRAG]] — graphs as the implementation substrate
- [[concepts/decision-making-under-uncertainty|Decision-Making Under Uncertainty]] — memory as error mitigation
- [[concepts/probabilistic-accuracy-chaining|Probabilistic Accuracy Chaining]] — memory helps break accuracy chains
- [[concepts/agent-architecture|Agent Architecture]] — memory as a component of agent design

## Sources

- AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM
