---
title: "Automatic Speech Recognition"
category: concepts
tags:
  - speech
  - stt
  - asr
  - voice-ai
  - multilingual
  - transcription
summary: Automatic Speech Recognition (ASR) — converting spoken audio to text. ElevenLabs' model benchmarks across 99 languages with word-level timestamps, speaker diarization, and audio event tagging.
sources:
  - "https://www.youtube.com/watch?v=mptcbazn84a"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/voice-pipeline]]"
    type: uses
  - target: "[[concepts/speaker-diarization]]"
    type: extends
  - target: "[[concepts/audio-event-tagging]]"
    type: extends
  - target: "[[entities/elevenlabs]]"
    type: implements
---

# Automatic Speech Recognition

Automatic Speech Recognition (ASR), also called speech-to-text (STT), is the process of converting spoken audio into written text. In a voice agent pipeline, ASR is the first component — it transcribes the user's speech so the LLM can process it as text. ^[extracted]

## ElevenLabs ASR Model

ElevenLabs launched a multilingual ASR model that benchmarks leading across 99 languages. ^[extracted] It provides structured API responses with several built-in features:

**Word-level timestamps** — Each word in the transcript is annotated with its exact timing in the audio, enabling precise synchronization and editing. ^[extracted]

**Speaker diarization** — The model identifies and labels different speakers in the audio, distinguishing who said what in multi-person conversations. ^[extracted]

**Audio event tagging** — Non-speech audio events can be tagged in the transcript output, including sounds like coughing, laughing, and other ambient audio events. ^[extracted]

## Role in Voice Agent Architecture

ElevenLabs uses ASR as part of a text-intermediate pipeline (STT → LLM → TTS) rather than direct sound-to-speech. The text intermediate provides monitoring and observability that sound-to-speech lacks — you can see exactly what the model heard and how it responded. ^[extracted]

## Related

- [[concepts/voice-pipeline]] — ASR is the first stage of the voice AI pipeline
- [[concepts/speaker-diarization]] — A feature of ElevenLabs' ASR model
- [[concepts/audio-event-tagging]] — Non-speech event detection within ASR
- [[entities/elevenlabs]] — The company that built this ASR model
