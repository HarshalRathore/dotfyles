---
title: "On-Device Processing for Voice AI"
category: concepts
tags:
  - voice-ai
  - on-device
  - edge-computing
  - raspberry-pi
  - latency
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
  - target: "[[concepts/edge-to-cloud]]"
    type: related_to
  - target: "[[concepts/voice-ai-latency]]"
    type: related_to
  - target: "[[entities/raspberry-pi]]"
    type: related_to
---

# On-Device Processing for Voice AI

On-device processing in voice AI refers to running computation directly on edge devices (like a Raspberry Pi) rather than sending data to the cloud.^[extracted] This approach is essential for tasks that require sub-millisecond latency or cannot tolerate network dependency, such as on-device syllable counting — a task that even advanced cloud LLMs cannot perform reliably within voice AI latency budgets.^[extracted]

## The Syllable Counting Demo

Sean DuBois demonstrated on-device processing at AIEF2025 by having "Squabbert" — a Raspberry Pi running a peer-to-peer WebRTC connection — count syllables in a poem in real time.^[extracted] This task is described as "the 2025 version of how many 'r's are in strawberry" — a simple but latency-sensitive computation that cloud LLMs struggle with because the round-trip network latency exceeds the interaction budget.^[extracted]

## When On-Device Makes Sense

On-device processing is valuable when:
- Latency requirements exceed what cloud round-trips can satisfy
- Privacy or data sovereignty requires local computation
- The device needs to function without network connectivity
- The computation is simple enough for edge hardware but timing-sensitive^[inferred]

## Hybrid Architecture

The AIEF2025 talk demonstrated a hybrid approach: on-device processing for latency-sensitive tasks (syllable counting) combined with cloud-based AI for complex reasoning (LLM inference).^[extracted] WebRTC's peer-to-peer mode enables this by connecting edge devices directly to each other without server mediation.^[extracted]

## Relationship to Other Concepts

- [[concepts/edge-to-cloud]] — The complementary architecture; edge handles latency-sensitive tasks, cloud handles compute-intensive ones
- [[concepts/voice-ai-latency]] — The latency budget that makes on-device processing necessary for certain tasks
- [[entities/raspberry-pi]] — The hardware used in the demo
