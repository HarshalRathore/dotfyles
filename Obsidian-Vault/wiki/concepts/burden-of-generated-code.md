---
title: "Burden of Generated Code"
tags:
  - software-engineering
  - ai-engineering
  - code-quality
  - maintenance
aliases:
  - code as liability
  - generated code maintenance
  - every line of code costs
relationships:
  - target: "[[concepts/code-is-artifact]]"
    type: related_to
  - target: "[[concepts/code-review-primary-skill]]"
    type: related_to
  - target: "[[concepts/vibe-coding-origins]]"
    type: contradicts
  - target: "[[concepts/legacy-code-ai-agent-strategy]]"
    type: related_to
sources:
  - "AIEF2025 - Vibes won't cut it — Chris Kelly, Augment Code - https://www.youtube.com/watch?v=Dc3qOA9WOnE"
summary: "Every line of code — whether human-written or AI-generated — comes with maintenance, debugging, and comprehension costs. More generated code is not better; it's more to maintain."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Burden of Generated Code

Every line of code carries a burden: it must be maintained, debugged, understood, and kept consistent with the rest of the system. This principle, articulated by [[entities/chris-kelly|Chris Kelly]] at AIEF2025 and quoting [[entities/jeff-atwood|Jeff Atwood]]'s aphorism "the best code is no code at all," applies equally — perhaps more urgently — to AI-generated code. ^[extracted]

## The Core Argument

- **Lines of code are liabilities, not assets.** Each line has ongoing costs: reading it, understanding it, testing it, fixing it when it breaks, updating it when dependencies change. ^[extracted]
- **AI generation inverts the incentive.** The industry measures AI coding tools by how many lines they generate, but the more code generated, the worse off the system ends up. "We want to put as little code in there as possible." ^[extracted]
- **Volume is not value.** Code generation volume is an anti-metric — generating more lines does not correlate with shipping more value, and likely inversely correlates with maintainability. ^[inferred]

## Implications

- AI coding tools should be evaluated on code *avoided* or *simplified*, not code generated. ^[inferred]
- Code review gates become more important with AI-generated code because each line must justify its existence against the maintenance burden it introduces. ^[inferred]
- The "who cares how much code AI can generate" framing reframes the AI coding debate: the goal is minimal, correct code, not maximal output. ^[extracted]

## Related

- [[concepts/code-is-artifact|Code is an Artifact, Not the Job]] — Code is not the output that matters; decisions are
- [[concepts/code-review-primary-skill|Code Review as Primary Skill]] — The skill that judges whether each line is worth its burden
- [[concepts/vibe-coding-origins|Vibe Coding Origins]] — The practice this argument warns against (generating without examining)
- [[concepts/legacy-code-ai-agent-strategy|Legacy Code AI Agent Strategy]] — Related challenge: introducing AI-generated code into existing systems
- [[entities/jeff-atwood|Jeff Atwood]] — Source of "the best code is no code at all"
- [[references/aief2025-vibes-wont-cut-it-chris-kelly-augment]] — Source talk
