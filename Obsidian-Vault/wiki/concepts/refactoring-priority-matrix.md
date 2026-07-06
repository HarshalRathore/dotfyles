---
title: "Refactoring Priority Matrix"
category: concepts
tags: [refactoring, code-quality, development-methodology, prioritization, aief2025]
summary: "Refactoring decision framework: prioritize by badness × pain × ease. Avoid refactoring code that is bad but not painful to work with, even if easy to change."
sources:
  - "https://www.youtube.com/watch?v=kcka7rzcxlk"
provenance: { extracted: 1.0, inferred: 0.0, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:30:00Z
updated: 2026-07-05T00:30:00Z
relationships:
  - target: "[[concepts/vibe-coding]]"
    type: related_to
  - target: "[[concepts/vibe-engineering]]"
    type: related_to
---

## Refactoring Priority Matrix

A practical framework for deciding which code to refactor first, based on three factors multiplied together: **badness × pain × ease**.

### The Formula

```
refactor_priority = badness × pain × ease
```

Where:
- **Badness**: How poorly written the code is (confusing, untyped, buggy)
- **Pain**: How much it hurts to work with this code (blocks features, causes bugs)
- **Ease**: How easy it is to refactor (isolated, well-understood, few dependencies)

### The Insight

The common intuition is to refactor the worst code first, or the most painful code. But Gądecki observed that code can be very bad and very easy to change while being not painful at all — in which case it's probably not worth refactoring.

### Example

Gądecki had a piece of OpenAI audio processing code that was "JavaScript, very quickly written, no types, very confusing" — but he never had to touch it, so he didn't refactor it despite being tempted. The badness was high, but pain was near zero, making the overall priority low.

### When to Refactor

Focus on low-hanging fruit: code that is bad, painful, AND easy to change. This gives the best return on refactoring effort. Save deep, risky refactors for when the pain justifies the risk.
