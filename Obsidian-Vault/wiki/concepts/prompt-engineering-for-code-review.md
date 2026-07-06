---
title: "Prompt Engineering for Code Review"
category: concepts
tags: [prompt-engineering, code-review, llm-constraint, ai-code-review]
relationships:
  - target: "[[concepts/code-review-feedback-quality]]"
    type: extends
  - target: "[[concepts/bug-taxonomy]]"
    type: related_to
  - target: "[[concepts/high-signal-low-noise]]"
    type: related_to
sources:
  - "https://www.youtube.com/watch?v=tswqekftnaw"
summary: "Constraining LLM output in code review by updating prompts to only trigger comments that fall in the intersection of LLM capability and human desirability — the top-right quadrant of the bug taxonomy."
provenance:
  extracted: 0.70
  inferred: 0.20
  ambiguous: 0.10
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Prompt Engineering for Code Review

Prompt Engineering for Code Review is the practice of constraining LLM output in code review by updating prompts to only trigger comments that fall in the intersection of **LLM capability** and **human desirability** — the top-right quadrant of the bug taxonomy. ^[extracted]

The approach was described by [[entities/tomas-reimers|Tomas Reimers]] ([[entities/graphite|Graphite]]) at AIEF2025 as the primary mechanism for improving developer satisfaction with AI-generated code review comments. ^[extract0]

## The Problem

LLMs mimic what they're asked to do. When prompted to generate code review comments, they produce everything within their capability AND everything outside it. This means a single prompt generates both useful bug reports AND frustrating best-practice nitpicks. ^[extracted]

## The Solution

Update prompts to only trigger comments that are:

1. **Within the LLM's capacity** — The LLM can actually detect this type of issue from the code and context provided.
2. **That humans want to receive** — The comment type is valued by developers, not dismissed as noise.

This constrains output to the top-right quadrant of the bug taxonomy: bugs, security concerns, performance issues, documentation mismatches, and stylistic deviations. ^[extracted]

## The Iterative Process

Prompt engineering for code review is not a one-time task. As LLMs improve (e.g., moving from Sonnet to Claude 4/Opus), the boundary of what they can catch shifts. The prompt must be continuously updated to:

- Expand into new capabilities as they emerge
- Maintain the constraint on human desirability
- Avoid growing beyond the top-right quadrant as context windows expand ^[extracted]

## Related

- [[concepts/code-review-feedback-quality|Code Review Feedback Quality]] — The 2D framework that defines the constraint
- [[concepts/bug-taxonomy|Bug Taxonomy]] — The 7-category classification that defines what to include/exclude
- [[concepts/high-signal-low-noise|High Signal, Low Noise]] — The quality principle this engineering serves
- [[concepts/llm-hallucination-detection|LLM Hallucination Detection]] — Feedback signals that drive prompt iteration
