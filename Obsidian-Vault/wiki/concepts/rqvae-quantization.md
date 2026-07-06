---
title: "RQVAE Quantization"
category: concepts
tags:
  - quantization
  - embeddings
  - vector-quantization
  - autoencoder
  - recommendation-systems
aliases:
  - Residual Quantized Variational Autoencoder
  - RQ-VAE
  - Residual Vector Quantization
relationships:
  - target: "[[concepts/semantic-video-tokenization]]"
    type: uses
  - target: "[[concepts/semantic-ids]]"
    type: related_to
sources:
  - "https://www.youtube.com/watch?v=lxqsq3vzdqo"
summary: "Residual Quantized Variational Autoencoder — the quantization technique YouTube uses to convert multi-dimensional video embeddings into discrete Semantic ID tokens that LLMs can process."
provenance:
  extracted: 0.60
  inferred: 0.30
  ambiguous: 0.10
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# RQVAE Quantization

Residual Quantized Variational Autoencoder (RQVAE) is a vector quantization technique that converts continuous multi-dimensional embeddings into discrete tokens. YouTube uses RQVAE to produce [[concepts/semantic-video-tokenization|Semantic ID]] tokens from video feature embeddings, enabling LLMs to process video content as tokens. ^[extracted]

## How It Works

RQVAE operates in two stages:

1. **VAE encoding**: A variational autoencoder learns to compress video feature embeddings into a latent space
2. **Residual quantization**: The latent representation is quantized into discrete codes using a residual codebook — each quantization layer captures the residual error from the previous layer, progressively refining the token representation ^[inferred]

The result is a discrete token that preserves the semantic content of the original embedding while being compatible with LLM token processing. ^[inferred]

## Why RQVAE for Video Tokenization

- **Discrete tokens**: LLMs operate on discrete token sequences; RQVAE produces tokens from continuous embeddings ^[inferred]
- **Semantic preservation**: The residual structure ensures that fine-grained semantic information is preserved across quantization levels ^[inferred]
- **Scalability**: RQVAE can handle the billions of videos on YouTube with a manageable codebook size ^[inferred]

## Usage in YouTube's LRM

RQVAE is the final step in YouTube's Semantic ID pipeline:

1. Extract video features (title, description, transcript, audio, video frames)
2. Create multi-dimensional embedding
3. **RQVAE quantization** → produce Semantic ID token ^[extracted]

## Related Concepts

- [[concepts/semantic-video-tokenization]] — YouTube's SID pipeline uses RQVAE
- [[concepts/semantic-ids]] — the broader concept of content-aware item identifiers
- [[concepts/large-recommender-model]] — LRM consumes RQVAE-produced tokens

## Sources

- [[references/aief2025-teaching-gemini-to-speak-youtube-devansh-tandon|AIEF2025 - Teaching Gemini to Speak YouTube]]
