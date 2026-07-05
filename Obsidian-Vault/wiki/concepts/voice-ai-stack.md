---
title: "Voice AI Stack"
category: concepts
tags:
  - voice-ai
  - architecture
  - stack
  - real-time
  - pipecat
  - gemini
sources:
  - "AIEF2025 - Milliseconds to Magic: Real‑Time Workflows using the Gemini Live API and Pipecat - https://www.youtube.com/watch?v=fWY1FQwpWkY"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/stack-maturity]]"
    type: related_to
  - target: "[[concepts/voice-agents]]"
    type: related_to
  - target: "[[entities/pipe-cat]]"
    type: related_to
---

# Voice AI Stack

The Voice AI Stack is a four-layer architectural model for understanding how real-time voice AI systems are built. ^[extracted] It maps where code lives in a voice agent system and how capabilities migrate across layers over time.

## The Four Layers

1. **Large Language Models** — The foundation layer. Frontier labs like DeepMind develop these models. They provide the core reasoning and generation capabilities. Models are getting more generally capable over time, absorbing capabilities that were previously only available through custom code.

2. **Real-Time APIs** — Carefully designed, constantly evolving APIs that sit above the models. Google's Gemini Live API is the primary example. These APIs handle inference and increasingly provide built-in voice AI primitives like turn detection, semantic VAD, and bidirectional streaming.

3. **Orchestration Frameworks** — Libraries and frameworks like Pipecat that manage and abstract the complexity of building real-time multimodal applications. They provide pipeline architectures, model integrations (60+ for Pipecat), telephony support, and shared implementations of hard problems like turn detection and interruption handling.

4. **Application Code** — The top layer where specific user-facing features are implemented. This is where developers write code for their particular use case — grocery lists, reading lists, enterprise integrations, etc.

## Two-Dimensional Mapping

The stack can be mapped on a two-dimensional grid:
- **X-axis:** Where in the stack does the code live? (application → framework → API → model)
- **Y-axis:** How mature/solved is the solution? (unsolved → partially solved → solved)

This mapping helps developers understand which problems are best solved at which layer and how the landscape is evolving.

## Significance

The voice AI stack framework provides a shared vocabulary for discussing where different voice AI challenges should be addressed. It also captures the observation that no single layer is more than ~50% solved — the entire stack needs work. ^[inferred]

## Related

- [[concepts/stack-maturity]] — How capabilities move down the stack over time
- [[concepts/voice-agents]] — What gets built on top of this stack
- [[concepts/voice-ai-latency]] — The dominant constraint that shapes this stack
- [[entities/pipe-cat]] — The leading orchestration framework
- [[concepts/gemini-live-api]] — The leading real-time API
