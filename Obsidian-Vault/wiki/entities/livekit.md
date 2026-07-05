---
title: "LiveKit"
tags:
  - company
  - voice
  - ai
  - infrastructure
  - real-time
  - open-source
sources:
  - "[[sources/watchv=1v9zbizkliy]]"
summary: "Real-time voice AI infrastructure platform providing audio transport, voice agents, and open-weight turn detection models."
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

# LiveKit

LiveKit is a real-time voice AI infrastructure platform. It provides the audio transport layer for [[entities/openai|OpenAI's]] Advanced Voice Mode and offers voice AI agent building capabilities including turn detection models.

## Voice AI Platform

- Provides audio transport infrastructure for production voice agents ^[extracted]
- Powers the audio layer transport for OpenAI's Advanced Voice Mode ^[extracted]
- Offers a turn detection demo with side-by-side comparison of VAD vs semantic models
- Provides an open-weight end-of-utterance model that developers can use with one additional line of configuration ^[extracted]

## Turn Detection

- Built a semantic end-of-utterance transformer model that takes the last 4 conversation turns as input and predicts when the speaker has finished ^[extracted]
- The model works in concert with the traditional VAD silence algorithm — extending the silence threshold when semantic analysis indicates the turn isn't finished ^[extracted]
- Open weight and available by default in LiveKit's voice agent pipeline ^[extracted]

## Related

- [[entities/tom-shapland|Tom Shapland]] — Director of AI at LiveKit
- [[concepts/semantic-end-of-utterance-detection|Semantic End-of-Utterance Detection]] — their approach to turn-taking
- [[concepts/voice-activity-detection|Voice Activity Detection]] — complements their VAD augmentation

## Sources

- [[references/why-chatgpt-keeps-interrupting-you-tom-shapland-livekit|Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit]] — Conference talk
