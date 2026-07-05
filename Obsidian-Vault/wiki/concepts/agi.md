---
title: "AGI (Artificial General Intelligence)"
category: concepts
tags: [agi, general-intelligence, ai-research, ai-engineering, reliability]
summary: "Artificial General Intelligence — the ability to figure things out in new environments fast. Distinguished from software engineering: we have billions of unreliable general intelligences already (humans)."
sources:
  - "AIEF2025 - On Engineering AI Systems that Endure The Bitter Lesson - Omar Khattab, DSPy & Databricks - https://www.youtube.com/watch?v=qdmxApz3EJI"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/ai-engineering|AI Engineering]]"
    type: distinguished_from
  - target: "[[concepts/agi-vs-software|AGI vs Software Engineering]]"
    type: central_to
  - target: "[[concepts/bitter-lesson|The Bitter Lesson]]"
    type: goal_of
---

# AGI (Artificial General Intelligence)

**AGI** (Artificial General Intelligence) is the ability to figure things out in new environments fast — general intelligence applied to arbitrary problems. It is the goal of AI research, but not the goal of AI engineering. ^[extracted]

## Omar Khattab's Reframing

Khattab makes a crucial distinction: **we don't build software because we lack AGI**. We have eight billion general intelligences already (humans). They're unreliable because that's what intelligence is — flexible but not dependable for specific tasks. We build software because we need systems that are:

- **Reliable**: consistent behavior
- **Robust**: handle edge cases
- **Controllable**: we can reason about them
- **Scalable**: work at scale ^[extracted]

## AGI vs Software

| AGI Goal | Software Goal |
|----------|--------------|
| Maximize general problem-solving ability | Solve specific problems reliably |
| More intelligence = better | Less agency (in right places) = better |
| Don't constrain the system | Constrain the system carefully |
| AI research focus | AI engineering focus |

## Implications

1. The Bitter Lesson (maximize intelligence via scale) applies to AGI research, not directly to software engineering
2. AI engineering has different objectives: reliability, controllability, scalability
3. Engineering is about **subtracting agency and intelligence in exactly the right places** ^[extracted]

## Related

- [[concepts/ai-engineering|AI Engineering]] — The discipline focused on reliable systems
- [[concepts/agi-vs-software|AGI vs Software Engineering]] — The distinction in detail
- [[concepts/bitter-lesson|The Bitter Lesson]] — The principle that applies to AGI research
- [[entities/omar-khattab|Omar Khattab]] — Who articulated the distinction
