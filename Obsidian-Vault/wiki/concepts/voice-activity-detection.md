---
title: "Voice Activity Detection"
tags:
  - voice
  - ai
  - speech
  - vad
  - turn-taking
  - audio
sources:
  - "AI Engineer World's Fair 2025 talk - Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit - https://www.youtube.com/watch?v=1v9zBiZKlIY"
summary: "A two-part system using a neural network (speech/not-speech classification) plus a silence algorithm to detect when a speaker has finished their turn in voice AI conversations."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Voice Activity Detection

Voice Activity Detection (VAD) is the prevailing mechanism for turn-taking in production voice AI systems. It determines when the user has finished speaking and it is the agent's turn to respond.

## Architecture

VAD consists of two primary components that work together: ^[extracted]

1. **A neural network / ML model** — classifies audio as speech or not-speech. This is the core detection component.
2. **A silence algorithm** — if the speaker hasn't spoken for more than a threshold duration (typically ~500ms), the system assumes they are done speaking and it is time for the agent to respond. ^[extracted]

## Limitations

The traditional VAD approach has several fundamental limitations compared to human turn-taking: ^[inferred]

- **Backward-looking** — it only measures silence duration after speech, with no predictive capability
- **Serial processing** — detection and response happen sequentially, not in parallel
- **No semantic understanding** — it cannot use the content of what was said to predict turn completion
- **No contextual awareness** — ignores conversational history, speaker intent, and prosodic cues
- **No cross-cultural adaptation** — a fixed silence threshold cannot accommodate the wide variation in turn-taking timing across cultures and individuals

These limitations are the root cause of the interruption problem in voice AI agents — the system can only react to silence, not anticipate turn completion. ^[inferred]

## Relationship to Other Approaches

- [[concepts/semantic-end-of-utterance-detection|Semantic End-of-Utterance Detection]] augments VAD by adding semantic, syntactic, and prosodic analysis
- [[concepts/full-duplex-voice-models|Full Duplex Voice Models]] represent a fundamentally different approach, processing input and generating output simultaneously
- [[concepts/voice-agent-architecture|Voice Agent Architecture]] — VAD is a critical component in the cascading voice agent pipeline, sitting between ASR and LLM

## Sources

- [[references/why-chatgpt-keeps-interrupting-you-tom-shapland-livekit|Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit]] — Conference talk
