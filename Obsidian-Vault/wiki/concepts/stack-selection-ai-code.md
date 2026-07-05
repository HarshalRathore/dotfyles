---
title: "Stack Selection for AI Code Generation"
category: concepts
tags:
  - github-copilot
  - vibe-coding
  - stack-selection
  - ai-coding
  - best-practices
sources:
  - "[[sources/watchv=eafp8pds7h4]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Stack Selection for AI Code Generation

When using AI coding assistants to generate projects from scratch, the choice of technology stack significantly impacts output quality. Harold's recommendation: use popular, stable frameworks that the AI has strong training data for. ^[extracted]

## Recommended Stacks

- **React** — Widely used, well-represented in training data
- **Vibe** — Popular frontend framework
- **Material Design** — Long-standing, consistent design system
- **Fluent Design** — Microsoft's design system

These stacks are "off the shelf and haven't changed in a long time in a large scale," meaning the AI doesn't have to reason about unfamiliar patterns or make wild guesses. ^[extracted]

## Why Stack Matters

The AI's output quality depends on how well-represented the stack is in its training data. Popular frameworks with consistent APIs produce better results because the model has seen more examples. Unfamiliar or rapidly-changing frameworks lead to "wild guesses" and more errors that require manual correction. ^[extracted]

## Enterprise Override

In structured vibe coding, enterprises can override the AI's default training biases. YOLO mode defaults to the "top of the training stack," but starter templates with Copilot Instructions can direct the AI to use internal stacks, workflows, and deployment infrastructure instead. ^[extracted]

## Related

- [[concepts/copilot-new-command]] — `copilot new` command and stack selection
- [[concepts/yolo-structured-spectrum-vibe-coding]] — YOLO vs. Structured stages
- [[concepts/copilot-instructions]] — Copilot Instructions for overriding default behavior
- [[references/aief2025-vibe-coding-at-scale-harold.js]] — Harold's AIEF2025 workshop
