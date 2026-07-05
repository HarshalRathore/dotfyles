---
title: "Graph State Management"
category: concepts
tags:
  - state-management
  - graphs
  - agents
  - knowledge-graphs
  - data-models
sources:
  - "AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/multi-agent-systems|Multi-Agent Systems]]"
    type: used_by
  - target: "[[concepts/episodic-memory-agents|Episodic Memory for Agents]]"
    type: implements
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: related_to
---

# Graph State Management

Graph state management is the practice of using knowledge graphs as the primary data structure for managing the state of multi-agent workflows. Rather than storing state in flat data structures or LLM context windows, state is represented as a network of entities connected by typed relationships, enabling structured queries, multi-hop traversal, and targeted pruning.

## The Five Operations

Tom Smoker (WhyHow) describes five operations that define graph-based state management:

1. **Capture** — Information state is captured at each step of the workflow and stored as nodes and edges in the graph
2. **Expand** — New information is added to the graph by creating new nodes and relationships
3. **Prune** — Irrelevant or outdated information is removed by deleting specific nodes and edges
4. **Structure** — Information is organized in a structured format with typed relationships, enabling meaningful queries
5. **Query** — The structured state is queried using graph traversal, pattern matching, and aggregation

## Why Graphs for State?

Graphs provide several advantages over flat data structures for state management:

- **Explicit relationships** — The connections between pieces of state are explicit, not implicit in the data layout
- **Multi-hop traversal** — State can be navigated across multiple degrees of separation
- **Targeted pruning** — Specific nodes/edges can be removed without affecting unrelated state
- **Structured queries** — Queries can follow relationship paths for precise state retrieval
- **Extensibility** — New relationship types can be added without schema refactoring

## Domain-Specific State

In litigation support, the graph state represents:

- **Individuals** — harmed people, their demographics, exposures
- **Products** — pharmaceutical products, ingredients, concentrations, IDs
- **Relationships** — who used which product, which products contain which ingredients, which ingredients cause which harms
- **Evidence** — scientific studies, regulatory findings, legal precedents

This networked representation enables queries like "find all individuals who used Product X containing Ingredient Y with concentration Z" — a query that would be complex and error-prone in a flat data model.

## Relationship to Guard Rails

Graph state management enables guard rails by providing a structured substrate against which agent outputs can be validated. If an agent produces an incorrect result, the graph can be queried to identify the discrepancy and the specific node/edge that needs correction.

## Related Concepts

- [[concepts/multi-agent-systems|Multi-Agent Systems]] — where state management is critical
- [[concepts/episodic-memory-agents|Episodic Memory for Agents]] — memory as a specific use case
- [[concepts/graphrag|GraphRAG]] — graphs for retrieval (related but distinct from state management)
- [[concepts/litigation-agents|Litigation Agents]] — domain where this pattern is applied
- [[concepts/decision-making-under-uncertainty|Decision-Making Under Uncertainty]] — state as uncertainty mitigation

## Sources

- AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM
