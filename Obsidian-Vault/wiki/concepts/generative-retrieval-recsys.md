---
title: Generative Retrieval for Recommendation Systems
category: concepts
tags:
- recommendation-systems
- generative-retrieval
- llm
- retrieval
- recsys
aliases:
- Generative RecSys
- LLM-based Retrieval
- Generative Recommendation
relationships:
- target: '[[concepts/large-recommender-model]]'
  type: uses
- target: '[[concepts/semantic-video-tokenization]]'
  type: uses
- target: '[[concepts/recommendation-serving-cost]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=lxqsq3vzdqo'
summary: Using LLMs to generate item recommendations directly as tokens from user prompts, rather than scoring a candidate set. YouTube's LRM uses this approach to produce unique recommendations for hard ta...
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Generative Retrieval for Recommendation Systems

An approach where an LLM generates item recommendations directly as tokens from a user prompt, rather than scoring a pre-selected candidate set. This contrasts with traditional retrieval (candidate generation + ranking) by making the recommendation generation itself a generative process. ^[extracted]

## How It Works

For each user, construct a prompt containing:

- **Demographics**: age, gender, location, platform
- **Context video**: the video currently being watched
- **Watch history**: recent videos watched and engagement signals
- **Instruction**: prompt the model to decode video recommendations as Semantic IDs ^[extracted]

The model autoregressively generates the SID tokens of recommended videos. This is the "ideal product" Devansh Tandon described: give the model video tokens as input, get video tokens out as output. ^[extracted]

## Advantages

- **Unique recommendations**: LRM produces recommendations that traditional systems cannot, especially for hard recommendation tasks. ^[extracted]
- **Cross-domain reasoning**: The model can connect user demographics with watch history to find non-obvious relationships. ^[extracted]
- **Example**: When watching an Olympic highlights video, LRM connected a 24-year-old woman in the US on Android with her watch history to recommend women's races — a connection the previous system (which recommended men's track races) missed. ^[extracted]
- **Users with limited data**: Particularly strong for users where the system doesn't know much about them, producing interesting and unique recommendations. ^[extracted]

## Limitations

- **Serving cost**: Generative retrieval is very expensive at scale. LRM's serving costs were prohibitive until 95%+ TPU cost reduction was achieved. ^[extracted]
- **Latency**: Autoregressive decoding is inherently slower than candidate scoring ^[inferred]
- **Coverage**: The model can only generate items within its token vocabulary, potentially missing long-tail items not well-represented in training ^[inferred]

## Relationship to Offline Recommendations Table

YouTube also explored an [[concepts/offline-recommendation-table|offline recommendations table]] strategy — removing the personalized aspects of the prompt to build a static lookup table (if watching video A, what's good to watch next?). This converts a real-time generative retrieval problem into an offline computation, trading personalization for cost efficiency. ^[extracted]

## Related Concepts

- [[concepts/large-recommender-model]] — YouTube's LRM uses generative retrieval in production
- [[concepts/semantic-video-tokenization]] — SID tokens are what the model generates
- [[concepts/recommendation-serving-cost]] — the primary limitation
- [[concepts/offline-recommendation-table]] — cost-reduction alternative
- [[concepts/semantic-ids]] — the broader concept enabling generative retrieval

## Sources

- [[references/aief2025-teaching-gemini-to-speak-youtube-devansh-tandon|AIEF2025 - Teaching Gemini to Speak YouTube]]
