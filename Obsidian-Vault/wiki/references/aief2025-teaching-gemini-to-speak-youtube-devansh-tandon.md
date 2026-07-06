---
title: 'AIEF2025 - Teaching Gemini to Speak YouTube: Adapting LLMs for Video Recommendations to 2B+DAU — Devansh Tandon'
tags:
- reference
- talk
- aief2025
- recommendation-systems
- llm
- youtube
- gemini
- generative-retrieval
aliases:
- AIEF2025 YouTube LRM Devansh Tandon
- Teaching Gemini to Speak YouTube
sources:
- 'https://www.youtube.com/watch?v=lxqsq3vzdqo'
summary: Devansh Tandon presents YouTube's Large Recommender Model (LRM) — adapting Gemini for video recommendations at 2B+ daily active users, covering Semantic ID tokenization, continued pre-training, gen...
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
category: references
---

# AIEF2025 - Teaching Gemini to Speak YouTube: Adapting LLMs for Video Recommendations to 2B+DAU

> **Talk:** Teaching Gemini to Speak YouTube: Adapting LLMs for Video Recommendations to 2B+DAU
> **Speaker:** [[entities/devansh-tandon|Devansh Tandon]]
> **Organization:** YouTube / Google
> **Event:** AI Engineer World's Fair 2025 (AIEF2025)
> **Source:** [YouTube](https://www.youtube.com/watch?v=LxQsQ3vZDqo)

## Summary

Devansh Tandon presents YouTube's Large Recommender Model (LRM) — a system that adapts Google's Gemini LLM for video recommendations at YouTube's scale of 2B+ daily active users. The talk covers the motivation for applying LLMs to recommendations (arguing it's a bigger consumer application than search), the Semantic ID tokenization approach for videos, continued pre-training to teach Gemini both English and YouTube's video language, generative retrieval for production recommendations, and the 95%+ TPU cost reduction that made production deployment feasible. ^[extracted]

## Key Claims

- **Recommendations > Search for LLM impact**: While LLMs transforming search gets most attention (Google, ChatGPT, Perplexity), recommendations is a bigger and more transparent consumer application — especially for apps with 1B+ DAU. ^[extracted]
- **LRM is launched in production**: YouTube has deployed the LRM retrieval system in production for a while and is experimenting on the ranking side. ^[extracted]
- **Semantic IDs replace hash-based tokenization**: Moving from opaque hash-based video IDs to semantically meaningful tokens is a milestone that organizes YouTube's billions of videos around meaningful concepts. ^[extracted]
- **LRM is powerful but expensive**: The model is training-data efficient and handles YouTube's toughest recommendation surfaces, but serving costs were prohibitive at YouTube scale. ^[extracted]
- **95%+ TPU cost savings**: Significant serving cost reduction was required to make LRM production-feasible. ^[extracted]

## Architecture Overview

### Large Recommender Model (LRM)

YouTube's adapted Gemini checkpoint, built by starting with a base Gemini model and adapting it for YouTube recommendations through continued pre-training. The resulting unified checkpoint is called LRM, which can be aligned for different recommendation tasks (retrieval, ranking) and deployed as small custom versions for major recommendation surfaces. ^[extracted]

### Semantic ID (SID)

A tokenization system for videos that replaces hash-based IDs with semantically meaningful tokens:

1. **Feature extraction**: Title, description, transcript, audio, and video frame-level data are extracted from each video
2. **Multi-dimensional embedding**: All features are combined into a single embedding
3. **RQVAE quantization**: The embedding is quantized using Residual Quantized Variational Autoencoder to produce a video token ^[extracted]

The result is a new "language" of YouTube where the corpus of billions of videos is organized around semantically meaningful tokens — e.g., first token for broad topics (music, gaming, sports), then sub-topics (volleyball within sports), with prefix sharing for similar videos plus unique identifiers. ^[extracted]

### Continued Pre-training

Two-phase process to teach Gemini both English and YouTube's video language:

1. **Text-SID linking**: The model learns to connect text features (title, creator, topics) to SID tokens. Example: given a tennis highlights video with SID, the model learns to output its title. ^[extracted]
2. **Sequence reasoning**: Using a corpus of YouTube engagement data (user watch paths), the model learns to predict masked videos in watch sequences — understanding which videos are watched together and building relationships based on user engagement. ^[extracted]

After pre-training, the model can reason across English and YouTube videos. Example: given three videos about Wimbledon (tennis), Spanish Grand Prix (F1), and Pi (math), the model infers the fourth video is about AI (technology fans). ^[extracted]

### Generative Retrieval

LRM is used for generative retrieval — constructing a prompt per user (demographics, context video, watch history) and having the model decode video recommendations directly as SIDs. This produces unique recommendations, especially for hard recommendation tasks. ^[extracted]

**Example**: When watching an Olympic highlights video, the previous system recommended other men's track races. LRM found the unique connection between user demographics (24-year-old woman in US on Android) and watch history to recommend women's races — a connection the prior system couldn't make. ^[extracted]

### Offline Recommendations Table

An alternative strategy that removes the personalized aspects of the prompt, building an offline table mapping "if watching video A, what candid videos are good to watch next?" — turning a real-time personalized problem into an offline lookup. ^[extracted]

## Results

- LRM launched in production for YouTube's retrieval system
- Produces unique, high-quality recommendations especially for the hardest recommendation tasks
- Particularly strong for users with limited profile data (where traditional systems struggle)
- 95%+ TPU serving cost reduction achieved to make production deployment feasible ^[extracted]

## Limitations

- **Serving cost**: LRM is very expensive to serve at YouTube's scale. The 95% cost reduction was critical but the fundamental cost challenge remains. ^[extracted]
- **Transcript is incomplete**: The talk appears to be cut off mid-sentence at the end, so details on the offline recommendations table and other strategies are not fully covered. ^[inferred]

## Pages Created from This Source

- [[references/aief2025-teaching-gemini-to-speak-youtube-devansh-tandon|AIEF2025 - Teaching Gemini to Speak YouTube]] (this page)
- [[entities/devansh-tandon|Devansh Tandon]]
- [[entities/youtube|YouTube]]
- [[entities/gemini|Gemini]]
- [[concepts/large-recommender-model|Large Recommender Model]]
- [[concepts/semantic-video-tokenization|Semantic Video Tokenization]]
- [[concepts/generative-retrieval-recsys|Generative Retrieval for Recommendation Systems]]
- [[concepts/continued-pre-training|Continued Pre-training for Domain Adaptation]]
- [[concepts/rqvae-quantization|RQVAE Quantization]]
- [[concepts/recommendation-serving-cost|Recommendation Serving Cost]]
- [[concepts/offline-recommendation-table|Offline Recommendations Table]]

## Related

- [[references/aief2025-netflix-one-model-recommendations-yesu-feng|AIEF2025 — Netflix's Big Bet: One Model to Rule Recommendations]] — Netflix's parallel bet on foundation models for recommendations
- [[references/improving-recsys-search-llms-eugene-yan|Recsys Keynote: Improving RecSys & Search with LLMs]] — Eugene Yan's keynote covering semantic IDs, data augmentation, unified models
- [[references/thinking-deeper-in-gemini-jack-rae-deepmind|Thinking Deeper in Gemini]] — Jack Rae's talk on Gemini's reasoning capabilities

## Sources

- [YouTube: Teaching Gemini to Speak YouTube — Devansh Tandon](https://www.youtube.com/watch?v=LxQsQ3vZDqo)
