---
title: "Tribal Knowledge"
category: concepts
tags: [tribal-knowledge, code-review, llm-limitations, organizational-memory]
relationships:
  - target: "[[concepts/bug-taxonomy]]"
    type: extends
  - target: "[[concepts/codebase-conventions]]"
    type: related_to
  - target: "[[concepts/ai-native-toolchain]]"
    type: related_to
sources:
  - "[[sources/watchv=tswqekftnaw]]"
summary: "Knowledge that exists in senior developers' heads rather than documentation — such as 'we used to do it this way because X' — that LLMs cannot access and represents the hardest category for AI code review to handle."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Tribal Knowledge

Tribal Knowledge is organizational information that exists in the heads of team members rather than in documentation, code comments, or automated systems. In the context of code review, it manifests as comments like "we used to do it this way because X" or "this doesn't work that way anymore" — context that is valuable to developers but inaccessible to LLMs. ^[extracted]

The concept was highlighted by [[entities/tomas-reimers|Tomas Reimers]] ([[entities/graphite|Graphite]]) at AIEF2025 as the hardest category for AI code review to handle, because it sits in the bottom-right quadrant of the bug taxonomy: humans want to receive this feedback, but LLMs cannot catch it. ^[extracted]

## Why LLMs Cannot Access Tribal Knowledge

LLMs operate on the text they're given — code, comments, commit history, documentation. They cannot "mind-read" the reasoning behind decisions that were made and documented only implicitly through code evolution. When a developer writes "we used to do X but switched to Y because Z," the Z is rarely captured anywhere the LLM can access. ^[extracted]

## Implications for AI Code Review

Tribal knowledge represents a structural limitation of AI code review systems. No amount of prompt engineering or context-window expansion can solve it, because the knowledge simply isn't in the text. The solution requires:

1. **Deliberate documentation** — Capturing tribal knowledge before it's lost when team members leave.
2. **AI-native toolchain integration** — Where the toolchain itself records the "why" behind decisions, not just the "what." ^[inferred]

## Related

- [[concepts/bug-taxonomy|Bug Taxonomy]] — Tribal knowledge is the hardest category for AI code review
- [[concepts/codebase-conventions|Codebase Conventions]] — A subset of tribal knowledge that may be partially documented
- [[concepts/ai-native-toolchain|AI-Native Toolchain]] — The toolchain must capture the "why" behind decisions
- [[concepts/self-driving-code-review|Self-Driving Code Review]] — AI review systems must acknowledge this limitation
