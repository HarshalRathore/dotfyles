---
title: "Hybrid Graph Extraction"
tags:
  - knowledge-graph
  - extraction
  - llm
  - ontology
  - methodology
aliases:
  - LLM + Expert Graph Extraction
  - Semi-Automated Graph Extraction
sources:
  - "AIEF2025 - Wisdom-Driven Knowledge Augmented Generation at Scale - Chin Keong Lam, Patho AI - https://www.youtube.com/watch?v=9AQOvT8LnMI"
  - "AI Engineer World's Fair 2025 talk — HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA - https://www.youtube.com/watch?v=-tgQa8Fzf80"
summary: "A graph construction methodology that combines fully automated LLM triplet extraction with manual expert taxonomy refinement, where domain experts prune and correct the auto-extracted graph to ensure quality."
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.35
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
relationships:
  - target: "[[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]]"
    type: uses
  - target: "[[concepts/triplet-extraction|Triplet Extraction]]"
    type: uses
  - target: "[[concepts/kag-knowledge-augmented-generation|KAG]]"
    type: used_by
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: used_by
---

# Hybrid Graph Extraction

Hybrid Graph Extraction is a methodology for constructing knowledge graphs that sits between two extremes: fully automated LLM-based extraction and fully manual expert curation. The approach uses an LLM to perform initial [[concepts/triplet-extraction|triplet extraction]] from source documents, then has domain experts review, prune, and refine the resulting graph — particularly the taxonomy and relationship structure. ^[extracted]

## The Three Approaches

| Approach | Method | Trade-offs |
|---|---|---|
| **Fully automatic** | LLM-based graph transformer extracts all triplets automatically | Fast, cheap, but noisy — produces many incorrect or irrelevant relationships |
| **Fully manual** | Domain experts hand-craft every entity and relationship | Most accurate, but extremely slow and expensive |
| **Hybrid (recommended)** | LLM extracts initial graph → expert interviews + pruning → refined taxonomy | Balances speed and quality; experts correct the most important errors |

## The Hybrid Process

Chin Keong Lam specifically recommends the hybrid approach: ^[extracted]

1. **Automated extraction** — Use an LLM to extract entity-relationship triplets from the source corpus (e.g., via an LLM graph transformer or tools like Neo4j's LLM Graph Builder)
2. **Expert interview** — Interview domain experts to understand the correct taxonomy for the domain
3. **Pruning** — Experts review the auto-extracted graph, remove incorrect relationships, and fix inaccurate connections
4. **Taxonomy refinement** — Domain experts establish the canonical entity types and relationship types that the system should recognize
5. **Iteration** — As new data arrives, repeat the automated extraction step against the refined taxonomy, with periodic expert review

## Why It Matters

The quality of a knowledge graph depends directly on the quality of its ontology (taxonomy + relationship definitions). [[concepts/knowledge-graph-ontology-design|Ontology design]] is ~80% of the effort in building a production GraphRAG or [[concepts/kag-knowledge-augmented-generation|KAG]] system. The hybrid approach ensures that the ontology captures genuine domain semantics rather than just statistical patterns in the training data. ^[extracted] ^[inferred]

## Tools

The talk recommends starting with Neo4j's LLM Graph Builder (open-source, Docker-based) which converts text to a graph out of the box, then pruning and refining the result. ^[extracted]

## Sources

- [[references/aief2025-wisdom-driven-kag-chin-keong-lam|AIEF2025 — Wisdom-Driven Knowledge Augmented Generation at Scale — Chin Keong Lam, Patho AI]] — Conference talk
- [[references/hybridrag-fusion-graph-vector-retrieval-mitesh-patel|HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA]] — Conference talk
