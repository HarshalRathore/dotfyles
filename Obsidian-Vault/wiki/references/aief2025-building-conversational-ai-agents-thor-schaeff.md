---
title: "[Full Workshop] Building Conversational AI Agents - Thor Schaeff, ElevenLabs"
category: references
tags:
  - reference
  - talk
  - aief2025
  - voice-ai
  - conversational-ai
  - elevenlabs
  - workshop
  - multilingual
summary: Full workshop at AIEF2025 by Thor Schaeff (ElevenLabs) on building multilingual conversational AI agents, covering STT→LLM→TTS pipeline, ElevenLabs' ASR model, sound effects, and developer tools.
sources:
  - "https://www.youtube.com/watch?v=mptcbazn84a"
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.0
base_confidence: 0.95
lifecycle: draft
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/thor-schaeff]]"
    type: related_to
  - target: "[[entities/elevenlabs]]"
    type: related_to
  - target: "[[concepts/voice-pipeline]]"
    type: related_to
---

# [Full Workshop] Building Conversational AI Agents - Thor Schaeff, ElevenLabs

## TL;DR

Thor Schaeff (Developer Experience, ElevenLabs) and colleague Paul delivered a full workshop at AIEF2025 on building multilingual conversational AI agents using ElevenLabs' platform. They covered the STT→LLM→TTS pipeline architecture, demonstrated ElevenLabs' multilingual ASR model (99 languages), sound effects generation, text-to-bark, and the developer credit program. ^[extracted]

## Problem / Motivation

Building natural, multilingual voice agents requires integrating multiple AI models (STT, LLM, TTS) into a low-latency pipeline. ^[extracted] The challenge is making voice interaction feel as natural as human conversation while supporting diverse languages and use cases — from enterprise customer service to creative applications like video game sound design. ^[extracted]

## Method / Architecture

ElevenLabs uses a **text-intermediate pipeline** (STT → LLM → TTS) rather than direct sound-to-speech: ^[extracted]

1. **Speech-to-Text (ASR)** — ElevenLabs' multilingual model transcribes audio to text, with word-level timestamps, speaker diarization, and audio event tagging
2. **LLM Processing** — Partner LLMs (GPT-4, Google Gemini, etc.) generate text responses as the "brain" of the agent
3. **Text-to-Speech (TTS)** — ElevenLabs converts the text response back to natural-sounding speech

Key design decision: text intermediate provides monitoring and observability that sound-to-speech lacks. ^[extracted] All models are deployed close together to minimize latency. ^[extracted]

## System Tools

ElevenLabs provides several system tools within their conversational AI agents platform: ^[extracted]

- **Language detection** — automatic language identification for seamless multilingual switching
- **Function calling / tool calling** — giving the agent access to specific functionality
- **Multilingual support** — 99 languages in ASR, with Hindi, Tamil, and Hungarian in development

## Key Features Demonstrated

- **Multilingual ASR** — benchmark-leading across 99 languages with structured API responses
- **Sound effects model** — generates arbitrary sounds from text; powers the Sound Board (drum machine interface) and text-to-bark (for dog applications)
- **Text-to-bark** — generated dog barks from text, targeting the 900 million dogs in the world
- **Developer credit program** — free credits for three months to try the platform

## Limitations

- Hungarian language support was not yet available at the time of the workshop (expected within weeks)
- Sound effects generation is not designed for conversational AI — it generates discrete audio clips
- The text-intermediate pipeline adds latency compared to direct sound-to-speech approaches ^[inferred]

## Related

- [[entities/thor-schaeff]] — Speaker, Developer Experience at ElevenLabs
- [[entities/elevenlabs]] — The company presenting
- [[concepts/voice-pipeline]] — The STT→LLM→TTS pipeline architecture
- [[concepts/automatic-speech-recognition]] — ElevenLabs' multilingual ASR model
- [[concepts/sound-effects-generation]] — Sound effects and text-to-bark capabilities
- [[concepts/language-detection]] — System tool for multilingual switching
