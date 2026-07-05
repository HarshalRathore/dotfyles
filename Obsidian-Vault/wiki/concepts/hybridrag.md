---
title: "HybridRAG"
tags:
  - rag
  - retrieval
  - knowledge-graph
  - vector-database
  - hybrid
  - architecture
sources:
  - "[[sources/watchv=-tgqa8fzf80]]"
  - "[[sources/watchv=9aqovt8lnmi]]"
summary: "A RAG architecture that fuses two retrieval pathways — a knowledge graph (graph-based retrieval) and a semantic vector database (embedding-based retrieval) — to capture both structured entity relationships and semantic similarity."
provenance:
  extracted: 0.78
  inferred: 0.17
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: extends
  - target: "[[concepts/triplet-extraction|Triplet Extraction]]"
    type: uses
  - target: "[[concepts/multi-hop-retrieval|Multi-Hop Retrieval]]"
    type: uses
  - target: "[[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]]"
    type: related_to
---

# HybridRAG

HybridRAG is a retrieval-augmented generation architecture that combines two complementary retrieval pathways: a **knowledge graph** (graph-based retrieval using entity-relationship triplets) and a **semantic vector database** (embedding-based retrieval using chunked document vectors). The fusion addresses a fundamental gap in standard RAG — vector databases capture semantic similarity but miss the structured relationships between entities that knowledge graphs excel at representing. ^[extracted]

## Architecture

HybridRAG has four main components with an offline and online phase:

### Offline Phase

1. **Data Processing** — cleaning and preparing source documents for both pathways (regex cleaning, removing noise characters)
2. **Knowledge Graph Creation** — using LLMs to extract (entity, relationship, entity) triplets from documents guided by a defined [[concepts/knowledge-graph-ontology-design|ontology]]
3. **Semantic Vector Database Creation** — chunking documents into passages with configurable chunk size and overlap, running an embedding model, and storing vectors

### Online Phase

4. **Hybrid Inference** — when a query arrives, it is routed to both the graph and vector retrieval paths. The graph path performs [[concepts/multi-hop-retrieval|multi-hop traversal]] to capture entity relationships, while the vector path finds semantically similar passages. Results are synthesized into a response. ^[extracted]

## Why Hybrid

Vector databases alone capture semantic similarity but miss entity relationships. Knowledge graphs alone capture structured relationships but may miss semantically relevant passages that don't match entity patterns. HybridRAG captures both, providing richer context for the LLM to generate responses. ^[extracted]

## Important Design Considerations

- [[concepts/knowledge-graph-ontology-design|Ontology design]] is ~80% of the work — poor ontology leads to noisy triplets and noisy retrieval
- Multi-hop graph depth trades off context richness vs latency
- [[concepts/graph-acceleration|Graph acceleration]] (e.g., cuGraph) helps mitigate latency in deep graph traversal
- Data cleaning (regex, removing noise characters) measurably improves triplet quality ^[extracted]

## Decision Framework

Use HybridRAG when:
- Your data has both structured relationships and unstructured text that benefit from semantic search
- Your application needs to answer questions that span entity relationships (e.g., "What is ExxonMobil's spending on oil and gas exploration this quarter?")
- The compute overhead of managing both a graph and vector database is justified by the use case

Pure vector RAG may suffice when only semantic similarity matters. Pure GraphRAG works best with structured data. ^[inferred]


## Related

- [[concepts/graphrag|GraphRAG]] — the graph-only subset of HybridRAG
- [[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]] — wisdom-driven graph architecture using knowledge cards for quantitative precision
- [[concepts/triplet-extraction|Triplet Extraction]] — the mechanism for building knowledge graphs from text
- [[concepts/multi-hop-retrieval|Multi-Hop Retrieval]] — the graph traversal strategy used in HybridRAG
- [[concepts/rag-evaluation|RAG Evaluation]] — how to measure HybridRAG system quality
- [[concepts/graph-acceleration|Graph Acceleration]] — GPU acceleration for large-scale graph traversal

## Sources
- [[references/hybridrag-fusion-graph-vector-retrieval-mitesh-patel|HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA]] — Conference talk
- [[references/aief2025-wisdom-driven-kag-chin-keong-lam|AIEF2025 — Wisdom-Driven Knowledge Augmented Generation at Scale — Chin Keong Lam, Patho AI]] — Conference talk
