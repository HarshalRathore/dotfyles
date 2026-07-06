---
title: "Devansh Tandon"
category: entities
tags:
  - person
  - engineer
  - recommendation-systems
  - llm
  - youtube
  - gemini
  - aief2025
aliases:
  - Devansh Tandon
relationships:
  - target: "[[entities/youtube]]"
    type: related_to
  - target: "[[entities/gemini]]"
    type: related_to
sources:
  - "https://www.youtube.com/watch?v=lxqsq3vzdqo"
summary: "Engineer at YouTube who presented the Large Recommender Model (LRM) — adapting Gemini for video recommendations at 2B+ DAU — at AI Engineer World's Fair 2025."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Devansh Tandon

Engineer at [[entities/youtube|YouTube]] who presented on adapting [[entities/gemini|Gemini]] LLMs for video recommendations at [[entities/google-deepmind|Google DeepMind]]'s AI Engineer World's Fair 2025. ^[extracted]

## Key Contributions

- **Large Recommender Model (LRM)**: Led the effort to adapt Gemini for YouTube's recommendation system at 2B+ daily active users, creating a unified YouTube-specific checkpoint deployed in production for retrieval. ^[extracted]
- **Semantic ID tokenization**: Developed the approach for tokenizing videos into semantically meaningful tokens using RQVAE quantization, replacing hash-based IDs. ^[extracted]
- **Generative retrieval for recommendations**: Pioneered using LLMs for generative retrieval — having the model decode video recommendations directly as Semantic IDs from user prompts. ^[extracted]
- **Serving cost optimization**: Achieved 95%+ TPU cost reduction to make LRM production-feasible at YouTube scale. ^[extracted]

## Talk at AI Engineer World's Fair 2025

**"Teaching Gemini to Speak YouTube: Adapting LLMs for Video Recommendations to 2B+DAU"** — Argued that recommendations is a bigger consumer application for LLMs than search, especially for apps with 1B+ DAU. Covered the full pipeline from Semantic ID tokenization through continued pre-training to generative retrieval in production. ^[extracted]

## Related

- [[references/aief2025-teaching-gemini-to-speak-youtube-devansh-tandon|AIEF2025 - Teaching Gemini to Speak YouTube]] — the talk
- [[concepts/large-recommender-model|Large Recommender Model]] — the system
- [[concepts/semantic-video-tokenization|Semantic Video Tokenization]] — the tokenization approach
- [[concepts/generative-retrieval-recsys|Generative Retrieval for RecSys]] — the retrieval strategy

## Sources

- [[references/aief2025-teaching-gemini-to-speak-youtube-devansh-tandon|AIEF2025 - Teaching Gemini to Speak YouTube: Adapting LLMs for Video Recommendations to 2B+DAU]]
