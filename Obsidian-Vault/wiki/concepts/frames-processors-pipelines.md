---
title: Frames, Processors, and Pipelines
category: concepts
tags:
- pipecat
- real-time
- architecture
- streaming
- media-pipeline
- voice-ai
sources:
- AIEF2025 - Realtime Conversational Video with Pipecat and Tavus — Chad Bailey and Brian Johnson, Daily & Tavus - https://www.youtube.com/watch?v=ujt0da9Z29Q
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/pipe-cat]]'
  type: implements
- target: '[[concepts/real-time-conversational-video]]'
  type: related_to
- target: '[[concepts/voice-agents]]'
  type: related_to
summary: Frames, Processors, and Pipelines
---

# Frames, Processors, and Pipelines

Frames, processors, and pipelines are the three fundamental architectural abstractions of Pipecat — the framework that enables real-time AI interactions.^[extracted] The name "PipeCat" comes from the fact that it is about building pipelines.^[extracted]

## Frames

Frames are type containers for kinds of data that flow through the system.^[extracted] In a Pipecat pipeline, various types of frames represent different aspects of the interaction:^[extracted]

- **Audio frames** — Small snippets of user audio (10-20 milliseconds each)
- **Video frames** — Captures from the user's camera device
- **Context frames** — Completed conversation turns from user and bot
- **VAD frames** — Voice activity detection signals (e.g., user-started-speaking events)
- **Text frames** — Streaming output from the LLM

All data in a Pipecat pipeline is represented as frames — a uniform abstraction that allows different types of media and signals to flow through the same system.^[extracted]

## Processors

Processors are components that handle frames — taking input frames and producing output frames.^[extracted] Each processor performs a specific transformation:^[extracted]

- **LLM processor** — Takes context frames (completed conversation turns) as input and outputs a stream of text frames (streaming LLM output)
- **TTS processor** — Takes text frames and outputs audio frames
- **STT processor** — Takes audio frames and outputs text frames
- **VAD processor** — Detects when a user starts speaking and emits a VAD frame

Processors are composable — the output of one processor becomes the input of the next.^[extracted]

## Pipelines

Pipelines compose processors together to describe what a bot should do.^[extracted] A pipeline is the full chain of processors that media flows through, from user input to bot output.^[extracted]

Pipecat runs pipelines asynchronously, doing its best to minimize the latency of every piece of information as it goes through the pipeline.^[extracted] This asynchronous execution is critical for real-time interactions where every millisecond matters.^[extracted]

## Three Functional Layers

Pipecat operates across three functional layers:^[extracted]

1. **Input** — Receiving media from the user (audio, video)
2. **Processing** — Running models and transformations on the input
3. **Output** — Delivering generated media back to the user (audio, video, UI updates)

In a traditional voice bot, input is voice, processing runs through STT → LLM → TTS, and output is audio. In a Tavus replica, input includes both voice and video, processing may run Tavus as a single integrated component, and output is synchronized video and audio.^[extracted]

## Video-Audio Synchronization

A key challenge in Pipecat pipelines that handle video is keeping video synchronized with audio.^[extracted] Brian Johnson noted this is "a really, really hard thing to do well" and depends on exactly how the pipeline is built.^[extracted] The pipeline architecture must coordinate the timing of video frames with audio frames to maintain the illusion of a natural conversation.^[extracted]

- [[entities/pipe-cat]] — The framework that uses this architecture
- [[concepts/real-time-conversational-video]] — Application domain
- [[concepts/voice-agents]] — Voice-only pipelines
