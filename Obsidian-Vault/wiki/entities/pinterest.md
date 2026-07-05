---
title: Pinterest
category: entities
tags: [pinterest, visual-search, recommendation, search-relevance, llm, cross-encoder, knowledge-distillation, aief2025]
sources:
  - "AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/cross-encoder-relevance-model|Cross-Encoder Relevance Model]]"
    type: uses
  - target: "[[concepts/model-distillation|Model Distillation]]"
    type: uses
  - target: "[[concepts/hybrid-search|Hybrid Search]]"
    type: uses
  - target: "[[concepts/re-ranking|Re-ranking]]"
    type: uses
  - target: "[[entities/mukuntha-narayanan|Mukuntha Narayanan]]"
    type: employed_by
  - target: "[[entities/han-wang|Han Wang]]"
    type: employed_by
---

# Pinterest

Pinterest is a **visual discovery platform** where users ("pinners") find inspiration to create a life they love. It operates three main discovery services: the home feed, related content, and search. The search team invests heavily in [[concepts/search-relevance|search relevance]] to improve the user experience.

## Search Scale

Pinterest search handles **over 6 billion searches per month** against billions of pins spanning recipes, home decor, travel, fashion, and more. It is a global, multilingual platform supporting **over 45 languages** and reaching users in **more than 100 countries**. These scale numbers drive heavy investment in search relevance improvement. ^[extracted]

## Search Pipeline Architecture

Pinterest's search pipeline follows a standard multi-stage architecture:

1. **Query understanding** — interpret the user's intent
2. **Retrieval** — find candidate pins
3. **Re-ranking** — score and rank candidates using a relevance classification model
4. **Blending** — combine ranked results into the final feed

The LLM integration focused on the **re-ranking stage**, where a five-point relevance classification model predicts how well each pin matches the search query. ^[extracted]

## LLM Integration for Search Relevance

Pinterest adopted a two-phase approach to LLM integration:

- **Teacher model**: A cross-encoder LLM (fine-tuned Llama 3, 8B parameters) that concatenates query and pin text, produces an embedding, and feeds it through an MLP for five-level relevance scoring. This model achieved **12% improvement over a multilingual BERT-based model** and **20% improvement over the previous search-stage embedding model**. ^[extracted]
- **Student model**: A bi-encoder distilled from the teacher using semi-supervised learning on daily search logs, scaled across domains, languages, and countries. Pin embeddings are cached offline; query embeddings are real-time with ~85% cache hit rate. ^[extracted]

This approach produced international relevance gains even though initial human-labeled training data came predominantly from the US, demonstrating LLMs' ability to generalize across domains and languages. ^[extracted]

## Content Annotation Strategy

Pinterest enriches pin representations with five feature sources:

1. Pin title and description
2. VLM-generated synthetic image captions (direct image-to-text extraction)
3. Board titles (user-curated collections the pin was saved to)
4. Search queries that led to highest engagement with the pin
5. Additional user engagement signals

Ablation studies confirmed each feature source adds incremental performance, with user action-based features (board titles, engagement queries) proving particularly valuable for content annotation. ^[extracted]

## Sources

- AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk
