---
title: WebRTC
category: concepts
tags:
- web-rtc
- real-time
- audio
- video
- networking
- protocol
sources:
- 'https://www.youtube.com/watch?v=e71ytnbcfxy'
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/web-sockets]]'
  type: contrasts
- target: '[[concepts/voice-ai-latency]]'
  type: enables
- target: '[[concepts/voice-agents]]'
  type: enables
summary: WebRTC
---

# WebRTC

WebRTC (Web Real-Time Communication) is the standard protocol for sending real-time audio and video streams over the internet. It is the "standard language of the real-time world" and powers applications like Facebook Messenger, WhatsApp, Zoom, and Discord — though most users don't know they're using it.^[extracted]

## Why WebRTC for Real-Time Audio

WebRTC solves problems that WebSockets cannot for real-time audio:

1. **Best-effort networking** — WebRTC sends packets as fast as possible and ignores packets that don't arrive within a tight latency budget. This is fundamentally different from TCP/WebSocket behavior where a dropped packet blocks everything behind it in the OS send queue.^[extracted]
2. **Built-in buffer management** — WebRTC handles jitter buffers, packet reordering, and loss recovery through clever math and buffer management that hides network imperfections.^[extracted]
3. **Automatic resampling and packetization** — WebSockets require you to build all of this yourself.
4. **Bandwidth estimation** — WebRTC automatically adapts to fluctuating network conditions; with WebSockets you must send one fixed bitrate and handle degradation manually.^[extracted]
5. **Standard APIs for stats and observability** — Built into the protocol.^[extracted]

In real-world conditions, using WebSockets for real-time audio causes audio glitchiness, high latency, or unexpected socket disconnections in 10–15% of network connections.^[extracted]

## The TCP Problem

A WebSocket is a TCP connection that guarantees in-order delivery of network packets. If you send data, it arrives exactly as sent or not at all. The OS queue keeps trying to send until the other side acknowledges or the connection times out.^[extracted] This is perfect for web requests but disastrous for conversational latency — you do not care about what happened a second ago in a real-time audio stream.^[extracted]

## Use Cases

WebRTC can be embedded in any app — websites, iOS apps, Android apps — and connections "just work" on almost any real-world network.^[extracted] Its applications extend far beyond consumer apps: DuBois worked with a company doing surgery over the internet and autonomous vehicles in the field.^[extracted]

## Connection Flexibility

WebRTC supports multiple connection patterns:
- **Peer-to-peer** — direct device-to-device connection (e.g., Raspberry Pi to laptop over LAN)
- **Edge-to-cloud** — device connects to a server running in the cloud for AI processing
- **Multi-party** — connect to frameworks like PipeCat to bring LLMs into meetings^[extracted]

## Relationship to Other Concepts

- [[concepts/web-sockets]] — The alternative transport; WebRTC excels where WebSockets fail for real-time audio
- [[concepts/voice-ai-latency]] — WebRTC is the primary enabler of sub-second voice-to-voice latency
- [[concepts/voice-agents]] — Voice agents require WebRTC for edge-to-cloud audio transport
