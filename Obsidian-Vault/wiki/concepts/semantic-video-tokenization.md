---
title: Semantic Video Tokenization
category: concepts
tags:
- recommendation-systems
- tokenization
- embeddings
- semantic-ids
- youtube
- recsys
aliases:
- Semantic ID
- SID
- Video Semantic Tokenization
relationships:
- target: '[[concepts/semantic-ids]]'
  type: extends
- target: '[[concepts/rqvae-quantization]]'
  type: uses
- target: '[[concepts/large-recommender-model]]'
  type: uses
sources:
- 'https://www.youtube.com/watch?v=lxqsq3vzdqo'
summary: YouTube's approach to tokenizing videos into semantically meaningful tokens using multi-modal feature extraction and RQVAE quantization, replacing hash-based IDs to enable LLM-based video recommend...
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Semantic Video Tokenization (Semantic ID / SID)

YouTube's approach to converting videos into tokens that carry semantic meaning, enabling [[entities/gemini|Gemini]]-based LLMs to reason about video recommendations. SID replaces opaque hash-based video IDs with tokens that encode what a video is actually about. ^[extracted]

## The Problem

Hash-based video IDs don't encode video content. For an LLM to reason over billions of videos, each video must be compressed into a token that captures its semantic essence — analogous to how text tokens capture linguistic meaning. ^[extracted]

## The SID Pipeline

1. **Feature extraction**: Extract title, description, transcript, audio, and video frame-level data from each video
2. **Multi-dimensional embedding**: Combine all extracted features into a single multi-dimensional embedding
3. **RQVAE quantization**: Quantize the embedding using Residual Quantized Variational Autoencoder to produce a video token ^[extracted]

The result is a token that represents the video's semantic content, not just an opaque identifier. ^[extracted]

## Semantic Structure

The tokens create a hierarchical organization of YouTube's corpus:

- **First token**: Broad topic categories (music, gaming, sports)
- **Sub-tokens**: Specific sub-topics within each category (e.g., volleyball within sports)
- **Shared prefixes**: Similar videos share prefix tokens (e.g., two volleyball videos)
- **Unique identifier**: Each video also has a unique suffix token ^[extracted]

This creates a "new language" for YouTube where the billions of videos are organized around semantically meaningful tokens. The approach represents a milestone in moving away from hash-based tokenization toward semantic tokenization. ^[extracted]

## Relationship to Semantic IDs

[[concepts/semantic-ids|Semantic IDs]] is the broader concept of content-aware item identifiers for recommendation systems. YouTube's Semantic Video Tokenization is a specific implementation of this concept, optimized for video content at YouTube scale. Kuaishou's approach (presented by [[entities/eugene-yan|Eugene Yan]]) uses a different technique — trainable multimodal semantic IDs via a two-tower network with k-means clustering — but shares the same goal. ^[extracted]

## Usage in LRM

Semantic IDs are the fundamental tokenization layer for YouTube's [[concepts/large-recommender-model|Large Recommender Model]]. LRM takes video tokens as input and outputs video tokens as recommendations — the ideal generative retrieval pipeline: "give it video tokens, get video tokens out." ^[extracted]

## Related Concepts

- [[concepts/semantic-ids]] — the broader concept of content-aware item identifiers
- [[concepts/rqvae-quantization]] — the quantization technique used
- [[concepts/large-recommender-model]] — LRM's use of SID tokens
- [[concepts/cold-start-recommendation]] — semantic tokenization solves cold start
- [[concepts/recsys-event-tokenization]] — Netflix's parallel approach to event tokenization
- [[concepts/generative-retrieval-recsys]] — SID tokens enable generative retrieval

## Sources

- [[references/aief2025-teaching-gemini-to-speak-youtube-devansh-tandon|AIEF2025 - Teaching Gemini to Speak YouTube]]
- [[references/improving-recsys-search-llms-eugene-yan|Recsys Keynote: Improving RecSys & Search with LLMs]]
