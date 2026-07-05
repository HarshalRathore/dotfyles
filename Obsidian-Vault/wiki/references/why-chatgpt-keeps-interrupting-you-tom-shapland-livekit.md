---
title: "Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit"
tags:
  - reference
  - talk
  - voice
  - ai
  - turn-taking
  - ai-engineer
sources:
  - "[[sources/watchv=1v9zbizkliy]]"
summary: "AI Engineer World's Fair 2025 talk by Tom Shapland (LiveKit) diagnosing the turn-taking problem in voice AI agents, covering VAD limitations, human turn-taking mechanisms, semantic end-of-utterance models, and full duplex approaches."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Why ChatGPT Keeps Interrupting You

> **Talk:** Why ChatGPT Keeps Interrupting You
> **Speaker:** [[entities/tom-shapland|Dr. Tom Shapland]]
> **Organization:** [[entities/livekit|LiveKit]]
> **Event:** AI Engineer World's Fair 2025
> **Source:** [YouTube](https://www.youtube.com/watch?v=1v9zBiZKlIY)

## Summary

A deep dive into voice AI's interruption problem — why voice agents interrupt users, how current systems handle turn-taking, what human conversation research reveals about the mechanisms involved, and emerging approaches to solving the problem. The talk covers three model categories: cascading models with VAD, augmented semantic VAD systems, and full duplex models.

## Key Topics

### The Interruption Problem
- Interruptions are the biggest problem in voice AI agents today ^[extracted]
- Consumer context: annoying when ChatGPT interrupts you
- Enterprise context: a patient talking to a dental AI assistant who gets interrupted hangs up — the dentist stops paying the developer ^[extracted]
- The problem is unsolved across all current approaches

### Current State: VAD-Based Turn-Taking
- [[concepts/voice-activity-detection|Voice Activity Detection (VAD)]] is the prevailing mechanism: a neural network detecting speech/not-speech plus a silence algorithm (typically ~500ms threshold) ^[extracted]
- Entirely backward-looking — no prediction, no parallel processing ^[inferred]
- Contrasts sharply with the complex parallel prediction humans use

### Human Turn-Taking Mechanisms
- [[concepts/human-turn-taking-prediction|Listeners predict]] when the speaker will finish before they actually do — response latency is ~200ms but generating speech takes ~600ms ^[extracted]
- Three-stage model: semantic prediction (main input) → refinement through syntax → finalization through prosody ^[extracted]
- Cross-cultural variation (Danes pause longer between turns, Japanese almost instantaneous)
- Individual and situational variability (emotional state affects response speed)

### Semantic End-of-Utterance Detection
- [[concepts/semantic-end-of-utterance-detection|Augmenting VAD]] with semantic models that analyze conversation context ^[extracted]
- LiveKit's approach: transformer model taking the last 4 turns, predicting end-of-utterance token ^[extracted]
- Quinn/Daily: open weight model combining transformers with acoustic features
- Assembly AI: streaming STT that emits both transcript and end-of-utterance probability from a single model
- Even OpenAI's Advanced Voice Mode still uses VAD internally with an optional "semantic VAD" toggle ^[extracted]
- LiveKit powers the audio transport layer for Advanced Voice Mode but OpenAI does not use LiveKit's end-of-utterance model ^[extracted]

### Full Duplex Models
- [[concepts/full-duplex-voice-models|Full duplex models]] process input and generate output simultaneously, like the human mind ^[extracted]
- Moshi: always listening, always generating (emits natural silence when not its turn)
- Meta AI's Sync LLM: forecasts user speech ~5 tokens / 200ms ahead
- Analogy to early computer vision: raw data approach replaces handwritten rules
- Limitation: optimized for turn-taking but are "dumb LLMs" — small, poor instruction following

### Back-Channeling
- [[concepts/back-channeling-voice-ai|Back-channeling]] is an unsolved challenge: distinguishing "mm-hmm" / "yeah" as backchannel vs turn-taking signal ^[extracted]
- Human interruptions of AI (vs AI interrupting human) handled with simple VAD thresholds
- Full duplex models handle back-channeling naturally from raw audio training

### Predictions
- Full duplex models are unlikely to be the production solution — production voice AI needs more control (brand names, precise behavior)
- The future is smarter VAD augmentations and faster models in the cascade pipeline, giving more compute budget for turn-taking intelligence ^[inferred]
- Turn-taking benchmarks do not yet exist in the industry — a recognized gap ^[extracted]

## Demo

- Side-by-side comparison: VAD-only agent repeatedly interrupted vs semantic VAD agent handled natural pauses gracefully
- Available on LiveKit's Twitter/X

## Pages Created from This Source

- [[concepts/voice-activity-detection|Voice Activity Detection]]
- [[concepts/semantic-end-of-utterance-detection|Semantic End-of-Utterance Detection]]
- [[concepts/full-duplex-voice-models|Full Duplex Voice Models]]
- [[concepts/human-turn-taking-prediction|Human Turn-Taking Prediction]]
- [[concepts/back-channeling-voice-ai|Back-Channeling in Voice AI]]
- [[entities/tom-shapland|Tom Shapland]]
- [[entities/livekit|LiveKit]]
- [[entities/assembly-ai|Assembly AI]]

## Sources

- [YouTube: Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit](https://www.youtube.com/watch?v=1v9zBiZKlIY)
