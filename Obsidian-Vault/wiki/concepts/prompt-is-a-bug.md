---
title: "The Prompt Is a Bug"
tags:
  - concept
  - ai
  - ux
  - product-design
aliases: [prompt is a bug, prompt-as-bug, prompt is a stepping stone]
sources:
  - "[[sources/watchv=3mzs5gnelzm]]"
summary: "The prompt interface is a stepping stone, not a destination. Best AI products feel like mind reading because they collect context automatically — users should not have to explain what they need."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# The Prompt Is a Bug

The philosophy that a blank text prompt is a failure of product design — the best AI products do not ask users to explain themselves but instead collect context automatically and show up informed. Articulated by [[entities/sarah-guo|Sarah Guo]].

## The Core Claim

"Don't listen to the labs from a user experience perspective. The prompt is a bug, not a feature. I think it's a stepping stone. Don't make me think as a user." ^[extracted]

Guo argues that "the best AI products, they feel like mind reading because they are" — they collect context automatically from the environment and user behavior rather than requiring explicit description. ^[extracted]

## Implications for Product Design

Applied through the [[concepts/cursor-for-x|Cursor for X]] framework: ^[inferred]

- If you know what users in your industry need, build products that show up informed
- Collect and package context automatically, including from non-natural-language sources
- Present outputs to users thoughtfully — don't make them parse raw model output
- The prompt box is a temporary crutch, not the UX destination

## Examples

- [[entities/cursor-ai|Cursor]] automatically packages file context, embeddings, and diffs — the user doesn't describe their codebase ^[extracted]
- A blank ChatGPT text box is the counter-example — it puts all the work on the user ^[inferred]

## Relationship to [[concepts/copilot-first-strategy|Copilot-First]]

The "prompt is a bug" philosophy connects to the [[concepts/copilot-first-strategy|copilot-first strategy]] — copilots that automatically surface relevant information and suggestions without requiring a prompt are the next step beyond the blank text box. ^[inferred]

## Related

- [[concepts/cursor-for-x]] — How to build products that implement this philosophy
- [[concepts/copilot-first-strategy]] — Sequential approach to reducing user burden
- [[entities/cursor-ai]] — Example of prompt-less context collection

## Sources
- AI Engineer World's Fair 2025 — State of Startups and AI 2025, Sarah Guo, Conviction. https://www.youtube.com/watch?v=3MZS5gNElZM
