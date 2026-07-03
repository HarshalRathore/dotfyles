---
title: "OpenAI Real-time API"
tags:
  - openai
  - api
  - voice
  - speech
  - real-time
sources:
  - "AI Engineer World's Fair 2025 talk — Building Effective Voice Agents — Toki Sherbakov + Anoop Kotha, OpenAI - https://www.youtube.com/watch?v=-OXiljTJxQU"
  - "AI Engineer World's Fair 2025 talk - Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit - https://www.youtube.com/watch?v=1v9zBiZKlIY"
summary: "OpenAI's speech-to-speech API that handles transcription, reasoning, and speech generation in a single real-time pass for low-latency voice applications."
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

# OpenAI Real-time API

The OpenAI Real-time API implements a [[concepts/speech-to-speech-architecture|speech-to-speech architecture]] in a single API — accepting audio input and returning audio output with integrated transcription, reasoning, and speech generation. It simplifies the traditional pipeline of stitching together separate ASR, LLM, and TTS models.

## Key Capabilities

- **End-to-end speech processing** — audio in, audio out, no intermediate text stage
- **Low latency** — single-model architecture eliminates inter-model hops
- **Expressiveness** — natural prosody, emotional range, dynamic pacing
- **Steerability** — supports mid-conversation interruption and topic redirection
- **Native tool use** — integrates with the [[entities/openai|OpenAI]] Agents SDK for delegation to more capable models (O3, O4 mini) for complex sub-tasks

## Rapid Iteration

The talk noted that OpenAI released a new snapshot of the Real-time API the day before the talk (July 2, 2025), indicating active development and rapid improvement cycles. The speakers described the technology as having crossed a "good enough" threshold for production applications.

## Architecture Role

In production voice agent architectures, the Real-time API typically serves as the **frontline agent** — handling routine conversational interactions with low latency, while delegating complex reasoning tasks (returns, cancellations, multi-step workflows) to more capable models via tool call handoffs. ^[inferred]

## Integration Points

- **Agent delegation** — uses the Agents SDK for handing off to specialized models
- **Phone/SIP** — connects with Twilio and SIP providers for telephony use cases
- **Guardrails** — async guardrail execution pattern with configurable debounce (example: every 100 characters)
- **Observation** — provides trace data for voice agent evals and monitoring

## Related

- [[concepts/voice-agent-architecture|Voice Agent Architecture]] — how the Real-time API fits into broader voice system design
- [[concepts/speech-to-speech-architecture|Speech-to-Speech Architecture]] — the underlying model paradigm
- [[concepts/voice-agent-evals|Voice Agent Evals]] — evaluating Real-time API output quality
- [[concepts/voice-agent-guardrails|Voice Agent Guardrails]] — safety patterns for real-time speech

## Internal VAD and Turn Detection

Despite being a speech-to-speech architecture, the OpenAI Real-time API still uses [[concepts/voice-activity-detection|VAD]] internally for turn detection. The system provides an optional "semantic VAD" toggle (terminology the talk's speaker described as "not the best term") that augments traditional VAD with semantic analysis. ^[extracted]

This means that as of mid-2025, even the most advanced speech-to-speech voice mode relies on a combination of silence detection and semantic augmentation rather than [[concepts/full-duplex-voice-models|full duplex processing]]. The [[entities/livekit|LiveKit]] team, who powers the audio transport layer for Advanced Voice Mode, noted that OpenAI does not use their end-of-utterance model. ^[extracted]

## Sources

- [[references/building-effective-voice-agents-openai-2025|Building Effective Voice Agents — Toki Sherbakov + Anoop Kotha, OpenAI]] — Conference talk
- [[references/why-chatgpt-keeps-interrupting-you-tom-shapland-livekit|Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit]] — Conference talk
