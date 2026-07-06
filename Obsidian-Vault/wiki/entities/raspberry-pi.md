---
title: Raspberry Pi
category: entities
tags:
- hardware
- edge-computing
- voice-ai
- on-device
sources:
- 'https://www.youtube.com/watch?v=e71ytnbcfxy'
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.8
lifecycle: draft
tier: peripheral
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/web-rtc]]'
  type: related_to
summary: Raspberry Pi
---

# Raspberry Pi

A Raspberry Pi was demonstrated at AIEF2025 running a peer-to-peer WebRTC connection directly to a laptop over a local area network.^[extracted] The device, named "Squabbert," showcased on-device capabilities that cloud LLMs cannot replicate — specifically syllable counting for constrained poetry generation.^[extracted]

## Demo Significance

The Raspberry Pi demo illustrated the edge-to-cloud connection flexibility that WebRTC enables:
- **Peer-to-peer mode** — direct device-to-device (Pi to laptop)
- **Edge-to-cloud mode** — device connects to cloud AI servers
- **Multi-party mode** — connect via PipeCat for group conversations^[extracted]

The demo also highlighted a key principle: keeping computing power remote while having small devices locally, combining the best of both worlds.^[extracted]

## Relationship to Other Concepts

- [[concepts/web-rtc]] — The Pi used peer-to-peer WebRTC for its connection
- [[concepts/voice-ai-latency]] — On-device processing eliminates network latency for local operations
