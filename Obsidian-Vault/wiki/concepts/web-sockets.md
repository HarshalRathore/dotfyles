---
title: WebSockets
category: concepts
tags:
- web-sockets
- networking
- protocol
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
  type: contrasts
summary: WebSockets
---

# WebSockets

WebSockets provide a long-lived, bidirectional connection for sending small amounts of structured data. They are great for prototyping, server-to-server communication, and cross-platform data delivery — but they are almost the opposite of what you want for real-time audio and video.^[extracted]

## The TCP Problem for Real-Time Audio

WebSockets run on top of TCP, which guarantees in-order packet delivery. When a packet is dropped, the OS send queue blocks all subsequent packets until the lost one is retransmitted or the connection times out.^[extracted] For conversational voice AI targeting sub-second latency, this blocking behavior is catastrophic — you want to ignore stale packets, not wait for them.^[extracted]

## When WebSockets Make Sense

WebSockets are appropriate for:
- Server-to-server communication
- Small amounts of structured data
- Prototyping and quick experimentation
- Cross-platform compatibility where WebRTC is too complex

Many real applications use both: WebSockets for control data and metadata, WebRTC for the actual audio/video streams.^[extracted]

## Relationship to Other Concepts

- [[concepts/web-rtc]] — The protocol designed specifically for real-time audio/video; WebSockets cannot match its latency characteristics
- [[concepts/voice-ai-latency]] — Using WebSockets for voice transport is the single biggest mistake in voice AI engineering
