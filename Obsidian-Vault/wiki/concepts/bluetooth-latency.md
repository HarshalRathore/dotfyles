---
title: Bluetooth as Voice AI Latency Enemy
category: concepts
tags:
- voice-ai
- latency
- bluetooth
- networking
- real-world
sources:
- 'https://www.youtube.com/watch?v=e71ytnbcfxy'
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
tier: peripheral
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/voice-ai-latency]]'
  type: related_to
- target: '[[concepts/web-rtc]]'
  type: related_to
summary: Bluetooth as Voice AI Latency Enemy
---

# Bluetooth as Voice AI Latency Enemy

Bluetooth is identified by Sean DuBois as a major source of unexpected latency in voice AI applications, described with the emphatic "don't get me started on Bluetooth."^[extracted] Even well-optimized voice-to-voice systems can easily degrade past the 1-second threshold due to Bluetooth interference, alongside network jitter and slow LLM inference.^[extracted]

## The Problem

Bluetooth audio codecs introduce additional latency on top of the already tight voice-to-voice latency budget.^[extracted] This is particularly insidious because it affects what appears to be a local interaction — the user hears audio through Bluetooth headphones and assumes the issue is with the network or AI, when it's actually the Bluetooth link.^[extracted]

## Real-World Impact

In a real-world demo at AIEF2025, voice latency sat just under one second — described as "good but not great."^[extracted] The speakers noted that "your LLM might be slower, other things get in the way, or worst of all Bluetooth."^[extracted] This highlights that voice AI latency is a system-level problem where the weakest link (whether network, model, or Bluetooth) determines the user experience.^[extracted]

## Relationship to Other Concepts

- [[concepts/voice-ai-latency]] — Bluetooth is one of the specific factors that push latency over the 1-second threshold
- [[concepts/voice-pipeline]] — Bluetooth adds latency to the final TTS→user audio delivery step
