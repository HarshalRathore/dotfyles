---
title: "HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA"
tags:
  - reference
  - talk
  - ai-engineer
  - rag
  - knowledge-graph
  - vector-database
  - evaluation
sources:
  - "[[sources/watchv=-tgqa8fzf80]]"
summary: "AI Engineer World's Fair 2025 talk covering HybridRAG architecture that fuses knowledge graph (graph-based) and semantic (vector-based) retrieval for RAG systems, including triplet extraction, ontology design, multi-hop retrieval, graph acceleration, and RAG evaluation."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# HybridRAG: A Fusion of Graph and Vector Retrieval

> **Talk:** HybridRAG: A Fusion of Graph and Vector Retrieval
> **Speaker:** [[entities/mitesh-patel|Mitesh Patel]]
> **Organization:** [[entities/nvidia|NVIDIA]]
> **Event:** AI Engineer World's Fair 2025
> **Source:** [YouTube](https://www.youtube.com/watch?v=-tgQa8Fzf80)

## Summary

A technical talk on building HybridRAG systems that combine graph-based (knowledge graph) and vector-based (semantic) retrieval. Mitesh Patel walks through the four components of a HybridRAG system — data processing, knowledge graph creation, semantic vector database creation, and inference — with practical strategies for optimizing each stage. The talk covers ontology design for LLM-based triplet extraction, fine-tuning LLMs to improve triplet quality, multi-hop graph retrieval strategies, graph acceleration with cuGraph, and RAG evaluation using the Ragas library and reward models.

## Key Topics

### HybridRAG Architecture

- HybridRAG combines two retrieval pathways: a semantic vector database and a knowledge graph
- The vector pathway: documents -> chunks -> embeddings -> vector DB (well-studied, straightforward)
- The graph pathway: documents -> LLM-based triplet extraction -> knowledge graph -> graph DB (more complex, requires careful ontology design)
- Offline phase: data processing, graph creation, vector embedding creation (one-time)
- Online phase: querying both systems and synthesizing the response ^[extracted]

### Knowledge Graph Creation

- Knowledge graphs capture relationships between entities as (entity, relationship, entity) triplets
- Triplets expose information that vector databases miss — the connections between entities
- Example: "ExxonMobil cut spending on oil and gas exploration" -> triplet (ExxonMobil, cut, spending on oil and gas exploration)
- LLMs are needed to extract structured triplets from unstructured documents
- Prompt engineering with a defined ontology is the key mechanism for triplet extraction ^[extracted]

### Ontology Design (80% of the Work)

- Ontology definition is the most critical step and the most time-consuming (~80% of the effort)
- Define a domain-specific ontology and bake it into the extraction prompt
- Poor ontology = noisy triplets = noisy retrieval
- Iterative refinement is essential — go back and forth to improve ontology quality over time ^[extracted]

### Fine-Tuning for Triplet Quality

- Experimented with fine-tuning LLMs to improve triplet extraction quality
- Results on a 100-document test set:
  - LLaMA 3.3 out of the box: 71% accuracy
  - LLaMA 3.1 + LoRA fine-tuning: 87% accuracy
- Additional improvements from data cleaning (regex, removing apostrophes/brackets) and reducing longer outputs ^[extracted]

### Multi-Hop Graph Retrieval

- Single-hop retrieval misses the key advantage of graphs — exploiting relationships across multiple nodes
- Multi-hop traversal (node 1 -> relationship -> node 2 -> relationship -> node 3) provides richer context
- Deeper traversal = better context but higher latency
- Finding the sweet spot between retrieval depth and latency is critical for production systems
- Graph acceleration (cuGraph integration with NetworkX) reduces latency, enabling deeper traversal ^[extracted]

### RAG Evaluation with Ragas

- [[entities/ragas|Ragas]] is a library for end-to-end evaluation of RAG pipelines
- Evaluates three dimensions: response quality, retrieval quality, and query interpretation
- Metrics include: faithfulness, answer relevancy, precision, recall, helpfulness, correctness, coherence, complexity, verbosity
- Default LLM integration is with GPT, but it's flexible — any model can be wired in via API
- Under the hood, Ragas uses an LLM to evaluate these metrics ^[extracted]

### Reward Models for Evaluation

- NeMoTron 340B reward model (NVIDIA) is designed to judge responses of other LLMs
- Evaluates on five parameters as a reward/quality score
- Purpose-built for response evaluation rather than general-purpose evaluation ^[extracted]

### Decision Framework: Graph vs Vector vs Hybrid

- Choice depends on data structure and application requirements
- Structured data (retail, FSI, employee databases) → good fit for graph-based systems
- If unstructured data can produce a good knowledge graph → graph path is worth experimenting
- Use graph when the application requires understanding complex entity relationships
- Graph systems are compute-heavy — only use when the use case justifies it
- Hybrid approach is the safest bet when both structured relationships and semantic understanding matter ^[inferred]

## Key Takeaways

1. Knowledge graphs capture entity relationships that vector databases miss — this is their unique advantage for RAG
2. Ontology design is ~80% of the work in building a GraphRAG system
3. Fine-tuning LLMs (e.g., with LoRA) can significantly improve triplet extraction quality (71% -> 87%)
4. Multi-hop retrieval provides richer context but requires latency optimization
5. cuGraph integration with NetworkX enables GPU-accelerated graph search
6. Ragas provides end-to-end RAG evaluation across response, retrieval, and query dimensions
7. The hybrid approach (graph + vector) is recommended when both structured relationships and semantic search are needed

## Pages Created from This Source

- [[concepts/hybridrag|HybridRAG]]
- [[concepts/graphrag|GraphRAG]]
- [[concepts/triplet-extraction|Triplet Extraction]]
- [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]]
- [[concepts/multi-hop-retrieval|Multi-Hop Retrieval]]
- [[concepts/rag-evaluation|RAG Evaluation]]
- [[concepts/graph-acceleration|Graph Acceleration]]
- [[entities/mitesh-patel|Mitesh Patel]]
- [[entities/nvidia|NVIDIA]]
- [[entities/ragas|Ragas]]
- [[entities/neo4j|Neo4j]]

## Sources

- [YouTube: HybridRAG: A Fusion of Graph and Vector Retrieval](https://www.youtube.com/watch?v=-tgQa8Fzf80)
- [NVIDIA Developer Program](https://developer.nvidia.com/)
