---
title: "Stack Maturity in Voice AI"
category: concepts
tags:
  - voice-ai
  - stack-maturity
  - capability-migration
  - pipecat
  - turn-detection
  - gemini
sources:
  - "AIEF2025 - Milliseconds to Magic: Real‑Time Workflows using the Gemini Live API and Pipecat - https://www.youtube.com/watch?v=fWY1FQwpWkY"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/voice-ai-stack]]"
    type: related_to
  - target: "[[concepts/turn-detection]]"
    type: extends
---

# Stack Maturity in Voice AI

Stack maturity is the observation that voice AI capabilities tend to migrate down the stack over time — from application code, to orchestration frameworks, to real-time APIs, and eventually to the models themselves. ^[extracted]

## The Migration Pattern

The canonical example is turn detection, which has gone through four phases:

1. **Application code** — Thor Schaeff built turn detection into his first voice AI applications two+ years ago, because no tools existed for it. ^[extracted]
2. **Framework** — A few months later, turn detection was built into Pipecat as a generalized, state-of-the-art implementation. ^[extracted]
3. **API** — The Gemini Live API now provides server-side turn detection as a built-in capability. ^[extracted]
4. **Model** — The speakers expect models to eventually handle turn detection natively, without any API or framework support. ^[extracted]

This pattern applies to many other voice AI challenges, though at different stages.

## The 50% Solved Observation

Both speakers agree that none of the hard problems in voice AI are more than ~50% solved. ^[extracted] This means:
- Even "solved" problems at the model layer may have edge cases that require framework-level handling
- Framework-level solutions may not be mature enough for all production use cases
- API-level capabilities are still evolving and may change
- New problems emerge at the application layer as the stack matures

## Implications for Developers

- **Start high, push down:** Build solutions at the application layer first, then contribute them to frameworks, APIs, or models as they prove valuable
- **Don't over-engineer:** If a capability is only 50% solved at the API layer, you may still need framework or application-level handling
- **Watch for migrations:** Capabilities that are currently application-specific may soon be available at a lower layer, reducing your implementation burden

## Related

- [[concepts/voice-ai-stack]] — The four-layer stack where this migration occurs
- [[concepts/turn-detection]] — The canonical example of stack migration
- [[concepts/model-driven-application-cycles]] — The other side of the coin: models driving application behavior
