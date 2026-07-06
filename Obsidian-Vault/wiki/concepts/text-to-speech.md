---
title: "Text-to-Speech"
category: concepts
tags:
  - tts
  - voice-ai
  - speech
  - elevenlabs
  - generative-ai
summary: Text-to-Speech (TTS) — converting written text into natural-sounding speech. Core component of voice agent pipelines, enabling AI agents to communicate verbally.
sources:
  - "https://www.youtube.com/watch?v=mptcbazn84a"
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
  - target: "[[concepts/voice-pipeline]]"
    type: uses
  - target: "[[concepts/voice-ai-latency]]"
    type: related_to
  - target: "[[entities/elevenlabs]]"
    type: implements
---

# Text-to-Speech

Text-to-Speech (TTS) is the process of converting written text into natural-sounding human speech. In a voice agent pipeline, TTS is the final component — it takes the LLM's text response and converts it into audio that the user can hear. ^[extracted]

## Role in Voice Agent Pipeline

TTS sits at the end of the standard voice agent pipeline: STT → LLM → TTS. ^[extracted] The LLM generates a text response, and TTS converts that text into spoken audio. This is the last stage before the audio is sent back to the user over the network transport layer. ^[extracted]

## ElevenLabs TTS

ElevenLabs is known primarily for its TTS capabilities, generating natural-sounding speech from text input. ^[extracted] Their TTS model is a core product that powers their conversational AI agents platform and is integrated into their voice agent pipeline. ^[extracted]

## Relationship to Voice Agent Architecture

In the text-intermediate pipeline that ElevenLabs uses, TTS receives clean text from the LLM — this provides observability and monitoring that direct sound-to-speech architectures lack. ^[extracted] The text layer allows the system to log exactly what the LLM said before converting it to speech. ^[inferred]

## Related

- [[concepts/voice-pipeline]] — TTS is the final stage of the voice AI pipeline
- [[concepts/voice-ai-latency]] — TTS inference time contributes to total voice-to-voice latency
- [[concepts/automatic-speech-recognition]] — The sibling STT component at the pipeline's start
- [[entities/elevenlabs]] — The company whose TTS model is the industry benchmark
