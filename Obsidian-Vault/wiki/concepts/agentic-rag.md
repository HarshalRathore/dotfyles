---
title: "Agentic RAG"
tags:
  - concept
  - rag
  - retrieval
  - agents
  - accuracy
  - microsoft
aliases: [multi-shot RAG, iterative RAG, agentic retrieval]
sources:
  - "AI Engineer World's Fair 2025 - Spark to System: Building the Open Agentic Web — Asha Sharma, Microsoft - https://www.youtube.com/watch?v=7Hrw6rtXaHc"
  - "AIEF2025 - Agentic GraphRAG: Simplifying Retrieval Across Structured & Unstructured Data — Zach Blumenfeld - https://www.youtube.com/watch?v=CzM3cW6FdBs"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Agentic RAG

Agentic RAG is a multi-shot, iterative approach to [[concepts/information-retrieval|retrieval-augmented generation]] where the agent plans, retrieves, evaluates, and re-queries in a loop — unlike naive single-shot RAG which retrieves once and generates. ^[extracted] The concept was introduced by [[entities/asha-sharma|Asha Sharma]] ([[entities/microsoft|Microsoft]]) at AI Engineer World's Fair 2025. ^[extracted]

## Key Difference from Standard RAG

| Aspect | Single-Shot RAG | Agentic RAG |
|---|---|---|
| Retrieval | One query, one fetch | Multi-shot, iterative |
| Planning | None | Agent plans retrieval strategy |
| Evaluation | None | Agent evaluates results and decides if re-query is needed |
| Accuracy | Baseline | 40% improvement on complex queries ^[extracted] |

## Implementation

[[entities/microsoft|Microsoft]]'s [[entities/azure-ai-foundry|Azure AI Foundry]] includes agentic RAG capabilities, deployed across 50% of current AI applications that already use RAG. ^[extracted] The agent can decide to refine its query, retrieve from different sources, or combine results before generating a final answer.

## Relationship to Other Patterns

- Complements [[concepts/rag-evaluation]] by adding an evaluation step within the retrieval loop itself
- Can be combined with [[concepts/hybridrag]] (graph + vector fusion) for richer retrieval strategies
- Fits within the broader [[concepts/agent-loop|agent loop]] pattern — the retrieval loop is a sub-loop of the overall agent reasoning process ^[inferred]

## GraphRAG as a Specialization

An emerging specialization of agentic RAG is [[concepts/graphrag|GraphRAG]] augmented with agent-driven query planning. Instead of iterative text retrieval, the agent decomposes the question into structured graph queries (Cypher) executed against a [[concepts/knowledge-graph-ontology-design|knowledge graph]]. ^[extracted]

Zach Blumenfeld at AIEF2025 demonstrated this pattern: an agent with an [[concepts/model-context-protocol|MCP]]-connected Neo4j server can read the graph schema and generate Cypher statements for precise aggregation and relationship traversal — going beyond what iterative text retrieval can achieve for analytical questions. ^[extracted]

Key differences from iterative text-based agentic RAG:

| Aspect | Text-Based Agentic RAG | Graph-Augmented Agentic RAG |
|---|---|---|
| Retrieval mechanism | Multi-shot vector/text search | Structured Cypher queries against entities |
| Query type | Semantic similarity | Precise aggregation, counting, relationship traversal |
| Explainability | Opaque — "retrieved similar passages" | Transparent — "found 28 people with Python skill via KNOWS relationship" |
| Data model | Embedding space (opaque) | Explicit entity-relationship schema (introspectable) |

The two are complementary: text-based agentic RAG can be used for open-ended research queries, while graph-augmented agentic RAG handles analytical and relationship-oriented questions. Both follow the same pattern of iterative decomposition, but the retrieval surface differs fundamentally. ^[inferred]

## Related

- [[concepts/rag-evaluation]]
- [[concepts/agent-loop]]
- [[concepts/information-retrieval]]
- [[references/ai-eng-worlds-fair-2025-spark-to-system-open-agentic-web-asha-sharma]]

## Sources

- AI Engineer World's Fair 2025 — Spark to System: Building the Open Agentic Web, Asha Sharma. https://www.youtube.com/watch?v=7Hrw6rtXaHc
