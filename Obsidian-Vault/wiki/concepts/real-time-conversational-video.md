---
title: Real-Time Conversational Video
category: concepts
tags:
- video-ai
- real-time
- conversational-ai
- latency
- video-generation
- pipecat
- tavus
sources:
- AIEF2025 - Realtime Conversational Video with Pipecat and Tavus — Chad Bailey and Brian Johnson, Daily & Tavus - https://www.youtube.com/watch?v=ujt0da9Z29Q
provenance:
  extracted: 0.75
  inferred: 0.18
  ambiguous: 0.07
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/voice-agents]]'
  type: extends
- target: '[[concepts/voice-ai-latency]]'
  type: related_to
- target: '[[concepts/conversational-video-interface]]'
  type: related_to
- target: '[[entities/tavus]]'
  type: related_to
summary: Real-Time Conversational Video
---

# Real-Time Conversational Video

Real-time conversational video is the capability to have live, interactive video conversations with AI-generated video replicas — where both parties exchange audio and video streams with low latency.^[extracted] It extends the voice agent paradigm by adding video generation as a real-time output layer.^[extracted]

## The Robot Concierge Problem

The talk opened with a demonstration of robot concierge kiosks — devices that exist in physical spaces but "don't work" and are "terrible."^[extracted] Real-time conversational video makes it possible to build this kind of system that actually works, by combining real-time video generation with conversational AI orchestration.^[extracted]

## Three Layers of Real-Time AI

Building real-time conversational video requires thinking about three layers:^[extracted]

1. **Models** — The AI models that process input and generate output (speech-to-text, LLM, TTS, video rendering)
2. **Orchestration layer** — The framework that connects models together in a pipeline (Pipecat)
3. **Deployment** — Where and how the bot is served to users

This mirrors the traditional voice AI pipeline (speech-to-text → LLM → text-to-speech) but adds video generation as a parallel output channel.^[extracted]

## Complexity Beyond Voice

Real-time video is more complicated than voice because video generation introduces additional constraints:^[extracted]

- **Video synchronization** — The video must stay synchronized with the audio output
- **Response timing** — Not just fast, but naturally paced (sometimes responses need to be slowed down)
- **Input complexity** — The system must process both audio (what the user says) and video (what the user looks like) from the camera
- **Rendering speed** — Video generation models must operate in real-time, not batch mode

## Response Time Budget

Tavus achieves response times around 600 milliseconds for conversational video interactions.^[extracted] Brian Johnson noted this isn't always ideal — sometimes faster responses feel unnatural, so the system intentionally slows down responses based on the models being used.^[extracted] This reveals an important insight: in conversational video, naturalness matters as much as speed, and the latency budget must account for pacing, not just raw inference time.^[extracted]

## Architecture

The architecture combines:^[extracted]

- **Pipecat** for orchestration — handling frames, processors, and pipelines for real-time media flow
- **Tavus rendering models** for video generation — producing the visual output
- **Tavus proprietary models** (Sparrow Zero, Raven Zero) for specialized processing

This creates an end-to-end pipeline where a user's video and audio input flows through Pipecat's processing chain, triggers Tavus models for video generation, and streams the result back to the user in real time.^[extracted]

- [[concepts/voice-agents]] — The voice-only predecessor to conversational video
- [[concepts/voice-ai-latency]] — Latency constraints that apply to both voice and video
- [[concepts/conversational-video-interface]] — Tavus's product implementation
- [[entities/tavus]] — Company building conversational video systems
- [[entities/pipe-cat]] — Orchestration framework enabling real-time pipelines
