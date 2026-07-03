---
title: "Speech-to-Speech Architecture"
tags:
  - ai
  - voice
  - architecture
  - speech
  - multimodal
sources:
  - "AI Engineer World's Fair 2025 talk — Building Effective Voice Agents — Toki Sherbakov + Anoop Kotha, OpenAI - https://www.youtube.com/watch?v=-OXiljTJxQU"
summary: "An end-to-end model architecture that handles transcription, reasoning, and speech generation in a single pass, enabling low-latency, expressive voice interactions."
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

# Speech-to-Speech Architecture

Speech-to-speech architecture is an emerging paradigm for voice AI where a single model handles all stages of a spoken conversation — understanding audio input, reasoning about intent and context, and generating spoken audio output — in one unified pass. This contrasts with the older [[concepts/voice-agent-architecture|chained architecture]] that stitches together separate transcription, LLM, and text-to-speech models.

## How It Works

Rather than converting speech → text → reasoning → text → speech across three disconnected models, a speech-to-speech model processes audio directly through all layers:

- **Input layer** — receives raw audio, understands speech and paralinguistic cues (tone, emotion, pace)
- **Reasoning layer** — performs the same intelligence work as a text LLM, but operating on a richer representation that preserves acoustic context
- **Output layer** — generates expressive speech with appropriate tone, pacing, and emotion

## Key Properties

| Property | Chained Architecture | Speech-to-Speech |
|---|---|---|
| Latency | Sum of three model latencies | Single-model latency (significantly lower) |
| Semantic preservation | Lossy — paralinguistic cues stripped at transcription | Full — tone, emotion, intent preserved end-to-end |
| Expressiveness | Robotic, limited inflection | Natural, emotional, steerable |
| Steerability | Brittle — interruptions often derail the model | Robust — can change topic mid-conversation |
| Architecture complexity | High — three models to manage and optimize | Low — single API call |

## The "Good Enough" Tipping Point

As of mid-2025, speech-to-speech models crossed a quality threshold. The talk demonstrated that models from roughly six months prior were:

- **Slow** — multi-second delays before response
- **Robotic** — unnatural prosody and pacing
- **Brittle** — easily confused by interruptions or topic changes
- **Inaccurate** — hallucinated responses to redirected prompts

Current-generation models are described as fast, expressive, and accurate — capable of being steered, interrupted, and redirected while maintaining coherent responses. ^[extracted]

## Implementation

[[entities/openai|OpenAI's]] [[concepts/openai-real-time-api|Real-time API]] is one implementation of this architecture. The talk noted a new snapshot release the day before the talk (July 2, 2025), suggesting rapid iteration on the technology.

## Full Duplex Models as a Third Paradigm

[[concepts/full-duplex-voice-models|Full duplex models]] represent a distinct third paradigm beyond chained and speech-to-speech architectures. While speech-to-speech models process audio end-to-end in a single pass (still sequentially — input then output), full duplex models process input and generate output simultaneously, more closely mimicking human conversation. ^[inferred]

Notable implementations include Moshi (always-listening, always-generating, emitting natural silence when not its turn) and Meta AI's Sync LLM (forecasts user speech ~5 tokens ahead). ^[extracted]

However, even speech-to-speech models like OpenAI's Real-time API still use [[concepts/voice-activity-detection|VAD]] internally for turn detection — the full duplex paradigm remains largely experimental as of mid-2025. ^[extracted]

## Related Concepts

- [[concepts/voice-agent-architecture|Voice Agent Architecture]] — trade-offs between chained and speech-to-speech approaches
- [[concepts/voice-agent-evals|Voice Agent Evals]] — evaluation strategies for audio quality
- [[concepts/voice-agent-guardrails|Voice Agent Guardrails]] — safety patterns for real-time audio

## Sources

- [[references/building-effective-voice-agents-openai-2025|Building Effective Voice Agents — Toki Sherbakov + Anoop Kotha, OpenAI]] — Conference talk
- [[references/why-chatgpt-keeps-interrupting-you-tom-shapland-livekit|Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit]] — Conference talk
