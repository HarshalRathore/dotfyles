---
title: "Large Recommender Model"
category: concepts
tags:
  - recommendation-systems
  - llm
  - gemini
  - generative-retrieval
  - youtube
  - recsys
aliases:
  - LRM
  - Large Recommender Model
  - YouTube LRM
relationships:
  - target: "[[concepts/semantic-video-tokenization]]"
    type: uses
  - target: "[[concepts/generative-retrieval-recsys]]"
    type: uses
  - target: "[[concepts/continued-pre-training]]"
    type: uses
sources:
  - "[[sources/watchv=lxqsq3vzdqo]]"
summary: "YouTube's Gemini-adapted LLM for video recommendations at 2B+ DAU. Uses Semantic ID tokenization, continued pre-training, and generative retrieval to decode video recommendations directly from user prompts."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Large Recommender Model (LRM)

A system that adapts Google's [[entities/gemini|Gemini]] LLM for video recommendations at [[entities/youtube|YouTube]]'s scale of 2B+ daily active users. LRM represents a paradigm where an LLM is continued-pre-trained on domain-specific data (YouTube videos and engagement) to produce a unified recommendation checkpoint. ^[extracted]

## Architecture

LRM follows a three-stage pipeline:

1. **Base model**: Start with a pre-trained Gemini checkpoint
2. **Semantic ID tokenization**: Videos are tokenized into semantically meaningful tokens via [[concepts/semantic-video-tokenization|Semantic ID]] — extracting title, description, transcript, audio, and video frame features, embedding them, and quantizing with RQVAE ^[extracted]
3. **Continued pre-training**: Teach Gemini both English and YouTube's video language through text-SID linking and sequence reasoning tasks ^[extracted]

The result is a unified YouTube-specific Gemini checkpoint that can be aligned for different recommendation tasks. ^[extracted]

## Deployment

- **Retrieval**: Launched in production at YouTube for the retrieval system ^[extracted]
- **Ranking**: Currently being experimented with on the ranking side ^[extracted]
- **Custom versions**: Small custom versions of LRM are deployed for all major recommendation surfaces (home, watch-next, Shorts, personalized search) ^[extracted]

## Capabilities

### Generative Retrieval

LRM uses [[concepts/generative-retrieval-recsys|generative retrieval]] — constructing a prompt per user (demographics, context video, watch history) and having the model decode video recommendations directly as Semantic IDs. This produces unique recommendations, especially for hard recommendation tasks where traditional systems fail. ^[extracted]

**Example**: When watching an Olympic highlights video, LRM connected user demographics (24-year-old woman in US on Android) with watch history to recommend women's races — a connection the previous system couldn't make. ^[extracted]

### Video Engagement Reasoning

After continued pre-training, LRM can reason across English and YouTube videos based on Semantic ID definitions. Given three videos (Wimbledon/tennis, Spanish Grand Prix/F1, Pi/math), LRM infers the fourth video is about AI — recognizing the pattern that all three appeal to technology fans. ^[extracted]

## Strengths and Limitations

**Strengths**:
- Training-data efficient — learns quickly from YouTube engagement data ^[extracted]
- Handles YouTube's toughest recommendation surfaces ^[extracted]
- Produces unique, high-quality recommendations especially for users with limited profile data ^[extracted]

**Limitations**:
- Very expensive to serve at YouTube's scale — the primary constraint ^[extracted]
- 95%+ TPU cost reduction was required to make production deployment feasible ^[extracted]

## Related Concepts

- [[concepts/semantic-video-tokenization]] — how videos are tokenized for LRM
- [[concepts/generative-retrieval-recsys]] — how LRM produces recommendations
- [[concepts/continued-pre-training]] — how Gemini is adapted for YouTube
- [[concepts/recommendation-serving-cost]] — the cost challenge
- [[concepts/offline-recommendation-table]] — alternative strategy to reduce serving cost
- [[concepts/recsys-foundation-model]] — Netflix's parallel approach with a different foundation model
- [[concepts/unified-recommendation-models]] — broader category of single-model recommendations

## Sources

- [[references/aief2025-teaching-gemini-to-speak-youtube-devansh-tandon|AIEF2025 - Teaching Gemini to Speak YouTube]]
