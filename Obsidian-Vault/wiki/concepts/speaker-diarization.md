---
title: "Speaker Diarization"
category: concepts
tags:
  - speech
  - asr
  - diarization
  - multi-speaker
  - elevenlabs
  - transcription
summary: Speaker diarization — identifying and labeling different speakers in audio. Built into ElevenLabs' multilingual ASR model for structured transcript output.
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
  - target: "[[concepts/automatic-speech-recognition]]"
    type: extends
  - target: "[[entities/elevenlabs]]"
    type: implements
---

# Speaker Diarization

Speaker diarization is the process of identifying and labeling different speakers in an audio recording. ^[extracted] It answers the question "who spoke when?" without relying on pre-registered voice profiles — it clusters speech segments by speaker identity based on acoustic characteristics. ^[extracted]

## In ElevenLabs ASR

Speaker diarization is a built-in feature of ElevenLabs' multilingual ASR model, which benchmarks leading across 99 languages. ^[extracted] The model produces structured API responses where each spoken segment is annotated with which speaker produced it, alongside word-level timestamps. ^[extracted]

## Use Cases

- **Meeting transcription** — distinguishing between multiple participants in conference calls
- **Interview transcription** — labeling interviewer vs. interviewee speech segments
- **Multi-party voice conversations** — voice agents that need to track who said what in group settings
- **Content analysis** — understanding speaker dynamics in podcasts, debates, and panel discussions

## Relationship to ASR

Speaker diarization extends basic speech-to-text by adding speaker identity metadata to each transcribed segment. ^[extracted] It is typically performed as a post-processing step on the ASR output, clustering speech segments by acoustic similarity before assigning speaker labels. ^[inferred]

## Related

- [[concepts/automatic-speech-recognition]] — Speaker diarization is a feature of ElevenLabs' ASR model
- [[concepts/audio-event-tagging]] — Another structured metadata feature of the same ASR model
- [[entities/elevenlabs]] — The company that provides this feature
