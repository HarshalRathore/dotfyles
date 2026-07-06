---
title: Chroma
category: entities
tags:
- company
- ai
- vector-database
- embeddings
- open-source
- chroma-ai
aliases:
- chroma-ai
sources:
- AIEF2025 - How to look at your data — Jeff Huber (Chroma) + Jason Liu (567) - https://www.youtube.com/watch?v=jryZvCuA0Uc
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/jeff-huber|Jeff Huber]]'
  type: related_to
- target: '[[concepts/fast-evals|Fast Evals]]'
  type: uses
- target: '[[entities/weights-and-biases|Weights & Biases]]'
  type: related_to
summary: Chroma
---

# Chroma

**Chroma** is an open-source AI-native vector database and AI application framework. Co-founded and led by [[entities/jeff-huber|Jeff Huber]], who serves as CEO. Chroma provides tools for building retrieval-augmented generation (RAG) applications, embedding management, and empirical evaluation of retrieval systems.

At AI Engineer World's Fair 2025, Chroma published a research report (available at research.truck.com) demonstrating how to use fast evals and LLM-generated synthetic queries to semantically align evaluation data with real user queries. The report was built using the [[entities/weights-and-biases|Weights & Biases]] chatbot as a case study, comparing multiple embedding models empirically.

## Key Contributions

- Open-source fast eval framework for retrieval system evaluation
- Methodology for synthetic query generation that aligns with real user query distributions
- Empirical embedding model selection approach that challenges benchmark-only decisions

## Sources

- AIEF2025 - How to look at your data — Jeff Huber (Chroma) + Jason Liu (567) - https://www.youtube.com/watch?v=jryZvCuA0Uc
