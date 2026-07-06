---
title: NGMI Thesis for Realtime AI
category: concepts
tags:
- voice-ai
- latency
- web-rtc
- web-sockets
- ngmi
- platform-shift
sources:
- 'https://www.youtube.com/watch?v=e71ytnbcfxy'
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/voice-ai-latency]]'
  type: related_to
- target: '[[concepts/web-rtc]]'
  type: related_to
- target: '[[concepts/web-sockets]]'
  type: related_to
summary: NGMI Thesis for Realtime AI
---

# NGMI Thesis for Realtime AI

The "NGMI" (Not Gonna Make It) thesis states that building realtime AI experiences on the wrong networking stack guarantees failure.^[extracted] The talk's title declares that realtime AI built on WebSockets instead of WebRTC is fundamentally broken — not a matter of optimization but of architectural incompatibility.^[extracted]

## The Core Argument

Voice-to-voice AI requires sub-second latency. WebSockets run on TCP, which guarantees in-order packet delivery by blocking all subsequent packets when one is dropped.^[extracted] In real-world networks with packet loss, jitter, and delay, this means 10–15% of connections will suffer audio glitchiness, high latency, or unexpected disconnections.^[extracted] No amount of application-layer optimization can fix a transport protocol that fundamentally conflicts with the latency budget.^[extracted]

## The Prescription

The thesis prescribes a binary choice: WebSockets for server-to-server and prototyping (where latency tolerance is high), WebRTC for any edge-to-cloud audio streaming (where sub-second latency is mandatory).^[extracted] Using the wrong protocol for the wrong use case is the single biggest mistake builders make in voice AI.^[extracted]

## Broader Implications

The NGMI thesis extends beyond voice AI to all realtime AI applications. Any AI system that streams audio or video over the internet from a web or native app to the cloud requires WebRTC's best-effort networking, buffer management, and bandwidth estimation.^[inferred] Building these on TCP-based protocols is architecturally doomed regardless of how fast the underlying AI model is.^[inferred]

## Relationship to Other Concepts

- [[concepts/voice-ai-latency]] — The latency budget that makes the NGMI thesis necessary
- [[concepts/web-rtc]] — The protocol that solves the problem the thesis identifies
- [[concepts/web-sockets]] — The protocol that causes the problem the thesis warns about
- [[concepts/voice-agents]] — The application domain where this thesis is most critical
