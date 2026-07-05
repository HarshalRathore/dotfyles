---
title: "Cross-Encoder Relevance Model"
category: concepts
tags: [cross-encoder, relevance-model, search-relevance, llm, classification, five-point-scale, aief2025]
sources:
  - "AIEF2025 - What We Learned from Using LLMs in LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/bi-encoder-search|Bi-Encoder Search]]"
    type: contrasted_with
  - target: "[[concepts/model-distillation|Model Distillation]]"
    type: used_as_teacher_in
  - target: "[[concepts/re-ranking|Re-ranking]]"
    type: applied_in
  - target: "[[concepts/semantic-similarity|Semantic Similarity]]"
    type: extends
---

# Cross-Encoder Relevance Model

A relevance modeling architecture where the **query and document (pin) text are concatenated and passed together** into a language model to produce a shared embedding. This cross-attention structure captures fine-grained interactions between the query and document, enabling more accurate relevance prediction than separate encoders. ^[extracted]

## Architecture

The cross-encoder relevance model follows this pipeline:

1. **Input concatenation** — query text and pin text are joined into a single sequence
2. **LLM encoding** — the concatenated text is passed through a fine-tuned language model to produce a shared embedding
3. **Relevance scoring** — the embedding is fed through an MLP layer that outputs a **five-dimensional factor** corresponding to five relevance levels (from most relevant to most irrelevant)

The model is trained on human-labeled relevance data, fine-tuned on domain-specific content (e.g., Pinterest pins). ^[extracted]

## Why Cross-Encoders Work Better

Cross-encoders outperform bi-encoders for relevance prediction because they allow **full query-document interaction** at the token level. The model can attend to how specific query terms relate to specific document terms, capturing semantic matches that separate encoders miss. ^[inferred]

## Trade-offs

| Aspect | Cross-Encoder | Bi-Encoder |
|---|---|---|
| **Accuracy** | Higher — full interaction | Lower — no cross-attention |
| **Latency** | High — must encode each query-doc pair | Low — encode once, cache |
| **Scalability** | Poor for large corpora | Excellent — offline caching |
| **Use case** | Teacher model, re-ranking | Production serving, retrieval |

Cross-encoders are too expensive for online serving at scale but serve as excellent **teacher models** for distillation into bi-encoders. ^[extracted]

## Performance Results

Pinterest's Llama 3 (8B) cross-encoder achieved **12% improvement over a multilingual BERT-based model** and **20% improvement over the previous search-stage embedding model**, demonstrating that LLM-based cross-encoders are highly effective for relevance prediction. ^[extracted]

## Related

- [[concepts/bi-encoder-search|Bi-Encoder Search]] — the scalable alternative for production
- [[concepts/model-distillation|Model Distillation]] — how cross-encoders become teacher models
- [[concepts/re-ranking|Re-ranking]] — where cross-encoders are typically deployed
- [[concepts/search-relevance|Search Relevance]] — the broader problem space

## Sources

- AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk
