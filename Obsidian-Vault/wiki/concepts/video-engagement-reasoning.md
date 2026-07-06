---
title: Video Engagement Reasoning
category: concepts
tags:
- recommendation-systems
- llm-reasoning
- sequence-modeling
- youtube
- recsys
aliases:
- LLM Video Reasoning
- Cross-Video Reasoning
relationships:
- target: '[[concepts/large-recommender-model]]'
  type: uses
- target: '[[concepts/continued-pre-training]]'
  type: uses
- target: '[[concepts/semantic-video-tokenization]]'
  type: uses
sources:
- 'https://www.youtube.com/watch?v=lxqsq3vzdqo'
summary: An LLM's ability to reason across video sequences based on Semantic ID definitions and user engagement patterns — demonstrated by inferring a fourth video is about AI when given three videos about...
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

# Video Engagement Reasoning

The ability of an LLM to reason across video sequences based on [[concepts/semantic-video-tokenization|Semantic ID]] definitions and [[concepts/continued-pre-training|continued pre-training]] on user engagement data. This enables the model to understand which videos are watched together and make inferences about video relationships beyond surface-level content similarity. ^[extracted]

## The Capability

After continued pre-training on YouTube engagement data, the [[concepts/large-recommender-model|LRM]] model can reason across English and YouTube videos. Given a sequence of videos with their Semantic IDs, the model understands the pattern and can predict the next video in the sequence. ^[extracted]

**Demonstration**: Given three videos:
1. Wimbledon tennis highlights (interesting to tennis fans)
2. Spanish Grand Prix F1 (interesting to F1 fans)
3. Pi math video (interesting to math fans)

The model infers the fourth video is about AI — recognizing the underlying pattern that all three appeal to technology fans. ^[extracted]

This reasoning emerges from:
- The Semantic ID definitions of each video (what they're about)
- The engagement patterns in the training data (which videos users watch together)
- Not from explicit metadata about the target video ^[extracted]

## Training Signal

The model learns this capability through masked sequence prediction during continued pre-training:

- **Prompt**: "A user has watched the following videos: A, B, C, D"
- **Masking**: Some videos in the sequence are masked
- **Prediction**: The model learns to predict the masked videos ^[extracted]

This teaches the model to understand co-watching patterns — which videos are consumed together by users — and build relationships between videos based on actual engagement, not just content features. ^[extracted]

## Significance

Video engagement reasoning represents a form of collaborative filtering that is learned by an LLM rather than a traditional matrix factorization model. The key difference: the LLM can reason in a combination of English text and Semantic ID tokens, enabling it to understand both content semantics and behavioral patterns simultaneously. ^[inferred]

## Related Concepts

- [[concepts/large-recommender-model]] — LRM demonstrates this capability
- [[concepts/continued-pre-training]] — the training phase that enables it
- [[concepts/semantic-video-tokenization]] — SID tokens are the reasoning units
- [[concepts/generative-retrieval-recsys]] — reasoning enables better generative retrieval
- [[concepts/cold-start-recommendation]] — engagement reasoning helps with cold start

## Sources

- [[references/aief2025-teaching-gemini-to-speak-youtube-devansh-tandon|AIEF2025 - Teaching Gemini to Speak YouTube]]
