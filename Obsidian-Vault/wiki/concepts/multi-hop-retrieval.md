---
title: "Multi-Hop Retrieval"
tags:
  - rag
  - knowledge-graph
  - retrieval
  - graph-traversal
  - latency
aliases:
  - Multi-Hop Graph Retrieval
  - Graph Traversal Strategy
sources:
  - "AI Engineer World's Fair 2025 talk — HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA - https://www.youtube.com/watch?v=-tgQa8Fzf80"
  - "AIEF2025 - Wisdom-Driven Knowledge Augmented Generation at Scale - Chin Keong Lam, Patho AI - https://www.youtube.com/watch?v=9AQOvT8LnMI"
  - "AIEF2025 - Agentic GraphRAG: Simplifying Retrieval Across Structured & Unstructured Data — Zach Blumenfeld - https://www.youtube.com/watch?v=CzM3cW6FdBs"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: uses
  - target: "[[concepts/graph-acceleration|Graph Acceleration]]"
    type: related_to
  - target: "[[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]]"
    type: uses
---


# Multi-Hop Retrieval

Multi-hop retrieval is a graph traversal strategy used in [[concepts/graphrag|GraphRAG]], [[concepts/hybridrag|HybridRAG]], and [[concepts/kag-knowledge-augmented-generation|KAG]] systems that navigates multiple relationship edges from a starting entity — entity 1 -> relationship -> entity 2 -> relationship -> entity 3 — to collect richer contextual information for RAG. ^[extracted]

## Why Multi-Hop Matters

Single-hop retrieval (fetching only immediate neighbors of a matched entity) misses the key advantage of knowledge graphs: the ability to exploit structured relationships across multiple nodes. Multi-hop traversal provides substantially richer context than flat retrieval because it captures chains of related information that are structurally connected but may not appear in the same semantic neighborhood. ^[extracted]

## The Depth vs Latency Trade-Off

| Depth | Context Richness | Latency |
|---|---|---|
| Single hop | Minimal context, limited to direct neighbors | Lowest |
| Double hop | Moderate — captures entity chains | Moderate |
| Deeper (3+ hops) | Richest — captures full relationship networks | Highest |

- Deeper traversal provides better context for the LLM to generate accurate responses
- However, deeper traversal increases retrieval latency significantly
- Finding the **sweet spot** between depth and latency is critical for production systems
- Graph [[concepts/graph-acceleration|acceleration]] (GPU-accelerated algorithms) enables deeper traversal without proportional latency increases ^[extracted]

## Graph Traversal for Similarity

Beyond context enrichment for RAG, multi-hop traversal serves a different purpose: **computing similarity between entities** by measuring neighborhood overlap. Zach Blumenfeld at AIEF2025 demonstrated this for employee skills analysis: the agent traverses 0 to 3 hops across shared skills, domains, and accomplishments to find the most similar person and explain why. ^[extracted]

```cypher
MATCH path = (p1:Person {id: $personId})-[*0..3]-(p2:Person {id: $otherPersonId})
RETURN path
```

The overlap calculation works by: ^[extracted]

1. Finding all entities (skills, accomplishments, domains) connected to both source and target
2. Counting shared entities per category
3. Normalizing by each entity's total degree
4. Returning the highest-scoring match with an explanation of which relationships contributed

This approach is distinct from single-path traversal (used for context enrichment in RAG): similarity traversal explores the entire neighborhood within a bounded radius, while RAG traversal follows specific relationship chains to collect contextual information. ^[inferred]

Key advantage: the similarity is **explainable** — the agent can show "Person A and Person B share skills {Python, SQL} and domains {AI, Data Engineering}" rather than an opaque cosine similarity score. ^[extracted]

The variable-length path pattern also means that adding new node or relationship types to the graph (e.g., collaboration edges) automatically extends the similarity computation without query changes. ^[extracted]

## Production Considerations

- Latency constraints vary by application — real-time chatbots need fast retrieval (shallow hops), while deep research applications can tolerate deeper traversal
- Caching frequent entity neighborhoods can amortize traversal cost
- Multi-hop retrieval is a core capability of KAG systems for answering complex analytical questions like competitive analysis queries. ^[inferred]

## Related
- [[concepts/graphrag|GraphRAG]] — the primary consumer of multi-hop retrieval
- [[concepts/hybridrag|HybridRAG]] — hybrid architecture using multi-hop graph + vector retrieval
- [[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]] — wisdom-driven graph architecture using multi-hop traversal for complex queries

## Sources
- [[references/hybridrag-fusion-graph-vector-retrieval-mitesh-patel|HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA]] — Conference talk
- [[references/aief2025-wisdom-driven-kag-chin-keong-lam|AIEF2025 — Wisdom-Driven Knowledge Augmented Generation at Scale — Chin Keong Lam, Patho AI]] — Conference talk
