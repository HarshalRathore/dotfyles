---
title: "Domain-Aware Memory"
category: concepts
tags: [agent-memory, domain-model, knowledge-graph, rag, semantic-similarity, retrieval]
summary: "An approach to agent memory where the memory model is defined by the business domain's entity types and relationships, rather than free-form fact generation into vector databases."
sources:
  - "[[sources/watchv=t5imo5ntyha]]"
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
  - target: "[[concepts/semantic-similarity]]"
    type: contradicts
  - target: "[[concepts/knowledge-graph-ontology-design]]"
    type: uses
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: extends
  - target: "[[concepts/agent-memory-knowledge]]"
    type: implements
---

# Domain-Aware Memory

**Domain-aware memory** is an approach to agent memory where the memory model is explicitly defined by the business domain's entity types, relationships, and constraints — rather than generating free-form facts and storing them in a vector database. ^[extracted]

## The Core Problem

The dominant approach to agent memory — generating arbitrary facts and dumping them into a vector database — suffers from a fundamental flaw: **semantic similarity is not business relevance**. ^[extracted]

When an agent generates facts like "I wake up at 7 AM" and "my dog's name is Melody" alongside domain-relevant facts like "I listen to jazz music," all these facts are stored as vectors in the same embedding space. When the agent later searches for "my favorite tunes," it retrieves facts that are semantically similar to the query — which includes the dog's name because "Melody" is semantically close to "tunes." ^[extracted]

Vectors are projections into an embedding space with no causal or relational structure between them. There is no mechanism to differentiate domain-relevant facts from irrelevant ones. ^[extracted]

## How Domain-Aware Memory Works

Instead of free-form fact generation, domain-aware memory requires:

1. **Developer-defined entity types** — The developer specifies what entities matter in their domain (e.g., `FinancialGoal`, `Debt`, `IncomeSource` for a finance app; `Playlist`, `Track`, `Genre` for a media player). ^[extracted]

2. **Typed fields with business rules** — Each entity type has fields with defined types, constraints, and allowed values (e.g., a `Debt` entity has a `monthly_payment` field that is a number with a currency). ^[extracted]

3. **Graph-based storage** — Entities are stored in a knowledge graph with typed nodes and edges, not as free-form text in a vector database. ^[extracted]

4. **Structured retrieval** — Queries filter by entity type and field values, returning only business-relevant facts. ^[extracted]

## Contrast with Vector-Based Memory

| Aspect | Vector-Based Memory | Domain-Aware Memory |
|---|---|---|
| Fact generation | Free-form LLM output | Structured entity instances |
| Storage | Vector database / Redis | Knowledge graph |
| Retrieval | Semantic similarity search | Filtered graph queries |
| Relevance signal | Embedding proximity | Entity type + field matching |
| Noise problem | Irrelevant facts pollute retrieval | Only registered entity types stored |

## Implementation Examples

**Zep** ([[entities/zep|Zep]]) implements domain-aware memory with SDKs for Python, TypeScript, and Go. Developers define entity types using Pydantic, Zod, or Go structs, and Zep builds the corresponding ontology in its temporal graph. ^[extracted]

**Graffiti** ([[concepts/graffiti-temporal-graph|Graffiti]]) is Zep's open-source temporal graph framework that enables building custom entities and edges for any business domain. ^[extracted]

## Relationship to Other Concepts

Domain-aware memory is closely related to but distinct from:

- **[[concepts/graphrag|GraphRAG]]** — GraphRAG uses knowledge graphs for retrieval-augmented generation; domain-aware memory uses them for agent memory storage. They can be combined. ^[inferred]
- **[[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]]** — Domain-aware memory requires ontology design, but focuses specifically on the agent memory use case. ^[inferred]
- **[[concepts/semantic-similarity|Semantic Similarity]]** — Domain-aware memory argues that semantic similarity alone is insufficient for memory retrieval. ^[extracted]

## Related Pages

- [[entities/zep]] — Zep's implementation of domain-aware memory
- [[concepts/graffiti-temporal-graph]] — Graffiti, the open-source temporal graph framework
- [[concepts/semantic-similarity]] — Why semantic similarity fails for memory retrieval
- [[concepts/agent-memory-knowledge]] — Agent memory systems more broadly
- [[references/aief2025-stop-using-rag-as-memory-daniel-chalef-zep]] — The talk that articulated this concept

## Sources

- AIEF2025 - Stop Using RAG as Memory — Daniel Chalef, Zep - https://www.youtube.com/watch?v=T5IMo5ntyhA
