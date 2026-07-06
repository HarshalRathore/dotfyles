---
title: "Audio Event Tagging"
category: concepts
tags:
  - speech
  - asr
  - audio-events
  - non-speech
  - elevenlabs
  - transcription
summary: Audio event tagging — detecting and labeling non-speech sounds (coughing, laughing, etc.) within ASR transcripts. Built into ElevenLabs' multilingual ASR model.
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
  - target: "[[concepts/automatic-speech-recognition]]"
    type: extends
  - target: "[[entities/elevenlabs]]"
    type: implements
---

# Audio Event Tagging

Audio event tagging is the detection and labeling of non-speech sounds within an audio recording during transcription. ^[extracted] It identifies ambient sounds, vocalizations, and environmental noises that are not part of the spoken language — such as coughing, laughing, clapping, door slams, and other contextual audio events. ^[extracted]

## In ElevenLabs ASR

Audio event tagging is a built-in feature of ElevenLabs' multilingual ASR model. ^[extracted] It can be enabled in the API, and detected events appear in the structured transcript response alongside the spoken text and word-level timestamps. ^[extracted]

## Use Cases

- **Meeting transcription** — capturing non-verbal cues like laughter and sighs that add context to meeting notes
- **Content analysis** — understanding the emotional tone of a recording through non-speech indicators
- **Accessibility** — providing richer transcripts for hearing-impaired users that include environmental context
- **Voice agent monitoring** — detecting user frustration (coughing, sighing) during voice conversations

## Relationship to ASR

Audio event tagging extends standard speech-to-text by adding a parallel stream of non-speech metadata. ^[extracted] It operates alongside the core transcription, not as a separate model, but as a feature within the ASR pipeline. ^[inferred]

## Related

- [[concepts/automatic-speech-recognition]] — Audio event tagging is a feature of ElevenLabs' ASR model
- [[concepts/speaker-diarization]] — Another structured metadata feature of the same model
- [[entities/elevenlabs]] — The company that provides this feature
