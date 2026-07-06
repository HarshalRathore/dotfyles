---
title: Voice AI Pipeline
category: concepts
tags:
- voice-ai
- pipeline
- stt
- llm
- tts
- latency
sources:
- 'https://www.youtube.com/watch?v=e71ytnbcfxy'
- 'https://www.youtube.com/watch?v=ia4lzjh9sts'
- 'https://www.youtube.com/watch?v=mptcbazn84a'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/voice-ai-latency]]'
  type: related_to
- target: '[[concepts/edge-to-cloud]]'
  type: uses
- target: '[[entities/pipe-cat]]'
  type: uses
summary: Voice AI Pipeline
---

# Voice AI Pipeline

The voice AI pipeline is the sequence of components that converts spoken input to spoken output in a voice agent: speech-to-text (STT), LLM processing, and text-to-speech (TTS), connected by a real-time audio transport layer.^[extracted] Each component adds latency, and the total voice-to-voice latency — the time from when a human stops talking to when they hear the first audio byte from the AI — must stay under 500ms for natural conversation.^[extracted]

## Pipeline Components

1. **Speech-to-Text (STT)** — Transcribes the human's spoken words into text
2. **LLM Processing** — Generates a text response based on the transcribed input
3. **Text-to-Speech (TTS)** — Converts the generated text back into audio
4. **Network Transport** — Sends audio data between edge device and cloud (WebRTC recommended)^[extracted]

## Pipeline Architecture (PipeCat)

In PipeCat, pipelines are built as sequences of programmable media handling elements, all written in Python (with C for performance-critical paths).^[extracted] Pipelines can be:

- **Simple** — Just a couple of elements: network input → processing → network output
- **Complex** — Enterprise-grade pipelines with many elements connecting to legacy systems, multiple LLMs, and conditional routing^[extracted]

### Pipeline Patterns

**Chained STT→LLM→TTS** — The traditional approach using separate models for each stage. OpenAI's audio-centric models support this pattern.^[extracted]

**Speech-to-Speech** — Using native speech-to-speech models (OpenAI's speech-to-speech, Gemini audio-to-audio) as a single step. In PipeCat, switching between chained and speech-to-speech requires only a few lines of code.^[extracted]

**Multi-LLM routing** — PipeCat pipelines can selectively route audio frames to different LLM instances based on real-time inference results.^[extracted] Example: a two-LLM pipeline where one handles conversation flow and another plays a game with the user (LLM-as-judge pattern).^[extracted]

## Latency Budgeting

A real-world voice-to-voice application running in a browser on macOS communicating to a cloud agent achieved just under one second of latency — good but not great.^[extracted] The total latency is the sum of all four components, and each one must be optimized. Even a fast LLM can be undermined by slow STT/TTS, poor network transport, or Bluetooth interference.^[extracted]

## Ground-Up Design

Voice AI pipelines cannot be built by porting multi-turn text agent patterns. Every component must be designed for speed from the ground up, because the latency budget is so tight that no single component can afford to be a bottleneck.^[extracted] This is why the talk emphasizes that "nothing else matters" as much as latency in voice AI.^[extracted]

## Relationship to Other Concepts

- [[concepts/voice-ai-latency]] — The primary constraint the pipeline must satisfy
- [[concepts/edge-to-cloud]] — The architecture pattern for connecting pipeline components
- [[concepts/voice-agents]] — The application that uses this pipeline
- [[concepts/turn-detection]] — Turn detection is a pipeline element that sits between STT and LLM processing
