---
title: Continued Pre-training for Domain Adaptation
category: concepts
tags:
- llm
- fine-tuning
- domain-adaptation
- recommendation-systems
- gemini
aliases:
- Continued Pre-training
- Domain Pre-training
- Post-pre-training
relationships:
- target: '[[concepts/large-recommender-model]]'
  type: uses
- target: '[[concepts/semantic-video-tokenization]]'
  type: uses
- target: '[[concepts/recommendation-serving-cost]]'
  type: related_to
- target: '[[concepts/reinforcement-learning-at-scale]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=lxqsq3vzdqo'
- 'https://www.youtube.com/watch?v=pbhm2qknu10'
- 'https://www.youtube.com/watch?v=u0s6cfzay5c'
summary: The two-phase process of teaching a base LLM (Gemini) both a new token language (Semantic IDs) and domain-specific reasoning patterns (video engagement sequences). Complemented by RL training for i...
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-05
---

# Continued Pre-training for Domain Adaptation

A technique where a pre-trained LLM is further pre-trained on domain-specific data to learn a new token language and domain-specific reasoning patterns. YouTube's [[concepts/large-recommender-model|LRM]] uses this approach to adapt [[entities/gemini|Gemini]] for video recommendations through two distinct phases. ^[extracted]

## Phase 1: Text-SID Linking

The model learns to connect natural language text features to Semantic ID tokens. Training tasks include:

- Given a video with a known SID, the model learns to output the video's title
- Given a video with a known SID, the model learns to output the creator
- Given a video with a known SID, the model learns to output the topics ^[extracted]

This phase establishes the bidirectional mapping between English text and YouTube's video token language. ^[extracted]

## Phase 2: Sequence Reasoning

Using a corpus of YouTube engagement data (all the paths users took through YouTube when watching videos together), the model learns to reason about video sequences:

- **Prompt format**: "A user has watched the following videos: A, B, C, D"
- **Training signal**: Some videos in the sequence are masked
- **Prediction task**: The model learns to predict the masked videos ^[extracted]

This teaches the model which videos are watched together and builds relationships between videos based on actual user engagement patterns, not just content similarity. ^[extracted]

## Result

After both phases, the model can reason across English and YouTube videos. Example: given three videos (Wimbledon/tennis, Spanish Grand Prix/F1, Pi/math), the model infers the fourth video is about AI — recognizing the pattern that all three appeal to technology fans. This reasoning emerges from the SID definitions and engagement patterns, without requiring explicit metadata about the target video. ^[extracted]

## Relation to Other Adaptation Techniques

- **Fine-tuning**: Continued pre-training is distinct from supervised fine-tuning (SFT) — it extends the model's pre-training on domain data rather than optimizing on labeled examples
- **Prompt tuning**: Unlike prompt tuning (soft tokens swapped at inference), continued pre-training modifies the model's actual weights
- **Distillation**: Continued pre-training produces a full adapted model; distillation compresses it for serving ^[inferred]
- **Reinforcement Learning**: Continued pre-training teaches the model domain knowledge and language patterns; RL teaches it how to interact with environments, use tools, and optimize for specific evaluation signals. Both are necessary for state-of-the-art models. ^[inferred]

## Related Concepts

- [[concepts/large-recommender-model]] — LRM's adaptation pipeline
- [[concepts/semantic-video-tokenization]] — the new token language being learned
- [[concepts/recommendation-serving-cost]] — the adapted model must be served efficiently
- [[concepts/recsys-foundation-model]] — Netflix's parallel approach with a different foundation model
- [[concepts/unified-recommendation-models]] — unified models also benefit from domain adaptation
- [[concepts/reinforcement-learning-at-scale]] — RL at scale as the complementary training paradigm to pre-training

## Sources

- [[references/aief2025-teaching-gemini-to-speak-youtube-devansh-tandon|AIEF2025 - Teaching Gemini to Speak YouTube]]
- AIEF2025 - Training Agentic Reasoners — Will Brown, Prime Intellect - https://www.youtube.com/watch?v=PbHm2qKnu10
