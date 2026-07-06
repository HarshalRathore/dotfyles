---
title: Full Duplex Voice Models
tags:
- voice
- ai
- speech
- full-duplex
- turn-taking
- architecture
sources:
- 'https://www.youtube.com/watch?v=1v9zbizkliy'
summary: Voice AI models that process audio input and generate speech output simultaneously, mimicking the human brain's concurrent comprehension and production tracks.
provenance:
  extracted: 0.65
  inferred: 0.3
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Full Duplex Voice Models

Full duplex voice models represent a fundamentally different paradigm for voice AI turn-taking. Rather than using separate speech detection and response generation, full duplex models process incoming audio and generate outgoing audio simultaneously — analogous to how the human brain runs comprehension and production tracks in parallel. ^[extracted]

## How They Work

- The model is **always listening** to input and **always generating** output
- Even when it is not its turn to speak, the model emits natural silence (inaudible) — maintaining a continuous generation process ^[extracted]
- This mirrors the [[concepts/human-turn-taking-prediction|human mind's full duplex nature]], where comprehension and production tracks run concurrently

## Key Implementations

### Moshi

- An early full duplex model demonstrating the always-listening, always-generating architecture ^[extracted]
- Emits silence when not its turn, maintaining active generation state

### Sync LLM (Meta AI)

- Meta AI's experimental full duplex mode available inside their app ^[extracted]
- Internally forecasts what the user is saying approximately 5 tokens / 200ms ahead
- This prediction mechanism more closely mirrors human forecasting (though humans predict on much longer timeframes) ^[inferred]
- Capable of natural back-channeling — it will produce "uh-huh" responses learned from raw audio data ^[extracted]

## The Computer Vision Analogy

Full duplex models represent a shift from handwriting rules (traditional VAD algorithms) to letting the model learn from raw data, analogous to the computer vision revolution: ^[extracted]

> In the early days of computer vision, we were handwriting algorithms to try to recognize a stop sign based on the color and the number of sides on it. When we started giving the raw image data to the neural network, it just started working. Full duplex models follow the same principle — handing them raw audio and letting them figure out turn-taking.

## Limitations

- **Small models** — not trained on large data, cannot do instruction following well ^[extracted]
- **"Dumb LLMs"** — optimized for turn-taking at the expense of general intelligence ^[extracted]
- **Limited production readiness** — no major commercial applications as of July 2025 ^[inferred]
- Predictions suggest they are unlikely to be the primary solution for production voice AI, which requires more control over brand-specific behavior ^[inferred]

## Related

- [[concepts/semantic-end-of-utterance-detection|Semantic End-of-Utterance Detection]] — the augmentation-based alternative
- [[concepts/voice-activity-detection|Voice Activity Detection]] — the traditional approach they could replace
- [[concepts/voice-agent-architecture|Voice Agent Architecture]] — how these fit into broader voice AI design
- [[concepts/speech-to-speech-architecture|Speech-to-Speech Architecture]] — related single-model paradigm

## Sources

- [[references/why-chatgpt-keeps-interrupting-you-tom-shapland-livekit|Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit]] — Conference talk
