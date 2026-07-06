---
title: Semantic Similarity
tags:
- nlp
- embeddings
- word-relationships
- connections
- graph-coloring
- agent-memory
- rag
aliases:
- Semantic Similarity
- Semantic Relatedness
- Word Similarity
sources:
- 'https://www.youtube.com/watch?v=p_uhfgh4j9y'
- 'https://www.youtube.com/watch?v=t5imo5ntyha'
summary: The measure of how closely related two words are in meaning. Used as edge weights in Connections graph coloring solvers. Critiqued as insufficient for business-relevant memory retrieval in agent sy...
provenance:
  extracted: 0.6
  inferred: 0.3
  ambiguous: 0.1
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/graph-coloring]]'
  type: used_in
- target: '[[concepts/connections-game]]'
  type: applied_to
- target: '[[concepts/abstract-reasoning]]'
  type: enables
- target: '[[concepts/llm-judge-best-practices]]'
  type: related_to
- target: '[[concepts/domain-aware-memory]]'
  type: contrasted_with
- target: '[[concepts/business-relevance-retrieval]]'
  type: replaced_by
category: concepts
---

# Semantic Similarity

Semantic similarity measures how closely related two words or concepts are in meaning. It is a foundational concept in NLP and serves as the mechanism for building Connections solvers. ^[extracted]

## Role in Connections Solvers

In [[entities/shafik-quoraishee|Shafik Quoraishee]]'s graph coloring formulation of Connections, semantic similarity determines the **edge weights** between word nodes: ^[extracted]

- Each pair of the 16 words on the board has a semantic similarity score
- These scores form the edges of the graph
- Stronger edges (higher similarity) indicate words that are more likely to belong to the same category
- The edge weights create a **search space** for algorithms to find the optimal category assignment

Without semantic similarity edges, the solver falls into random guessing territory. The edge weights are what distinguish signal from noise. ^[extracted]

## Semantic Similarity vs. Abstract Reasoning

Semantic similarity alone is not sufficient for solving Connections — it is the mechanism, not the reasoning. ^[inferred]

- **Semantic similarity** provides the raw material — which words are related
- **Abstract reasoning** determines whether those relationships are the *correct* ones for the puzzle's categories

Decoy words in Connections are specifically designed to have high semantic similarity to words in an easier category, but belong to a different category entirely. This is where semantic similarity must be combined with deeper reasoning to avoid being misled. ^[inferred]

## Measuring Semantic Similarity

Common approaches include: ^[inferred]

- **Word embeddings** (Word2Vec, GloVe) — vector space proximity
- **Transformer-based embeddings** (BERT, sentence-transformers) — contextual similarity
- **LLM-based similarity** — asking an LLM to rate how related two words are
- **Co-occurrence statistics** — how often words appear together in text

The choice of similarity metric significantly affects solver performance, particularly on purple-category puzzles with decoys. ^[inferred]

## Embedding Model Improvements

As of 2025, embedding models achieve approximately **80% average retrieval accuracy across ~100 datasets**, with significant improvements from Voyage AI and Cohere over OpenAI's text-embedding-ada-002. The same quality can be achieved with fewer parameters (lower cost), or the same parameters yield better quality — a positive scaling law. ^[extracted]

## Limitations in Agent Memory Systems

[[entities/daniel-chalef|Daniel Chalef]] ([[entities/zep|Zep]]) argues that semantic similarity is fundamentally insufficient for agent memory retrieval. Vectors are projections into an embedding space with no causal or relational structure — they capture lexical and topical proximity but not **business relevance**. ^[extracted]

When an agent stores facts as vectors and retrieves by semantic similarity:
- Irrelevant facts (e.g., "my dog's name is Melody") are retrieved alongside relevant ones (e.g., "I listen to jazz") when words share embedding proximity
- There is no mechanism to differentiate domain-relevant facts from noise
- This causes hallucinations and inaccurate responses

The proposed solution is **domain-aware memory** — using structured entity types and graph-based retrieval instead of free-form fact generation into vector databases. ^[extracted]

## Related Pages

- [[concepts/graph-coloring|Graph Coloring Problem]] — Where similarity forms edges
- [[concepts/connections-game|Connections Game]] — The application domain
- [[concepts/abstract-reasoning|Abstract Reasoning]] — Beyond similarity to correct grouping
- [[concepts/llm-benchmarking|LLM Benchmarking]] — Evaluating similarity-based solvers
- [[concepts/domain-aware-memory]] — The structured alternative to semantic similarity for memory
- [[concepts/business-relevance-retrieval]] — Business relevance vs semantic similarity
- [[concepts/semantic-memory-noise]] — The noise problem caused by semantic similarity in memory

## Sources

- [[references/aief2025-dispatch-from-future-dan-shipper]] — AIEF2025 — Dispatch from the Future: building an AI-native Company – Dan Shipper, Every, AI & I
- AIEF2025 - Stop Using RAG as Memory — Daniel Chalef, Zep - https://www.youtube.com/watch?v=T5IMo5ntyhA
- AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB (acq. Voyage AI) - https://www.youtube.com/watch?v=W_CYk2ogcDI
