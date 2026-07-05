---
title: "Head of Line Silence"
category: concepts
tags:
  - voice-ai
  - latency
  - orpheus
  - real-time
  - voice-inference-metrics
summary: A latency artifact specific to Orpheus TTS where ~600ms of silence is baked into the beginning of generated audio, adding significant latency to real-time voice interactions. Can be eliminated by fine-tuning.
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/voice-ai-latency]]"
    type: related_to
  - target: "[[entities/orpheus-tts]]"
    type: related_to
  - target: "[[concepts/voice-cloning]]"
    type: related_to
---

# Head of Line Silence

Head of line silence is a latency artifact specific to certain fine-tunes of the **Orpheus TTS** model, where ~600ms of silence is baked into the beginning of every generated audio segment. This adds significant latency to real-time voice interactions because the model wastes compute generating silence that is then filtered out.

## The Problem

The silence originates from the training data: voice actors hired for fine-tuning would add silence at the beginning of their recordings. This silence became encoded in the model's behavior, appearing in the "Tara" default voice and other fine-tunes.

## Why It Matters

On NVIDIA L40s GPUs (~100 tokens/sec):
- 600ms of silence = ~50 tokens of wasted compute
- Even filtering the silence doesn't help much because the model is only barely faster than real-time
- The result: ~0.5s of added latency for free, just from generating silence

## The Fix: Fine-Tune It Away

Surprisingly, head of line silence can be eliminated through **LoRA fine-tuning**. A customer's LoRA clone had ~100ms P50 latency at the start — effectively half a second of latency "for free" by training out the silence. This demonstrates that fine-tuning doesn't just clone voice characteristics but can also fix structural artifacts in the base model.

## Impact on Latency Budget

Real-time voice applications have a tight latency budget. The "snooze period" after a user finishes speaking is when the agent does its work (kicking off the LLM, generating response). Every millisecond of head of line silence reduces the time available for this work, directly impacting response quality.

## Sources

- AIEF2025 - Serving Voice AI at $1/hr: Open-source, LoRAs, Latency, Load Balancing - https://www.youtube.com/watch?v=rD23-VZZHOo
