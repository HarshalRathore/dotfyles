---
title: AI Capability First
category: concepts
tags:
- ai-product-development
- ai-evaluation
- prototyping
- product-strategy
- experimentation
aliases:
- ai capability first
- capability-first
- ai-first-then-product
sources:
- AIEF2025 - Why your product needs an AI product manager, and why it should be you — James Lowe, i.AI - https://www.youtube.com/watch?v=xzJdSi2Tsqw
provenance:
  extracted: 0.8
  inferred: 0.2
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/evaluate-ai-early]]'
  type: implements
- target: '[[concepts/ai-product-manager]]'
  type: core_skill_of
summary: AI Capability First
---

# AI Capability First

**AI capability first** is the development approach of prioritizing the validation and optimization of AI capabilities before building a product around them. Instead of designing a product and then finding AI to power it, you first establish what the AI can actually do well, then design the product to match. ^[extracted]

## The Traditional vs. AI-First Approach

Traditional product development:
1. Define the product concept
2. Find technology to implement it
3. Build and ship

AI capability first:
1. Get real data and define the task
2. Evaluate whether AI can do the task well enough
3. Optimize the AI capability against evaluations
4. Design the product based on what the AI actually does well

The key difference: in traditional development, the product design drives technology choices. In AI capability first, the technology's actual capabilities drive the product design. ^[extracted]

## Why It Matters

Starting with product design and then layering AI on top risks two outcomes:

1. **Building something impossible** — The AI may not perform well enough for the task
2. **Building the wrong product** — You design features around an idealized version of what the AI can do, not what it actually does

By starting with the AI capability, you avoid both pitfalls and often discover a better product design informed by the AI's actual strengths. ^[extracted]

## Case Study: Theme Finder

The **Incubator for AI** initially built a consultation analysis product around BERTopic without validating the AI capability. Results were inaccurate and inconsistent. ^[extracted]

They then prioritized the AI capability first: collected real data, generated synthetic eval data, optimized against evals, and tested with users. This produced output comparable to humans but 1,000× faster and 400× cheaper — and revealed where human-in-the-loop was most valuable, fundamentally changing the product. ^[extracted]

## Related

- [[concepts/evaluate-ai-early]] — The broader principle this implements
- [[concepts/ai-product-manager]] — The role that applies this approach
- [[entities/theme-finder]] — Real-world example
