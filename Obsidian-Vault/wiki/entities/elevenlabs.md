---
title: "ElevenLabs"
category: entities
tags:
  - company
  - ai
  - voice-ai
  - tts
  - stt
  - sound-effects
  - multilingual
  - aief2025
summary: ElevenLabs — AI voice company building TTS, ASR, sound effects, and multilingual conversational AI agent infrastructure.
sources:
  - "[[sources/watchv=mptcbazn84a]]"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.90
lifecycle: draft
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/openai]]"
    type: related_to
  - target: "[[concepts/voice-pipeline]]"
    type: implements
  - target: "[[concepts/automatic-speech-recognition]]"
    type: implements
  - target: "[[concepts/sound-effects-generation]]"
    type: implements
---

# ElevenLabs

ElevenLabs is an AI voice company that builds text-to-speech, speech-to-text, sound effects, and multilingual conversational AI agent infrastructure. ^[extracted] They do not build their own intelligence models; instead, they partner with existing LLM providers (GPT-4, Google Gemini, etc.) and integrate them into a voice agent pipeline. ^[extracted]

## Product Suite

**Text-to-Speech (TTS)** — ElevenLabs' core product, generating natural-sounding speech from text input. ^[extracted]

**Automatic Speech Recognition (ASR)** — Their multilingual speech-to-text model, benchmark-leading across 99 languages, with word-level timestamps, speaker diarization, and audio event tagging (coughing, laughing, etc.). ^[extracted]

**Sound Effects Model** — Generates arbitrary sound effects from text prompts. Users can generate four samples and select the best one. Also powers the ElevenLabs Sound Board — a drum-machine-like interface where sounds are mapped to keyboard keys. ^[extracted]

**Text-to-Bark** — A sound effects application that generates dog barks from text prompts. Launched April Fools' 2025 (unfortunately timed), it uses the same sound effects model. Targets applications for the 900 million dogs in the world. ^[extracted]

## Architecture Philosophy

ElevenLabs deliberately uses a text-intermediate pipeline (STT → LLM → TTS) rather than direct sound-to-speech. Their reasoning: with sound-to-speech, you're "flying blind" — you trust the model to reply intelligently without visibility. With text as an intermediate, you get monitoring, observability, and the ability to understand what's happening in the conversation. ^[extracted] They deploy all models very close to each other to minimize latency. ^[extracted]

## Developer Experience

ElevenLabs maintains a dedicated developers Twitter account for API version updates, client library announcements, and developer-facing changes. They offer credit programs for developers trying their platform. ^[extracted] Thor Schaeff works on developer experience at ElevenLabs, specifically on the conversational AI agents platform. ^[extracted]

## Multilingual Strategy

ElevenLabs supports Hindi and Tamil currently, with additional Indian languages in development. They were working on version three of their multilingual models at the time of the AIEF2025 workshop, with Hungarian potentially arriving within weeks. ^[extracted]

## Related

- [[concepts/voice-pipeline]] — The STT→LLM→TTS pipeline architecture they use
- [[concepts/automatic-speech-recognition]] — Their multilingual ASR model
- [[concepts/sound-effects-generation]] — Their sound effects model
- [[entities/openai]] — Competing in the voice AI space
