---
title: Best-Effort Networking
category: concepts
tags:
- networking
- web-rtc
- latency
- packet-loss
- real-time
sources:
- 'https://www.youtube.com/watch?v=e71ytnbcfxy'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/web-rtc]]'
  type: implements
- target: '[[concepts/web-sockets]]'
  type: contrasts
- target: '[[concepts/voice-ai-latency]]'
  type: enables
summary: Best-Effort Networking
---

# Best-Effort Networking

Best-effort networking is a transmission model where packets are sent as fast as possible and lost or delayed packets are ignored rather than waited for.^[extracted] This is the opposite of TCP's guaranteed-delivery model, where a dropped packet blocks all subsequent data until it is retransmitted or the connection times out.^[extracted]

## Why Best-Effort Matters for Realtime

In conversational voice AI with a sub-second latency budget, stale data is worthless.^[extracted] A packet containing audio from a second ago does not help the conversation — it actively harms it by adding delay. Best-effort networking treats packet loss as an acceptable trade-off for maintaining the latency budget, using clever buffer management and jitter buffers to smooth out the gaps.^[extracted]

## WebRTC's Best-Effort Stack

WebRTC implements best-effort networking through several mechanisms:

- **Jitter buffers** — absorb network jitter and reorder packets for smooth playback
- **Packet loss hiding** — ignores packets that don't arrive within the latency budget
- **Bandwidth estimation** — automatically adapts to fluctuating network conditions
- **Automatic resampling and packetization** — handles format conversion without application code^[extracted]

## The TCP Contrast

TCP guarantees in-order delivery: put packets in the OS send queue and it will keep trying until acknowledged or timed out.^[extracted] This is perfect for web requests but catastrophic for realtime audio, where the OS queue blocks everything behind a single lost packet. In real-world networks, this causes audio glitchiness, high latency, or unexpected socket disconnections in 10–15% of connections.^[extracted]

## Relationship to Other Concepts

- [[concepts/web-rtc]] — The protocol that implements best-effort networking for audio/video
- [[concepts/web-sockets]] — Runs on TCP, which is the opposite of best-effort
- [[concepts/voice-ai-latency]] — The latency budget that makes best-effort networking necessary
