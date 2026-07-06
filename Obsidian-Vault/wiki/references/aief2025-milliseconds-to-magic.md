---
title: 'AIEF2025 - Milliseconds to Magic: Real-Time Workflows using the Gemini Live API and Pipecat'
category: references
tags:
- aief2025
- voice-ai
- gemini
- pipecat
- real-time
- voice-agent
- stack-maturity
sources:
- 'AIEF2025 - Milliseconds to Magic: Real‑Time Workflows using the Gemini Live API and Pipecat - https://www.youtube.com/watch?v=fWY1FQwpWkY'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/gemini]]'
  type: uses
- target: '[[entities/pipe-cat]]'
  type: uses
- target: '[[entities/daily]]'
  type: related_to
- target: '[[entities/thor-schaeff]]'
  type: related_to
- target: '[[concepts/voice-ai-stack]]'
  type: related_to
- target: '[[concepts/turn-detection]]'
  type: related_to
summary: 'AIEF2025 - Milliseconds to Magic: Real-Time Workflows using the Gemini Live API and Pipecat'
---

# AIEF2025 - Milliseconds to Magic: Real-Time Workflows using the Gemini Live API and Pipecat

Thor Schaeff (ElevenLabs) and Shristha (models/APIs side) present at AI Engineer World's Fair 2025. Thor approaches from the application layer and agent framework direction; Shristha from the models and APIs angle. They argue that voice is a critical and universal building block for the next generation of generative AI, especially at the UI level.

## The Voice AI Stack

The talk introduces a four-layer model of the voice AI stack:

1. **Large Language Models** — Foundation layer; frontier labs like DeepMind work on these. Models are getting more generally capable over time.
2. **Real-Time APIs** — Carefully designed, constantly evolving APIs. Google's implementation is the Gemini Live API. These APIs handle inference and additional capabilities like turn detection.
3. **Orchestration Frameworks** — Libraries and frameworks like Pipecat that manage and abstract the complexity of building real-time multimodal applications.
4. **Application Code** — The top layer where specific user-facing features are implemented.

Each "hard thing" that voice agent developers need to solve lives somewhere in this stack, and can be mapped on a two-dimensional grid: where in the stack the code lives, and how mature/solved the solution is.

## Stack Maturity Thesis

The speakers propose that capabilities tend to move down the stack over time. What starts as one-off application code gets built into orchestration frameworks, then into APIs, and eventually into the models themselves. Turn detection is the canonical example:

- **Phase 1:** Built in application code (Thor's first voice AI apps, two+ years ago)
- **Phase 2:** Built into Pipecat framework (a few months later)
- **Phase 3:** Built into the multimodal live APIs (server-side turn detection in Gemini Live API)
- **Phase 4 (future):** Models do turn detection natively

The speakers note that Daily also supports server-side turn detection but allows developers to disable it and use client-side models like Daily's own VAD.

## "50% Solved" Observation

Both speakers agree that none of the hard problems in voice AI are more than ~50% solved. This is described as an arbitrary but stress-tested personal estimate. The key message: it's early for voice AI, and there's a lot of work to do at every part of the stack. As technology matures, more interesting use cases emerge at the application layer while capabilities consolidate down the stack.

## Demo: Voice Priority Management

Thor demonstrates a voice agent he uses daily for managing priorities — a gray area between a to-do list and brainstorming. The demo covers:

- Creating a grocery list for "asparagus pizza" via voice
- Adding pizza ingredients (crust, mozzarella, tomato sauce, asparagus, garlic, olive oil) to a "GURFY" list
- Creating a reading list and adding books
- The demo exposed model behavior issues: wrong book titles ("Quick" instead of "Dream Count", "Segmentation Faults" as a fallback), turn-taking confusion ("Hey, are you there?"), and the agent not fully processing repeated requests

Thor notes that the model did things his code didn't expect — sometimes bad, sometimes good — illustrating the fundamental shift from traditional programming to model-driven application design.

## Model-Driven Application Cycles

A key insight from the talk: the way models drive the application cycle is fundamentally different from a traditional programmer's view. Half the issues in voice AI apps are models doing things the code didn't expect, which may or may not be desirable. This requires a different mental model for building voice applications — less about precise control flow, more about guiding probabilistic behavior.

## Significance

This talk is notable for combining a conceptual framework (the voice AI stack and its maturity thesis) with a live demo that exposed real-world gaps. It directly connects the model layer (Gemini Live API) to the application layer (Pipecat + custom code), showing how the stack abstraction holds up in practice.
