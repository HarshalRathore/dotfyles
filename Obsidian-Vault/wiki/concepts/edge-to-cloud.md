---
title: "Edge-to-Cloud Audio Architecture"
category: concepts
tags:
  - voice-ai
  - architecture
  - web-rtc
  - real-time
sources:
  - "[[sources/watchv=e71ytnbcfxy]]"
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/web-rtc]]"
    type: uses
  - target: "[[concepts/voice-ai-latency]]"
    type: enables
---

# Edge-to-Cloud Audio Architecture

Edge-to-cloud audio architecture refers to sending real-time audio from end-user devices (edge) to cloud-based AI processing services, and returning synthesized audio back to the user — all within sub-second latency budgets.^[extracted] WebRTC is the recommended transport for this pattern.^[extracted]

## Connection Patterns

WebRTC supports three connection patterns for edge-to-cloud audio:

1. **Peer-to-peer** — Direct device-to-device connection over LAN (e.g., Raspberry Pi to laptop). No server involved.^[extracted]
2. **Edge-to-cloud** — Device connects to a cloud server for AI processing. The device handles capture/playback; the cloud handles STT, LLM inference, and TTS.^[extracted]
3. **Multi-party** — Connect to frameworks like PipeCat to bring LLMs into group conversations and meetings.^[extracted]

## Why Edge-to-Cloud Matters

The architecture separates concerns: compute-intensive AI work happens in the cloud while lightweight devices handle audio capture and playback.^[extracted] This enables small, always-on devices (like a Raspberry Pi) to access powerful cloud AI while maintaining real-time interactivity through WebRTC's low-latency transport.^[extracted]

## Relationship to Other Concepts

- [[concepts/web-rtc]] — The transport protocol that makes edge-to-cloud audio viable
- [[concepts/voice-ai-latency]] — The primary constraint driving this architecture
- [[concepts/voice-agents]] — Voice agents are the primary application of edge-to-cloud audio
