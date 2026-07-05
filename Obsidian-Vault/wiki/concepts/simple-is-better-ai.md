---
title: "Simple is Better in AI Engineering"
tags:
  - simplicity
  - ai-engineering
  - production
  - anti-overengineering
  - practical
sources:
  - "[[sources/watchv=ihkyfhu6jey]]"
  - "[[sources/watchv=k-iykdmfkhe]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Simple is Better in AI Engineering

The recurring theme in AI engineering that **simple approaches often outperform complex ones** — a counter-narrative to the trend of building increasingly elaborate agent architectures and tool chains.

## The Thesis

[[entities/swyx|swyx]] highlighted this theme at AIEF2025, citing multiple examples from leading AI organizations:

### Anthropic's SWE-bench Result
[[entities/eric-stuntz|Eric Stuntz]] from Anthropic beat SWE-bench with a "very simple scaffold." The implication: you don't need complex agent architectures to achieve state-of-the-art results.

### OpenAI's Deep Research
[[entities/greg-brockman|Greg Brockman]] (OpenAI) made similar points about deep research — the best results come from simple, well-designed systems, not from adding more moving parts.

### The "Emperor Has No Clothes" Moment
swyx described the field as having an "emperor has no clothes" moment — there's still a very early field, and AI engineers should be encouraged because there's "still a lot of alpha to mine."

## Datalab's Simple Stack

[[entities/vik-paruchuri|Vik Paruchuri]] ([[entities/datalab|Datalab))) explicitly applies this principle: ^[extracted]

- **No React, no fancy frontend frameworks** — Server-rendered HTML with HTMX and Alpine.js
- **No Kubernetes for a three-person company** — Simple, boring technology
- **Shell scripts instead of complex pipelines** — "The simplest possible thing that usually works"
- **Clean, modular, well-documented code** — Optimized for AI-assisted development

Vik's philosophy: "You don't need to get too fancy. You don't need a Kubernetes cluster when you're a three-person company." ^[extracted]

Vik also references the famous Hadoop versus shell script blog post — a 64-core machine can replace an entire Hadoop cluster for data extraction. The lesson: set aside the fixation on shiny tech and do the simplest possible thing. ^[extracted]

## Implications

1. **Don't overcomplicate.** The consistent lesson from leading labs is to keep things simple.
2. **The field is early.** Despite the hype, there's significant room for improvement through simpler approaches.
3. **Simplicity scales.** Simple systems are easier to debug, maintain, and improve over time.
4. **Simple code is AI-friendly.** Clean, readable, maintainable code is easier for AI tools to understand and modify.

## Relationship to Production

The simple-is-better thesis is closely tied to the shift from demos to production. Complex systems work well in demos but often fail in production. Simple systems are more robust and easier to operate at scale.

## Related

- [[concepts/sdlc-commoditization]] — Early stages are commodity; focus on simple production work
- [[concepts/standard-models-ai-engineering]] — Simple standard models over complex frameworks
- [[concepts/spade-pattern]] — SPADE itself is a simple pattern
- [[concepts/small-ai-teams|Small AI Teams with Huge Impact]] — Simple technology as a pillar
- [[references/aief2025-designing-ai-intensive-applications-swyx]] — Full keynote introducing the theme
