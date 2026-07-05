---
title: "State Space Models"
category: concepts
tags:
  - state-space-models
  - ssm
  - transformers
  - architecture
  - voice-ai
  - inference
  - latency
sources:
  - "AIEF2025 - Serving Voice AI at Scale — Arjun Desai (Cartesia) & Rohit Talluri (AWS) - https://www.youtube.com/watch?v=knH3fmGAteQ"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/transformers]]"
    type: contradicts
  - target: "[[entities/cartesia]]"
    type: uses
  - target: "[[entities/sonic-2]]"
    type: implements
  - target: "[[concepts/voice-ai-latency]]"
    type: enables
---

# State Space Models

State space models (SSMs) are an alternative neural network architecture to transformers, designed to maintain constant-time generation regardless of input length. ^[extracted] They have been adopted by Cartesia as the foundation for their voice AI models, including Sonic 2. ^[extracted]

## Scaling Properties

The key distinction between SSMs and transformers is their scaling behavior:

- **Transformers** scale quadratically with input length — both memory and compute grow as O(n²) as inputs get longer, making models progressively slower for longer contexts. ^[extracted]
- **State space models** maintain O(1) generation cost at inference time — they keep a fixed internal state that can be iteratively updated, regardless of how long the input sequence is. ^[extracted]

This means SSMs deliver consistently low latency regardless of context length, a property that is critical for real-time voice applications where latency variability breaks the user experience. ^[extracted]

## Quality Gap

Historically, SSMs underperformed transformers in recurrent generation quality — they were faster but produced inferior outputs. ^[extracted] Cartesia claims to have closed this gap, stating their SSM-based models outperform transformers on both latency and quality metrics. ^[extracted] This claim remains to be independently verified against benchmark results. ^[inferred]

## Relevance to Voice AI

SSMs are particularly well-suited for voice AI because:

1. **Constant latency** — voice agents cannot tolerate latency that varies with context length
2. **On-device deployment** — SSMs' lower compute requirements make them more feasible for edge deployment
3. **Streaming generation** — the iterative state update pattern aligns naturally with streaming audio generation

## Related

- [[concepts/transformers]] — The dominant architecture SSMs compete with
- [[entities/cartesia]] — Company that pioneered SSMs for voice AI
- [[entities/sonic-2]] — SSM-based TTS model
- [[concepts/voice-ai-latency]] — Why constant latency matters for voice
- [[concepts/voice-agents]] — Voice agent systems where SSMs are deployed
