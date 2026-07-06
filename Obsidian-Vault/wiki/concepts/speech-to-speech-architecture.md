---
title: Speech-to-Speech Architecture
tags:
- ai
- voice
- architecture
- speech
- multimodal
sources:
- 'https://www.youtube.com/watch?v=-oxiljtjxqu'
- 'https://www.youtube.com/watch?v=ia4lzjh9sts'
summary: An end-to-end model architecture that handles transcription, reasoning, and speech generation in a single pass, enabling low-latency, expressive voice interactions.
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-04
relationships:
- target: '[[concepts/voice-agents]]'
  type: related_to
- target: '[[concepts/turn-detection]]'
  type: related_to
category: concepts
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

## Current Speech-to-Speech Models

**OpenAI GPT-4o Audio Preview** — Sits behind OpenAI's real-time API. A good speech-to-speech model. ^[extracted]

**Gemini 2.0 Flash** — Usable in audio-to-audio mode, with preview releases of 2.5 Flash. Supports native audio input mode with text output as an intermediate option. ^[extracted]

**Ultravox** — Trained on the Llama 3 70B backbone, with a production voice AI API. Worth trying if Llama 3 70B can handle your use case. ^[extracted]

## Full Duplex Models as a Third Paradigm

[[concepts/full-duplex-voice-models|Full duplex models]] represent a distinct third paradigm beyond chained and speech-to-speech architectures. While speech-to-speech models process audio end-to-end in a single pass (still sequentially — input then output), full duplex models process input and generate output simultaneously, more closely mimicking human conversation. ^[inferred]

Notable implementations include:

**Moshi (Kyotai)** — A next-generation research model with constant bi-directional streaming architecture. The model always streams tokens in and always streams tokens out. In conversational mode, most output tokens are silence tokens. When not silence, the model decides what to do based on its training. This enables natural turn-taking and back-channeling (mm, ah, yeah, mm-hmm) without new inference calls — it's just part of the normal output stream. ^[extracted] The Kyotai Labs Moshi architecture paper was described as the favorite ML research paper of 2024. ^[extracted] However, the current model is too small for production use and is estimated to be a couple years away from being usable as a production model. ^[extracted]

**Sesame** — Another interesting partly open-weight model that uses Moshi's neural encoder (Mimi). Not yet fully released, and smaller than what most enterprise use cases need today, though bigger versions are expected. ^[extracted]

**Meta AI Sync LLM** — Forecasts user speech ~5 tokens ahead. ^[extracted]

## Challenges with Speech-to-Speech

Despite the advantages, speech-to-speech models face significant challenges:

**Context token explosion** — Audio tokens take up massive amounts of context relative to text. Operating in audio mode expands the context window significantly, which tends to degrade model performance. ^[extracted]

**Insufficient audio training data** — Nobody has as much audio data as text data for training. Even with transfer learning, audio-to-audio models don't perfectly map audio to the same latent space as text reasoning. ^[extracted] This manifests as models responding in the wrong language — the same input transcribed as text would produce the correct response, but the audio input triggers a different latent space projection. ^[extracted]

**Reliability trade-off** — Speech-to-speech models are less reliable than SOTA models operating in text mode for instruction following and function calling. ^[extracted] For the majority of enterprise voice AI use cases requiring best-in-class instruction following, speech-to-speech models are not yet the right choice. ^[extracted]

## Practical Advantages of Speech-to-Speech

**Mixed language handling** — Small transcription models lose information in mixed-language input. Big LLMs that receive audio directly can leverage their broader language knowledge for better multilingual support. ^[extracted]

**Potential latency reduction** — A single end-to-end model avoids chaining multiple inference calls. In practice, whether this is true today depends more on the APIs and inference stack than the model architecture. ^[extracted]

**Philosophical concern** — The context token explosion and latent space issues may outweigh the practical advantages for the foreseeable future. ^[inferred]

## Adoption Timeline

All stakeholders expect speech-to-speech models to become the default for ~95% of voice AI sometime in the next two years. ^[extracted] Current guidance: experiment with speech-to-speech but don't assume it's the right choice for enterprise use cases today. ^[extracted]

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
- [[concepts/turn-detection]] — Turn detection is handled differently in speech-to-speech vs chained architectures

## Sources

- [[references/building-effective-voice-agents-openai-2025|Building Effective Voice Agents — Toki Sherbakov + Anoop Kotha, OpenAI]] — Conference talk
- [[references/why-chatgpt-keeps-interrupting-you-tom-shapland-livekit|Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit]] — Conference talk
- [[references/aief2025-pipecat-cloud-kwindla-kramer|Pipecat Cloud: Enterprise Voice Agents Built On Open Source — Kwindla Hultman Kramer, Daily]] — Conference talk
