---
title: "WebRTC Connection Patterns"
category: concepts
tags:
  - web-rtc
  - networking
  - peer-to-peer
  - edge-to-cloud
  - multi-party
  - real-time
sources:
  - "[[sources/watchv=e71ytnbcfxy]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/web-rtc]]"
    type: related_to
  - target: "[[concepts/edge-to-cloud]]"
    type: related_to
  - target: "[[entities/pipe-cat]]"
    type: related_to
---

# WebRTC Connection Patterns

WebRTC supports three distinct connection patterns that enable flexible real-time audio architectures.^[extracted] These patterns range from direct device-to-device peer-to-peer to multi-party server-mediated connections, providing builders with the flexibility to match their application's needs.^[extracted]

## Peer-to-Peer

Direct device-to-device connection over a local area network with no server involved.^[extracted] Sean DuBois demonstrated this at AIEF2025 with "Squabbert" — a Raspberry Pi connected via peer-to-peer WebRTC directly to his laptop. The Pi performed on-device syllable counting, a task impossible for cloud LLMs due to latency constraints.^[extracted] This pattern is ideal for local processing, privacy-sensitive applications, and scenarios where zero-server latency is critical.^[extracted]

## Edge-to-Cloud

The device connects to a server running in the cloud for AI processing.^[extracted] The edge device handles audio capture and playback, while the cloud handles STT, LLM inference, and TTS. This is the standard pattern for cloud-based voice agents — the most common architecture for voice AI applications.^[extracted]

## Multi-Party

Connect to frameworks like PipeCat to bring LLMs into group conversations and meetings.^[extracted] This pattern enables LLMs to participate in existing conversations, acting as a participant in group calls rather than a one-on-one assistant.^[extracted]

## Architectural Flexibility

The key advantage of WebRTC's multiple connection patterns is that builders can choose the architecture that matches their application — serverless P2P for local processing, edge-to-cloud for AI-powered interactions, or multi-party for group contexts.^[extracted] This flexibility is one reason WebRTC is described as "the standard language of the real-time world."^[extracted]

## Relationship to Other Concepts

- [[concepts/web-rtc]] — The protocol that supports these connection patterns
- [[concepts/edge-to-cloud]] — The edge-to-cloud pattern in detail
- [[concepts/voice-agents]] — Voice agents primarily use the edge-to-cloud pattern
