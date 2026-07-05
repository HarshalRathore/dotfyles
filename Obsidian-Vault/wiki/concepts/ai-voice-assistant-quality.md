---
title: "AI Voice Assistant Quality Problems"
category: concepts
tags: [voice-ai, voice-assistants, turn-taking, latency, user-experience, aief2025]
summary: "Common failures in AI voice assistants: unreliable turn-taking, wrong interruptions, delays, and poor timing. Hold-to-speak models can solve many of these issues."
sources:
  - "[[sources/watchv=kcka7rzcxlk]]"
provenance: { extracted: 1.0, inferred: 0.0, ambiguous: 0.0 }
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:30:00Z
updated: 2026-07-05T00:30:00Z
relationships:
  - target: "[[concepts/voice-agents]]"
    type: related_to
  - target: "[[concepts/voice-conversation-design]]"
    type: related_to
  - target: "[[concepts/voice-ai-latency]]"
    type: related_to
---

## AI Voice Assistant Quality Problems

A systematic critique of current AI voice assistant quality, based on observations from [[entities/lukasz-gandecki|Łukasz Gądecki]] at AIEF2025. His assessment: "almost all of them are terrible, if not all."

### Common Failures

1. **Unreliable accuracy** — Even the best demos (like Google's at AIEF2025) work only ~50% of the time
2. **Latency** — Noticeable delays between user input and assistant response
3. **Wrong turn-taking** — The assistant starts talking at the wrong time, interrupting the user
4. **False interruptions** — The assistant interrupts the user when it shouldn't

### The Hold-to-Speak Solution

Gądecki's approach in Books Reimagined avoids these problems entirely with a hold-to-speak model:
- User holds a button to specify when they are speaking
- User releases the button
- The assistant responds in ~100ms
- No ambiguity about who is speaking and when

This eliminates turn-taking confusion, false interruptions, and latency issues because the system has explicit control over when conversation turns happen.

### Design Implication

The problem isn't just technical — it's conversational design. Current voice assistants try to be always-on and always-listening, which creates more problems than it solves. A simpler interaction model (hold-to-speak) can be more reliable and feel more natural.
