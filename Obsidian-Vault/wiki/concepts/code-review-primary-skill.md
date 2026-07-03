---
title: "Code Review as Primary Skill"
tags:
  - code-review
  - software-engineering
  - ai-engineering
  - quality
aliases:
  - code review skill
  - AI era code review
relationships:
  - target: "[[concepts/code-is-artifact]]"
    type: related_to
  - target: "[[concepts/burden-of-generated-code]]"
    type: related_to
  - target: "[[concepts/ai-regression-testing]]"
    type: related_to
sources:
  - "AIEF2025 - Vibes won't cut it — Chris Kelly, Augment Code - https://www.youtube.com/watch?v=Dc3qOA9WOnE"
summary: "The argument that as AI generates more code, the ability to read and evaluate code becomes more critical than the ability to write it — and that current code review tooling is inadequate for this shift."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Code Review as Primary Skill

An argument articulated by [[entities/chris-kelly|Chris Kelly]] at AIEF2025: as AI agents write an increasing proportion of code, the skill of reading, understanding, and evaluating code becomes more important than writing it. The industry should interview for code review ability, not esoteric coding problems. ^[extracted]

## Current Tooling Gap

Current code review tools are inadequate for reviewing AI-generated code at scale. The typical diff view shows "a lexicographically sorted list of changed files" — file `a` changed, file `b` changed — which is not how software changes should be reasoned about. Changes should be understood in context of their effect on system behavior, not by filename ordering. ^[extracted]

## Why It Matters

- AI code looks plausible but may embed incorrect architectural decisions — only careful review catches these. ^[inferred]
- The "vibes" approach (not examining generated code) is incompatible with production requirements of four nines reliability. ^[inferred]
- As generation velocity increases, the review bottleneck becomes the critical constraint on safe deployment. ^[inferred]

## Implications

- **Interviewing shift** — Interview for code review skill rather than (or alongside) algorithmic puzzle solving. ^[extracted]
- **Tooling renaissance** — Expect a "pretty big explosion" in code review tooling design to support reviewing AI-generated diffs. ^[extracted]
- **Skill development** — Engineers should "brush up on" code review as a core competency. ^[extracted]

## Related

- [[concepts/code-is-artifact|Code is an Artifact, Not the Job]] — Code review evaluates the decisions, not the syntax
- [[concepts/burden-of-generated-code|Burden of Generated Code]] — Code review is the gate that ensures each line justifies its maintenance burden
- [[concepts/ai-regression-testing|AI Regression Testing]] — Complementary quality gate: automated evaluation catches what manual review misses
- [[concepts/evaluation-first-development|Evaluation-First Development]] — Broader quality paradigm; code review is one evaluation mechanism
- [[entities/chris-kelly|Chris Kelly]] — Primary articulator
- [[references/aief2025-vibes-wont-cut-it-chris-kelly-augment]] — Source talk
