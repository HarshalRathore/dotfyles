---
title: "Voice AI Latency"
category: concepts
tags:
  - voice-ai
  - latency
  - real-time
  - speed
  - voice-agents
  - inference
  - video-ai
sources:
  - "AIEF2025 - Serving Voice AI at Scale — Arjun Desai (Cartesia) & Rohit Talluri (AWS) - https://www.youtube.com/watch?v=knH3fmGAteQ"
  - "AIEF2025 - Serving Voice AI at $1/hr: Open-source, LoRAs, Latency, Load Balancing - Neil Dwyer, Gabber - https://www.youtube.com/watch?v=rD23-VZZHOo"
  - "AIEF2025 - Realtime Conversational Video with Pipecat and Tavus — Chad Bailey and Brian Johnson, Daily & Tavus - https://www.youtube.com/watch?v=ujt0da9Z29Q"
provenance:
  extracted: 0.58
  inferred: 0.32
  ambiguous: 0.10
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-04
updated: 2026-07-05
relationships:
  - target: "[[concepts/voice-naturalness]]"
    type: related_to
  - target: "[[concepts/voice-controllability]]"
    type: related_to
  - target: "[[concepts/state-space-models]]"
    type: related_to
  - target: "[[concepts/voice-agents]]"
    type: related_to
  - target: "[[concepts/real-time-conversational-video]]"
    type: related_to
---

# Voice AI Latency

Voice AI latency is the time between a user speaking and hearing a response — measured in milliseconds rather than seconds. ^[extracted] Unlike text-based AI where 500-600ms response times are acceptable, voice interactions require near-instantaneous responses because human conversation expects responses within milliseconds, not seconds. ^[extracted]

## The Voice Conversation Budget

In face-to-face conversation, responses that arrive a second later feel "really awkward." ^[extracted] Voice AI agents operate under the same constraint — they have milliseconds, not seconds, to respond. ^[extracted] This creates an extremely tight latency budget for the entire voice agent pipeline:

1. **Speech-to-text** — transcribe spoken input
2. **LLM reasoning** — process and generate response
3. **Text-to-speech** — convert response to audio
4. **Audio streaming** — deliver to user

Every millisecond saved in each step gives the overall system more time to reason and produce better responses. ^[extracted]

## Latency as a Competitive Advantage

Arjun Desai (Cartesia) positioned latency as a key competitive differentiator. ^[extracted] By minimizing TTS latency (Sonic 2 being "the fastest model in the world for text-to-speech"), Cartesia gives the end-to-end agent more slack for reasoning — the faster the TTS, the more time the LLM has to produce a higher-quality response within the same total latency budget. ^[extracted]

## State Space Models and Constant Latency

State space models address a specific latency problem: transformers scale quadratically with input length, meaning models get progressively slower as context grows. ^[extracted] SSMs maintain O(1) generation cost regardless of context length, providing consistent latency — critical for voice applications where latency variability is as bad as high latency. ^[extracted]

## The End-to-End System View

Voice AI latency is not just about individual model speed — it's about the end-to-end system. ^[extractinferred] The voice agent must coordinate STT, LLM, and TTS components while maintaining a tight total latency budget. ^[inferred] This is why Cartesia emphasizes that TTS is "one part of the puzzle" and must be "hooked up with the LM" and "speech to text model" to form a complete system. ^[extracted]

## Head of Line Silence

A specific latency artifact in certain Orpheus TTS fine-tunes (notably the "Tara" default voice) adds ~600ms of silence at the beginning of generated audio. This originates from voice actors adding silence during data collection for fine-tuning. On NVIDIA L40s (~100 tokens/sec), 600ms of silence = ~50 tokens of wasted compute. Even filtering the silence doesn't help much because the model is only barely faster than real-time. ^[extracted]

Surprisingly, this can be eliminated through LoRA fine-tuning — a customer's LoRA clone had ~100ms P50 latency at the start, effectively reducing half a second of latency "for free." This demonstrates that fine-tuning can fix structural artifacts in the base model, not just clone voice characteristics. ^[extracted]

## Conversational Video Response Times

Real-time conversational video introduces additional latency considerations beyond voice-only.^[extracted] Tavus achieves response times around 600 milliseconds for conversational video interactions.^[extracted] Brian Johnson noted that this speed is sometimes intentionally reduced — faster isn't always better for natural conversation, and the system may slow down responses based on the models being used.^[extracted] This reveals an important insight: in conversational video, naturalness matters as much as speed, and the latency budget must account for pacing, not just raw inference time.^[extracted]

## Related

- [[concepts/head-of-line-silence]] — The specific Orpheus latency artifact
- [[entities/gabber]] — Startup that eliminated head-of-line silence via LoRA
- [[concepts/voice-inference-metrics]] — Throughput requirements and GPU hardware

- [[concepts/voice-naturalness]] — The quality pillar: naturalness as table stakes
- [[concepts/voice-controllability]] — The controllability pillar: brand-aligned customization
- [[concepts/state-space-models]] — Architecture that enables constant latency
- [[concepts/voice-agents]] — Voice agent systems where latency is critical
- [[entities/cartesia]] — Company that positions latency as a competitive advantage
- [[concepts/real-time-conversational-video]] — Conversational video response time considerations
