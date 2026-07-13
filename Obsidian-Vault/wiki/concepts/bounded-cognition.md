---
title: Bounded Cognition
category: concepts
tags: [software-engineering, cognitive-limits, human-factors, system-design, attention]
aliases:
  - bounded cognitive capacity
  - cognitive limits in engineering
  - designing for bounded cognition
relationships:
  - target: "[[concepts/agent-memory-types]]"
    type: related_to
  - target: "[[concepts/cognitive-technologies]]"
    type: related_to
  - target: "[[concepts/ai-engineering]]"
    type: related_to
sources:
  - "https://shapeofthesystem.com/posts/2026/02/03/bounded-cognition.html"
summary: Engineering thesis: the human mind holds ~4 chunks of working memory, yet software systems are vastly larger. Good engineering designs systems that any single mind can work on without being overwhelmed by complexity.
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.68
lifecycle: draft
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Bounded Cognition

Bounded cognition is the recognition that the human mind has severe limits on how many independent things it can hold in active awareness at once — approximately four, not seven — and that almost every principle of good software engineering is a strategy for designing systems that work within these limits rather than against them. ^[extracted]

## Core Thesis

Software systems are among the most intricate objects humans have ever built, yet they are created and maintained by minds that can hold roughly four things straight at a time. The ratio between system size and mind size is not a temporary gap but a permanent condition of the work. ^[extracted] Good engineering is not about finding a bigger mind; it is about shaping the system so that a small mind can change it safely. ^[extracted]

This reframes the industry's favorite phrase "human error." A warning that half of attentive people will not see is not a warning — it is decoration. Blaming the person who clicked the wrong button misses the point: the designer put a button one tired click away from disaster. ^[extracted]

## The Empirical Basis

Research shows the honest figure for working memory capacity is about four chunks, not the popular seven: ^[extracted]

- **Miller (1956)** — "The Magical Number Seven, Plus or Minus Two" popularized seven as a limit, but Miller himself called it half a joke. ^[extracted]
- **Cowan (2001)** — Reconsidered the evidence and found four chunks is the more honest figure when you strip away rehearsing and chunking tricks. ^[extracted]
- **Peterson & Peterson (1959)** — Showed unrehearsed items decay within seconds. ^[extracted]
- **Simons & Chabris (1999)** — The "gorilla study" demonstrated that focused attention makes the obvious invisible: about half of people watching a basketball-passing video never see a person in a gorilla suit. ^[extracted]
- **Simons & Levin (1998)** — The "door study" showed change blindness: half of people giving directions fail to notice their conversation partner has been swapped. ^[extracted]
- **Liu et al. (2023)** — "Lost in the Middle": language models attend to the beginning and end of long contexts but lose the middle — mirroring the same bounded attention pattern seen in humans. ^[extracted]

The pattern is the same for novices and experts, well-rested and exhausted, human and machine. ^[extracted]

## Application to AI Agents

Large language models have a context window — a hard limit on what they can take into account at once. When things drop out of the window they are not dimly remembered but gone entirely. Even inside the window, attention is not distributed evenly. ^[extracted] This means the bounded cognition principle applies directly to agent design: agents need architectures that reduce cognitive load rather than increasing it. ^[inferred]

## Design Principles Derived from Bounded Cognition

The essay frames nearly everything called good engineering as an answer to designing for bounded cognition: ^[extracted]

- **Precise naming** — Give things a precise name to anchor attention and reduce memory load.
- **Design for the constrained case** — Building for the most limited user (e.g., Sam Farber's OXO Good Grips peeler designed for arthritic hands) tends to be better for everyone. ^[extracted]
- **Make attention scarce** — Treat attention as the unreliable, limited resource it is, and build systems that compensate for lapses rather than assuming perfect awareness.
- **Reduce cognitive juggling** — Design changes so they don't require the human or the machine to keep a million things in their head. ^[inferred]

## Open Questions

- How exactly should bounded cognition inform the architecture of multi-agent systems where coordination overhead compounds cognitive load? ^[inferred]
- Is there a measurable cognitive load metric for software systems that could guide refactoring priorities? ^[inferred]

## Sources

- [[references/engineering-for-bounded-cognition|Engineering for Bounded Cognition — Matt Williams, shapeofthesystem.com]]
- [[concepts/ai-engineering|AI Engineering]] — discipline of building reliable, controllable systems
