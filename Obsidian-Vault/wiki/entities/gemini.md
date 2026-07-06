---
title: Gemini
category: entities
tags:
- model
- llm
- google
- google-deepmind
- multimodal
- recommendation-systems
- omnimodal
- agentic
aliases:
- Gemini LLM
- Google Gemini
relationships:
- target: '[[entities/google-deepmind]]'
  type: related_to
- target: '[[entities/youtube]]'
  type: uses
sources:
- 'AIEF2025 - Waymo''s EMMA: Teaching Cars to Think - Jyh Jing Hwang, Waymo - https://www.youtube.com/watch?v=iS9YFW28XyM'
- 'https://www.youtube.com/watch?v=lxqsq3vzdqo'
- 'https://www.youtube.com/watch?v=8eqo4j2bwkw'
- 'https://www.youtube.com/watch?v=u-fmsby-khy_test'
- AIEF2025 - Human seeded Evals — Samuel Colvin, Pydantic - https://www.youtube.com/watch?v=o_LRtAomJCs
summary: Google DeepMind's multimodal LLM family. Includes Gemini 2.5 Pro (latest benchmark-improving update), YouTube Large Recommender Model adaptation, thinking/reasoning capabilities, VO video generatio...
provenance:
  extracted: 0.6
  inferred: 0.3
  ambiguous: 0.1
base_confidence: 0.5
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-05
---

# Gemini

[[entities/gemini|Gemini]] is Google DeepMind's multimodal large language model family. Beyond its standard NLP capabilities, Gemini has been adapted for specialized domains including video recommendations. ^[extracted]

## YouTube: Large Recommender Model (LRM)

YouTube adapted a base Gemini checkpoint into the Large Recommender Model (LRM) — a unified YouTube-specific model for video recommendations at 2B+ daily active users. The adaptation process involves:

1. **Semantic ID tokenization**: Videos are tokenized into semantically meaningful tokens via RQVAE quantization
2. **Continued pre-training**: Gemini is trained on YouTube data to understand both English and YouTube's video language
3. **Task alignment**: The resulting model is aligned for retrieval and ranking tasks ^[extracted]

LRM has been launched in production for YouTube's retrieval system and is being experimented with on ranking. It uses [[concepts/generative-retrieval-recsys|generative retrieval]] — decoding video recommendations directly as Semantic IDs from user prompts. ^[extracted]

## Gemini 2.5 Pro

Gemini 2.5 Pro is the latest update to the Gemini 2.5 family, announced at AIEF2025 by [[entities/logan-kilpatrick|Logan Kilpatrick]]. It delivers comprehensive performance improvements across benchmarks based on developer feedback, closing identified gaps from previous versions. Logan characterized 2.5 Pro as "the turning point" for Gemini — both internally at Google and in developer perception. ^[extracted]

Described as "hopefully the final update" to the 2.5 Pro model line, 2.5 Pro is Soda on Aider, Soda on HLE, and other benchmarks. It is available at ai.dev, in the Gemini app, and via Google Cloud. ^[extracted]

## Thinking and Reasoning

Gemini also features advanced reasoning capabilities developed by [[entities/jack-rae|Jack Rae]]'s team at Google DeepMind, including test-time compute scaling, thinking budgets, and Deep Think — high-budget reasoning modes for complex problem solving. ^[extracted]

### Verbosity Record

Gemini 2.5 Pro holds the distinction of being the "yappiest" model in Artificial Analysis benchmarks, producing 130 million output tokens to run the Intelligence Index — compared to 7 million for GPT 4.1 and 72 million for O4 Mini High. ^[extracted]

## Use in Agent Frameworks

Gemini Flash was used in [[entities/samuel-colvin|Samuel Colvin]]'s AIEF2025 demo of [[entities/pydantic-ai|Pydantic AI]], where it demonstrated validation error feedback — self-correcting a date of birth from 1987 to 1887 after receiving a validation error. ^[extracted]

## Autonomous Driving: EMMA

Gemini powers [[entities/waymo|Waymo]]'s EMMA (Embodied Multimodal Model for Autonomous driving) — a foundation-model-based autonomous driving system. EMMA uses Gemini to drive using only cameras (no LiDAR), without HD maps, and with chain-of-thought reasoning for explainability. It achieves state-of-the-art on the NewSync open-loop planning benchmark. ^[extracted]

## VO (Video Out)

VO is Gemini's video generation capability, described as "soda across a bunch of stuff" with massive demand — "burning all the TPUs down." It is available in the Gemini app. Early experiments with diffusion-based video generation showed "crazy levels of tokens per second" — a research exploration area that may enter the mainline Gemini model. ^[extracted]

## Native Audio Capabilities

Gemini announced native audio capabilities at Google I/O, including text-to-speech (TTS), conversational audio, and natural-sounding speech. These capabilities power experiences like Gemini Live and Astra. The goal is an "omnimodal" model that handles all modalities (text, image, audio, video) with equal depth. ^[extracted]

## Agentic by Default

Gemini is moving toward agentic behavior — models becoming more systematic, absorbing scaffolding work that previously lived in external frameworks. The reasoning step is where this is happening: models are increasingly handling planning, tool selection, and execution as part of their native capability. ^[extracted]

## Related

- [[entities/logan-kilpatrick|Logan Kilpatrick]] — announced Gemini 2.5 Pro at AIEF2025
- [[entities/devansh-tandon|Devansh Tandon]] — engineer who adapted Gemini for YouTube recommendations
- [[entities/youtube|YouTube]] — production deployment at 2B+ DAU
- [[entities/google-deepmind|Google DeepMind]] — creator of Gemini
- [[concepts/large-recommender-model|Large Recommender Model]] — YouTube's Gemini-adapted recsys
- [[concepts/test-time-compute-scaling|Test-Time Compute Scaling]] — reasoning capabilities
- [[entities/waymo|Waymo]] — Gemini powers EMMA autonomous driving system
- [[concepts/end-to-end-driving|End-to-End Driving]] — EMMA architecture
- [[concepts/foundation-models-autonomous-driving|Foundation Models in Autonomous Driving]] — Gemini application
- [[concepts/multimodal-models|Multimodal Models]] — Gemini's architecture
- [[concepts/omnimodal|Omnimodal Models]] — Gemini's trajectory
- [[concepts/agentic-models|Agentic Models]] — Gemini's future direction

## Sources

- [[references/aief2025-teaching-gemini-to-speak-youtube-devansh-tandon|AIEF2025 - Teaching Gemini to Speak YouTube]]
- [[references/thinking-deeper-in-gemini-jack-rae-deepmind|Thinking Deeper in Gemini — Jack Rae, Google DeepMind]]
- AIEF2025 - AI Engineer World's Fair 2025 - Day 2 Keynotes & SWE Agents track (TEST - first 3 speakers) - https://www.youtube.com/watch?v=U-fMsbY-kHY_test
- AIEF2025 - A year of Gemini progress + what comes next — Logan Kilpatrick, Google DeepMind - https://www.youtube.com/watch?v=wE1ZCmCLP5g
- [[references/aief2025-human-seeded-evals-samuel-colvin-pydantic]] — Samuel Colvin's AIEF2025 talk using Gemini Flash for structured extraction and validation error feedback
