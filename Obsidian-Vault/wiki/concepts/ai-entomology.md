---
title: "AI Entomology"
category: concepts
tags: [ai-entomology, code-review, bug-analysis, llm-evaluation]
relationships:
  - target: "[[concepts/bug-taxonomy]]"
    type: extends
  - target: "[[concepts/code-review-feedback-quality]]"
    type: related_to
  - target: "[[concepts/self-driving-code-review]]"
    type: related_to
sources:
  - "[[sources/watchv=tswqekftnaw]]"
summary: "The practice of studying bugs in AI-generated code using AI itself — applying LLMs to detect, classify, and categorize the types of bugs that emerge when AI accelerates code generation."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# AI Entomology

AI Entomology is the practice of studying bugs in AI-generated code using AI itself. The term was coined by [[entities/tomas-reimers|Tomas Reimers]] ([[entities/graphite|Graphite]]) at AIEF2025, drawing on the analogy to entomology — the scientific study of insects — to describe the systematic analysis of bugs that emerge when AI accelerates code generation. ^[extracted]

## The Motivation

As AI tools dramatically accelerate code writing (the inner loop), the volume of bugs also increases. Graphite's observation was that this might be "part and parcel" of AI-accelerated development — more code means more bugs, and the solution is to apply AI itself to find and classify these bugs. ^[extracted]

## The Approach

Graphite's approach involved:

1. **Collecting 10,000 code review comments** from their own codebase and open-source projects.
2. **Feeding them to various LLMs** for classification (done multiple times for reliability).
3. **Summarizing the classifications** to derive a taxonomy of bug types.
4. **Mapping the taxonomy** on a 2D framework of LLM capability vs. human desirability. ^[extracted]

## The Outcome

The result was the Bug Taxonomy — a 2D classification framework revealing that code review comments fall into seven distinct categories, with tribal knowledge being the hardest for AI to handle and code cleanliness being the easiest to over-generate. ^[extracted]

## Related

- [[concepts/bug-taxonomy|Bug Taxonomy]] — The 7-category classification derived from this approach
- [[concepts/code-review-feedback-quality|Code Review Feedback Quality]] — The 2D framework for evaluation
- [[concepts/self-driving-code-review|Self-Driving Code Review]] — Graphite's Diamond implements AI entomology
- [[entities/graphite|Graphite]] — Company that developed the approach
