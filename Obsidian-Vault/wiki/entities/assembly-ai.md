---
title: "Assembly AI"
tags:
  - company
  - ai
  - speech
  - stt
  - voice
sources:
  - "AI Engineer World's Fair 2025 talk - Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit - https://www.youtube.com/watch?v=1v9zBiZKlIY"
summary: "Speech-to-text provider whose streaming STT service emits both transcript and end-of-utterance probability from a single model."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: peripheral
created: 2026-07-03
updated: 2026-07-03
---

# Assembly AI

Assembly AI provides speech-to-text services. In early July 2025, they released a streaming speech-to-text service with built-in end-of-utterance detection.

## Streaming STT with Turn Detection

- Released a new streaming speech-to-text service in the week of the AI Engineer World's Fair 2025 (early July 2025) ^[extracted]
- Unique approach: a single model that emits both the transcript and a likelihood that the speaker has finished speaking ^[extracted]
- Analyzes both acoustic features and semantic features to determine turn completion ^[extracted]
- Limitation: since it operates at the STT level, it only sees the user's speech, not the full conversation context (no agent-side context) ^[inferred]

## Related

- [[concepts/semantic-end-of-utterance-detection|Semantic End-of-Utterance Detection]] — the broader category of this approach
- [[concepts/voice-activity-detection|Voice Activity Detection]] — the traditional approach it augments
- [[entities/livekit|LiveKit]] — another company working on turn detection

## Sources

- [[references/why-chatgpt-keeps-interrupting-you-tom-shapland-livekit|Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit]] — Conference talk
