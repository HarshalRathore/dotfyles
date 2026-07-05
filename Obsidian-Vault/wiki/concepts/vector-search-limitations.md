---
title: "Vector Search Limitations"
category: concepts
tags:
  - vector-search
  - rag
  - retrieval
  - chunking
  - limitations
  - aief2025
sources:
  - "AIEF2025 - When Vectors Break Down: Graph-Based RAG for Dense Enterprise Knowledge - Sam Julien, Writer - https://www.youtube.com/watch?v=XlAIgmi_Vow"
  - "AIEF2025 - Vector Search Benchmarking - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=YrUBFXa1KUY"
summary: "Two fundamental failure modes of vector-based RAG (chunking inaccuracy, concentrated data overwhelm) plus benchmarking-specific failure modes: read-only bias, ignored quality metrics, and the HNSW filtering paradox where restrictive filters make queries slower."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: contradicts
  - target: "[[concepts/vector-similarity-vs-relevance|Vector Similarity vs. Relevance]]"
    type: related_to
  - target: "[[concepts/enterprise-rag|Enterprise RAG]]"
    type: extends
  - target: "[[concepts/hnsw-filtering-paradox|HNSW Filtering Paradox]]"
    type: related_to
  - target: "[[concepts/ann-quality-aware-benchmarking|ANN Quality-Aware Benchmarking]]"
    type: related_to
---

# Vector Search Limitations

Vector search is the dominant retrieval paradigm for RAG, but it has two fundamental failure modes that become critical at enterprise scale, plus additional failure modes specific to how vector search is benchmarked.

## Failure Mode 1: Chunking Causes Inaccurate Answers

Naive chunking combined with nearest neighbor search can produce factually incorrect answers. The mechanism: when text is split into chunks, the vector embedding of a chunk captures semantic proximity rather than factual accuracy. ^[extracted]

**Example**: A text about Apple's founding timeline. When chunked naively, a query for "when was Macintosh created" returns 1983 instead of 1984, because the Macintosh fact lands in the same chunk as the Lisa introduction (which was earlier). The nearest neighbor search retrieves the chunk containing the wrong date because it's semantically close to the query, not because it contains the correct answer. ^[extracted]

This is a structural problem: chunking breaks the temporal and logical relationships between facts, and vector search has no way to reconstruct them. ^[inferred]

## Failure Mode 2: Concentrated Data Overwhelms Retrieval

Enterprise documents tend to be highly concentrated in vocabulary. A mobile phone company's thousands of documents all discuss megapixels, cameras, battery life. When asked to compare two phone models, vector search returns a flood of semantically similar results with no way to distinguish which facts apply to which model. ^[extracted]

The problem: vector similarity is high across all documents in a concentrated domain, so the top-K retrieval returns many results that are all "similar" but none of them are specifically relevant to the comparison being asked. ^[inferred]

## Why This Matters for Enterprise RAG

These failure modes are amplified in enterprise settings because:

1. **Data is dense and specialized** — Terabytes of documents using very specific language, with low vocabulary diversity
2. **Accuracy is critical** — Regulated industries (healthcare, finance) cannot tolerate hallucinated or incorrect answers
3. **Scale compounds the problem** — More documents → more concentration → worse retrieval quality ^[extracted]

## Alternative Approaches

[[entities/writer|Writer]] addressed these limitations by moving to graph-based RAG, where retrieval traverses entity-relationship edges rather than computing embedding distances. This preserves relationships between text chunks and provides structured context to the LLM. ^[extracted]

The approach is most effective as part of a **hybrid retrieval system** combining graph, full-text, and similarity search. ^[extracted]

## Benchmarking-Specific Failure Modes

Philipp Krenn (Elastic) identifies additional ways vector search systems fail in practice, particularly around how they are benchmarked:

- **Read-only bias** — Most benchmarks use read-only datasets, but real workloads are read-write, introducing index merges and segment management overhead ^[extracted]
- **Quality metric omission** — ANN search quality varies with search parameters; comparing latency without precision/recall is meaningless ^[extracted]
- **The HNSW filtering paradox** — In HNSW-based ANN search, applying a restrictive filter makes queries slower (opposite of traditional databases) because more candidates must be examined ^[extracted]
- **Configuration bias** — Even unintentionally, benchmarks tune shard size, memory, compression, and instance sizing for their own system ^[extracted]

## Related

- [[concepts/graphrag|GraphRAG]] — the alternative retrieval architecture
- [[concepts/vector-similarity-vs-relevance|Vector Similarity vs. Relevance]] — why similarity ≠ relevance
- [[concepts/enterprise-rag|Enterprise RAG]] — the domain where these limitations matter most
- [[concepts/hybrid-search|Hybrid Search]] — combining retrieval strategies to mitigate limitations
- [[concepts/hnsw-filtering-paradox|HNSW Filtering Paradox]] — why filtering makes HNSW slower
- [[concepts/ann-quality-aware-benchmarking|ANN Quality-Aware Benchmarking]] — why quality metrics matter in benchmarks
