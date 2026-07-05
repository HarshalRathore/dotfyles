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
  - target: "[[concepts/developer-outer-loop]]"
    type: related_to
  - target: "[[entities/graphite]]"
    type: related_to
sources:
  - "[[sources/watchv=dc3qoa9wone]]"
  - "[[sources/watchv=h6mrr5nbtza]]"
summary: "The argument that as AI generates more code, the ability to read and evaluate code becomes more critical than the ability to write it — and that the entire developer toolchain must become AI-native, with self-driving AI code review capable of matching or exceeding human review efficacy."
provenance:
  extracted: 0.78
  inferred: 0.18
  ambiguous: 0.04
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

## Self-Driving Code Review

[[entities/tomas-reimers|Tomas Reimers]] ([[entities/graphite|Graphite]]) argues that AI-native code review is not just necessary but achievable. Graphite's Diamond AI reviewer achieves a ~52% comment acceptance rate — higher than human review comments (~45–50%) — with only ~4% of its comments dismissed as noise. ^[extracted]

This reframes the tooling challenge: the question is not whether AI can review code, but how to integrate AI review into a fundamentally re-architected outer loop where testing, review, merge, and deploy are all AI-native, not just the IDE. ^[inferred]

### AI-native toolchain thesis

Adding AI "teammates" to the existing workflow is insufficient. The entire outer loop — prioritization, tracking, CI pipelines, merge queues, deployment — must be designed for the AI-accelerated inner loop. ^[extracted] See [[concepts/developer-outer-loop|Developer Outer Loop]] for the full model.

## Implications

- **Interviewing shift** — Interview for code review skill rather than (or alongside) algorithmic puzzle solving. ^[extracted]
- **Tooling renaissance** — Expect a "pretty big explosion" in code review tooling design to support reviewing AI-generated diffs. ^[extracted]
- **Skill development** — Engineers should "brush up on" code review as a core competency. ^[extracted]

## Related

- [[concepts/code-is-artifact|Code is an Artifact, Not the Job]] — Code review evaluates the decisions, not the syntax
- [[concepts/burden-of-generated-code|Burden of Generated Code]] — Code review is the gate that ensures each line justifies its maintenance burden
- [[concepts/ai-regression-testing|AI Regression Testing]] — Complementary quality gate: automated evaluation catches what manual review misses
- [[concepts/developer-outer-loop|Developer Outer Loop]] — The two-loop model showing why AI-native tooling is needed beyond the IDE
- [[concepts/evaluation-first-development|Evaluation-First Development]] — Broader quality paradigm; code review is one evaluation mechanism
- [[entities/chris-kelly|Chris Kelly]] — Primary articulator
- [[entities/tomas-reimers|Tomas Reimers]] — Proponent of AI-native outer loop tooling
- [[entities/graphite|Graphite]] — AI code review company with self-driving review (Diamond)
- [[references/aief2025-vibes-wont-cut-it-chris-kelly-augment]] — Source talk (Kelly)
- [[references/aief2025-dont-get-one-shotted-tomas-reimers-graphite]] — Source talk (Reimers)
