---
title: "Semantic End-of-Utterance Detection"
tags:
  - voice
  - ai
  - speech
  - vad
  - turn-taking
  - semantics
  - nlp
sources:
  - "AI Engineer World's Fair 2025 talk - Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit - https://www.youtube.com/watch?v=1v9zBiZKlIY"
summary: "Models that augment traditional Voice Activity Detection by analyzing semantics, syntax, and prosody to predict when a speaker has truly finished their turn, reducing interruptions."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Semantic End-of-Utterance Detection

Semantic end-of-utterance detection augments traditional [[concepts/voice-activity-detection|Voice Activity Detection]] with models that look beyond mere silence to predict when a speaker has truly finished their turn. These models analyze the content, structure, and acoustic properties of speech to make more informed turn-taking decisions.

## Three Approaches

Three main approaches have emerged for augmenting VAD with higher-level understanding: ^[inferred]

### 1. Text-Based Semantic Models

Analyze the textual content of the conversation to predict turn completion. [[entities/livekit|LiveKit's]] approach is the primary example:

- Takes the last four conversation turns as input (agent turn, user turn, agent turn, current user turn)
- Uses a transformer model to predict an end-of-utterance token
- If the model predicts the turn isn't finished, it extends the VAD silence threshold, preventing premature interruption ^[extracted]
- Works in concert with the traditional silence algorithm rather than replacing it

### 2. Acoustic + Semantic Models

Combine audio signal analysis with semantic understanding. Examples include:

- **Quinn / Daily's smart turn model** — an open-weight model that combines a transformer architecture with acoustic characteristic analysis ^[extracted]
- Jointly analyzes what is being said and how it is being said

### 3. Integrated STT + End-of-Utterance Models

Build turn detection directly into the speech-to-text pipeline:

- [[entities/assembly-ai|Assembly AI's]] streaming STT emits both the transcript and a likelihood that the speaker has finished speaking from a single model ^[extracted]
- Analyzes both acoustic and semantic features simultaneously
- Limitation: STT-level models only see half the conversation (user speech only, not agent context) ^[inferred]

## Limitations

- Even [[entities/openai|OpenAI's]] Advanced Voice Mode still uses VAD internally, with an optional "semantic VAD" toggle ^[extracted]
- No approach has fully solved the interruption problem ^[extracted]
- STT-integrated models lack full conversational context
- The industry lacks a standardized benchmark for turn-taking quality ^[extracted]

## Related

- [[concepts/voice-activity-detection|Voice Activity Detection]] — the base mechanism these models augment
- [[concepts/full-duplex-voice-models|Full Duplex Voice Models]] — an alternative paradigm
- [[concepts/human-turn-taking-prediction|Human Turn-Taking Prediction]] — the biological inspiration

## Sources

- [[references/why-chatgpt-keeps-interrupting-you-tom-shapland-livekit|Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit]] — Conference talk
