---
title: Snack
category: entities
tags:
- audio-codec
- open-source
- voice-ai
- audio-compression
- canopy-labs
aliases:
- Snack Codec
- Snac
summary: Open-source audio codec used by Orpheus TTS. Orpheus outputs snack tokens at ~24kHz, decoded to produce final audio. ~85 snack tokens per second of audio.
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/orpheus-tts]]'
  type: related_to
- target: '[[entities/canopy-labs]]'
  type: related_to
sources: []
---

# Snack

Snack is an open-source audio codec that serves as the audio tokenization layer for **Orpheus TTS**. Orpheus is trained to output 24kHz snack tokens, which are then decoded to produce final audio.

## Technical Details

- **Bitrate:** ~85 snack tokens per second of audio
- **Sample rate:** 24kHz
- **Role in Orpheus:** Orpheus is a causal LM trained to predict the next snack token in sequence; the decoded tokens produce audible speech

## Throughput Implications

Because Orpheus outputs ~85 tokens/sec of audio, maintaining real-time streaming requires generating **90-100 tokens/sec** (with headroom for network jitter and processing overhead). This makes throughput a critical infrastructure concern for any Orpheus deployment.

## Sources

- AIEF2025 - Serving Voice AI at $1/hr: Open-source, LoRAs, Latency, Load Balancing - https://www.youtube.com/watch?v=rD23-VZZHOo
