---
title: "Semantic IDs"
category: concepts
tags: [recommendation-systems, embeddings, cold-start, llm, recsys]
aliases: [Semantic Item IDs, Multimodal Semantic IDs, Content-Based Item IDs]
relationships:
  - target: "[[concepts/cold-start-recommendation]]"
    type: related_to
  - target: "[[concepts/llm-data-augmentation-recsys]]"
    type: related_to
sources:
  - "[[sources/watchv=2vlcqd6igva]]"
summary: "Content-aware item identifiers for recommendation systems that encode multimodal item features, replacing hash-based IDs to address cold start and sparsity problems."
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Semantic IDs

Item identifiers that encode the actual content of an item, rather than using opaque hash-based IDs. By incorporating multimodal content (visual, textual, audio) into the item representation, semantic IDs enable recommendation systems to understand what an item is about, addressing the cold-start problem for new items. ^[extracted]

## The Problem with Hash-Based IDs

- Hash-based item IDs don't encode the content of the item itself
- Every new item requires re-learning its embedding from scratch (cold start)
- Sparse interaction data for long-tail items makes learning difficult
- Recommender systems become popularity-biased, struggling with cold start and sparsity ^[extracted]

## Kuaishou's Trainable Multimodal Semantic IDs

The Kuaishou approach uses a two-tower network architecture with content encoding:

- **User tower**: standard sequence of user interaction IDs
- **Item tower**: standard trainable embeddings + content-derived cluster IDs
- **Content encoders**: ResNet for visual, BERT for video descriptions, VGG-ish for audio
- Content embeddings are concatenated, then clustered (k-means, 1,000 clusters for ~100M videos)
- **Key trick**: cluster IDs are mapped to a trainable embedding table that learns to map content space to behavioral space through model training ^[extracted]

**Results**: semantic IDs outperformed hash-based IDs on clicks and likes, increased cold-start coverage by 3.6%, and improved cold-start velocity. ^[extracted]

## Benefits

- Addresses cold start — new items get meaningful embeddings immediately via their content
- Recommendations understand content, not just interaction patterns
- Enables human-readable explanations of recommendations — models using semantic IDs alongside LLMs can explain why a user might like an item ^[extracted]

## Netflix's Use of Semantic Content

Netflix uses a dedicated sub-team and graph model infrastructure to build a knowledge graph covering content across the entertainment ecosystem. The graph model generates semantic embeddings that feed into their recommendation foundation model as content-side representations, complementing learned ID embeddings to handle cold start for new titles. ^[extracted]

Netflix's current research direction includes universal representation for heterogeneous entities via semantic IDs, aiming to cover expanding content types (games, live streaming) under a single embedding space. ^[extracted]

## YouTube's Semantic ID (SID)

YouTube's approach to Semantic IDs uses a different technique from Kuaishou's two-tower model. YouTube's Semantic ID pipeline:

1. **Feature extraction**: Title, description, transcript, audio, and video frame-level data are extracted from each video
2. **Multi-dimensional embedding**: All features are combined into a single embedding
3. **RQVAE quantization**: The embedding is quantized using Residual Quantized Variational Autoencoder to produce a video token ^[extracted]

The tokens create a hierarchical organization: first token for broad topics (music, gaming, sports), sub-tokens for specific sub-topics, shared prefixes for similar videos, and unique suffix identifiers. This creates a "new language" of YouTube where billions of videos are organized around semantically meaningful tokens. ^[extracted]

YouTube uses Semantic IDs as the fundamental tokenization layer for its [[concepts/large-recommender-model|Large Recommender Model]], enabling LLM-based generative retrieval for video recommendations at 2B+ DAU. ^[extracted]


## Related Concepts

- [[concepts/cold-start-recommendation]] — The cold start problem that semantic IDs solve
- [[concepts/two-tower-semantic-id-model]] — The architectural pattern used by Kuaishou
- [[concepts/llm-data-augmentation-recsys|LLM Data Augmentation for RecSys]] — Complementary LLM approach for handling data sparsity
- [[concepts/unified-recommendation-models]] — Unified models that also benefit from semantic understanding
- [[concepts/large-recommender-model]] — YouTube's LRM uses SID for generative retrieval
- [[entities/kuaishou]] — The company that pioneered trainable multimodal semantic IDs
- [[entities/youtube]] — Company using RQVAE-based Semantic IDs

## Sources

- [[concepts/recsys-foundation-model]] — Foundation model that consumes semantic embeddings for cold start
- [[entities/netflix]] — Company using graph-based semantic embeddings
- [[references/improving-recsys-search-llms-eugene-yan|Recsys Keynote: Improving Recommendation Systems & Search in the Age of LLMs]]
- [[references/aief2025-netflix-one-model-recommendations-yesu-feng|AIEF2025 — Netflix's Big Bet: One Model to Rule Recommendations]]
- [[references/aief2025-teaching-gemini-to-speak-youtube-devansh-tandon|AIEF2025 - Teaching Gemini to Speak YouTube]]


