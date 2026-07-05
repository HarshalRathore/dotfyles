---
title: "LLM Hallucination Detection"
category: concepts
tags: [llm-hallucination, code-review, llm-evaluation, feedback-signals]
relationships:
  - target: "[[concepts/code-review-feedback-quality]]"
    type: related_to
  - target: "[[concepts/agent-evaluations]]"
    type: related_to
  - target: "[[concepts/high-signal-low-noise]]"
    type: related_to
sources:
  - "[[sources/watchv=tswqekftnaw]]"
summary: "Using upvote/downvote reactions on AI-generated code review comments as a signal for when LLMs are hallucinating or extending beyond their capabilities — a practical feedback mechanism for constraining AI output."
provenance:
  extracted: 0.75
  inferred: 0.15
  ambiguous: 0.10
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# LLM Hallucination Detection

LLM Hallucination Detection is the practice of using user feedback signals — specifically upvote/downvote reactions on AI-generated code review comments — to detect when an LLM is hallucinating or extending beyond its capabilities. ^[extracted]

The approach was described by [[entities/tomas-reimers|Tomas Reimers]] ([[entities/graphite|Graphite]]) at AIEF2025 as the primary mechanism for monitoring whether an AI code review system stays within the "top right quadrant" of the bug taxonomy. ^[extracted]

## The Mechanism

When an LLM leaves a code review comment, developers can emoji-react with upvote or downvote. The signals work as follows:

- **Upvote** — The comment was useful and correct. The LLM is performing well.
- **Downvote** — The comment was wrong, irrelevant, or hallucinated. The LLM is overreaching.

A spike in downvotes signals that the LLM is trying to extend beyond its capabilities — perhaps into tribal knowledge, codebase-specific conventions, or areas where it lacks sufficient context. ^[extracted]

## Measuring Performance

Graphite uses this system to maintain a <4% downvote rate on Diamond's AI comments. The acceptance rate (~52%) is higher than human review comments (~45-50%), suggesting that constrained AI review can match or exceed human review quality. ^[extracted]

## Limitations

The upvote/downvote signal measures **LLM capability** but not **human desirability** — a comment can be correct but still unwanted. The harder signal to measure is whether humans want to receive a particular type of feedback, which requires prompt engineering to constrain output. ^[extract0]

## Related

- [[concepts/code-review-feedback-quality|Code Review Feedback Quality]] — The 2D framework this detection mechanism monitors
- [[concepts/bug-taxonomy|Bug Taxonomy]] — The framework defining what LLMs can and cannot catch
- [[concepts/high-signal-low-noise|High Signal, Low Noise]] — Quality principle for AI review systems
- [[concepts/self-driving-code-review|Self-Driving Code Review]] — AI review systems must implement this detection
