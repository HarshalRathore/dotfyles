---
title: "YouTube"
category: entities
tags:
  - company
  - video-platform
  - recommendation-systems
  - google
  - recsys
  - 2b-dau
aliases:
  - YouTube LLC
  - YouTube Video Platform
relationships:
  - target: "[[entities/google]]"
    type: related_to
  - target: "[[entities/gemini]]"
    type: uses
sources:
  - "[[sources/watchv=lxqsq3vzdqo]]"
summary: "Global video platform with 2B+ daily active users, where a large majority of watch time is driven by the recommendation system across home, watch-next, Shorts, and personalized search."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: core
created: 2026-07-04
updated: 2026-07-04
---

# YouTube

Global video platform with 2B+ daily active users, owned by [[entities/google|Google]]. A large majority of watch time on YouTube is driven by the [[concepts/unified-recommendation-models|recommendation system]], which serves recommendations across multiple surfaces: home page, watch-next, Shorts, and personalized search results. ^[extracted]

## Recommendation System

YouTube's recommendation system learns a function that takes a user and their context as input and produces video recommendations. Input signals include:

- **User demographics**: age, gender, location
- **Watch history**: last 100 videos watched, engagement depth, comments
- **Social signals**: subscriptions ^[extracted]

YouTube has experimented with multiple modeling techniques over time: multi-headed rankers, embedding models, sequence-to-sequence models, and transformers. ^[extracted]

## Large Recommender Model (LRM)

YouTube launched the Large Recommender Model (LRM) — a [[entities/gemini|Gemini]]-based adapted checkpoint — in production for its retrieval system. LRM adapts Gemini for YouTube's recommendation domain through continued pre-training, teaching it both English and YouTube's video language via [[concepts/semantic-video-tokenization|Semantic ID]] tokens. The model is also being experimented with on the ranking side. ^[extracted]

Key achievements:
- **Generative retrieval**: LRM can decode video recommendations directly as Semantic IDs from user prompts, producing unique recommendations especially for hard tasks. ^[extracted]
- **95%+ TPU cost reduction**: Serving cost optimization made production deployment feasible at YouTube scale. ^[extracted]
- **Offline recommendations table**: An alternative strategy that converts personalized retrieval into an offline lookup table (if watching video A, what's good to watch next?). ^[extracted]

## Scale Challenges

YouTube's recommendation system operates at a scale that makes serving costs a primary constraint. LRM is described as "very expensive to serve" — the 95% cost reduction was critical but the fundamental cost challenge remains a key engineering concern. ^[extracted]

## Related

- [[entities/devansh-tandon|Devansh Tandon]] — engineer who presented LRM at AIEF2025
- [[entities/google|Google]] — parent company
- [[entities/google-deepmind|Google DeepMind]] — creator of Gemini
- [[concepts/large-recommender-model|Large Recommender Model]] — YouTube's Gemini-adapted recsys
- [[concepts/semantic-video-tokenization|Semantic Video Tokenization]] — SID tokenization approach
- [[concepts/generative-retrieval-recsys|Generative Retrieval for RecSys]] — LRM's retrieval strategy

## Sources

- [[references/aief2025-teaching-gemini-to-speak-youtube-devansh-tandon|AIEF2025 - Teaching Gemini to Speak YouTube: Adapting LLMs for Video Recommendations to 2B+DAU]]
