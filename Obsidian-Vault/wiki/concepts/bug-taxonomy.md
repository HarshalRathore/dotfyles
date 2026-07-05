---
title: "Bug Taxonomy"
category: concepts
tags: [bug-taxonomy, code-review, llm-evaluation, classification]
relationships:
  - target: "[[concepts/code-review-feedback-quality]]"
    type: related_to
  - target: "[[concepts/tribal-knowledge]]"
    type: related_to
  - target: "[[concepts/code-cleanliness]]"
    type: related_to
  - target: "[[concepts/high-signal-low-noise]]"
    type: related_to
sources:
  - "[[sources/watchv=tswqekftnaw]]"
summary: "A 2D taxonomy classifying code review comments by whether LLMs can catch them and whether humans want to receive them, revealing seven distinct categories of feedback."
provenance:
  extracted: 0.75
  inferred: 0.15
  ambiguous: 0.10
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Bug Taxonomy

Bug Taxonomy is a 2D classification framework for code review comments, mapping each comment type along two axes: **what LLMs can catch** (capability) and **what humans want to receive** (desirability). ^[extracted]

The framework was developed by [[entities/tomas-reimers|Tomas Reimers]] ([[entities/graphite|Graphite]]) at AIEF2025 through analysis of 10,000 code review comments from their own codebase and open-source projects, classified by feeding them to various LLMs. ^[extracted]

## The Two Axes

### Axis 1: LLM Capability

Some types of bugs and feedback are within an LLM's capability to detect; others are not. LLMs ultimately mimic what they're asked to do — when prompted to generate code review comments, they produce everything within their capability AND everything outside it. The key is constraining output to the intersection of capability and desirability. ^[extracted]

### Axis 2: Human Desirability

There's a significant gap between what LLMs *can* catch and what humans *want* to receive from an LLM. A comment that feels pedantic and frustrating from an LLM is welcomed from a human reviewer — the same content, different reception. ^[extracted]

## The Seven Categories

### Quadrant 1: Top-Right — LLMs can catch, humans want to receive

- **Bugs** — Logical inconsistencies that cause code to behave in unintended ways. ^[extracted]
- **Accidentally committed code** — Code that was committed by mistake. Shows up more than expected. ^[extracted]
- **Performance and security concerns** — Efficiency issues and security vulnerabilities. ^[extracted]
- **Documentation mismatches** — Where the code says one thing and does another, making it unclear which is correct. ^[extracted]
- **Stylistic changes** — Deviations from codebase conventions or patterns. ^[extracted]

### Quadrant 2: Bottom-Right — Humans want to receive, LLMs cannot catch yet

- **Tribal knowledge** — Comments like "we used to do it this way because X" or "this doesn't work that way anymore." Knowledge that exists in senior developers' heads, not in documentation. LLMs cannot mind-read this context. ^[extracted]

### Quadrant 3: Bottom-Left — LLMs can catch, humans don't want to receive

- **Code cleanliness and best practices** — Comments like "add a comment describing what this class does," "extract this logic into a function," or "make sure this code has tests." These are technically correct but frustrating from an LLM because they lack the contextual judgment a human applies. ^[extracted]

## Implications

The taxonomy reveals that the hardest category for AI code review is **tribal knowledge** — it's both outside LLM capability AND highly desired by humans. Conversely, the easiest category to over-generate is **code cleanliness** — LLMs can easily flag it, but humans find it annoying. ^[extracted]

The sweet spot for AI code review is the top-right quadrant: bugs, security concerns, and accidental commits — where LLM capability and human desirability align. ^[inferred]

## Related

- [[concepts/code-review-feedback-quality|Code Review Feedback Quality]] — The 2D framework for evaluating review comments
- [[concepts/tribal-knowledge|Tribal Knowledge]] — Knowledge in senior developers' heads that LLMs cannot access
- [[concepts/code-cleanliness|Code Cleanliness]] — Best-practice comments humans don't want from LLMs
- [[concepts/high-signal-low-noise|High Signal, Low Noise]] — Quality principle for AI review systems
