---
title: "Model Exponential Curve"
tags:
  - ai
  - models
  - exponential-growth
  - capability
  - aief2025
aliases:
  - exponential model improvement
  - model capability curve
sources:
  - "[[sources/watchv=lue8k2jqfkk]]"
summary: "The observation that AI model capability improves exponentially while product development moves at human speed, creating a widening gap that shapes product design decisions."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Model Exponential Curve

The observation that AI model capability improves exponentially while everything around the model — products, tools, UX — also increases exponentially, but at a different rate. This creates a fundamental tension for product builders.

## The Core Thesis

> "The model is moving really fast, it's on exponential... and the product is kind of struggling to keep up." ^[extracted]

Boris Cherny framed this at AI Engineer World's Fair 2025 as the central challenge for AI tool builders:

1. Model capability improves exponentially
2. Product development moves at human speed
3. The gap widens over time
4. Products built today may be obsolete as models improve

## Corollaries

Cherny identified several corollaries to this thesis:

1. **Everything around the model increases exponentially** — not just model capability, but tools, ecosystems, and user expectations
2. **The more general thing wins** — general-purpose models and tools outperform specialized ones as capabilities expand
3. **Product UX is uncertain** — when the model keeps getting better, the optimal UX keeps changing

## Product Implications

The model exponential curve has direct implications for product design:

- **Stay unopinionated** — don't lock in a UX that may become obsolete
- **Start minimal** — provide raw access, add polish later
- **Focus on model access** — the differentiator is the model, not the UI
- **Build for flexibility** — the product must adapt as the model evolves

Claude Code's terminal-first, unopinionated design is a direct response to this thesis. ^[extracted]

## Historical Precedent

This pattern has appeared before in computing:

- **Moore's Law** — hardware improved exponentially; software had to adapt
- **Web scale** — traffic grew exponentially; architectures had to evolve
- **LLM capability** — model quality improved exponentially; tools and workflows had to evolve

Each time, the products that survived were the ones that could adapt to the underlying exponential growth.

## Related

- [[concepts/unopinionated-product-design]] — Product response to the exponential curve
- [[concepts/terminal-first-design]] — Interface response to the exponential curve
- [[entities/claude-code]] — Product designed around this thesis
- [[concepts/agentic-coding]] — The paradigm enabled by exponential model growth
- [[concepts/evolution-of-programming]] — The broader context for this thesis
